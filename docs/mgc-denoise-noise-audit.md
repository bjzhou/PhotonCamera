# MGC 降噪强度链路数学审计

本文审计的链路：多帧合成 → 输出噪声模型 → 经 demosaic、白平衡、RGB→YUV 的噪声传播 → 强度图 → 降噪阈值。审计逐段从第一性原理推导应有的方差，与实现做对比，非平凡的地方用 Poisson-Gaussian 合成 RAW 做蒙特卡洛核对。

记号：x 为归一化信号 (raw − black)/(white − black)，单帧方差 Var = S·x + O（Camera2/DNG 约定）。降噪阈值方差 ∝ strength² × 模型方差，所以模型方差误差 k 倍，等价于各层 strength 放大 √k 倍。

## 已验证正确

- **逐帧曝光换算。** 帧信号为 y = k·x 时，Var = k²O + kS·y。read 乘 k²、shot 乘 k 正确；Bayer 路径 shot 乘 (wb·k)、read 乘 (wb·k)² 也正确。Bento 短帧使用各自帧的模型。
- **输出曝光归一化。** read 乘 s²、shot 乘 s；SNR 对 s 不变，代码用 `referenceSignal·s`，与之一致。
- **Sabre 合成代数。** 参考帧权重 1/N，其余帧各 1/N，Σw²/(Σw)² = 1/N。
- **Savannah 相关谱。** 归一到均值 1，总方差仍由 read/shot 承载；可分离 2D 约定与 `PrepareDefaultBayer` 的 mean²、金字塔传播的 energy² 一致。
- **防重复计数。** 输出模型 frameCount 置 1，prepared 谱优先于合成谱，strength map 只用一次，单帧使用恒等模型。
- **校准器统计量。** 128×128 共 16384 个样本，方差的相对标准差约 1–2%；luma shot 拟合是线性的。
- **合成权重。** 合并与强度图 AOT 使用同一组 frameWeights / kernelSigmas，输入一致。

## 本次修复

| # | 问题 | 推导 | 修复 |
|---|---|---|---|
| F2 | 合成 DNG 写入的 NoiseProfile 是参考帧单帧值；再编辑时 SNR 回退为 ISO/100 | 合成后方差 ≈ σ²·Σw²/(Σw)²，8 帧时 ≤ σ²/8，单帧模型方差高估 ≥ 8 倍。ISO/100 让 ISO100 落到最强曲线，方向是反的 | 合成 DNG 写入合成输出模型（`DngNoiseProfile.fromMergedModel`），采集时的锐化/降噪 tuning SNR 持久化（`RawMgcTuningSnr`）。SNR 一律由像素自身的噪声模型在实测绿通道信号处求值（`withMgcRenderTuning`，覆盖 LinearRaw）。删除 ISO/100 回退 |
| F3 | 色度共享 shot：解析路径取 luma 切片，测量路径取 Cb/Cr 上包络 | 灰信号的 shot 系数为 Σa²·wb·S。WB=(2,1,1.6) 时 Y:Cb:Cr = 0.610:1.156:2.839，两条路径相差 4.65 倍方差 | 测量路径改用 luma 切片，与 MGC 色度曲线的索引方式一致；Cb/Cr 的 read 仍按通道分别保留 |
| F8 | DNG NoiseProfile 把 Camera2 数组当作 R、Ge、Go、B | Camera2 按 CFA 相位行主序排列；对 BGGR 传感器 R/B 互换 | `DngNoiseProfile.fromCamera2` 按 `SENSOR_INFO_COLOR_FILTER_ARRANGEMENT` 映射 |
| F9 | Spatial RGB 强度图信号域 | AOT 以 black=0、white=16384 求值，输入模型按 white − black 归一；合并域是 RAW 码值 × overallGain，RAW10 时为真值的 0.937 倍 | `packFixed16` 乘以 1/referenceWhite |

## 真机实测结论

测试设备为 Adreno 840，ISO 7100、3 帧 Sabre。

### F1：Scale(2)：属于 MGC 调参约定，保留

模型按 x' = 2·wb·x 缩放（read ×4、shot ×2），而打包像素是 q = 16383·wb·x。

- **实测：** 给 RawToYuv 输入平场 q=2949，输出 Y 均值 2949.00，yGain=1.0000。像素确实在 Q14 域，所以喂给降噪器的方差在物理上是 read ×4、shot ×2。
- **为什么不算缺陷：** Scale(2) 与 Q14 打包（RawToYuv 白点 16383）来自同一次 MGC FinishRaw 移植，MGC 原版就是这个组合。luma/chroma 强度曲线里的 strength 是"相对 Scale(2) 模型 σ"的系数，不是"相对物理 σ"的系数。
- **曾经的错误修复：** 一度把缩放改为 1。实拍降噪明显弱于预期，因为所有阈值 σ 都被压到原调参的 1/1.44～1/1.9，现已恢复。
- **结论：** 判断降噪强度对不对，要看是否与 MGC 调参约定一致，而不是看模型方差是否等于物理方差。本文其余各项的"误差"都在这个约定之内衡量。

