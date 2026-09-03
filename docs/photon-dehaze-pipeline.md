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
  -> full-coverage 8 x 6 viewfinder matching for one downstream exposure
  -> bake the fixed HDRNet grid, Dehaze/DHA curve and downstream exposure into PGTM
  -> DCP HueSatMap / profile exposure / LookTable / tone / output
```

Dehaze 不进入 HDRNet 模型输入。HDR ratio 与 short gain 由拍摄阶段确定，取景器匹配不得修改
这两个量，否则会把 HDRNet 与 Dehaze/DHA 形成的动态范围和反差当作曝光误差抵消。Dehaze 的
统计源是唯一一次推理后的完整 256×192 HDRNet 输出；8×6 网格的每格覆盖对应区域的全部像素，
只用于求一个 HDRNet 下游曝光，不用于估算 Dehaze 曲线。后处理结果的全图 P99 最大通道限制
正向曝光，避免匹配增益破坏高光余量。

## 曲线契约

HDRNet 输出先转换到原版 12-bit 统计域：

- 877-bin haze histogram：`clamp(R+G+B, 0, 876)`；
- 5251-bin highlight histogram：`max(RGB) + (max-min)/8`；
- 20 个低百分位样本决定两组 atmospheric haze point；
- 5 个高百分位样本决定 DHA highlight scale，并限制到 `0.78..1.7`；
- 最终曲线由低端二次段和高端线性段组成，数值和斜率连续。

合成时，曲线按 `(R+G+B)/3` 求共享 gain 并同时乘到三个通道。PGTM 是标量表，生成时使用
固定的模型输入，从每个 64×48 空间 cell 保留局部色度与 HDRNet luma 的比例，再把相同的
arithmetic-RGB 曲线及单一匹配曝光合成到 257 点强度轴并反解 ACR3 输入。运行期只查一次
PGTM，不会再次执行 HDRNet、Dehaze 或 DHA。

## 控制与持久化

`PhotonDehazeTuning` 仍使用以下字段：

- `photonDehazeEnabled`
- `photonDehazeStrength`（`0..4`）
- `photonDehazeDynamicHighlightStrength`（`0..1`）

默认启用，强度均为 `1`。参数只在 HDRNet PGTM 生成或重新生成时消费；Classic 与 Local
Laplacian 路径不执行 Dehaze/DHA。拍摄时得到的 HDRNet 下游匹配曝光独立保存，重新生成 PGTM
时恢复并按新的 P99 高光余量重新约束；不会折回 short gain、HDR ratio 或 BaselineExposure。
已有 DNG 的 PGTM 不在最终渲染时叠加独立去雾。

## 匹配日志

`PLog_RawExposureMatch` 输出 Classic/Local Laplacian 的候选结果，以及 HDRNet 单曝光最终匹配率、
平均 EV 误差和校正量。`DngPhotonProfileGainTableAlgorithm` 另外输出固定的 short/ratio、匹配
曝光及上限、P99 peak、haze point、DHA scale 与全图统计样本数。
