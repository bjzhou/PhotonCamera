# Photon HDRNet Dehaze + DHA 链路

Photon 不再运行独立的全分辨率 Dehaze pass。Dehaze 与 DHA 只属于 HDRNet 路径，并和
HDRNet 的 bilateral-grid 输出一起烘焙到 DNG `ProfileGainTableMap2`。

## 顺序

MGC v25 的低频处理顺序是 LTM → `DehazeAndDha` → `ShadowLevelMatching` →
`ApplyColorMap`。Photon 用 HDRNet/PGTM 代替 LTM，因此对应顺序为：

```text
final-short linear working RGB
  -> one HDRNet model input / bilateral-grid inference with fixed short gain and HDR ratio
  -> HDRNet output (256 x 192)
  -> whole-image Dehaze + DHA histogram and curve
  -> composed HDRNet + Dehaze/DHA output
  -> full-coverage 8 x 6 viewfinder matching with modest shadow preference
  -> downstream SLM rolloff / digital gain
  -> bake the fixed HDRNet grid, Dehaze/DHA curve and gain response into PGTM
  -> DCP HueSatMap / profile exposure / LookTable / tone / output
```

Dehaze 不进入 HDRNet 模型输入。HDR ratio 与 short gain 由拍摄阶段确定，取景器匹配不得修改
这两个量，否则会把 HDRNet 与 Dehaze/DHA 形成的动态范围和反差当作曝光误差抵消。Dehaze 的
统计源是唯一一次推理后的完整 256×192 HDRNet 输出；8×6 网格的每格覆盖对应区域的全部像素，
只用于求一个 HDRNet 下游增益参数，不用于估算 Dehaze 曲线。后处理结果的全图 P99 最大通道
只用于诊断，不再限制正向匹配或重生成时恢复的参数。通用匹配范围仍为 `-4..4 EV`。

## 取景器权重与 rolloff

目标仍是拍摄时对齐后的取景器图。保留现有参考可靠性、8×6 空间权重、人像优先和 ±0.1 EV
匹配评分；HDRNet 路径只在原权重上叠加 `1 + 0.25*(1-smoothstep(0.02, 0.25, referenceLuma))`。
亮度为取景器 sRGB 解码后的线性 Rec.709 luma，可靠暗部最多增加 25% 权重；原有近黑和
饱和参考排除规则继续生效。Classic/Local Laplacian 的权重不变。

匹配输出 `g=2^postExposureEv`，按照 MGC V25 SLM 的 further-gain split 处理：

```text
g <= 1:       rolloff = 1, digital = g
1 < g < 1.25: rolloff = g, digital = 1
g >= 1.25:
  t = clamp(2*(g-1.25), 0, 1)
  rolloff = 1.25 + 0.5*(t-0.5*t*t)
  digital = g / rolloff
```

逐像素取 Dehaze/DHA 后的 `m=max(RGB)`，使用共享增益：

```text
G = 1 + (rolloff-1)*(1-m)^2
gain = digital                              // rolloff*digital < 1
gain = (1e-7 + m*digital*G) / (m+1e-7)        // 其余情况
outputRGB = clamp(RGB * gain, 0, 1)
```

亮部的 rolloff 增益自然减弱，rolloff 最大为 1.5，剩余增益由 digital 承担；不再用 P99
硬裁剪匹配 EV。这里只使用 SLM 的增益拆分和 rolloff，保留单路 HDRNet 图像与取景器目标。

求解器接收完整的旋转对齐 RGB，每个候选先逐像素执行上述响应及通道截断，再计算每格平均
Rec.709 亮度。不能先平均亮度再做 rolloff：同格内亮暗/彩色混合的结果会不同。求解器反解
各格 ±0.1 EV 匹配区间边界，沿用加权匹配率、平均 EV 误差及 robust loss 的选择顺序。
HDRNet 和 Dehaze 只计算一次。

## 曲线契约

HDRNet 输出先转换到原版 12-bit 统计域：

- 877-bin haze histogram：`clamp(R+G+B, 0, 876)`；
- 5251-bin highlight histogram：`max(RGB) + (max-min)/8`；
- 20 个低百分位样本决定两组 atmospheric haze point；
- 5 个高百分位样本决定 DHA highlight scale，并限制到 `0.78..1.7`；
- 最终曲线由低端二次段和高端线性段组成，数值和斜率连续。

合成时，曲线按 `(R+G+B)/3` 求共享 gain 并同时乘到三个通道。PGTM 是标量表，生成时使用
固定的模型输入，从每个 64×48 空间 cell 保留局部色度与 PXL N 强度的比例，在 257 点强度轴
上重建 RGB，再单独计算 Rec.601 HDRNet guide。PXL N 包含 min/max 通道权重，不能直接当作
HDRNet luma，否则彩色区域的 rolloff 强度会偏移。随后执行相同的 Dehaze/DHA 和 RGB rolloff，
取结果亮度并反解 ACR3 输入。黑色或负噪声使源 luma 不可由正标量增益表达时，该 cell 的表
曲线定义在中性灰轴上。PGTM 的空间/强度采样与标量格式仍有限制。运行期只查一次
PGTM，不会再次执行 HDRNet、Dehaze 或 DHA。

## 控制与持久化

`PhotonDehazeTuning` 仍使用以下字段：

- `photonDehazeEnabled`
- `photonDehazeStrength`（`0..4`）
- `photonDehazeDynamicHighlightStrength`（`0..1`）

默认启用，强度均为 `1`。参数只在 HDRNet PGTM 生成或重新生成时消费；Classic 与 Local
Laplacian 路径不执行 Dehaze/DHA。拍摄时得到的 HDRNet 下游匹配曝光独立保存，重新生成 PGTM
时恢复并使用相同 rolloff，仅按通用 EV 范围约束；不会折回 short gain、HDR ratio 或
BaselineExposure。持久化契约为 `hdrnet_post_dehaze_viewfinder_rolloff_v2`；旧的线性增益
`hdrnet_post_dehaze_viewfinder_v1` 参数不作为新响应的匹配结果恢复。没有兼容匹配值且没有
取景器时使用 0 EV。
已有 DNG 的 PGTM 不在最终渲染时叠加独立去雾。

## 匹配日志

`PLog_RawExposureMatch` 输出 Classic/Local Laplacian 的候选结果，以及 HDRNet 单曝光最终匹配率、
平均 EV 误差和校正量。`DngPhotonProfileGainTableAlgorithm` 另外输出固定的 short/ratio、匹配
参数、诊断用 P99 peak、haze point、DHA scale 与全图统计样本数。native PGTM 的
`POST_EXPOSURE` 日志同时记录总 gain、rolloffGain 与 digitalGain。
