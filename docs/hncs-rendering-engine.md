# HNCS RAW 渲染引擎

## 当前渲染契约

HNCS 统一使用 X2D II 100C 等效相机 RGB、配套 Phocus 3.0 矩阵与二维色度表，以及原始 FilmCurve。
界面提供影调曲线选择和“匹配相机色彩”开关。开关默认开启，使用等效 X2D II RGB；
关闭时白平衡后的源相机 RGB 直接进入 Phocus 100MP3。关闭模式通过目标矩阵及其逆
为公共测光/PGTM 提供可逆 ProPhoto 桥接，不施加跨相机颜色转换。
HNCS 与 Lumix 各自保存开关状态，覆盖全局设置、预设与照片编辑；旧数据默认开启，
图库数据库通过 41→42 迁移保存两项状态。

- 固定目标 ColorMatrix：`4777366646.3fr` 的 IFD0 ColorMatrix1，提取到
  `app/src/main/assets/hncs/x2d_ii_100c_calibration.json`；
- 固定 Phocus profile：`LUTTable100MP3`，对应 CFV 100C / X2D II 100C、ColorProfileId `0x0615/0x0616`；
- 色度表意图固定为 Standard；FilmCurve 的 Standard/Reproduction 是独立影调选择；
- 旧 `HncsCcm`、`HncsLut` 持久化值均读取为 `Hncs`，旧机型和色彩意图字段不再决定渲染；
- 目标矩阵/二维表无效时拒绝渲染。无可用源标定的导入 RAW 保留直接目标相机 RGB 的语义。

参考 RAW 为 Hasselblad X2D II 100C，SHA-256：
`90a8cd2d4cbf8227a016bf3b44d172518791a823dbe6de74f96b182a527ff72e`。
标准 ColorMatrix1 位于 IFD0、tag `0xc621`，9 项。没有 ColorMatrix2、
ForwardMatrix1/2 或 CalibrationIlluminant1/2。
因此使用这组单矩阵，不补造光源标签，也不使用 X1D-50 DCP 的备选矩阵。

```text
[  0.5950573751  -0.146674752  -0.03412952103 ]
[ -0.5159296309   1.26306183    0.2826110949  ]
[ -0.103825823    0.1675577691  0.6152086     ]
```

二维 LUT 从 `f0fffd8180698a3a9bdbd87087252047d1f8a6fa^` 恢复，blob 为
`70dc2a8404a6ab19edbb6c73c2f7b7d4777d69eb`，资产 SHA-256：
`655c96a91ec1da0cc3bb81ffe66fe105079e2f8516aafc714c1cdd4b4c8f264a`。
旧 `LUTTable51MP5` 已移除。Phocus 表继续保存源文件与 payload 哈希。

## 原始资源审计

原始目录：

```text
C:/Users/Hinnka/Desktop/phocus/app/src/main/assets/Colormaps
```

历史源目录包含 26 个 XML，其中 21 个满足以下解析约束。当前转换器只生成
`LUTTable100MP3.xml` 对应的一个运行时 profile，其他机型不打包：

- 有 `CbS/CbE/CrS/CrE/DivFactor`；
- 网格固定为 105×89，每个表恰好有 `105×89×2 = 18,690` 个值；
- 同时有 Standard 与 Reproduction；
- 每个意图至少有 TS/Flash 两个色温表；
- 至少有两个相机矩阵锚点和两个 neutral vector 锚点。

不进入运行时的 5 个文件：

| 文件 | 原因 |
|---|---|
| `LUTTable31MPRepro.xml` | 不属于当前有边界、多意图、多色温格式 |
| `LUTTable39MPRepr.xml` | 同上 |
| `LUTTableIxpressNew.xml` | 同上 |
| `LUTTableIxpressRepr.xml` | 同上 |
| `LUTTableleica.xml` | `LUTTableTSStd` 只有 18,689 个值，源数据少 1 个值 |

不会为 `LUTTableleica.xml` 补值，也不保留旧格式解析分支。当前保留 profile 的源文件长度和
SHA-256 位于
[`app/src/main/assets/hncs/manifest.json`](../app/src/main/assets/hncs/manifest.json)。

转换命令：

```powershell
uv run python scripts/convert_phocus_hncs.py `
  "C:\Users\Hinnka\Desktop\phocus\app\src\main\assets\Colormaps" `
  app/src/main/assets/hncs --verify
```

