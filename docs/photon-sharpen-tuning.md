# Photon 锐化参数表

本地入口：`PhotonCoreImagingTuning.sharpen`。默认表定义在
`processor/PhotonSharpenTuning.kt`，通过 `raw/MgcSharpenCurveBuilder.kt` 构造五点曲线，
经 JNI 传入原版 `GuidedUpsampleS16To16BitHalide`（无重建输入时为直接 `SharpenTo16BitHalide`）。
不增加持久化读写或设置界面。

关闭画质调优时默认值保持此前 MGC 通用锐化曲线的结果。开启时使用下述固定 AGC 参考配方。
RAISR/Polysharp 和降噪参数不属于这张锐化表。

用户输出倍率在 `RawOutputPass` 中执行：原生融合 → 原生降噪 → 低频颜色处理 →
GuidedUpsample（含锐化）恢复原生网格 → Lanczos-3 放大并裁切／旋转。
整数低频倍率 <=1 时使用独立 Sharpen，>1 时用 GuidedUpsample；SNR 是否存在不再选择分支。
末端 1× 输出直接取像素，不经双线性过滤。融合和降噪保持原生网格。

低频倍率按 V25 `CreateProcessRawParams` 的原始指令恢复：以实际最终输出尺寸/裁切尺寸
的较大比值作为 scale，将 (0.9,1.1) 归一为 1，再计算
`level = ceil(log2f(4/scale)) > 1 ? 2 : 1`，倍率为 `1 << level`。
因此原生宽 4000、1× 输出时颜色分支宽约 1000；2× 输出时约 2000。
`MgcFinishResolution.kt` 独立管理该策略；JNI、guide、Filmic box 和 tile 相位使用同一个倍率。
完整地址证据和原二进制对照见 [GuidedUpsample 复核](research/mgc-guided-upsample-integration.md)。

缺失 SNR 时沿用原版 EstimateSnr 的公式；没有可测 mean 和 MGC unapplied gain 时，
使用原版规定的 mean=0.18。非正方差返回 SNR=0，并选择曲线首节点，仍完成引导重建。

LinearRaw DNG 保存原生分辨率；相册 `customProperties.rawDisplayOutputScale` 保存显示倍率，
拍摄、重新编辑和 HDR 渲染均读取它。旧 DNG 缺少该字段时默认 1×，避免重复放大。
RAW 黑边裁切始终以原生像素计。分块按整张输出图的网格采样，Lanczos 支持区额外保留
3 个原生像素；HDR 采用相同的放大后 SDR 色彩和同坐标的平滑增益。

## 画质调优的固定配方

入口：`PhotonQualitySharpenTuning.FIXED`，由拍摄时保存的画质调优标记选择。
来源：`AGC9.6v5_LMv1.1_多大底机型.agc` 的 p0「清晰🏡明亮」、镜头槽0。
选取一个明确槽位供所有传感器统一使用，不平均各镜头数值，不根据面积改变参数。
没有面积信息也可生效；SNR 适配和既有锐化滑杆/runtime attenuation 继续保留。

| 固定项 | 数值 |
| --- | --- |
| SNR 节点 | `2 / 8 / 16` |
| 频段 amount | `.34375 / .34375 / 0` |
| mainContrastInput / highContrastInput | `.02 / (.02+.01)` |
| tailSpan | `1.375` |
| lowContrastGain | `1.375`，仅 SNR16 的 band1 为 `.1125` |

| SNR | lowContrastInput（band0/1/2） | mainContrastGain（band0/1/2，应用 amount 前） |
| --- | --- | --- |
| 2 | `.006 / .002 / .002` | `2.8125 / 2.025 / 1.35` |
| 8 | `.001 / .0005 / .0005` | `3.15 / 2.3625 / 1.575` |
| 16 | `.0002 / .0001 / .0002` | `11.25 / .05625 / 1.0125` |

