# Photon 多尺度降噪设计

## 1. 目标与原则

用一套白盒 GLES compute 多尺度降噪替换现有全部降噪实现，并成为 App 内唯一的降噪算法：

| 被替换 | 位置 |
|---|---|
| MGC Pecan 亮度 + ChromaDenoisePyramidComplete 色度 + ComputeDenoiseStrengthMaps + RgbRawToYuv/YuvToRgb + MeasureMoire | `MgcFullResolutionDenoise.kt`、`mgc_full_resolution_denoise_jni.cpp`、`mgc_full_resolution_denoise_static.S.in`、`mgc_demoire_static.S.in` |
| Spatial 合成强度图 AOT | `mgc_spatial_strength_jni.cpp`、`MgcSpatialStrengthMap*`、`MgcSpatialStrengthAtlasLayout.kt`、`MgcSpatialDenoiseModel.kt` |
| MGC 降噪用的噪声模型推导 | `DemosaicNoisePropagationCalibrator.kt`、`DemosaicNoiseAtlasGenerator.kt`、`MgcSabreMergedNoiseModel.kt` |
| darktable NLM | `DenoiseProfileAlgorithm.kt`、`DenoiseProfileNlmConfig.kt`、`DenoiseProfileStripePlanner.kt` |
| 多尺度边缘引导色度降噪 | `lut/ChromaDenoiseAlgorithm.kt` |
| Bitmap NLM / 色度 | `LutImageProcessor.kt` 内 bitmap denoise 程序 |

设计原则：

1. **噪声 = RAW 噪声档案 × 白噪声理论值**。每层噪声方差由档案系数与“白噪声经本金字塔”的精确能量系数相乘得到，运行时只需查档案、做乘法。不做离线标定，也不从图像实测。
2. **模型的系统误差显式记录，不在模型中补偿**。白噪声理论不包含去马赛克（VGN 的相关与色彩噪声重建）等上游影响（附录 A–C 记录了推算、标定、实测三条路线的结论）。这些误差的大小用成对拍摄测量并写入本文档（§12.1），降噪强度由各管线的调参表（§7.4、§8.4）以 PSNR 为目标确定。
3. **显式处理两种空间变化**：LSC（降噪入口除以已施加的增益，降噪后乘回，§3）与多帧合成的逐像素方差比（剔除区参与帧少、噪声高，§2.2）。
4. **不以 Pecan 为画质基准**，不追求兼容旧小波或 MGC 输出。借鉴 MGC 的是：信号相关的噪声多项式、按金字塔层的噪声水平、亮度与色度分治。
5. **亮度与色度是两个算法**，共享噪声模型与金字塔框架，侧重点不同（§6、§7）。
6. **全 GPU**，无 CPU 往返、无回读；只在 CPU 上计算与图像尺寸无关的小表（白噪声能量系数）。
7. 移除 MeasureMoire。

## 2. 噪声模型

### 2.1 定义

在 §4 的工作域金字塔上，分量 `k ∈ {Y, Cb, Cr}`、层 `l`、多相相位 `φ = (y & 1)·2 + (x & 1)` 处，拉普拉斯层的噪声协方差为：

```
Σ_{l,φ}(p) = κ⁰_{k(·),l,φ} · m · t²_{l} · A · diag( r_c + s_c · μ_c(p) ) · Aᵀ,   A = K · M · W
```

- `r_c, s_c`：RAW 噪声档案的读出、散粒系数（归一化、未白平衡相机 RGB，与 `RawNoiseModel` 同域；`RawNoiseProfileManager` 选出的 DNG NoiseProfile / Camera2 / 自定义档案）。四通道档案的两个绿色位点取均值。
- `μ_c(p)`：除 LSC 增益后的相机 RGB 信号，取已降噪的上一粗层 `↑G̃_{l+1}` 经 `M⁻¹`、`K⁻¹`、`W⁻¹` 得到。使用降噪后低通而非带噪像素，避免信号相关方差的估计偏差。
- `A diag(·) Aᵀ`：各源通道噪声独立时工作域 YCbCr 的点协方差（3×3）。亮度、色度方差与 Cb–Cr 互协方差都由此精确得到；不沿用 MGC `NoiseModel::Transform` 中“零和色度行丢弃散粒项”“色度共用通道 0 散粒/二次项”的截断。
- `κ⁰_{k,l,φ}`：白噪声经本金字塔第 `l` 层、相位 `φ` 的能量系数，亮度用亮度滤波器、色度用色度滤波器。由 `PhotonNoisePropagation`（单位谱）精确计算，按四个相位分别保留；Cb、Cr 共用色度系数，Cb–Cr 互协方差同样乘以色度系数。
- `m`：多帧合成的方差比（§2.2），单帧为 1。
- `t²_l`：已降噪输入的残余比（§2.4），未降噪为 1。

### 2.2 多帧合成

合成像素 `ŷ(p) = Σ_i w_i(p) y_i(p) / Σ_i w_i(p)`，各帧噪声独立且已换算到参考曝光（系数 `r_i, s_i`）：

```
m_r(p) = e² · Σ_i w_i(p)² ρ_{r,i} / (Σ_i w_i(p))²,   ρ_{r,i} = r_i / r_ref
m_s(p) = e  · Σ_i w_i(p)² ρ_{s,i} / (Σ_i w_i(p))²,   ρ_{s,i} = s_i / s_ref
w_i(p) = g_i · a_i(p)
```

- `g_i`：帧的全局权重（Sabre 为 1，Spatial 为 `globalFrameWeight`）。
- `a_i(p) ∈ [0, 1]`：帧在 `p` 处的接受度，即合成着色器实际乘入的逐帧权重纹理在参考坐标处的值（Spatial 的 `mergeWeight`，含超短帧掩膜改写；Sabre 的覆盖权重 `frameWeight`；参考帧不读权重纹理，为 1）。两条路径的权重纹理都在 RAW/4 网格上，以线性过滤采样，方差比在同一网格上累加。
- `ρ_i`：各帧换算到参考曝光后的相机 RGB 系数与参考帧之比（三通道之和的比值）；`e`：合成输出的曝光缩放（Spatial 接受超短帧时 `e = 1/曝光比`）。
- 读出项乘 `m_r(p)`、散粒项乘 `m_s(p)`。静止区全部接受时等于名义值（等曝光等权为 `1/N`）；只有参考帧被接受的剔除区为 `e²·1`、`e·1`，即单帧噪声，降噪强度随之回到单帧水平。

不进入模型的部分：帧内的空间核与鲁棒性权重（Sabre 的逐通道 RBF 权重、Spatial 的核宽）只在帧内做插值平均，与去马赛克相关同类，属于 §2.5 的系统误差。

**合成方差图**。合成时在 RAW/4 网格上用计算着色器累加 `(Σ w_i, Σ w_i² ρ_{r,i}, Σ w_i² ρ_{s,i})`：每帧一次 dispatch，在网格格心以线性过滤读取与合成着色器相同的权重纹理，乘全局权重；累加存于 SSBO，每格由同一调用读改写，无需乒乓。合成结束后第二个 dispatch 对 8×8 格的方差比取均值，得到 RAW/32 的 `(m_r, m_s)` 图（一格内没有任何帧权重时取 1，即合成保留参考帧），经 SSBO 映射读回（4096×3072 时 128×96×2 个 float，约 98KB）并按持久化精度取整为 float16。默认降噪与用户调整降噪使用同一张 RAW/32 图。降噪器在 Band 计算 §2.1 协方差时，按像素中心在整图中的归一化位置对该图做双线性采样（与 LSC 增益图 Camera2 模式相同的手动双线性，保证与参考实现一致）；没有方差图的像素以 1×1 的名义标量代替。粗层像素覆盖多个图格时仍取中心点。

**标量名义值**。`RawDenoiseHistory.mergeRead/mergeShot` 保留为全部接受时的名义值，只用于与像素无关的量：§5 的调参坐标 `n`、§4.2 的色度层数、Spatial Bayer 去马赛克的阈值档案。剔除区的降噪强度由方差图给出，调参节点仍按整张照片的名义 `n` 选择。

**持久化**。方差图作为 `RawDenoiseHistory.mergeMap`（`RawMergeVarianceMap`）随合成结果、默认降噪的输出记录一起写入相册元数据（`RawDenoiseHistoryMetadata`，float16 小端 Base64，约 65KB），用户调整降噪读取后同样双线性采样。RAW/32 的格均值使运动边界约 32 像素内的方差比被平均，边界两侧的降噪强度过渡变宽。

**实现位置**：`raw/denoise/PhotonMergeNoise.kt`（GPU 累加与换算，同时保留名义标量）；`GlesMgcRawSpatialStacker` 在 Spatial 的四处接纳点（超短帧基底 / 超短帧 / 无超短帧的参考帧 / 时间帧，传入与合成相同的权重纹理：Bayer 输出为 `mergeWeight` 等，RGB 输出为 AOT 消费的剔除平面）与 Sabre（参考帧无权重纹理，后续帧为 `frameWeight`）调用；结果随 `RawStackResult.denoiseHistory` 交给默认降噪。累加器登记在合成器上，合成异常时随 `release()` 释放。

### 2.3 白噪声能量系数

`κ⁰` 只依赖金字塔结构（滤波器、层数、边界方式），由第 1 步已验证的传播计算给出（附录 A：合成数据上 5 层 × 4 相位最大偏差 1.02%）。按 `(分量, 层, 相位)` 预先算好，随金字塔结构一起固定。

### 2.4 多次降噪

默认降噪（合成后写 DNG 前）把实际使用的残余比 `t²_{k,l}` 写入相册元数据（`RawDenoiseHistoryMetadata`，与已施加 LSC 增益图同一机制）。取平坦区最坏情况：亮度在收缩的层上为 `t_l(s)²`（§6.2、§8），未收缩的层为 1；色度细节层门控关闭，为 `(1 − min(s, 1))²`（`s ≥ 1` 时为 0）；本次未处理的层保持输入值。多次降噪时逐层相乘。用户调整降噪读取后，第 `l` 层协方差乘以 `D Σ D`，`D = diag(t_{Y,l}, t_{Cb,l}, t_{Cr,l})`。没有该元数据的输入按未降噪处理。

同一条记录还保存合成方差比 `m_r, m_s`（§2.2）和产生像素的管线（选择调参表，§5）。单帧保存时清除该记录；没有记录的 RAW 按单帧处理，管线由 CFA 决定（Quad Bayer 为 `QUAD`，其余为 `VGN`）。

### 2.5 已知的系统误差

| 来源 | 影响 | 已有证据 |
|---|---|---|
| 去马赛克的空间相关 | 白噪声理论高估细层、低估粗层的噪声（相关噪声的能量向低频集中） | 合成数据中 `[1,2,1]/4` 相关使第 0 层真实方差约为理论值的 1/40（附录 C） |
| VGN 色彩噪声重建、坏点修复 | 色度噪声低于理论值，且随噪声水平非线性变化 | 单通道加噪时输出方差被压到 5%–22%（附录 A） |
| Quad Bayer 块结构 | 第 1 层相位间差异、低频色斑，理论值不含 | 附录 A |
| 帧内空间核与鲁棒性权重 | 合成方差图只含逐帧接受度，帧内插值平均使实际噪声略低于预测 | §2.2 |
| 档案误差 | 档案幅度偏差等比例进入所有层 | — |

这些误差不进入模型。它们的实际大小由 §12.1 用成对拍摄按管线、层、亮度测量并记录；降噪强度通过各管线的调参表确定。