`--verify` 会重新读取原 XML，检查源 SHA-256、网格与色温字段，并逐个以 float32 字节比较
所有表、解密矩阵、解密 neutral gain 和 DNG matrix；同时确认 payload 无空洞、重叠或未引用数据。

## 可追溯二进制格式

每个 `.hncs` 文件的布局为：

```text
8 bytes  magic "HNCSMAP1"
4 bytes  little-endian JSON header length
N bytes  UTF-8 JSON header
M bytes  zlib-compressed little-endian float32 payload
```

header 保存：

- `schemaVersion=2`；运行时不保留 schema v1 兼容解析；
- 原 XML 文件名、长度、SHA-256 和 Phocus `Version`；
- 网格边界、尺寸与 `DivFactor`；
- 每张表的原 key、意图、色温 key、色温、payload offset/count；
- 每个矩阵和 neutral vector 的原 key、色温及 payload offset/count；
- 解压 payload 的长度、float 数量和 SHA-256。

Phocus 的 `m*` 矩阵与 `v*` neutral gain 数组都按 `CXMLLut::DecryptArray` 的真实变换解出：

```text
decoded = encrypted × 0.5 + 1.0
```

运行时再次校验 magic、schema、manifest/header 的源文件与源哈希、payload 长度和 payload
SHA-256，之后才允许构建渲染计划。

## HNCS 工作色彩空间

`CRawColorCorrection::GetColorSpaceChangeMatrix` 中恢复的 HNCS RGB→XYZ(D50) 矩阵为：

```text
[ 0.79767  0.13519  0.03134 ]
[ 0.28804  0.71188  0.00009 ]
[ 0.00000  0.00000  0.82491 ]
```

由此得到的色度坐标与项目中的 `ColorSpace.HNCS` 一致：

| 项 | x | y |
|---|---:|---:|
| R | 0.734699 | 0.265301 |
| G | 0.159597 | 0.840403 |
| B | 0.036598 | 0.000105 |
| White | 0.345704 | 0.358540 |

HNCS 与 ProPhoto 数值接近，但两者是不同的处理契约，代码中保留独立枚举，避免相机矩阵或
二维表被误用到其他引擎。

## 等效 X2D II 100C 相机色彩路径

```text
当前 RAW → 源相机白平衡与 headroom → 源 ColorMatrix → 线性 ProPhoto 中间纹理
→ 当前白点的 ProPhoto→X2D II 100C 白平衡 RGB 矩阵
→ Phocus 100MP3 白平衡 camera→XYZ(D50) 矩阵 → XYZ(D50)→HNCS
→ Standard Cb/Y–Cr/Y 105×89 二维色度表
→ 原始 FilmCurve → companding 解码 → 线性 sRGB → 最终单次 sRGB 编码
```

共享空间保持 ProPhoto。源传感器标定优先 ColorMatrix，保留 AnalogBalance 与
CameraCalibration；仅 FM 的源文件必须有独立白点才能启用。目标使用参考 RAW
单 ColorMatrix1，经当前白点的白平衡与 D50 色适应计算线性变换。
`uProfileToEngineTransform` 直接把 ProPhoto 转为目标 RGB，
不再恢复源 RGB 后查询两张标定 3D LUT。源 RAW 的 Tint 由实际白平衡保留。

无可用源标定的导入 RAW 以目标 ColorMatrix 推导白点，使用目标 WB RGB→ProPhoto
及其逆矩阵为公共测光/PGTM 提供可逆空间桥接，白平衡只施加一次。

### 拍摄与 DNG 重处理的一致性

源色彩参数以 DNG 的拍摄白平衡及校准标签为准。首次内存处理使用与 DNG writer 相同的
ColorMatrix 归一化、CameraCalibration1/2 和 AnalogBalance，并由写入
AsShotNeutral 的同一组增益计算 CCM、CameraWhite、whitePointXy、CCT 和固定相机校准。
拍摄曝光分析、CFA 首次渲染与 LinearRaw 首次渲染共用这组参数；不能只替换白平衡增益，
却保留由 Camera2 COLOR_CORRECTION_GAINS 推导的旧白点或未包含 DNG 校准的镜头标定。