每条曲线的高对比度点按已核实的原生公式转换：
`y3=(mainContrastGain*.02-.02+x3)+x3*.375`，`highContrastGain=y3/x3`。
这里包含 raw A/B=1.125、depth1=0、depth2=1.375、sharp_mini=10、sabre_sharp=.05、
sharp_big=.9 的曲线作用；Sabre selector=0 最终钳为1，选第一套表。
第三频段 amount=0 后成为恒等响应，不是抹除这个频段的图像信号。

原生语义基于已有 AGC V7 库核实。Sabre 的第二横坐标和过渡宽度实际为 `.02/.01`
（0x6ad348/0x6ad34c），不能把此前通用曲线的 `1/1` 套用过来。
这是一组固定的曲线参考配方，不代表同时复现 AGC 的 RAISR/Polysharp 或整条成像链。

## 频段与数值域

- `band0/1/2` 对应原版 Halide 曲线的三个 frequency 索引。它们不是 RGB 通道，也不是五层降噪的层号。
  保留原生索引，避免在尚未标定空间响应前把它们命名为某个固定像素半径。
- 曲线横轴是内核响应曲线的局部对比度坐标；不是场景明暗、曝光、ISO、噪声标准差或像素半径。
  `low/main/highContrast` 指同一频段内对比度幅度由小到大，不指低/中/高空间频率。
- 增益是该控制点的输出/输入，单位为倍。`1` 表示该点不改变对比度，`>1` 增强，`0..1` 抑制。
  除第一段外，控制点增益不是相邻两点间的斜率，更不是整张图的最终锐化倍数。

## 每项参数

| 参数 | 含义与调节效果 | 默认值 / 约束 |
| --- | --- | --- |
| `nodes[].snr` | 使用参考帧线性 SNR 选择曲线；节点间按 SNR 线性插值，范围外保持端点 | `5/10/20/40/80`；有限正数、严格递增，非 dB，非融合后 SNR |
| `amount.band0/1/2` | 各频段曲线相对恒等线的幅度：`y'=x+amount×(y-x)` | 全部 `1`；`0` 为恒等曲线，`>1` 放大已有增强或抑制；有限非负 |
| `lowContrastInput` | 第一控制点的横坐标，确定起始恒定增益段的结束位置 | 见下表；`0 < low < main` |
| `lowContrastGain` | 零到第一点之间的对比度增益；提高它会增强很弱的局部对比，也可能增强噪声 | 见下表；有限非负 |
| `mainContrastInput` | 第二控制点的横坐标，放置主要增强区域的位置 | `1`；`low < main < high` |
| `mainContrastGain` | 第二控制点的输出/输入比，独立于 low/high 两点的增益 | 见下表；有限非负 |
| `highContrastInput` | 第三控制点的横坐标，确定主增强向高对比度响应过渡的结束位置 | `2`；`high > main` |
| `highContrastGain` | 第三控制点的输出/输入比；`1` 在此回到恒等线，增大则保留更多强对比度增强 | `1`；有限非负 |
| `tailSpan` | 从第三点到末点的横坐标距离，纵坐标增加相同距离，尾段斜率固定为 1 | `1`；有限正数，不能因浮点舍入与前点重合 |

增大输入坐标是移动曲线分段位置，不是增大卷积半径。改变一个控制点会影响与它相邻的线段。
`highContrastGain=1` 配合默认尾段使强对比度部分回到恒等线，可限制这一段的增强；
它不保证最终图像完全没有光晕。

`amount>1` 是相对恒等线的外推。若某点原本在抑制对比度，过度外推可能生成负输出；
构造器会明确拒绝非有限值、非法节点顺序和负输出，不悄悄钳位或替换默认值。
降幅过大的曲线也可能产生明显视觉变化；检查的是输入契约，不是审美质量。

## 当前默认节点

下表每个三元组顺序均为 `band0 / band1 / band2`；每一格都是绝对值。