## 3. LSC 归一化

### 3.1 原理

LSC 在去马赛克之前逐 CFA 位点乘入增益 `g`。设乘增益前的信号为 `μ₀`，乘增益后某像素的噪声方差为 `g²·σ₀²(μ₀)`，其中 `σ₀²` 是未施加 LSC 时的噪声函数。降噪入口按通道除以 `g`：

```
x_n = x / g   ⇒   Var[x_n] = σ₀²(μ₀),  μ₀ = μ / g
```

噪声在空间上恢复平稳，与档案同域。降噪在 `x_n` 域进行，输出乘回 `g`。

- `g` 是平滑场，去马赛克只在局部插值，因此在去马赛克之后、按 RGB 通道除增益与在 Bayer 位点上除增益的差异可以忽略。G 通道取两个绿色位点增益的均值。
- 不把管线中的 LSC 挪到降噪之后施加：VGN 的方向判断、色彩噪声重建与坏点修复在白平衡域工作，带暗角与偏色的输入会改变去马赛克结果；高光重建与增益的先后顺序也会改变结果。除增益再乘回只影响降噪这一段。
- 除增益后的四角带有原始的色偏，色度降噪在该域中处理色偏后的色度；色偏是低频且线性的，乘回后精确恢复。

### 3.2 增益来源

已核实的现状：

| 路径 | 像素是否已含 LSC | 增益图来源 |
|---|---|---|
| 单帧 RAW | 是（`VgnDemosaicAlgorithm.lensShadingGainAt`，`sensorAt(q) · gain`） | `RawMetadata.lensShadingMap` |
| 合成默认降噪（Spatial / Sabre） | 由 `outputIncludesLensShading` 决定（`RawDemosaicProcessor.kt:995`） | `denoiseMetadata` 中保留的增益图 |
| **持久化合成 DNG** | 是 | **当前被移除**（`RawProcessor.kt:134`、`:741`） |

实现（已完成）：合成结果以“像素已含 LSC”保存时，`GalleryManager` 把合成实际使用的增益图（`RawAppliedLensShading.fromCamera2`，与 `MultiFrameStacker.validLensShadingOrNull` 同一取值）写入相册元数据 `customProperties`（`RawAppliedLensShadingMetadata`，与 `RawPhotonHdrMetadata` 同一机制；float32 小端 Base64 + 尺寸 + 契约名）；单帧保存时清除该项。所有渲染入口（`PhotoProcessor` 2 处、`GalleryManager` 5 处）读取后经 `RawDemosaicProcessor` 的 `appliedLensShading` 参数写入 `RawMetadata.appliedLensShading`。它与“待施加增益图”（`lensShadingMap`）分开，后者仍按现状清空，DNG 配置不会重复施加 LSC；用户关闭 LSC 的偏好也只影响后者。

合成施加 LSC 的方式（已核实，`GlesMgcRawSpatialShaders` normalizeRgb / normalizeAotRgb、`GlesMgcRawSabreShaders` 输出变换）：合成后在 RGB 上乘增益，采样坐标为整幅输出图 UV `(p + 0.5) / outputSize`，双线性，G 取两个绿色位点增益的均值，通道顺序为 Camera2 的 R, Ge, Go, B。持久化增益图与其宽高即可精确还原。

没有任何增益图（设备不提供 LSC）时 `g ≡ 1`。

### 3.3 增益纹理

由增益图生成 1/4 分辨率 `RGBA16F` 纹理 `(g_R, g_G, g_B, ·)`。采样坐标与 VGN 一致（DNG 网格或 Camera2 网格、bounds origin），复用 `lensShadingGainAt` 的映射逻辑，保证除掉的正是施加的增益。

## 4. 金字塔

### 4.1 工作域

```
x_wb = W · (rgb_camera / g)           (除 LSC 增益、白平衡后的线性相机 RGB)
[Y, Cb, Cr]ᵀ = M · x_wb · K
```

- 必须在任何非线性（色调曲线、gamma、LUT）之前。线性域内噪声零均值，色度降噪不会产生去饱和偏差。
- `M` 取可逆矩阵 `Y = (R + 2G + B)/4, Cb = B − G, Cr = R − G`：灰轴上 `Cb = Cr = 0`，色度零点与中性色一致；全部系数为 2 的幂，fp16 下无额外舍入。
- `K` 为数值缩放：`K = min(2^12, 2^15 / maxSignal)`，使读出噪声远离 fp16 次正规区，同时为 HDR 合成留出余量。§2.1 的 `A` 含 `K`。

### 4.2 分解

降采样拉普拉斯金字塔（Burt–Adelson）：

```
G_{l+1} = ↓2 (h * G_l)
L_l     = G_l − ↑2 (2h * G_{l+1})      (二维增益 4)
G_l     = L_l + ↑2 (2h * G_{l+1})      (按构造完美重建)
```

`h` 直流增益为 1，因此 `G_l` 保持信号均值，`μ` 在所有层级同义。

| | 亮度 `h_Y` | 色度 `h_C` |
|---|---|---|
| 滤波器 | `[-1, 0, 9, 16, 9, 0, -1] / 32`（4 点 Deslauriers–Dubuc，`H(π)=0`） | `[1, 4, 6, 4, 1] / 16`（二项式） |
| 选择理由 | 频带选择性好，层间混叠小，纹理细节集中在本层 | 无负瓣，色边界处不振铃、不产生彩边 |
| 层数 | 5 个细节层 + 基底 | 自适应：直到某层预测色度噪声标准差低于 `0.25·LSB_K`，上限 7 层 |

两者都是奇长度对称滤波，降采样网格不偏移半像素。

### 4.3 处理顺序

```
分解：G_0 → G_1 → … → G_N
合成（自粗到细）：
  G̃_N = G_N                                   (基底不处理，其噪声已可忽略)
  for l = N-1 … 0:
      base   = ↑2 (2h * G̃_{l+1})
      L_l    = G_l − ↑2 (2h * G_{l+1})          (带噪拉普拉斯，现场计算不落盘)
      Σ_l    = §2.1，μ 取 base
      Ỹ 层   = base_Y + ShrinkLuma(L_{Y,l}, …)
      C̃ 层   = base_C + ShrinkChroma(L_{C,l}, …, 亮度引导)
      G̃_l    = (Ỹ, C̃)
输出：M⁻¹ / K⁻¹ / W⁻¹，乘回 g
```

## 5. 管线与调参表

各管线的噪声与理论值的偏差不同（§2.5），调参表按管线分开：

| 管线 | 输入 | `m` |
|---|---|---|
| `VGN` | 标准 Bayer 单帧 | 1 |
| `QUAD` | Quad Bayer 单帧 | 1 |
| `SABRE` | Sabre 合成（RGB 输出） | §2.2 |
| `SPATIAL` | Spatial RGB 合成（CPU AOT） | §2.2 |
| `BITMAP` | 无 RAW 档案的 Bitmap / JPEG | §9 |

调参坐标为档案给出的中灰相对噪声 `n = √(m · v_Y(0.18)) / 0.18`，`v_Y` 为 §2.1 中亮度分量的点方差（不含 `κ⁰`、`K`）。

调参表在 `PhotonDenoiseTuning`：每条管线一组按 `n` 排序的节点，节点字段与 `tune.py` 的输出一致（`α_l, t_l, d_l`、两组门限、联合双边层数与系数）；节点之间按 `ln n` 线性插值（层数取较近节点），两端外取端点值。调参前每条管线只有同一个默认节点。

### 5.1 逐图噪声强度

§2.1 模型给出噪声的**形状**：随信号的 read / shot 两项、LSC、§2.2 合成方差图、§2.4 残余比、去马赛克后各层的相对比例。它的**大小**与实际不符，且因传感器、增益、管线而异：去马赛克与传感器自身的噪声相关性把能量推向粗层，档案在高增益下偏高 1.6–1.8 倍，低增益下暗部偏低；同一张图内“实际 / 模型”还随亮度变化，高 ISO 暗部低于亮部，ISO 100 相反。App 面向所有机型，不能按镜头逐个调表，因此每张图在降噪前估出自己的强度表。

**强度表** `S[l][b][c]`：`l` 为金字塔层（全部层），`b` 为 8 个亮度档（`log₂(Y/K)` 在 `[−8, 0]` 上每档 1 级，档中心 `b + 0.5 − 8`），`c ∈ {Y, Cb, Cr}`。Band 按本层基底亮度在档中心之间对 `log₂` 线性插值（两端外取端点），模型方差 `Y, Cb, Cr` 分别乘 `S_Y, S_Cb, S_Cr`，`Cb–Cr` 协方差乘 `√(S_Cb S_Cr)`。

**估计**（GPU，分析金字塔建好之后、合成之前；`PhotonNoiseEstimator`）：

1. 逐层取 `L = G_l − ↑G_{l+1}`、`base = ↑G_{l+1}`（均为未降噪金字塔），按 §2.1（含 §2.2、§2.4，不含强度）算模型方差 `N_c`；截断像素、`N_c ≤ 0` 的像素、基底绿色信号不为正的像素（黑边）不参与。
2. 抽样：第 0 层每 4 像素、第 1 层每 2 像素取一个样本，每 2×2 个样本错开一个像素以覆盖四个 Bayer 相位；更深的层取全部像素。平坦门：粗层 `G_{l+1}` 的亮度中心差分（折算到本层像素）`|∇G_{l+1,Y}| / 4 < 0.5 √(g_l · N_Y)`，`g_l` 第一轮为 1，之后取上一轮本层 8 个亮度档强度的中位数。门限若只按模型 σ，实际噪声远高于模型时（Bitmap 的名义参考噪声为一个码值，实际是其数十倍）几乎所有平坦像素都被基底中的噪声梯度挡住；共 3 轮，Bitmap 实测第 2 轮起收敛，RAW 的结果变化在 10% 以内。
3. 每个 (层, 亮度档, 通道) 统计 `log₂(L_c² / N_c)` 的 64 桶直方图（`[−12, 8)`，工作组内共享内存累加后并入全局计数）。
4. 解析：桶内线性插值求中位数，除以 χ²₁ 的中位数 0.4549 得到方差比；样本少于 200 的档为空。每层每通道的空档按档序号在已测档之间线性插值、两端外取最近已测档；随后每档限定在相邻 5 档（含自身，边缘取实际存在的档）中位数的 `[1/1.5, 1.5]` 倍之间——纹理占据单个亮度档时该档孤立偏高（10x 合成 1793253630461 的 L2 / L3 有 19、30、55 而相邻档 4–7），样本少的档可能孤立偏低。整层没有已测档时，取上两层逐档比值的中位数（限定在 1–2）乘上一层，第 0 层为 1：实测各管线的强度都随层级增长，沿用上一层会系统偏低。结果限定在 `[0, 4096]`。
5. **上限**：盲估计无法区分与噪声能量相当的细纹理（附录 C），纹理落在某个亮度档时，该档被估高，表现为抹平细纹理。纹理与噪声幅度接近时误判代价最大，这发生在高 SNR；低 SNR 下噪声远大于纹理，估计可靠。因此每层的上限按整图 SNR（下方定义）在节点 5 / 20 / 40 之间对 ln SNR 线性插值、两端外取端点（`PhotonDenoiseTuning.ESTIMATE_CAP`，L4 之后沿用 L4）：