DNG 重处理从文件恢复上述参数，HNCS 两条入口均使用相同的 FilmCurve、色温插值与
曝光处理。RAW 管线不提供基于像素重新估计自动白平衡的功能，读取文件时也不重新估计。
`HNCS pipeline` 日志记录输入来源、WB、白点、CCT、BaselineExposure、FilmCurve、
目标 ColorMatrix 资产路径，用于在相同编辑参数下核对两条路径。

### 等效 RGB 的矩阵计算

令 `B_target` 为白平衡 X2D II 100C RGB→ProPhoto，目标转换就是
`inverse(B_target)`。ColorMatrix 本身是 XYZ→camera；沿用 DNG color-spec
无 ForwardMatrix 路径处理矩阵方向、目标 CameraWhite、D50 色适应和工作空间。
单矩阵不会进行双光源插值，但白平衡与色适应仍使用每张照片的实际白点。

等效 RGB 不包含 Adobe HueSatMap、LookTable、ToneCurve 或曝光偏移。
已删除标定 LUT 烘焙、JNI、磁盘缓存、GPU 3D 标定纹理和四面体插值。
矩阵可直接处理负值和 HDR 超范围值，标量曝光与该线性转换可交换。
Phocus 自身矩阵与二维表仍按原始 Kelvin 锚点插值。

### Phocus 矩阵与白平衡

`LUTTable100MP3` 的矩阵锚点为 2400/3050/5550/9100 K，二维表为 3050/5550/9100 K。
XML 中解密后的 `m*` 消费白平衡相机 RGB，行和对应 D50 XYZ 白点；因此等效 RGB 进入时：

```text
cameraToHncs = inverse(HNCS_RGB_TO_XYZ_D50) × M_Phocus(CCT)
hncs = cameraToHncs × equivalentX1dWbRgb
```

不再把源 RAW 的 gain 乘进目标 Phocus 矩阵，否则会对白平衡应用两次。`v*` neutral gain
仍解密和校验，作为源 profile 标定审计数据，不取代当前照片的 AsShotNeutral/Tint。
RAW ColorMatrix 和 Phocus 渲染矩阵是不同标定，目标传感器转换不能替换为逆 Phocus CCM。

## 实测色温

LUT 插值只接受由当前 RAW 白点求出的 CCT，不使用 R/B gain 比值猜测：

- Camera2 RAW：由 `SENSOR_COLOR_TRANSFORM*`、`SENSOR_FORWARD_MATRIX*`、
  `SENSOR_REFERENCE_ILLUMINANT*` 与 `COLOR_CORRECTION_GAINS` 按 DNG color-spec 求白点 xy；
- DNG：native DNG color-spec 路径直接返回求解得到的 `sdkWhiteXy`；
- 非 DNG RAW：使用内嵌标准标定与当前 CameraNeutral；无可用源标定时按直接目标相机 RGB 语义使用目标 ColorMatrix，不使用 LibRaw 内置 `cam_xyz`；
- xy→CCT：使用项目中与 DNG SDK 语义一致的 Robertson reciprocal-temperature 表。

无法从真实矩阵与 CameraNeutral 求得 xy 时，CCT 为 `null`，二维 LUT 分支拒绝渲染。代码不会
用 D50、5000 K 或白平衡 gain 比值补位。

## 色温插值

`CXMLLut::CalculateLUT` 的规则：

- Version 3：CCT clamp 到 2000–10000 K；低段在 TS@`tt` 与 Flash@`tf` 间线性插值，高段在
  Flash@`tf` 与 HT@`th` 间线性插值；
- 其他受支持版本：CCT clamp 到 2000–6200 K，在 TS@`tt` 与 Flash@`tf` 间线性插值。

矩阵插值：

- Version 3：2000–10000 K，按实际存在的 `mlt@tlt → mt@tt → mf@tf → mh@th` 分段线性插值；
- 其他版本：2000–8000 K，按实际存在的矩阵锚点分段线性插值。

精确落在锚点时直接复制原数组；区间外复制端点。Standard/Reproduction 只在同一意图的表内
插值，不交叉混合。Phocus 的 `CXMLLut::CalculateLUT(int, bool)` 与
`CalculateMatrix(int)` 接收整数 Kelvin，因此运行时先把实测 CCT 截为整数，再做 clamp 和插值。

## Cb/Y–Cr/Y 数值域

HNCS luma 来自工作空间矩阵第二行：

