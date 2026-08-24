# Photon 独立去雾管线

## 原版位置与语义

MGC 9.6 的调用链不是后置滤镜：

```text
ProcessRaw
  -> downsampled linear RGB/YUV
  -> ProcessLowFrequency
       -> DehazeAndDha
       -> ShadowLevelMatching
       -> ApplyColorMap
  -> FinishRaw
       -> tone/output
       -> SharpenTo16Bit
```

本地 native 代码中的可核对位置：

- `googlex/gcam/finish_raw/finish_raw/dehaze.cc:369`：`BuildHistogram`；
- `process_low_frequency.cc:599/636`：WithLtm/SkipLtm 两条路径调用 `DehazeAndDha`；
- `process_low_frequency.cc:777`：后续 `ApplyColorMap`；
- `DehazeAndDha` 的 `ApplyCurve` 以 `(R+G+B)/3` 选择 gain，同时乘到三个通道。

因此 Photon 的固定位置是：

```text
full-resolution denoise
  -> camera RGB to linear working RGB
  -> PhotonDehazePipeline
  -> DCP color map / engine tone / output transform
  -> final sharpen
```

去雾不调用 HDR、高光滑杆、gamma、tone curve 或锐化实现。启用 DCP HueSatMap 时，LinearRcd
先只完成 camera-to-working 变换，去雾结束后才用独立的线性 pass 执行 color map，从而保持原版
`DehazeAndDha -> ApplyColorMap` 顺序。

## 算法契约

1. 对整幅线性 RGB 做 `8×8` box reduction，建立连续低频图。
2. 转换到原版的 12-bit 统计域。
3. 建立 877-bin haze histogram：`clamp(R+G+B, 0, 876)`。
4. 建立 5251-bin highlight histogram：`max(RGB) + (max-min)/8`。
5. 从 haze histogram 的 20 个低百分位样本估算两组 atmospheric haze point。
6. 从 highlight histogram 的 5 个高百分位样本估算 DHA highlight scale，并夹到
   `0.78..1.7`。
7. 构建由黑位二次段和高位线性段组成、值和斜率连续的曲线。
8. 全分辨率按 RGB 均值计算一个 gain，同时乘到 RGB 三通道并夹回 12-bit 对应范围。

Photon 没有接入 GCam 的 AE face-map buffer，统计采用原版的 zero-mask 分支：每个低频样本一票，
不增加 face 权重，也不减 face luminance offset。管线不使用逐 tile 曲线；去雾开启时要求连续
全帧低频统计。HDR reference 与 SDR 共用去雾及去雾后的 HueSatMap 结果，再从当前渲染引擎的
实测基准曲线构造连续的 HDR 高光延伸，避免 gain map 把去雾差异误判为 HDR 增益。

## 控制与持久化

去雾没有设置页或相册编辑页入口，也不保存用户偏好。缺少显式隐藏配置时，RAW 和 RAWmax
统一静默启用，`strength = 1.0`、`dynamicHighlightStrength = 1.0`。新拍摄会把这个有效值
固化到照片元数据；不含去雾字段的历史照片重新显影时同样采用该默认值。

`strength` 是 `dehazed_expo` 实际消费者，直接缩放两组 atmospheric haze point。默认值 `1`
保持算法基准强度。

元数据中的完整管线控制仍由以下三个字段组成：

- `photonDehazeEnabled`
- `photonDehazeStrength`
- `photonDehazeDynamicHighlightStrength`

`strength` 直接缩放 atmospheric haze point，作用等价于原版 `DehazeStrengthFactor` 的实际
消费者。`dynamicHighlightStrength` 是 Photon 拆出的 DHA 决定量：`0` 保持 highlight scale 为
`1`，`1` 使用完整直方图估算。隐藏字段可随照片元数据固定处理行为，但应用 UI 不暴露这些字段。

传感器面积拟合不决定去雾强度；RAW 和 RAWmax 都使用独立去雾默认值，其他核心成像参数继续
使用各自原有来源。