| 上限（SNR 5 / 20 / 40） | 亮度 | 色度 |
|---|---|---|
| L0 | 2 / 1.5 / 0.75 | 1 / 1 / 1 |
| L1 | 4 / 3 / 1.25 | 2 / 2 / 1 |
| L2 | 8 / 6 / 2.5 | 4 / 3 / 0.75 |
| L3 | 16 / 12 / 5 | 12 / 8 / 1.5 |
| L4 | 24 / 18 / 6 | 24 / 16 / 2 |

节点 40 来自 ISO 100 纹理场景；节点 5 / 20 高于 10x 镜头 ISO 9100 合成（SNR 12–16）的估计：亮度 L3 约 10、L4 约 15–20，色度 L3 约 7、L4 约 13。最初的上限（节点 20 处亮度 L3 7、色度 L3 2.5）把这些截到一半以下，色斑残留明显。节点 20–40 之间还没有实拍样本。色度 L1 原先各节点都是 1；8 帧合成 ISO 9100 暗光（SNR 16.5）去掉上限后，暗到中间调各档估计为 1.06–1.92，被截到 1 时 L1 彩噪只压掉约 55–70%，因此 SNR 5 / 20 放到 2。同一图最亮两档估到 5–9，来自显示器摩尔纹，仍被上限挡住。

**整图 SNR** 与 MGC FinishRaw 的定义相同：`SNR = S / √(m_s·s_G·S + m_r·r_G)`，`S` 为平均绿色信号（MGC EstimateSnr：中央 3/4、每 8 行取样、√信号均值的平方，归一化、未白平衡），`r_G, s_G` 为档案的绿色系数，`m` 为 §2.2 的名义合成方差比。`S` 取本次渲染在 CPU 像素上测得的值（`RawMetadata.denoiseSignal`，与锐化 SNR 同一次测量）；像素只在 GPU 上的合成默认降噪取合成器测得的参考帧信号乘输出曝光（`RawDenoiseHistory.signal`，随记录持久化）；两者都没有时按 MGC 取 0.18。

**来源**：

| 输入 | 强度表 |
|---|---|
| 单帧 `VGN` / `QUAD` | 每次渲染时盲估计 + 上限 |
| 合成 `SABRE` / `SPATIAL` 默认降噪 | 盲估计 + 上限（阶段 A）；阶段 B 改为半合成差分 |
| 合成图的用户调整 | 默认降噪时的强度表，随 `RawDenoiseHistory` 持久化；无记录时盲估计 + 上限 |
| `BITMAP` | 每次渲染时盲估计，不设上限（无整图 SNR，§9） |

**阶段 B：半合成差分（多帧）**。合成时把各帧轮流累加到 A、B 两组累加器（参考帧在 A），全合成为两者之和；`D = M_A − M_B` 中场景内容抵消，只剩噪声。按逐像素的帧权重和与平方和，`r = Var(M) / Var(D) = [(Q_A + Q_B)/(W_A + W_B)²] / [Q_A/W_A² + Q_B/W_B²]`，`Ñ = √r · D` 与 `M` 的噪声同分布，且包含合成核的低通效果（§2.5）。`Ñ` 加到 `M` 上再走一遍解析与输出变换，`X' − X` 即经过真实去马赛克的噪声样本；估计步骤 1 的 `L` 换成 `L(X') − L(X)`，不设平坦门，只排除任一半接受度不足的区域，也不需要上限。代价是第二套累加器与第二次解析（Sabre、Spatial 的解析在 CPU AOT 上），实施前先测这部分耗时。

**验证**（numpy 原型，2026-10-29）：

- 设备导出（阶段 A 首版）：GPU 估计值与按基底梯度选平坦像素的离线实测逐档一致（单帧 3x / 10x，ISO 9100）；10x 合成偏低来自上限，按上表放宽后色斑明显减少。暗部仍有孤立的彩色亮点（重尾冲激噪声），中位数估计与色度门控都不针对它，另行处理。
- Bitmap（1793253833193，3072×4096）：L0 亮度在暗档约 26、亮档约 210，L1 85–440，原固定值 0.6 / 9.6 低一到两个数量级；按估计值降噪后平坦区明显更干净，叶片边缘保留。

- 3x 镜头单帧（ISO 9100，SNR 5.3）：估计后各层各档“实际 / 估计”0.87–1.10；平坦区残余亮度 L0–L3 为 1–12%。原先按另一颗镜头测的固定表在这张图上偏低 1.7–3.3 倍，残余 14–43%。
- ISO 100 纹理场景（Sabre 1793243503594，SNR 91）：不设上限时暗档 L0 / L1 被深色材料的细纹理估到 2.5 / 4.1，纹理被抹平；在亮度档内再按空间分块取低分位无改善（暗档内没有平坦区域）；加上限后与原固定表的结果一致。
- 与附录 C 的关系：附录 C 要求单图估计在所有场景（含纹理铺满）都准确，未能达到；这里不再要求，纹理场景的误差由按 SNR 收紧的上限限定在可接受范围，多帧则由阶段 B 绕开盲估计。

**原实测强度图**（2026-10-29，按管线 × 整图 SNR 节点的固定表，已删除）只作为验证记录：VGN 来自 1793246008853（ISO 6375，SNR 5.3）与 1793250894093（ISO 9052，SNR 8.8）；SABRE 来自 1793245968158（ISO 5769，SNR 15.8）与 1793243503594（ISO 100，SNR 91）；SPATIAL 来自 1793245987100（ISO 6253，SNR 14.2）与 1793243490454（ISO 100，SNR 86）。同一 SNR 下 3x 镜头与上述镜头相差 1.7–6 倍，这是改为逐图估计的直接原因。

## 6. 亮度算法

侧重点：**保留纹理与边缘，避免涂抹感；接受可控的细颗粒**。对应 Pecan 的特征：更锐的分解滤波、每层强度、离群距离、细节回填（revert）。

### 6.0 第 0 层离群点预滤波

去马赛克让噪声在空间上相关，暗部出现 2–3 像素的小团（输入 L0 带中约 2.5–3σ）。§6.1 的窗口里，团内各点互为高权重邻点，能量由小团自身撑起，收缩后成片保留，提亮后可见。把 Huber 基准换成 3×3 中值无效（实测斑点数不降），因此在分解前对第 0 层做条件中值。`Y`、`Cb`、`Cr` 三个通道各自独立判定，`c` 表示其中一个通道：

```
m      = G0_c 的 3×3 中值
σ²     = §2.1 第 0 层 c 通道模型方差 × §5.1 c 通道强度（在未降噪的 ↑G1 上）
替换条件：|G0_c − m| > 2.5σ
         且 3×3 内与中心同号、偏离超过 2.5σ 的邻点不多于 2 个（线条至少有 2 个，保留）
         且 5×5 内 L0_c² 的均值（不含中心）< 3σ²（邻域像噪声；纹理区远高于此）
G0_c  += (m − G0_c) · a_c，a_Y = min(s_Y, 1)（亮度未降噪时为 0），a_Cb = a_Cr = min(s_C, 1)
```

只改第 0 层的细节层输入（`G1` 及更粗的层仍来自原图，强度估计在预滤波之前）。实拍（4096×3072 单帧 ISO 694，暗部提亮约 40 倍）：替换约 2.6% 的像素，斑点数 772 → 28；纹理区（灯阵、标识文字）与原输出的相对均方差约 2%，肉眼无差别。门限按模型 σ 而不是邻域 MAD：MAD 混入低频起伏，同样参数下只减少到 338。

色度通道：高 ISO 多帧合成后，暗部残留孤立的饱和红/蓝单像素。它们是稀疏的脉冲，§5.1 的中位数估计不受其影响；单点幅度又远超 σ，Wiener 收缩也保留。只做亮度预滤波时，这些彩点照样留下。实拍（4096×3072、8 帧合成、ISO 9100，暗部提亮 8–20 倍）：`Cb`/`Cr` 各替换约 1.1–1.3% 的像素，两块暗区的彩点数 5725 → 3491、5353 → 2871，饱和彩点基本消失，余下的是淡的约 2 像素软斑。

### 6.1 逐层收缩：两阶段经验 Wiener

对 `L = L_{Y,l}(p)`，`σ² = σ²_{Y,l}(p)`：

1. **结构张量**：在 `G̃_{Y,l+1}`（已降噪，噪声小）上计算结构张量，得到局部主方向与各向异性度 `a ∈ [0,1]`。
2. **导向能量估计（pilot）**：在沿边缘方向拉长的椭圆窗（平坦区退化为 5×5 圆窗）内，以 Huber 权重估计信号能量：
   `Ê = max( Σ_q w_q (L_q² − σ_q²) / Σ_q w_q , 0 )`。Huber 权重对 `|L_q − L_p| > d_l·σ` 的邻点降权，`d_l` 即“离群距离”，防止一侧强边缘污染另一侧的能量估计。中心点的权重另乘 `smoothstep(6, 10, |L_p|/σ)`：Huber 以中心为基准，中心只要偏出约 `d_l·σ`，所有邻点都被降权，能量几乎只来自中心自身，这个噪声点就自我保留——实拍（4096×3072 单帧 ISO 694，2026-11-04）中这类点在提亮后成片可见；10σ 以上的真实点（星点、高光点）仍按原规则计入。
3. **pilot 收缩**：`ŝ₁ = L · Ê / (Ê + α_l σ²)`。
4. **第二阶段**：在同一窗内用 `ŝ₁²` 重估信号能量 `Ê₂`，增益 `g = Ê₂ / (Ê₂ + α_l σ²)`，最终 `ŝ = L · g'`，`g' = g + smoothstep(0.25, 0.5, g) · (g^{γ_l} − g)`。两阶段可抑制单阶段经验 Wiener 的“音乐噪声”（孤立残留斑点）。

`α_l = 1`、`γ_l = 1` 即模型噪声下的最小均方误差（MMSE）估计。MMSE 把与噪声同量级的细节压掉一半左右：人像（4096×3072 单帧 ISO 694，2026-11-05）脸部 L1 / L2 在局部 `E/N` 1.5–3 的像素上只保留 0.52 / 0.54 的信号幅度，这类像素占脸部 L1/L2 的 40–50%，脸部发虚，锐化补不回（L0 在脸部几乎没有信号）。`γ_l = 0.5`（L0–L2）在这段保留约 0.7。全局 `g^γ` 会把纯噪声区的小增益（0–0.3）放大成 0.3–0.55，暗部提亮后的斑点从 28 个回到 443 个；只在 `g ≥ 0.25` 起渐入，纯噪声区保持 MMSE（斑点 65 个，观感与 MMSE 相同），脸部清晰度与全局 `γ` 相同。

### 6.2 颗粒保留（替代 revert factor）

```
out = ŝ + β_l · (L − ŝ)
```

在平坦区（`Ê ≈ 0`）残余噪声标准差为 `β_l σ`，因此 `β_l` 的物理含义是**本层保留的原始噪声比例**。调参参数直接写为目标残余噪声比 `t_l`，`β_l = t_l`。中高频层的少量颗粒保留是避免“塑料感”的主要手段。

### 6.3 层间分工

| 层 | 内容 | 典型设置 |
|---|---|---|
| L0 | 像素级细节、高频噪声 | `t` 较高，窗口小（3×3 + 方向拉伸） |
| L1–L2 | 主要纹理 | MMSE，`t` 中等 |
| L3–L4 | 低频亮度斑块 | `t` 低、`α` 略高，暗部低频起伏是高 ISO 的主要观感问题 |

### 6.4 调参参数

每条管线、每个噪声水平节点 `n`、每层：`α_l, t_l, γ_l, d_l`。由 §12.2 的离线 PSNR 优化得出，不从 MGC binarypb 换算，因为两者参数语义不同。§2.5 的系统误差使不同管线、不同层的最优 `α_l` 偏离 1，偏离量与 §12.1 测得的模型误差一同记录，便于判断调参是否在弥补模型误差之外引入了别的偏差。