```text
Kr = 0.28804
Kg = 0.71188
Kb = 0.00009

Y  = Kr·R + Kg·G + Kb·B
Cb = (B-Y) / (2·(1-Kb))
Cr = (R-Y) / (2·(1-Kr))
```

Phocus 表保存的是网格单位的输出 Cb/Cr，不是归一化色度。查询与重建：

```text
position = DivFactor × [Cb/Y, Cr/Y] - [CbS, CrS]
mapped   = bilinear(table, clamp(position, 0, [width-1, height-1]))
Cb'Cr'   = mapped × Y / DivFactor
RGB'     = M_ycc_to_rgb × [Y, Cb', Cr']
```

shader 使用四次 `texelFetch` 手工双线性插值，X 轴为 Cb、Y 轴为 Cr。`DivFactor` 在查询时
相乘、重建时相除；少任一侧都会产生 32 倍色度尺度错误。

Phocus 完整支持路径的 `SetGrayThresholds` 为 0/0，`CalculateDesatValues` 为
threshold=2、a=0、b=0、c=1，因此低照度权重恒为 1。原 shader 在灰轴 0/0 区间可能产生
非有限数；本实现对这个已知零宽区间显式定义权重为 1，既不加入经验阈值，也不依赖不同 GLES
驱动对 NaN 的处理。

## 原始 filter graph 与当前可执行路径

Phocus `CCameraImage::AddHNCSFilters` 的原始顺序已经确认：

```text
ColorCorrectAll
→ FilmCurve
→ [EffectiveFilmCurve 为 2 或 4时] HighlightStrength
→ [新版 correction 且 RAW 支持时] Gamma(Hasselblad 或 LStar)
→ Gradation
→ [启用选择性色彩时] SelectiveColor
```

当前 HNCS 渲染计划有真实数据可执行的路径为：

```text
ColorCorrectAll
→ FilmCurve(标准 C / Reproduction E)
→ 跳过 CGammaFilter（Phocus 默认 correction version=2、gamma flag=false）
→ HNCS companding 解码
→ HNCS 到线性 sRGB
```

Phocus 自动插入 HighlightStrength 的条件仍是 `EffectiveFilmCurve=2/4`，这与
`CGradationManager` 构造参数中的 `filmCurveType=7` 不是同一个判断。由于数值 2/4 的公开
枚举名称尚未恢复，当前应用不接入 HighlightStrength，也不根据 B/C/E 曲线名称臆测它的启用
状态。

Gradation 在原始图中始终存在，SelectiveColor 按用户设置创建；但二者的非恒等 65,536 点表
来自 Phocus `CImageCorrection`/用户编辑状态，不在相机 Colormap XML 中。PhotonCamera 没有
这些真实表时不会把自己的通用滑杆、经验曲线或 identity 纹理伪装成 Phocus 数据。默认
Brightness/Contrast 为 0，`EffectiveGamma=1`，所以这时 `CGradationFilter` 的总表是恒等
映射；不绘制一个 identity pass 与原图数值等价。

### Film Curve

`CGradationManager` 根据 `filmCurveType` 与 `companding` 从五张静态表 A–E 选择：

```text
type=0,    companding=1 → A
type=1..6, companding=1 → B
type=0..6, companding=2 → C
type=7,    companding=1 → D
type=7,    companding=2 → E
```

因此 type 7 本身不等于 E；还必须是 `companding=2`，`type=7/companding=1` 会得到 D。
应用按界面语义接入两张原表：

| 界面选项 | 原表 | 构造参数 | float 表 FNV-1a64 | asset SHA-256 |
|---|---|---|---|---|
| 标准 | C | type=6, companding=2 | `a7fda12f9d03aa3f` | `0b26cfdeb578ca21eee5e55e95c4f49ca43ab333e2cea5a011049c07bee4b531` |
| Reproduction | E | type=7, companding=2 | `aef781b4a11cdc4a` | `a5f1b9e3e7dc5f37a71840906e3edf6467e64d11450e68d85c436acf84504bd8` |

两张 65,536 点表都由原始 `libcrosssdk.so`（SHA-256
`4320cacc91faf0ac16b0653760b86f604303162d43c1cad5fe182b73b9eede6b`）
运行时直接导出，而不是用近似公式重建。缺少 maker FilmCurve tag 时，
`CRawImageFile::GetFilmCurveType` 与 `CRawImageFileData::GetFilmCurveType` 返回 6；
原先默认 HNCS 路径的 `companding=2` 对应上表中的标准 C。