| 参考帧 SNR | lowContrastInput | lowContrastGain | mainContrastGain |
| --- | --- | --- | --- |
| 5 | `.05 / .03 / .02` | `1 / 1 / 1` | `1.6 / 1.8 / 1.2` |
| 10 | `.05 / .03 / .02` | `1.25 / 1.1 / 1` | `2.5 / 2.2 / 1.3` |
| 20 | `.05 / .03 / .02` | `1.6 / 1.3 / 1` | `3.2 / 2.6 / 1.4` |
| 40 | `.02 / .02 / .02` | `2.6 / 1.05 / 1` | `5.2 / 2.1 / 1.4` |
| 80 | `.02 / .02 / .02` | `2.35 / 1.05 / 1` | `4.7 / 2.1 / 1.4` |

所有节点的 `mainContrastInput=1`、`highContrastInput=2`、`highContrastGain=1`、`tailSpan=1`。
节点可增删，但必须保持 SNR 递增；只有一个节点时，对所有 SNR 使用该曲线。

## 曲线公式与生效顺序

每个频段、每个 SNR 节点先构造：

```text
P0 = (0, 0)
P1 = (lowContrastInput,  lowContrastInput  × lowContrastGain)
P2 = (mainContrastInput, mainContrastInput × mainContrastGain)
P3 = (highContrastInput, highContrastInput × highContrastGain)
P4 = (P3.x + tailSpan,   P3.y + tailSpan)
```

先在相邻 SNR 节点的五点坐标之间插值，再对 y 应用该频段的 `amount`。
禁止把 amount 乘到 SNR 插值系数上；这样会错误地改变噪声适配，且在端点失去作用。
也不直接插值增益：当两个节点的 x 不同时，“先插值增益再乘 x”不是相同曲线。

内核仍单独接收既有的 `用户滑杆映射强度 × runtimeAttenuation`。
MGC 滑杆映射为 `normalize(value) / 0.4`：`0 → 0`、默认 `0.4 → 1`、`1 → 2.5`。
因此默认位置不额外缩放原版运行时强度；若 runtimeAttenuation 不为1，最终仍保留原版衰减。
缺少参考 SNR 时先按原版 EstimateSnr 补齐输入，不再切换到 GLES USM。
这个输入与曲线参数分别生效，不能不经验证就把两者乘积宣称为最终锐化倍数。
将所有 amount 设为 0 只让曲线恒等，仍会经过内核和 RGB/YUV 数值域转换；
已经准备低分辨率输入时，用户锐化强度为 0 仍通过 GuidedUpsample 重建，不能绕过重建。
格式、上游和验证见 [GuidedUpsample 接入](research/mgc-guided-upsample-integration.md)。

## 本地调节示例

在 `PhotonCoreImagingTuning` 中修改入口即可改变拍摄与重处理默认值：

```kotlin
val sharpen = PhotonSharpenTuning.DEFAULT.copy(
    amount = PhotonSharpenBands(band0 = .7f, band1 = .7f, band2 = 0f),
)
```

这会保留每个 SNR 下前两组曲线相对恒等线偏移的 70%，第三组曲线变成恒等线。
只调 SNR20 的第一频段弱对比增益，可以对该节点的 `band0.copy(lowContrastGain = ...)`
做替换；它会影响相邻的 SNR10–40 插值区间，其余频段保持不变。

对比参数效果时固定 RAW、其他参数、输出尺寸及外层强度。曲线节点和插值统一由
`MgcSharpenCurveBuilder.build` 计算，直接锐化与引导重建共用这份结果。

## 与 AGC 参数的关系及边界

- `sharpness_a/b` 对应这里的频段 amount 作用：A 控前两组，B 控第三组；不是 SNR 插值倍率。
- 原来混杂在 `sharp_depth_1/2` 中的影响改为显式控制点、增益及 tailSpan，不保留一项同时修改多处无关常数的接口。
- AGC Sabre 表需要独立填写其实际节点和曲线。不能把 `sharp_mini=10` 直接称作全局增强10倍。
- `sharp_legibility` 属于降噪参数构造，RAISR/Polysharp 属于另外阶段，均不在本表中。
- 当前 MGC AOT 使用 Photon 编码 RGBA16F 转来的 U12 YUV。参数曲线可以对齐，不能因此保证整个 AGC 成片逐像素一致。
- 没有参考 SNR 的 GPU 来源仍走原有 USM 回退，不应用这张 MGC 参数表，并记录回退原因。