### 6.5 截断区域

信号接近白点（含合成后的 HDR 白点）或被钳位到 0 的像素：噪声方差视为 0，在能量估计中权重置 0。高光内部不降噪，也不让截断像素参与邻域统计。

## 7. 色度算法

侧重点：**彻底消除低频色斑；色边界不渗色、不振铃；不降低饱和度；不保留色颗粒**。对应 MGC ChromaDenoise 的特征：更平滑的滤波器、按通道的噪声方差、离群阈值、更依赖粗层。

### 7.1 向量化处理

`(Cb, Cr)` 作为二维向量处理，使用 §2.1 的 2×2 协方差 `Σ_C,l(p)`（含 Cb–Cr 互协方差）。距离采用马氏距离 `D² = Δcᵀ Σ_C⁻¹ Δc`，各向同性阈值在色度空间中自动随噪声形状变化。

### 7.2 亮度门控的细节层

色度细节层 `L_{C,l}` 绝大部分是噪声。保留规则：

```
ζ_Y = 亮度 pilot ŝ₁ 在 3×3 内的显著度 = Σ ŝ₁² / Σ σ_Y²            (亮度不处理的层用 L_Y)
ζ_C = L_Cᵀ Σ_C,l⁻¹ L_C                                          (马氏距离平方)
g_Y = smooth(ζ_Y; χ²_9 分位 τ_Y),  g_C = smooth(ζ_C; χ²_2 分位 τ_C)
Ĉ   = ŝ₁(p) · Σ_{5×5} ŝ₁ L_C / Σ_{5×5} (ŝ₁² + ε σ_Y²)              (亮度回归出的色度, ε = chromaGuide)
out = f(SNR_p) · ( g_C · L_C + (1 − g_C) · g_Y · Ĉ )                (f 只作用于 l < chromaDetailFrom)
```

- 亮度边缘处保留的是与亮度相关的色度 `Ĉ`（真实颜色边界几乎总伴随亮度边界），不是带噪的 `L_C` 本身；
- 等亮度色边缘由色度自身马氏距离超阈保留（`τ_C` 即离群阈值，以卡方分位数表示）；
- 其余细节清零，不做颗粒回填（`t_C = 0`）。

`ζ_Y` 使用亮度 pilot（已收缩的亮度带）与其模型方差：用带噪亮度带时，一个亮度噪声点会打开色度门，留下彩色点。pilot 在融合 dispatch 的共享内存中已有，亮度与色度仍在同一 dispatch 内完成。

`ζ_C` 只从第 `chromaGateFrom = 2` 层起参与，L0 / L1 的色度细节只由 `ζ_Y` 打开。原因：去马赛克与多帧合成后，细层色度噪声在空间上成团、尾部重，χ²₂ 门的尾部在暗部大面积开门，留下的就是提亮后的孤立彩点。实拍（4096×3072、8 帧合成、ISO 9100，暗部提亮 15–34 倍）三块暗区：
- 按单像素马氏距离（现状）：彩点 2207 / 1050 / 1273；
- 去掉 `ζ_Y`、保留 `ζ_C`：数量不变；去掉 `ζ_C`：全部消失，说明彩点只来自 `ζ_C`；
- 只在 L0 关 `ζ_C`：1655 / 598 / 774；L0、L1 都关：1 / 0 / 1；
- 改为 3×3 累加的马氏距离（χ²₁₈ 分位）：只降到 2015 / 852 / 947，色度噪声成团，邻域累加同样超阈。

代价是 L0 / L1 上不伴随亮度边界的颜色边缘不再单独保留。ISO 694 人像上，唇边、眼周的色度变化 rms 约为信号的 0.65%，1:1 并排看不出差别。

**亮度边缘的色度。** `ζ_Y` 在真实亮度边缘处全开，按 `gate · L_C` 会把边缘两侧的色度噪声整段放过（ISO 9100 白色充电器左缘暗侧，提亮后贴边一串红绿点）。改为在 5×5 内用 pilot 对色度带做回归 `Ĉ`，只保留随亮度变化的色度，`ε = chromaGuide = 2` 让亮度带只有噪声时回归系数趋零。贴边 8 px 条带内沿边方向的色度高通 rms：`gate · L_C` 0.0073 / 0.0044，加暗部衰减后 0.0041 / 0.0037，再换成 `Ĉ` 0.0030 / 0.0033；把 L0–L2 色度带直接清零的下限为 0.0025 / 0.0029，`ε` 取 1–4 结果相同。

**暗部的细层色度。** 带暗环的 4–8 px 红点同时有亮度跳变，在 L2 由 `ζ_Y` 放行，色度门从哪层开始都去不掉；手机全图缩放观看时正是这类点。旧 MGC 的色度后处理（3×3 亮度钳位、3×3 去极值色度均值、方向色度滤波、两级 IIR 低通）实际上丢掉了全部细尺度色度。这里只在暗部这样做：`l < chromaDetailFrom = 3` 的色度细节乘以 `f = smooth(SNR_p; chromaDetailSnr = 4, 10)`，`SNR_p = Y / σ_Y` 是单个源样本的亮度信噪比（§2.1 点协方差，不含 κ、残差与 §5.1 强度，各层相同）。同一张 ISO 9100 实拍：有彩点的暗区 `SNR_p` 中位 1.8–2.8，无彩点的中灰墙 5.4，亮部约 38；清零 L0–L2 色度后红点与淡彩斑全部消失。ISO 694 人像（`SNR_p` 中位 24）上与原输出相对差 0.01–0.06%。

### 7.3 粗层联合双边滤波

亮度门控只处理细节层；低频色斑存在于粗层的高斯层本身。对色度最粗的 2–3 层，在 `base_C` 上额外做亮度引导的联合双边滤波：

```
w(p,q) = 空间核 · exp(−‖Ỹ_p − Ỹ_q‖² / (2 c_Y σ²_{Y,l})) · exp(−D²_C(p,q) / (2 c_C))
```

`Ỹ` 用本层已降噪亮度。亮度距离以本层亮度拉普拉斯的模型方差 `σ²_{Y,l}` 为单位，色度距离为马氏距离，`c_Y, c_C` 为无量纲调参量。

### 7.4 调参参数

每条管线、每个噪声水平节点：`τ_Y, τ_C`（卡方分位）、联合双边层数与 `c_Y, c_C`、各层 `α_C`。

## 8. 用户强度映射

`DenoiseStrength` 范围 `0..2` 保留，只作用于估计器的激进程度，不修改噪声模型：

| 强度 `s` | 亮度 | 色度 |
|---|---|---|
| `0` | 关闭 | 关闭 |
| `0 < s ≤ 1` | `t_l(s) = 1 − s·(1 − t_l)`，`α = α_l` | 门控输出 `= s·gate·L + (1−s)·L` |
| `1 < s ≤ 2` | `t_l → t_l·(2 − s)`，`α = α_l·s²` | 阈值分位上移、联合双边 `c_C·s²` |

`s = 1` 等于调参默认值。

## 9. Bitmap / JPEG 路径

Bitmap / JPEG 已经过 ISP：即使关闭机内降噪与锐化，输出的噪声也已被处理过（细层基本被抹去，残余集中在中低频，色度更明显），没有可用的噪声模型，也不做测量（2026-10-29 对一张 JPEG 的测量中，L0 只剩 8 位量化，粗层的"噪声"主要是处理残留与画面缓变，色度在亮部被量化到中位数绝对偏差为 0，无法作为强度依据）。因此该路径做**盲降噪**，强度不来自噪声模型：

1. 不线性化，直接在 sRGB 编码值上降噪：JPEG 的残余噪声在编码域近似与亮度无关。`W = I`，`g ≡ 1`，`m = 1`；
2. 参考噪声为恒定的一个 8 位码值（`r = (1/255)²`，`s = 0`，三通道相同），只作为强度的单位；
3. 各层强度由 §5.1 的逐图估计给出（相对一个码值的参考噪声，不设上限）。此前用参考 JPEG（导出 1793245183659，3072×4096）测得的固定强度（亮度 L0–L4 0.6 / 9.6 / 57 / 209 / 209，色度 0.046 / 0.55 / 2.3 / 15 / 105）不随图片变化，在其他 JPEG 上偏低一到两个数量级，已删除。ISP 处理后的残余噪声从 L1 起是几个码值的成片起伏，越往粗层越强，且随图片差异很大；
4. 用户的亮度、色度强度按 §8 分别作用，与 RAW 路径相同；
5. 降噪前先把输入复制为 `RGBA16F`，降噪后再复制回原纹理；调试导出写的就是这张 `RGBA16F` 输入（文件名 `<时间>_BITMAP_EDIT_<原点>`，`.json` 中没有 RAW 元数据）。

实现：`LutImageProcessor.renderBitmapPhotonDenoise` → `PhotonNoiseModel.buildBitmap` → 本降噪器。编辑预览、导出与相册 AI 前置色度（`applyChromaDenoise`，只开色度）共用；相册 AI 前置色度使用的处理器实例没有 `Context`，不会导出。

## 10. GPU 实现

遵循 `docs/gles-driver-compatibility.md`：所有浮点 sampler 显式 `highp`；`RGBA16F` image 只写、ping-pong，不原位读写；全帧纹理，不分条带；分配前查询 `GL_MAX_TEXTURE_SIZE`。

### 10.1 Pass

| # | Pass | 输入 → 输出 |
|---|---|---|
| 1 | LscGain | 已施加增益图 → 1/4 分辨率增益纹理（§3.3） |
| 2 | Analyze₀ | 相机 RGB → 除增益、白平衡、`M`、`K` → `G1`（`G0` 现场计算，不落盘） |
| 3 | Analyze₁…N | `G_l → G_{l+1}`，亮度与色度两组滤波器同一 dispatch 输出 |
| 3a | Estimate₀…N−1 | §5.1 每层抽样、平坦门、按 (亮度档, 通道) 统计直方图：每个工作组在共享内存累加 64×64 个样本后并入全局 SSBO；参数已带强度表时跳过 |
| 3b | Resolve | §5.1 直方图 → 强度表 SSBO（中位数、跨档填补、上层回退、上限），一个工作组；需要记录时回读（默认降噪写入历史、调试导出） |
| 3c | Prefilter₀ | §6.0 第 0 层 `Y`/`Cb`/`Cr` 条件中值，输出 `RGBA32F` 修正量，第 0 层合成读入时加到三个通道上；亮度与色度强度都为 0 时跳过 |
| 4 | Synthesize_{N−1…1} | 每层一个融合 dispatch：共享内存分块计算 `L_l`、`base`、§2.1 协方差与亮度 pilot，再做第二阶段收缩 + 色度门控 + 粗层联合双边，输出 `G̃_l` |
| 5 | Synthesize₀ + Output | 第 0 层同一融合 dispatch，与 `M⁻¹ / K⁻¹ / W⁻¹`、乘回 `g` 合并，直接写相机 RGB 输出纹理 |

所有 pass 用 shared memory 瓦片（含滤波器与窗口所需的 halo），工作组尺寸只依赖 GLES 3.1 的最低保证。

大 pass 按工作组行分带提交（Analyze 每带 ≤16384 组、Synthesize ≤8192 组即约 52 万像素、Estimate ≤128 组即约 52 万样本），带之间 `GlesGpuScheduler.waitForGpuCheckpoint`：整帧一次 dispatch 会让 GPU 连续被占用数百毫秒，UI 掉帧；各带写入互不重叠，pass 的 barrier 放在最后一带之后。