`CGradationManager::SetFilmCurve` 与构造函数都只是从已经初始化的同一组静态表选择并复制目标
表，不存在漏掉的二次曲线计算。shader 按 Phocus 行为使用
`floor(clamp(input/gain × 65536, 0, 65535))` 最近点读取，正常路径 `gain=1`，不对输出再次乘
gain，也不做曲线尾部外推。

### 条件 Gamma

`CGammaFilter` 恢复的常量：

```text
GammaHasselbladRgb  = 2.19921875
HDRMaxGain          = 49.261085510253906
HasselbladHdrRgbLimit = 5.882924556732178

encoded = pow(linear × HDRMaxGain, 1 / GammaHasselbladRgb)
          / HasselbladHdrRgbLimit
```

这些常量并不表示 `CGammaFilter` 必经。`CCameraImage::AddHNCSFilters` 的真实插入条件是：

```text
CImageCorrection.storedVersion >= 4
&& CImageCorrection.gammaStageFlag
&& sRawDescription.supportsGammaStage
```

`CImageCorrection::SetDefaultValues` 写入 `storedVersion=2` 并清除 gamma flag；因此没有导入
Phocus correction 元数据的普通 RAW 必须跳过 `CGammaFilter`。此前无条件执行它把 FilmCurve
后的 P50 从 `0.357` 再抬到 `0.626`，形成一次原图不存在的重复 companding。

FilmCurve companding 2 的输出随后按 HNCS source transfer 解码，再做 HNCS→线性 sRGB 矩阵与
标准 sRGB 编码。若以后接入真实的新版 `CImageCorrection`，才可按上述三个真实字段启用
Hasselblad/LStar Gamma 分支，不能仅凭相机品牌或 UI 选项推断。

### 仍不可执行的原始分支

- `EffectiveFilmCurve=2/4` 的公开名称仍未恢复，因此不能自动把该条件映射到 B/C/E；
- HighlightStrength 不接入当前渲染计划，避免脱离 `EffectiveFilmCurve=2/4` 条件单独运行；
- LStar Gamma 的选择字段已定位，但当前 HNCS 默认计划不满足 Gamma filter 插入条件；
- Gradation/SelectiveColor 的 shader 已审计，缺少的是真实 `CImageCorrection` 用户表，不是
  像素公式。

因此 UI 只暴露已有真实表驱动的选择。以后启用其他分支时，必须接入对应的真实
65,536 点或 128×128 表及其宿主状态，不能用经验曲线替代。

## “自然”和“人像”在哪里

原始 Phocus Colormap 资源与 native HNCS 图中可确认的相机色彩 render intent 只有
`Standard` 和 `Reproduction`。没有第三组名为 `Natural` 或 `Portrait` 的二维表，也没有对应
的 HNCS 枚举或 filter 分支。

- “Natural”是 Hasselblad Natural Colour Solution 名称中的描述词，不是一个与 Standard 并列
  的 profile；
- “Portrait”在已检查的 Phocus 资源中用于画面方向/题材描述，不是 HNCS render intent；
- Phocus 的 Response 工具还有 `Reproduction Low Gain` 与 `Negative`，它们属于响应/影调
  选择，不能伪装成相机二维色度表。

因此 UI 只提供有真实 XML 数据的 Standard/Reproduction。加入“自然/人像”会生成不存在的模式，
违背本引擎的真实数据约束。

## 严格失败条件

以下任一条件都会使 `Hncs` 返回失败：

- 固定 100MP3 profile 缺失，或 manifest 不只包含这个 profile；
- 相机拍摄缺少源固定标定，或目标 ColorMatrix 缺失、无效、不可逆；
- RAW 白点 xy/CCT 无法由真实元数据求得；
- manifest/header 源文件或 SHA-256 不一致；
- payload 长度或 SHA-256 不一致；
- grid 不是 105×89，表长度不等于 18,690；
- 所选意图缺少至少两个温度表；
- 矩阵或 neutral vector 少于两个锚点；
- 插值后出现非有限数据，或参考 neutral gain 非正；
- LUT 纹理或 film curve 纹理上传失败。

没有 LUT→CCM、HNCS→Adobe Curve、首 profile 或默认 5000 K 回退。

## 相机域截断与 headroom

原始 `ColorCorrectAll` shader 在输入矩阵前执行：

