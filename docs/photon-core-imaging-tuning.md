# Photon 核心成像参数

`PhotonCoreImagingTuning` 是 Photon 自己的核心 RAW 调校模型。它不模拟外部相机配置，也不把不同处理阶段的数值塞进一个扁平参数表。

当前具体参数保持隐藏：RAWmax 设置只展示“RAWmax 画质调优”总开关。开关关闭时使用默认参数；开启后，
没有显式值时按当前物理镜头的传感器面积解析，也可以由内部代码设置显式覆盖。最终值会在拍摄时固化进
metadata，支持 RAW 重处理复现。面积模型及标定方法见
[Photon 传感器面积核心调校](photon-sensor-size-tuning.md)，去雾阶段和原版调用证据见
[Photon 独立去雾管线](photon-dehaze-pipeline.md)。

## 领域结构

| 领域 | 类型 | 决定的处理阶段 |
| --- | --- | --- |
| 多帧融合 | `PhotonFusionTuning` | Sabre frame merge、参考帧 SNR、融合后噪声相关性 |
| 空域降噪 | `PhotonDenoiseTuning` | 全分辨率 luma/chroma 金字塔、细节重建、离群点抑制 |
| 锐化 | `PhotonSharpenTuning` | 低/中/高频三组锐化曲线的 SNR 自适应幅度 |
| 除雾 | `PhotonDehazeTuning` | 独立低频线性 RGB 统计、雾幕曲线和动态高光调整 |

## 多帧融合

`PhotonFusionTuning`：

- `mergeGradientThreshold: Float?`
  - `null`：使用当前 SNR 和帧数计算的自适应阈值。
  - 非空：直接成为 merge covariance kernel 的 gradient threshold。
  - 范围 `0..32`。
- `missingReferenceSignal`
  - 只有参考帧中心区域无法获得有效平均绿色信号时才使用。
  - 直接进入噪声方差和 reference SNR 计算，范围 `0..1`，默认 `0.18`。
- `noiseCorrelationScale`
  - 在 demosaic 和 denoise pyramid 传播之前直接缩放 128-bin noise correlation spectrum。
  - 不修改 read/shot noise coefficient，范围 `0..8`。

## 空域降噪

`PhotonDenoiseTuning` 把四种作用完全分开，每种都是固定五层 `PhotonPyramidScales`：

- `lumaStrengthScale`：亮度降噪 `strength`。
- `detailReconstructionScale`：亮度 `revertFactor`；决定降噪结果向原始信号恢复的程度。
- `outlierRejectionScale`：亮度 `outlierDistance`。
- `chromaStrengthScale`：色度降噪 `strength`。

五个值依次对应降噪金字塔 level 1..5，范围均为 `0..16`，默认全部为 `1`。用户层的 RAW luma/chroma 总强度仍然作为外层强度控制，不和这些内部曲线合并。

### 频率响应

`PhotonDenoiseFrequencyResponse` 直接控制 noise-buffer builder 使用的响应式：

```text
(responseOffset - cos²) + (cos + cosineOffset)²
```

- `responseOffset` 默认 `1`。
- `cosineOffset` 默认 `-1`。
- 两者范围 `-32..32`。

它们同时作用于 luma/chroma 金字塔的原始噪声能量计算，不是后置平滑或锐化补偿。

### Sabre 亮度节点

`PhotonSabreLumaTuningNodes` 提供 SNR 5、20、40 三个绝对 tuning 节点，每个节点可以覆盖五层 luma strength。覆盖发生在 SNR 插值之前；未指定的 level 保留内置 tuning asset 数值。

## 锐化

`PhotonSharpenTuning.snrInterpolationScale` 是 `PhotonFrequencyScales`：

- `low`
- `medium`
- `high`

三个值独立缩放相应频率组的 SNR interpolation amount，范围 `0..16`，默认均为 `1`。它决定自适应锐化曲线如何随 SNR 变化；RAW sharpening 总强度仍由现有用户强度控制。

## 除雾

`PhotonDehazeTuning` 由独立的 `PhotonDehazePipeline` 消费：

- `enabled`
- `strength`，范围 `0..4`
  - 直接缩放直方图估算出的两组 atmospheric haze point。
  - `0` 关闭雾幕黑位/对比曲线，但不强制关闭独立的动态高光调整。
- `dynamicHighlightStrength`，范围 `0..1`
  - `0` 保持白点比例 `1`。
  - `1` 完整采用高光直方图估算的比例；中间值在线性比例域插值。

处理顺序为：全分辨率 luma/chroma 降噪 → LinearRcd 线性工作 RGB → 去雾 → tone/风格 →
最终锐化。它对应 MGC `ProcessLowFrequency` 中 `DehazeAndDha` 位于 `FinishRaw` tone 和
`SharpenTo16Bit` 之前的边界；去雾自身不使用 HDR、gamma、用户高光滑杆或锐化参数。

管线先做固定 `8×8` box reduction，再按原版语义建立两个 12-bit 直方图：低端 summed-RGB
直方图决定雾幕点，高端 `max(RGB) + (max-min)/8` 直方图决定动态高光比例。最终曲线按
`(R+G+B)/3` 查共享 gain，同时乘到 RGB 三通道，保持色度比例。HDR reference 从去雾及
PostDehazeColorMap 之后的线性工作 RGB 分支生成，并使用 SDR 的实际线性结果作为颜色基底；
它沿当前渲染引擎的实测中性基准曲线运行，在高光 shoulder 处以数值/斜率连续的二次段离开，
场景白点达到 `√2`，白点以上按末端切线继续。去雾与 PGTM 都只在分支前执行一次。
去雾启用时整幅图必须共享一次统计结果，因此不会退化成逐 tile 独立曲线。

## 生命周期与持久化

- DataStore 保存 RAWmax 画质调优开关和一个可选的 `photon_core_imaging_tuning` 显式覆盖。
- capture custom properties 只写 `photonFusion*`、`photonDenoise*`、`photonSharpen*`、`photonDehaze*`。
- 去雾隐藏键为 `photonDehazeEnabled`、`photonDehazeStrength`、
  `photonDehazeDynamicHighlightStrength`；旧的预留键没有运行时语义且不迁移。
- 去雾不提供 UI 或独立 DataStore 偏好；无显式隐藏值时静默启用，强度固定为 `1.0`。
- 拍摄、融合结果、DNG metadata 和重新处理全程传递同一份 normalized tuning。
- 不读取、不迁移旧参数键；开关关闭或开启后面积不可用时使用 `PhotonCoreImagingTuning.DEFAULT`。