### 10.2 存储

- 金字塔层：`RGBA16F`（Y, Cb, Cr, 空），`K` 缩放保证精度。
- 第 0 层不存 `G0` 和 `G̃0`；总额外显存约为 `(1/4 + 1/16 + …) × 2`（`G` 与 `G̃`）≈ 0.67 张全分辨率 `RGBA16F`，外加增益纹理。
- 所有方差运算在着色器中以 `highp float` 进行。
- 噪声 UBO：档案系数、`A`、`κ⁰[k][l][φ]`、`t²_{k,l}`、调参参数，每次渲染上传一次；合成方差图 `(m_r, m_s)` 为 `RG16F` 纹理（单帧为 1×1 的常量 `(1, 1)`）。

### 10.3 接入点

| 路径 | 当前 | 新 |
|---|---|---|
| 路径 | 原实现 | 现实现（第 6 步已接入） |
|---|---|---|
| Spatial / Sabre 默认降噪（`processMgcSpatialGpuLinearRgb`） | 回读 → MGC CPU → 上传 | 直接对 `workingFloatTexture` 运行，输出转 RGBA16UI；不再有 CPU 回读边界 |
| 用户调整（整图与分块，`renderPhotonUserAdjustmentDenoise`） | MGC，失败时回退 NLM + 色度 | 唯一路径，无回退；没有 RAW 噪声档案时不降噪并记录日志 |
| Bitmap 编辑（`LutImageProcessor`） | NLM + 色度 | §9 |
| 相册 AI 前置色度（`GalleryViewModel` → `applyChromaDenoise`） | 色度降噪 | §9，只开色度 |

拍摄时的强度（`CameraViewModel.resolveCaptureDenoiseStrengths`）：设置中的 RAWmax 亮度 / 色度强度，合成拍摄写入默认降噪（可编辑初始值为 0）；单帧 RAW 没有默认降噪，同一强度作为可编辑初始值，由用户调整降噪施加。

## 11. 实现的正确性

`κ⁰` 与 §2.1 协方差的计算有 numpy 参考实现（`tools/photon_denoise/noise_model.py`），着色器与 Kotlin 实现逐项与之比对。

## 12. 验证

### 12.1 模型误差测量（记录，不作门禁）

同一静止场景、同一参数拍两次（三脚架、遥控或定时快门；合成管线为两次独立合成），经 App 管线处理到降噪入口后导出（debug 属性 `debug.photon.denoise.dump`，每次写 `<stem>.{json,rgba16f,params.json}`）。两幅图的拉普拉斯层相减再除以 `√2`，信号抵消，方差即单幅图的真实噪声方差。离线工具 `tools/photon_denoise/model_error.py` 按管线、层、相位、亮度箱、ISO 计算“真实 / 模型”之比与 Cb–Cr 相关系数，并输出 §13 记录表的行。

工具细节（已实现）：
- 两幅图各自用降噪器的金字塔分解；模型方差按两幅图上一粗层高斯层的均值计算（模型 `r + sμ` 对 `μ` 线性，噪声均值不带来偏差）。
- 错位保护：同层高斯差分 `G_l^A − G_l^B` 的任一分量超过所在亮度箱稳健标准差（MAD）的 4 倍时剔除，再膨胀 3 像素；判定只用数据本身，不依赖被检验的模型。4σ 截断对纯噪声的方差影响约 0.07%。保护针对场景变化（移动物体）；亚像素或 1 像素的整体错位残余与单像素噪声同量级，任何统计判据都无法分离，只能由拍摄规程排除。
- 自测 `--self-test`：白噪声（模型在此精确成立）加一个只出现在 B 中的移动物体，2048×1536、5 层。在亮度 ≥ 2⁻⁷ 的箱上，比值偏差最差为容差（5% 与 4 倍标准误取大）的 0.78 倍，Cb–Cr 相关为 0.62 倍，通过。更暗的箱如实报告但不参与判定：那里粗层底图自身的噪声超过信号，模型中的 `max(μ, 0)` 使预测方差偏大（最暗箱比值约 0.93），这是降噪器在最深暗部的真实模型误差。

该比值不进入算法。它用于：判断 §2.5 各项误差的实际大小；解释 §6.4 调参中 `α_l` 偏离 1 的原因；发现档案本身的错误。

### 12.2 合成真值 PSNR 与 DnCNN 对照

内置 `assets/dncnn.tflite`（`ml/DnCNNDenoiseEstimator`）已核实的特性（用 LiteRT Python 加载检查）：

| 项 | 结果 |
|---|---|
| 输入 / 输出 | `image [1,256,256,1] float32` → `denoised_image [1,256,256,1]`，**单通道** |
| 结构 | 17 层 `CONV_2D` + `SUB` + `MINIMUM`：标准 DnCNN 深度，内部做残差学习（输入减去预测噪声），输出直接是降噪结果 |
| 预处理 | `native-lib.cpp` 中 `preprocessNative`：8-bit sRGB `/255`，单通道模型取 `0.299R + 0.587G + 0.114B` |
| 噪声输入 | 无 σ 输入，是盲去噪 |
| 实测有效范围（平坦 0.5 灰 + AWGN，8-bit 刻度） | σ=10 → 残差 0.42；σ=25 → 1.28；σ=50 → 35.99（失效）。有效范围约为 σ ≤ 25–30 |
| 训练噪声类型 | 无法从模型文件确定；行为与 AWGN 训练的盲 DnCNN 一致 |

推论：DnCNN 只能对照**亮度**；色度算法没有 DnCNN 基线。测试集需要按显示域等效 σ 分组，超出 σ≈25 的组单独报告，不与 DnCNN 比较。

对照协议：

1. **干净参考**：基础 ISO 三脚架多帧合成，再做 2×2 binning，得到线性干净图像 `x`。
2. **带噪输入**：同一场景按调参节点的 ISO 实拍（单帧与各合成管线），经实际管线；与 `x` 配准、曝光对齐。
3. **本算法**：实际管线 → 本降噪 → 固定参考渲染（固定白平衡、矩阵、sRGB 曲线，无局部影调）。
4. **DnCNN**：实际管线 → 同一固定渲染 → 8-bit → 取亮度（与 `preprocessNative` 相同的系数）→ DnCNN，256×256 分块，重叠拼接。
5. **指标**：
   - 亮度：在固定渲染后的 sRGB 亮度上，对真值的同一亮度计算 PSNR / SSIM，本算法与 DnCNN 并列；
   - 全色彩：本算法在 sRGB 与线性域各算 PSNR，并报告 CIEDE2000 色差，用于评估色度（无 DnCNN 对照）；
   - 按亮度分箱（暗部、中间调、高光）以及按显示域等效 σ 分组分别报告。
6. **解读**：DnCNN 在空间变化、信号相关的噪声上处于训练分布之外，且受 8-bit 量化和 σ≈25 有效上限的限制。它作为亮度参照基线，不作为必须超越的门槛。§6.4、§7.4 的调参以本项 PSNR 为优化目标。

### 12.3 实拍

无真值实拍做方法噪声检查（平坦区 `(输入 − 输出)` 的方差应接近 `(1 − t²)σ²`，与输出梯度的相关应接近 0）与主观评审。DnCNN 输出不作为实拍的 PSNR 参考。

### 12.4 工具

- `tools/photon_denoise/`（uv 管理）：`noise_model.py`（`κ⁰` 与协方差参考实现）、`validate_model.py`（§16 第 1 步门禁）、`validate_propagation.py`（`κ⁰` 传播的门禁）、`photon_denoise.py`（逐 pass 数值参考）、`compare_passes.py`（设备逐 pass 比对）、`model_error.py`（§12.1）、`image_metrics.py`（固定参考渲染、PSNR / SSIM / CIEDE2000、DnCNN 推理（LiteRT Python））、`tune.py`（§12.2 对照与参数搜索）。
- 设备端：debug 构建中以属性 `debug.photon.denoise.dump` 在降噪入口导出相机 RGB 浮点纹理、元数据（档案、白平衡、增益图、管线、帧数）与本次的模型参数（`<stem>.params.json`）；另设 `debug.photon.denoise.parity` 时追加运行本降噪器并导出逐 pass 纹理（约 350MB / 6MP，供 `compare_passes.py`）。

## 13. 模型误差记录

§12.1 的测量结果按下表记录。每行由 `model_error.py` 直接输出：“各层 真实 / 模型”为第 0 层到最深层在最接近中灰（0.18）的已测亮度箱上的相位平均比值，“Cb–Cr 相关”为各层“实测 / 模型”相关系数。完整的按层 × 亮度箱 × 相位明细随工具输出一同保存。

拍摄规程：
1. 三脚架固定，遥控或定时快门；静止场景，含灰阶卡、彩色色块、大面积平坦区与纹理区；光源稳定（避免频闪）。
2. 设置 `debug.photon.denoise.dump=true`；每个组合连拍两张：合成管线（Sabre、Spatial）直接拍摄即导出默认降噪入口；单帧管线（VGN、Quad Bayer）拍摄单帧 RAW 后在编辑中把降噪调到大于 0，导出用户调整入口。
3. 覆盖：每条管线 × ISO（基础值到最高，约每 1 EV 一档）。
4. `adb pull` 导出目录后运行 `model_error.py A.json B.json …`，把输出的 §13 行追加到下表。

| 管线 | ISO | 分量 | 各层 真实 / 模型（中灰） | Cb–Cr 相关（实测 / 模型） | 备注 |
|---|---|---|---|---|---|
| — | — | — | — | — | 尚未拍摄 |

## 14. 代码结构

```
raw/denoise/
  PhotonNoiseModel.kt          §2 档案系数、m、κ⁰、残余比、调参 → PhotonDenoiseParams；LSC 增益图（PhotonLensShading）；§2.4 输出残余比
  PhotonMergeNoise.kt          §2.2 合成方差比
  PhotonNoisePropagation.kt    §2.3 κ⁰（白噪声传播）
  PhotonDenoiseTuning.kt       §5 各管线调参表与插值，§5.1 估计上限，§9 Bitmap 名义档案与固定强度
  PhotonDenoiseShaders.kt      Analyze / Estimate / Resolve / Synthesize（融合）着色器；工作 YCbCr 矩阵与两组滤波器系数；LSC 增益在着色器中双线性采样
  PhotonMultiScaleDenoiser.kt  GLES 编排、资源管理
  PhotonDenoiseDump.kt         §12.4 调试导出（debug）
raw/RawAppliedLensShading.kt   已施加 LSC 增益图及其相册元数据（§3.2）
raw/RawDenoiseHistory.kt       管线、合成方差比、残余比、强度表及其相册元数据（§2.2、§2.4、§5.1）
raw/RawMetadata.kt             appliedLensShading、denoiseHistory 字段
cpp/mgc_denoise_static/mgc_halide_runtime.cpp  共享 Halide 运行时（分配、并行、错误钩子），供其余 MGC capsule 使用（§15）
cpp/mgc_denoise_static/mgc_denoise_static.cpp  只剩锐化与引导上采样 AOT 的包装
cpp/mgc_denoise_static/mgc_guided_prepare_adapter.h  引导上采样的线性 YUV 前向矩阵与白盒 YuvToRgb（§15）
```

调参表以 Kotlin 常量（或 JSON asset）保存，替代 `assets/mgc_denoise/*.binarypb`。

已有代码的去留：