```text
source = clamp(raw × normalizedCameraGain / hrTrunc, 0, hrMax) × inputEV
```

`CColorCorrectAllFilter::FilterResultGpu` 的 uniform 映射已经逐项确认：

```text
filter + 0x188 → uInputEV
filter + 0x190 → uHrTrunc
filter + 0x194 → uHrMax
```

`ColorCorrectionAllFilter::GetHrEV` 使用当前 as-shot RGB gain、source ISO/sensitivity gain 和
image-correction EV；`UpdateParameters` 再写入上述三个字段。旧版与新版
`CImageCorrection` 会把 camera gain/source exposure 分配到 gain、`inputEV` 和
`CRawColorCorrection` linearization 的不同位置，不能把某一版本的对象内存值直接套到当前
管线。没有导入 Phocus 局部曝光或镜头 EV correction 时，能够确定的默认截断因子为：

```text
hrTrunc = 1
hrMax   = 1
```

PhotonCamera 把跨版本但数值等价的 gain/exposure 项规范到显式参数：

```text
normalizedCameraGain = cameraGain / max(cameraGain)
inputEV = sourceExposureGain × max(cameraGain)
```

PhotonCamera 进入该阶段前已经按 `(raw - black) / (white - black)` 完成 RAW 白电平归一化，
所以 Phocus source ISO/sensitivity normalization 在本域的等价量就是 DNG
`2^BaselineExposure`，不能再额外乘一次 ISO 或 `PostRawSensitivityBoost`。运行时使用：

```text
g = 当前 RAW as-shot RGB gain         // 源传感器域

gNormalized = g / max(g)
inputEV     = 2^BaselineExposure × max(g)
Mbase       = MsourceComposite × diag(1 / g)

camera = clamp(raw × gNormalized, 0, 1) × inputEV
profileRgb = Mbase × camera
targetWbRgb = inverse(B_target) × profileRgb
hncs = MtargetToHncs × targetWbRgb
```

未触发截断时，上式严格等于既有
源中间纹理的 `MsourceComposite × raw × 2^BaselineExposure`；触发截断时则与 Phocus 一样在相机 gain 之后、
输入矩阵之前截断。`BaselineExposure` 和测光候选 EV 由 `inputEV` 消费，线性 pass 的通用
`uExposureGain` 在 HNCS 路径保持 1，因此不会重复曝光。用户编辑 EV 在公共曝光准备阶段消费，再进入等效 RGB 矩阵。等效转换为线性，
不会引入额外的曝光相关非线性；后续 Phocus 二维表与 FilmCurve 仍遵守原始处理顺序。

这里的 `[0,1]` 只属于相机域。camera→HNCS 矩阵产生的合法负值和 overrange 不再二次 clamp，
以免破坏矩阵与后续 Cb/Y–Cr/Y 色度表的输入。

## 跨相机适配的验证边界

当前复用 Phocus 100MP3 原表的前提是先通过参考 RAW ColorMatrix 构造等效 X2D II 100C RGB。
这仍是跨传感器的色度近似，不等同于对源传感器重新实测 HNCS 标定或恢复光谱响应。
要建立源传感器专属 profile，仍需独立光源、灰阶、色卡及高饱和样本测量和验证。

JVM 回归覆盖单 ColorMatrix1 无光源标签、双光源 S9 ColorMatrix、源目标同标定的
白平衡往返、负值/HDR 通道与 PGTM 标量增益，并检查目标 ForwardMatrix 和创意 DCP
表不会参与矩阵计算。参考 RAW 的九项矩阵与资产 Float32 位模式逐项相同。
这些检查不代替真机 GLES draw 或最终照片的色差验证。

## GLES 约束

- 色度表和 film curve 使用 `RGBA16F sampler2D`，避免移动驱动的 `RG16F` 组合差异；
- 105×89 色度表使用 `GL_NEAREST`，shader 显式四点插值；
- 65,536 点 film curve 固定铺成 256×256，并使用整数 `texelFetch`；
- LUT 宽高由 CPU uniform 显式传入，不用 `textureSize/imageSize` 决定索引边界；
- 2D 色度表不通过 sampler 函数参数传递；等效 RGB 使用已有 mat3 uniform，不再分配 3D 标定纹理。

相关兼容性记录见
[`docs/gles-driver-compatibility.md`](gles-driver-compatibility.md)。
