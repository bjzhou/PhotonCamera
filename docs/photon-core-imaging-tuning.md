# Photon 核心成像参数

`PhotonCoreImagingTuning` 是 Photon 自己的核心 RAW 调校模型。它不模拟外部相机配置，也不把不同处理阶段的数值塞进一个扁平参数表。

当前拍摄与处理固定使用默认核心参数，不提供设置项、DataStore 覆盖或基于传感器面积的自动调优。
旧版本已经写入 RAW metadata 的 Photon 参数仍可读取，以保持历史照片的重处理兼容性。去雾阶段和
原版调用证据见 [Photon HDRNet Dehaze + DHA 链路](photon-dehaze-pipeline.md)。

## 领域结构

| 领域 | 类型 | 决定的处理阶段 |
| --- | --- | --- |
| 多帧融合 | `PhotonFusionTuning` | Sabre frame merge、参考帧 SNR、融合后噪声相关性 |
| 空域降噪 | `PhotonDenoiseTuning` | 全分辨率 luma/chroma 金字塔、细节重建、离群点抑制 |
| 除雾 | `PhotonDehazeTuning` | HDRNet 输出的雾幕曲线和 DHA 动态高光调整，并烘焙进 PGTM |

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

最终锐化不再属于 `PhotonCoreImagingTuning`。RAW 输出保持在 GLES 管线中，以 9-tap 可分离亮度
模糊构建自适应 USM；用户 sharpening 滑杆决定总强度，MGC 多帧合成产生的 attenuation 只缩放该
GPU 强度。锐化不读取 SNR，不触发 RAW 像素统计或 GPU→CPU 回读。

## 除雾

`PhotonDehazeTuning` 只由 HDRNet PGTM 生成链消费：

- `enabled`
- `strength`，范围 `0..4`
  - 直接缩放直方图估算出的两组 atmospheric haze point。
  - `0` 关闭雾幕黑位/对比曲线，但不强制关闭独立的动态高光调整。
- `dynamicHighlightStrength`，范围 `0..1`
  - `0` 保持白点比例 `1`。
  - `1` 完整采用高光直方图估算的比例；中间值在线性比例域插值。

处理顺序为：固定 final-short 线性工作 RGB → 一次 HDRNet → Dehaze/DHA → 取景器匹配与 SLM rolloff
→ PGTM 烘焙 → DCP 色彩映射与 profile tone → 最终锐化。完整 256×192 HDRNet 输出只建立一次
两组 12-bit 直方图；匹配沿用 8×6 网格权重，可靠暗部最多增加 25% 权重。候选先对每个像素
执行 rolloff/digital gain，再统计每格亮度；不施加 P99 匹配限制，不修改 short gain 或 HDR
ratio。最终渲染只应用烘焙后的 PGTM，不存在独立 Dehaze pass，也不会逐 tile
重新统计曲线。Classic 与 Local Laplacian 路径不消费这些参数。

## 生命周期与持久化

- 新拍摄不写入核心参数覆盖，融合与 RAW 处理使用 `PhotonCoreImagingTuning.DEFAULT`。
- 不提供 UI、DataStore 偏好或基于物理传感器尺寸的自动模型。
- 历史 metadata 中已有的 `photonFusion*`、`photonDenoise*` 和 `photonDehaze*` 参数仍可读取，
  仅用于旧照片重处理复现。
- 去雾不提供 UI 或独立 DataStore 偏好；没有历史覆盖值时使用默认强度。