- `raw/denoise/PhotonNoisePropagation.kt` 与 `tools/photon_denoise/noise_model.py`、`validate_propagation.py`：保留，`κ⁰` 的计算与验证。
- `raw/denoise/PhotonNoiseState.kt`：源通道传递矩阵与谱的模型不再使用；工作 YCbCr 矩阵（含精确逆）并入 `PhotonDenoiseShaders.kt`，档案到工作域协方差的计算并入 `PhotonNoiseModel.kt`，其余删除。
- `tools/photon_denoise/noise_estimator.py`、`validate_estimator.py`：实测方案已放弃（附录 C），已删除。

## 15. 移除清单

已核实的依赖关系（各 capsule 导出符号与引用）：

| 符号 / 代码 | 所在 | 降噪以外的使用者 | 处理 |
|---|---|---|---|
| Halide 运行时（`photon_mgc_halide_malloc` 等 hidden 符号、`HalideDoParFor`） | `mgc_denoise_static.cpp` | **所有 capsule**（guided upsample、polysharp、raisr、sabre resolve、sharpen、spatial rgb merge） | 拆到 `mgc_halide_runtime.cpp`，保留 |
| `photon_mgc_yuv_to_rgb_s16` / `RunYuvToRgb` | 完整分辨率降噪 capsule | **`mgc_guided_upsample_jni.cpp:82`**（低分辨率 YUV → RGB） | 按 `mgc_guided_prepare_adapter.h` 中 `GuidedFloatRgbaToLinearYuv` 的做法，从 AOT 中恢复其定点逆矩阵与舍入顺序，写成白盒特化；与 AOT 逐位一致后再移除 capsule |
| `photon_mgc_compute_{bayer,rgb}_noise_model_f32_tile_size_16`、`photon_mgc_downsample_*` | 完整分辨率降噪 capsule | 仅 `ComputeSpatialStrengthMap` | 随其移除 |
| 锐化 YUV 矩阵 | `mgc_sharpen_jni.cpp:15` 自带一份 | — | 不受影响 |
| guided prepare 输入 | `RawDemosaicProcessor.kt:3934` 使用降噪输出纹理 | — | 只依赖纹理，不受影响 |

capsule 生成脚本 `scripts/research/generate_mgc_denoise_static_asm.py`（CMake 报错信息中引用）已不在仓库，无法裁剪 capsule 只保留部分符号。新设计不需要 `ComputeSpatialStrengthMap`，因此 `RunYuvToRgb` 白盒化之后，**完整分辨率降噪 capsule 整体移除**。

移除项（第 6、7 步已全部完成）：

- `MgcFullResolutionDenoise.kt`，`mgc_full_resolution_denoise_jni.cpp`、`mgc_full_resolution_denoise_capsule.bin`、`mgc_full_resolution_denoise_static.S.in`
- `mgc_demoire_capsule.bin`、`mgc_demoire_static.S.in`（MeasureMoire）
- `mgc_denoise_static.cpp/.h` 中全部降噪函数；运行时拆到 `mgc_halide_runtime.cpp`（只保留其余 capsule 引用的 37 个错误钩子），`RunSharpenTo16Bit`、`RunGuided*` 保留
- `RunYuvToRgb`：白盒化为 `GuidedLinearYuvToRgb`（`mgc_guided_prepare_adapter.h`）。系数取自 AOT 入口写入闭包的 4 个常量，`R = Y + rshr(V·25802, 15)`、`G = Y + rshr(V·−15340 + U·−8658, 16)`、`B = Y + rshr(U·21442, 14)`，`rshr` 为带舍入的算术右移，结果饱和到 int16。逐位比对：把 capsule 汇编成目标文件，用 unicorn 在主机上直接执行 AOT 的并行体（宽度为 8 的倍数，不进入尾部；引导上采样的低分辨率宽度恒为 32 的倍数），±32768 边界组合网格与全范围随机输入共 819,200 像素，与白盒公式零差异
- `mgc_spatial_strength_jni.cpp`、`mgc_strength_map_scaler.cpp`、`MgcSpatialStrengthMap.kt`、`MgcSpatialStrengthMapGenerator.kt`、`MgcSpatialStrengthMapScaler.kt`、`MgcSpatialDenoiseModel.kt`；`GlesMgcRawSpatialStacker` 中强度图回读、解算与 Bayer Q14 打包。强度采集本身（`StrengthCapture`）保留并只在 RGB 输出时创建：RGB 合成 AOT 的对齐 / 剔除图集来自它；RGB 合成不再生成只供强度图使用的 Q14 诊断缓冲（`nativeConvertPlanarF16ToFixed16` 删除）
- `MgcSabreMergedNoiseModel.kt`，以及 Sabre 中只为其日志服务的合成因子回读（`readSabreAverageMergeFactor`、`reciprocalGreenWeight4x4`）
- `DemosaicNoisePropagationCalibrator.kt`、`DemosaicNoiseAtlasGenerator.kt`、`DenoiseProfileAlgorithm.kt`、`DenoiseProfileNlmConfig.kt`、`DenoiseProfileStripePlanner.kt`、`lut/ChromaDenoiseAlgorithm.kt`（第 6 步）
- `assets/mgc_denoise/*.binarypb`
- `RawMetadata`、`RawStackResult` 中 `mgcDenoiseReadNoise`、`mgcDenoiseShotNoise`、`mgcDenoiseCorrelation`、`mgcSpatialStrengthMap`、`mgcDenoiseTuningSnr`。这些字段只存在于进程内（DNG 与相册数据库从未保存），无需迁移。单帧的 SNR 测量只保留锐化用的 `mgcSharpenTuningSnr`
- `CMakeLists.txt` 中对应目标与源文件
- 对应的单元测试

Spatial Bayer 合成后去马赛克所用的噪声档案（`spatialOutputNoiseMetadata`）原取自强度图 AOT 的输出模型，改为参考帧 RAW 档案 × §2.2 合成方差比（`DNG_RGB` 布局，`frameCount = 1`），与降噪器使用同一噪声来源。

## 16. 实施顺序与门禁

1. **噪声模型参考实现**：`noise_model.py` 增加 §2.1 的工作域协方差（含 `m`、`t²`）与 `κ⁰` 表输出；`κ⁰` 的传播计算已验证（附录 A）。→ 门禁：合成白噪声（独立源通道、给定档案与 `m`）经本金字塔，各层、各相位协方差与模型之比在 `1 ± 0.03` 内（白噪声满足模型假设，此项检验实现正确性）。
   **已完成（2026-10-28）**：`noise_model.py` 新增 `MergeRatio`（§2.2）、`working_point_covariance`（§2.1 点协方差）、`Kappa0`（κ⁰ 表，`python noise_model.py <亮度层数> <色度层数>` 输出 JSON）、`level_noise`（含残余比 `D Σ D`）。门禁 `validate_model.py`：2048²、每组 6 次实现、5 层 × 4 相位，单帧 / 4 帧不等权不等曝光合成（`m_r = 0.2974`、`m_s = 0.2875`）/ 残余比 `(0.5, 0.3, 0.2)` 三种情况 × 两组彩色信号，Y、Cb、Cr 方差与 Cb–Cr 互协方差最大偏差 2.17%（第 4 层，抽样误差）。实测脚本 `noise_estimator.py`、`validate_estimator.py` 已删除。
2. **已施加 LSC 增益图**的传递与持久化（§3.2），**调试导出**（§12.4）→ 门禁：重新打开持久化 DNG 得到的增益图与写出前一致；导出数据可在 numpy 中正确读取。（“numpy 复现的金字塔与设备端一致”移到第 3 步：设备端金字塔在第 3 步才实现。）
   **代码已完成（2026-10-28）**：`raw/RawAppliedLensShading.kt`、`RawMetadata.appliedLensShading`、渲染入口参数、`raw/denoise/PhotonDenoiseDump.kt`（属性 `debug.photon.denoise.dump`，钩在合成默认降噪与用户调整降噪的回读回调中，写 `.rgba16f` + `.json` 到 `Android/data/<包名>/files/photon_denoise_dump/`）、`tools/photon_denoise/load_dump.py`。往返校验：保存时日志 `Applied LSC persisted WxH hash=…`，重新渲染时日志 `Applied LSC restored WxH hash=…`，两者一致即通过。
   **设备端门禁通过（2026-10-28，PMA110）**：Sabre 8 帧、ISO 100 合成照片，`Applied LSC persisted 17x13 hash=296727762` 与 `Applied LSC restored 17x13 hash=296727762` 一致；`SABRE_DEFAULT` 导出 2728×2048，`load_dump.py` 读取正常（R/G/B 均值 0.104 / 0.253 / 0.153，全部有限），重采样的合成增益 R 1.026–2.608、G 1.008–2.473、B 1.001–2.461。用户调整降噪入口的导出尚未在设备上触发。