### F6：LSC 强度乘子：实测正确，无需修改

- **实测：** 输入基础强度 Q8=256、平坦增益 g=2，`ComputeStrengthMap` 输出三个平面 [256, 512, 1024]，即 g⁰、g¹、g²。
- **解释：** 这三个平面正对应噪声多项式的三项。像素 y = g·x 时，方差 = g²·read + g·shot·y + quad·y²，所以 quadratic、shot、read 各自乘 g⁰、g¹、g²。
- **结论：** MGC 本来就是分项施加 LSC 的，审计中"单一乘子"的假设不成立。

### A1/A2：输出模型与 Q8 的分工：实测自洽，无需修改

测试条件为 ISO 7300、3 帧 Spatial RGB。

- **输出模型已含合成缩减。** `outputReadOverReferenceRead=0.306`，对应帧权方差比 Σw²/(Σw)² = 0.333，略好于 1/N，多出的部分来自插值核的平均。
- **Q8 是相对乘子，没有重复计数。** 静态区 Q8 中位数 254、均值 260，约等于 256（单位乘子），说明 map 不再乘 1/N。
- **拒绝区方向正确。** P95 为 296，最大值 1039（4.06 倍），朝单帧方差回升（期望 1/0.306 ≈ 3.27 倍），极值略高约 24%。
- **tuning SNR 自洽。** finishRawDenoiseSnr 为 5.45，refSNR·√N 为 5.22。

## 后续（较大改动）

- **F4：RGB 输入的 YUV 传播忽略通道相关。** Spatial RGB 和 Sabre 的色差插值让 corr(R,G) ≈ 0.3–0.4，独立模型下 Y 低估 1.39 倍、Cb/Cr 高估约 1.3 倍。应让合成噪声经过同一插值，测出 YUV 协方差。
- **F5：Sabre 只有全局模型 σ²·d/N。** 运动区和拒绝区方差低估 N/d（8 帧时 8–11 倍），降噪不足。应在累加器中加 Σw² 通道生成逐像素 Q8。
- **F7：校准器只测白噪声传递，缺少交叉项。** 应补上 mean(S_in⊗S_in·T)，否则 Cb/Cr 低估最多 1.4 倍。应在合成噪声场中注入输入谱。
- **合成 DNG 的 NoiseProfile 是默认降噪之前的合成模型。** 默认降噪的残差未建模，对已默认降噪的像素再调节时仍偏保守（偏强）。
- **Bayer 强度图的 Fixed16 已乘 calculation WB，输入模型未乘。** 只影响 Bento 帧的 R/B，需对照 MGC 原版的 AOT 输入确认。

## 与原版 GCam ProcessRaw 的链路对齐

对照的是 AGC 9.6 `libgcastartup.so`，并用 MGC 9.7 V25 交叉验证。

**确认与原版一致，无需修改：**
- 色度相关谱：只有一份 128 点谱，Y/Cb/Cr 共用；Savannah 谱只由 G 通道拟合。
- 色度的 shot/quad 只取通道 0。
- Scale(2)。

**已修正的两处差异：**

1. **执行顺序。** 原版是 RawToYuv → Pecan → 把降噪后的 Y 写回 linear_yuv → ChromaDenoise，色度降噪拿到的是干净的 Y。我们原来是色度先于亮度，现已改为原版顺序。MeasureMoire 仍读 RawToYuv 输出的 Y。
2. **低频色度支路（ProcessLowFrequency）。** 原版在低分辨率上再做一遍色度降噪，我们此前没有这一级。现已在全分辨率 JNI 中补上，各步骤如下：
   - **降采样：** 对 [Pecan 降噪后的 Y, 色度降噪后的 Cb/Cr] 做 2^L 的 box 降采样，用舍入均值（0x4cc8ac8）。L 由 FinishRaw 的输出分辨率策略决定，1 倍输出时为 4 倍。
   - **噪声模型：** 降采样 L 次（0x5e99434）。频谱乘 cos²(ω/2)，抽取后归一化，read/shot/quad 统一乘 s²；白噪声时每步方差 ×1/4。
   - **色度中值滤波：** 采用 dual_3_point（ChromaDualThreePointMedianFilterS16，逐位实现）。Y 直通；U/V 分别取水平、垂直 3 点中值并平均，以阈值 1024、Q11 权重软混合。原版默认关闭，按传感器 tuning 打开，本项目选 dual_3_point。
   - **低分辨率 ChromaDenoise：** tuning 与全分辨率相同，强度图也是同一张 RAW/4 图，抽取率为 2−L，下采样因子为 L。
   - **写回全分辨率：** 低分辨率色度修正量（输出 − 输入）双线性上采样后加回全分辨率 Cb/Cr。渲染端 GuidedUpsample 只从低分辨率图像取色度，所以与原版"最终色度来自低频支路"等价，同时修正结果写进 DNG。分块（tile）调用时跳过这一级。

**未纳入：** Pecan 的 joint chroma 模式（TFLite）。我们移植的是只处理亮度的 AOT 版本，该模式在运行时是否开启也未确定。