3. **着色器与编排**（亮度、色度）→ 门禁：与 numpy 参考逐 pass 比对，最大误差在 fp16 量化界内。
   **代码已完成（2026-10-28），设备比对待运行**：
   - numpy 参考 `tools/photon_denoise/photon_denoise.py`：Analyze（↓2）、Band（`L`、`base`、§2.1 协方差、截断置零）、Pilot（结构张量、各向异性 5×5 窗、Huber、ŝ₁）、Final（第二阶段 Wiener、颗粒保留、色度门控、粗层联合双边、第 0 层输出乘回增益）。上采样按“粗层镜像”的直接定义实现，奇数尺寸向上取整。存储按格式取整（RGBA16F → float16，噪声 RGBA32F）。
   - GLES：`raw/denoise/PhotonDenoiseShaders.kt`（ANALYZE / BAND / PILOT / FINAL）、`PhotonMultiScaleDenoiser.kt`（编排）、`PhotonNoiseModel.kt`（§2 参数、κ⁰、色度层数）、`PhotonDenoiseTuning.kt`（调参前默认值）。LSC 增益在着色器中由增益图手动双线性采样（不用硬件过滤，保证与参考一致），不再单独生成 1/4 分辨率增益纹理。
   - 比对：`debug.photon.denoise.dump=true` 时，在导出降噪输入后用同一纹理运行本降噪器，逐 pass 回读到 `<stem>.<pass>.f16|f32` 与 `<stem>.photon.json`（参数与 pass 清单）；`tools/photon_denoise/compare_passes.py` 以 GPU 的输入逐 pass 重算并按 fp16 ulp 比较（2 ulp + 通道最大值 × 2⁻¹⁴），`--self-test` 已通过。
   - 设备比对第一轮（2026-10-28，PMA110，Sabre 8 帧 2728×2048，7 层）：40 个 pass 中 37 个在容差内，全部 `denoised` 与 `output` 一致；`pilot0/1/2` 共 272 个像素超差，全部位于各向异性恰为 0（结构张量全零）的像素的方向分量 cos/sin 上——GLSL 的 `atan(0, 0)` 未定义，numpy 返回 0；各向异性为 0 时窗口为圆形，方向不影响下游。已在着色器与参考中把退化张量的方向统一定义为 θ = π/2。
   - **设备比对通过（2026-10-28 复测，PMA110，Sabre 8 帧 2728×2048，7 层）**：40 个 pass 全部在容差内，最差 0.485 倍容差；`max_ulp` 偏大的项（G1 568、band0 3072、pilot0 106）均为接近 0 的值上的抵消误差，按容差计算在 0.49 倍以内。
   - **融合（2026-10-28）**：各层的 Band、Pilot、Final 合并为一个 dispatch（`PhotonDenoiseShaders.synthesize`）。工作组处理 8×8 输出块，在共享内存中计算块加 4 像素边框（16×16）的 band、base、noise 与块加 2 像素边框（12×12）的 pilot，共约 14.6KB（按 16 字节对齐估算），在 GLES 3.1 保证的 16KB 内。共享内存按图像坐标寻址、所有邻域先 `mirror2`，与参考的边界语义一致；写入共享内存时 band、base、pilot 按 float16 取整，与原先写纹理一致。调试变体（`synthesize(true)`）改为写出 band、base、noise、pilot 四张图（GLES 3.1 最低的 4 个 image 单元），比对工具不变；正式变体只写结果。三个着色器已用 NDK `glslc --target-env=opengl` 离线编译通过。
   - 融合后第一次设备比对（2026-10-28）：band、base、noise 全部一致，pilot 大面积不一致（规范化方向符号后，第 0 层仍有约 60% 像素的各向异性超差），`denoised` 与 `output` 略超容差。原因：共享内存原以 float 数组保存经 `unpackHalf2x16(packHalf2x16(x))` 取整的值，编译器可合法地把这一往返折叠为 `x`，共享内存因而保留未取整的 float32；调试输出写纹理时才取整，参考用取整值计算结构张量。base 平滑、相邻差值小，梯度对 1 ulp 敏感，各向异性随之偏离。改为以 `uvec3`（L 与 base 的 6 个 half）和 `uvec2`（pilot 的 4 个 half）保存打包位，取整不可再被省略；共享内存降为约 9.3KB。
   - **融合后设备比对通过（2026-10-28 复测，PMA110，Sabre 8 帧 2728×2048，7 层）**：40 个 pass 全部在容差内，最差 0.765 倍容差（band0，接近 0 的抵消误差），`output` 最多 1 ulp。
   - 显存：中间纹理全部消除，只保留高斯层 `G_1..G_N`（约 1/3 张全分辨率）与相邻两层降噪结果（至多约 1/4 + 1/16），合计约 0.65 张全分辨率 `RGBA16F`（2728×2048 约 29MB，原先约 270MB），另加输出纹理，满足 §10.2。代价是 band 在 4 倍、pilot 在 2.25 倍的像素上重复计算。用户调整入口的合成方差比与残余比在第 6 步接入前固定为 1。
   - **性能（2026-11-03，Adreno 840，4080×3064，7 层）**：调试属性 `debug.photon.denoise.timing`（`true` 逐 pass 计时，`ablation` 另把每层合成拆成 band / 亮度 / 色度门控 / 双边，各跑 3 次取最快）。串行合计约 957ms，合成占 89%（L0 655ms、L1 147ms），金字塔 54ms，强度估计 52ms；L0 消融：仅 band 302ms、亮度 +218ms、色度门控约 0。以下改动在干净基线上逐项实测后均不采用：
     - 合成 tile 16×16、64 invocation（每个 invocation 写 4 行）：整体多约 100ms。128 invocation 的 16×16 / 16×8 更慢（16×8@128 亮度段寄存器溢出，L0 全开约 1.9s）。
     - 亮度窗口空间权重按整数偏移分解为 `ex^(dx²) · ey^(dy²) · e^(dx·dy)`（每窗口 3 次 `exp` 代替 25 次，数学等价）：无可测差别，亮度段不受 `exp` 吞吐限制。
     - `mirrorIndex` 先判区间内与单次反射再取模（返回值逐位相同）：整体多约 500ms。
     - **采用：预镜像共享内存**。band 与 pilot 写入共享内存时按 `mirror2(c)` 计算、存在原坐标 `c`，邻域读取改为纯偏移，去掉内层循环中每输出像素约 500 次整数取模（结构张量的 9 个采样点仍先镜像，否则边界梯度符号会翻转）。读到的源像素与原实现逐一相同（模拟 259 万次读取一致），结果逐位不变。L0：全开 655 → 349ms，Δ亮度 +218 → +57ms，仅 band 302 → 290ms。
     - **采用：coarse tile 缓存**。每个工作组先把 band 区域上采样所需的 `G_{l+1}`、`G̃_{l+1}` 各 12×12 个 texel（镜像坐标的值）读进共享内存，上采样按原顺序从共享内存累加；原先每个 band 像素各取约 12 个 texel、再乘 4 倍冗余。L0 的 `lscGain` 在输入与截断判断间复用一次。共享内存约 13.9KB，仍在 16KB 基线内；结果逐位不变（模拟 9 万次抽头均落在缓存内）。L0：全开 349 → 297ms，仅 band 290 → 206ms；整条流程 610 → 555ms（原始 957ms）。
     - 盲改写法（tile、`exp` 分解、取模快速路径）收益不可预期；有效的是减少实际访存与整数运算的结构性改动。
   - **拆分为条带多 pass（2026-11-05，Mali-G715-Immortalis MC11，4096×3072，7 层）**：融合合成在 Mali 上合成合计约 9.5s（L0 8.5s、L1 0.75s），整条流程约 10.3s，Adreno 840 上同一实现 L0 约 0.3s。L0 亮度段增量 +6.5s，是 L1（+0.27s）的 24 倍，像素只差 4 倍。逐项排查后均未消除：阶段开关改为编译期常量（色度门控 +5.0s → +0.06s，亮度段不变）；关闭 level-0 专有代码（输入、prefilter、输出换算）；每次 dispatch 限制在 4096 个工作组。同一亮度程序只算 L0 的任一象限约 0.75s，四个象限合计约 3s，仍远小于整层。
     - **采用：条带多 pass**。合成改为每 256 行一个条带，依次 dispatch Band → Pilot（仅亮度层）→ Final，不用共享内存与 barrier，邻域读条带纹理。条带纹理四周各留 4 / 2 像素边框，存镜像坐标的值，邻域读取为纯偏移，与原融合实现的边界约定相同；band、pilot 不再重复计算。条带纹理（L、base RGBA16F，noise RGBA32F，pilot RGBA16F）在整次调用中复用，L0 宽 4096 时约 43MB。Mali 上合成 9.5s → 0.43s（L0 8.5s → 0.27s，L1 0.75s → 0.09s），整条流程 10.3s → 1.2s。
     - §6.0 prefilter 同样改为条带两 pass：先写条带及 2 像素边框的样本（三通道 fine 写入 noise 条带纹理，取整后的 L 写入 lap 条带纹理），再算校正；σ² 只用到中心像素，在第二个 pass 里计算。Mali 上 350ms → 127ms，整条流程约 0.98s。
     - §5.1 强度估计：3 轮只有平坦门的缩放不同。第 1 轮计算样本时把每个样本存为记录（亮度箱与三通道桶号打包为一个 uint，加 base 梯度与 σ²_Y 两个 float，共 12 字节），第 2、3 轮（`ESTIMATE_RECORDS`）只读记录、按本轮门限重新计数，计数与逐轮重算逐位相同。记录缓冲只在估计期间存在，4096×3072、7 层约 31MB。原先 Mali 上 21 次 histogram 共约 310ms，改后待测。
     - 共享直方图分摊原子争用：4 份副本（invocation i 计入第 i % 4 份），每份把桶 k 与 k + 32 打包为一个 uint 的低、高 16 位（每份每项至多 16 × 64 = 1024 次），4 份共 12KB，在 16KB 基线内；归并时逐字求和后写全局，计数不变。
     - 实测（Mali-G715）：第 2、3 轮每层降到 1–4ms；第 1 轮 L0–L2 由约 28ms 升到约 57ms，记录按样本连续存 3 个 uint 时相邻 lane 的写入间隔 12 字节。记录改为三个平面（打包值、梯度、σ²_Y 各一个平面），每条写入在 lane 间连续：无变化。记录缓冲跨调用复用（排除首次写入缺页）：无变化，已撤回。第 1 轮改用 1 份副本（打包后 3KB，排除共享内存影响驻留）：无变化，已恢复统一 4 份。剩余嫌疑为第 1 轮新增的记录写入本身，未继续排查：histogram 合计 310 → 233ms 已采用。histogram 合计 310 → 233ms，整条流程约 0.91s。
     - 融合实现、`dispatchBands` 与对应调试属性已删除。parity 导出时条带高度取整层高度，每层一个条带，逐 pass 从条带纹理按边框偏移回读 band、base、noise、pilot，比对的就是正式路径。条带化后的 parity 比对与 Adreno 计时待运行。
4. **模型误差测量**（§12.1）：VGN、Quad Bayer、Sabre、Spatial，结果写入 §13。
   **工具已完成（2026-10-28）**：`tools/photon_denoise/model_error.py`（自测通过，见 §12.1），导出增加 `<stem>.params.json`，逐 pass 导出改由 `debug.photon.denoise.parity` 单独开启。按 §13 的规程拍摄后填表；尚未拍摄。
5. **离线调参**（§12.2）得到各管线调参表。
   **工具已完成（2026-10-28），尚未拍摄**：
   - `image_metrics.py`：固定参考渲染（未白平衡相机 RGB × 固定白平衡 × 固定曝光 → sRGB 曲线，单位色彩矩阵，无局部影调；曝光取干净图白平衡后亮度第 99 百分位映射到 0.9）；sRGB PSNR、BT.601 亮度（与 `preprocessNative` 相同）上的 PSNR 与 SSIM（高斯 11×11、σ 1.5）、CIEDE2000（Sharma 2005）；DnCNN 推理按应用的方式量化到 8 bit，256 分块、重叠 32、取中心拼接。
   - `tune.py`：输入 `cases.json`（`[{"clean": "<干净图导出 stem>", "noisy": ["<带噪导出 stem>", ...]}]`，均为降噪入口的调试导出，带 `<stem>.params.json`）。干净图做 2×2 binning；带噪图经参考实现降噪后同样 binning，按通道最小二乘对齐曝光，在每张图上取 4 个 384×384 网格裁块（裁块时平移 LSC 增益图原点，噪声模型与整图一致）。一个带噪导出即一个调参节点，节点坐标为 §5 的 `n = √(m·v_Y(0.18))/0.18`。目标为节点内全部裁块的平均 sRGB PSNR；以 `PhotonDenoiseTuning` 默认值为起点做坐标下降（2 轮）：各层 `α_l`、`t_l`、`d_l`，色度门限缩放（亮度与色度门同乘），联合双边的层数与两个系数。输出 `photon_denoise_tuning.json`：按管线列出各节点的调参值、`n`，以及带噪 / 默认 / 调参后的 sRGB PSNR、亮度 PSNR / SSIM、CIEDE2000、线性 PSNR 与 DnCNN 亮度 PSNR。
   - 自测（`tune.py --self-test`，合成平滑彩色场景 + 按档案生成、经 `√(8/3)` 相关化的噪声）：sRGB PSNR 带噪 32.08 → 默认 38.94 → 调参后 42.18 dB；亮度 PSNR 43.75 dB（DnCNN 35.87 dB）；SSIM 0.9724；CIEDE2000 6.180 → 1.212。通过。自测只检验工具链路（导入、裁块、对齐、搜索、输出）正确，数值不代表实拍画质。
   - 同时修正：σ = 0 时 Huber 权重为 0/0。着色器与参考都改为 `|ΔL| ≤ d·σ` 时权重 1，否则 `d·σ/|ΔL|`；σ > 0 时输出不变。`compare_passes.py --self-test` 与 `glslc` 离线编译已通过，设备逐 pass 比对需在下次以 `debug.photon.denoise.parity` 导出时复测。
6. **接入全部路径**（§10.3），残余比的写入与读取（§2.4），Bitmap 路径（§9）。
   **代码已完成（2026-10-28），设备验证待运行**：
   - 合成方差比：`PhotonMergeNoise` 在 Spatial（4 处帧接纳点，与强度图采集同一位置，与其是否开启无关）与 Sabre（参考帧 + 每个后续帧）累加，经 `RawStackResult.denoiseHistory` → 合成输出元数据 → 默认降噪；`GalleryManager` 的默认降噪可用性判断改为检查该记录，不再依赖 MGC 合成噪声模型。
   - 默认降噪：`processMgcSpatialGpuLinearRgb` 用 `PhotonMultiScaleDenoiser` 直接处理 `workingFloatTexture`，输出 RGBA16UI；PBO 回读 / 上传与 `MgcFullResolutionDenoise` 调用移除；`MgcSpatialGpuDenoiseResult.denoiseHistory` 带出本次的残余比（§2.4）。
   - 持久化：`GalleryManager` 合成保存时与已施加 LSC 一起写入 `RawDenoiseHistoryMetadata`（日志 `Denoise history persisted …`），单帧保存时清除；全部渲染入口（`PhotoProcessor` 2 处、`GalleryManager` 5 处）读取后经 `RawDemosaicProcessor` 的 `denoiseHistory` 参数写入 `RawMetadata.denoiseHistory`（日志 `Denoise history restored …`）。
   - 用户调整：整图与分块两处改为 `renderPhotonUserAdjustmentDenoise`，读取 `denoiseHistory`（无记录按单帧 `VGN` / `QUAD`），NLM 与色度的回退删除；`DemosaicNoisePropagationCalibrator` 的用户调整预标定随之删除。
   - 残余比改为逐层（`PhotonDenoiseParams.residual[l]`，着色器 `uResidual` 每层上传一次），numpy 参考与工具同步，`compare_passes.py --self-test`（含色度残余比 0 的层）、`model_error.py --self-test`、`tune.py --self-test` 均通过。
   - 调参表按管线组织（§5），Bitmap 路径（§9）接入；调试导出改为由导出模块自行回读输入纹理，文件名为 `<时间>_<管线>_<DEFAULT|USER>_<原点>`，`pipeline` 字段为 §5 的管线名。
   - 已无调用者而删除：`DemosaicNoisePropagationCalibrator.kt`、`DemosaicNoiseAtlasGenerator.kt`、`DenoiseProfileAlgorithm.kt`、`DenoiseProfileNlmConfig.kt`、`DenoiseProfileStripePlanner.kt`、`lut/ChromaDenoiseAlgorithm.kt`。MGC 降噪 capsule、强度图与 `MgcSabreMergedNoiseModel` 仍供 Spatial 去马赛克的噪声档案（`spatialOutputNoiseMetadata`）使用，留到第 7 步。
   - 设备验证项：合成照片保存与重开时 `Denoise history persisted/restored` 一致；默认降噪与用户调整的输出正常；Bitmap 编辑与相册 AI 前置色度正常。
7. Halide 运行时拆分、`RunYuvToRgb` 白盒化（与 AOT 逐位比对），随后移除旧实现（§15）。
   **已完成（2026-10-28）**，内容见 §15。验证：Kotlin 编译通过；`buildCMakeDebug[arm64-v8a]` 编译链接通过，`libmy-native-lib.so` 无未解析的 `photon_mgc_*` 符号；`RunYuvToRgb` 白盒实现与 AOT 逐位一致（主机端模拟执行）。设备端尚未运行：需确认 RAWmax（Sabre / Spatial）拍摄、引导上采样与锐化输出正常。单元测试编译受已有的 `BokehShadersTest`（`LAYER_MEDIAN_COMPUTE_SHADER` 不存在）阻塞，与本步无关。
8. 性能与显存在目标设备上测量，记录到本文档。
9. **逐像素合成方差比**（§2.2）：合成方差图的 GPU 累加（Spatial、Sabre）、降噪器采样、相册元数据持久化；numpy 参考、`compare_passes.py` 与导出格式同步。→ 门禁：逐 pass 比对通过；合成数据上（numpy，已知逐帧接受度）方差图与解析值一致；实拍运动场景中剔除区与静止区降噪后残余噪声水平相近。
   **代码已完成（2026-10-29），设备验证待运行**：
   - Kotlin：`PhotonMergeNoise` 改为 GPU 累加（`ACCUMULATE`）与归约（`REDUCE`），`RawMergeVarianceMap` 与其持久化，`PhotonDenoiseParams.mergeMap`，着色器 `mergeRatio()` 取代 `uMergeRead/uMergeShot`。Kotlin 编译通过；5 个改动的计算着色器经 `glslc --target-env=opengl` 离线编译通过。
   - numpy：`photon_denoise.MergeMap` / `merge_ratio()`，`point_covariance` 逐像素；`compare_passes.py` 读取导出中的 `mergeMap`，`--self-test` 用非均匀 3×4 图通过；`tune.py` 裁块时平移方差图原点；`model_error.py --self-test` 通过。
   - 门禁 `validate_merge_map.py`（numpy 镜像两个着色器）：512×384、6 帧（曝光比 0.8–1.25、全局权重 0.6–1.0、输出曝光 0.8），各帧沿运动路径剔除，另有一块所有非参考帧都剔除的区域；160 次实现的合并像素方差按 RAW/32 格与方差图预测相比，m_r 覆盖名义 0.118 到单帧 0.640，最大偏差 2.21%（容差 3%），通过。
   - 设备验证项：逐 pass 比对（`debug.photon.denoise.parity`）；运动场景中剔除区与静止区降噪后的残余噪声；合成保存 / 重开时方差图一致。

10. **逐图噪声强度**（§5.1，阶段 A）：GPU 估计（`ESTIMATE` / `RESOLVE`）、Band 按亮度档查强度表、默认降噪把所用强度表写入 `RawDenoiseHistory`（契约 v4）；numpy `estimate_strength` / `strength_at`，`compare_passes.py` 比对 `strength`（相对容差 2%，GPU 表随后作为 Band 的输入）。按管线的实测强度图删除，`BITMAP` 保留固定强度。
   **代码已完成（2026-10-29），设备验证待运行**：编译通过，`--self-test` 25 项一致，五个着色器 `glslc` 通过。设备验证项：逐 pass 比对；3x 镜头与原镜头单帧暗部残余；ISO 100 纹理场景；估计耗时。
11. **半合成差分**（§5.1 阶段 B）：先测 Sabre / Spatial 第二次解析的耗时，再决定实施方式。

## 17. 已核实事项

| 事项 | 结论 |
|---|---|
| 降噪输入是否已含 LSC | 是。单帧在去马赛克前逐 CFA 位点施加；合成默认降噪按 `outputIncludesLensShading` 保留增益图。持久化 DNG 会移除增益图，§3.2 补上 |
| 合成路径 | 生产环境 `MgcRawMaxMode.outputMode` 恒为 `RGB`（`MultiFrameStacker.kt:48`），默认 Sabre（GPU）；Spatial RGB 由 CPU AOT `MgcSpatialRgbMerger` 合成 |
| 单帧去马赛克 | 标准 Bayer 为 VGN，Quad Bayer 为独立路径；VGN 内含噪声自适应的坏点修复、方向阈值与色彩噪声重建 |
| 锐化 / 上采样依赖 | 引导上采样依赖完整分辨率降噪 capsule 中的 `photon_mgc_yuv_to_rgb_s16`；所有 capsule 共用 `mgc_denoise_static.cpp` 中的 Halide 运行时；capsule 生成脚本已缺失 |
| DnCNN | 单通道亮度、256×256、盲去噪、残差学习；有效范围约 σ ≤ 25–30（8-bit）；训练噪声类型无法从文件确定 |

## 附录 A：已放弃的噪声传播方案

最初的设计把噪声表示为“源通道系数 × 去马赛克传递矩阵 `T_c` × 可分离空间谱 × LSC / 合成噪声场”，沿管线精确传播到每个金字塔层。

- 传播计算本身在合成数据上成立：8 次 2048² 实现、5 层 × 4 相位，最大偏差 1.02%。这部分作为 `κ⁰` 的计算保留（§2.3）。
- 去马赛克标定在设备上未通过（2026-10-28，PMA110 / Adreno 840）：

| 路径 | 加和性误差 | 电平依赖 | 第 0 层点方差 | 金字塔各层 |
|---|---|---|---|---|
| VGN | 0.62 | 0.25 | Y +146%，Cb +26% | Y +92%…+213%；C −46%…+47% |
| Quad Bayer | 0.046 | 0.036 | 全部在 ±3.5% 内 | Y 第 1 层按相位 ±16%；C 第 2–4 层 +55%…+95% |

- VGN：只给单个通道加噪时输出方差被大幅压低（`T_R` 的 RR 项 0.054），三通道同时加噪的输出方差是单通道之和的约 2.5 倍。VGN 的坏点修复、方向阈值与色彩噪声重建都依赖噪声，线性传递矩阵不成立。
- Quad Bayer：点模型成立，但 2×2 同色块使噪声以 4 像素为周期循环平稳，块状插值产生的低频色度噪声也不可分离。

该方案的去马赛克标定器、合成噪声 atlas、门禁与调试触发代码已删除。

## 附录 B：已放弃的离线标定方案

曾设计按管线、噪声水平、合成帧数，用同场景成对拍摄的差分离线标定每层系数 κ，运行时用档案乘 κ。因标定工作量与设备依赖，未实施。差分测量本身保留为 §12.1 的模型误差测量工具。

## 附录 C：已放弃的单图实测方案

在降噪入口从图像本身测量各层噪声，先后三轮，均在离线门禁（2048²，5 层，平坦 / 局部纹理 / 纹理铺满 × 线性相关 / 色度中值 / 亮度软阈值）上未通过（2026-10-28）：

1. **参考尺度来自数据**（相对选块 + 共享噪声曲线拟合）：平坦场景选块后实测/真值 0.94–1.05，拟合后最差 −13%（亮端深层斜坡曲率）与 −37%（亮度软阈值使噪声曲线偏离二次多项式）；纹理铺满时第 0 层信号能量即为噪声的 27 倍，估计偏高数百倍。
2. **参考尺度来自档案 × 白噪声理论值**，逐箱 Gamma 截断估计 + 分布一致性检验：档案 ×0.5、×2 的结果与 ×1 相同；但整箱都是纹理或平滑信号时箱内尺度随数据放大（深层达真值 4000 倍以上），一致性检验无法识别；跨层趋势外推依据被污染的深层，第 0 层被外推为真值的 0.001 倍。Gamma 形状须由低分位比反解：用块内协方差会被剔除阈值截断，用相关系数会忽略相位间方差不等，两者都使一致性比值稳定偏大约 1.35。
3. **增加尺度物理上限 2、以最暗 3 个已测箱为基准的跨箱锚定（1.5 倍）、外推改为沿用最近已测层**：平坦场景最差 1.24–1.34 倍（色度第 4 层亮端的平滑色相变化）；纹理铺满场景已测部分 2.1–4.0 倍、深层 8–16 倍；局部纹理场景亮度全部退回理论值（第 0 层偏 40 倍）；上限以档案为参考，档案 ×2 时最差 6.7 倍。

结论：纹理能量与噪声相当的区域，仅凭箱内能量分布的形状无法可靠区分信号与噪声；每增加一条判别规则只修正一类失败并引入新的失败，三轮没有收敛。另，“在 `G0` 上测噪声自相关”在单幅图像上不可行：去除信号必须高通，而高通同时去掉了噪声的低频部分。
