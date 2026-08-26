# Photon 传感器面积核心调校

`PhotonSensorSizeTuning` 是 RAWmax 的可选核心调校。用户打开“RAWmax 画质调优”后，拍摄时读取当前
物理镜头的 `CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE`，以实际宽高乘积作为有效面积，解析出一份
`PhotonCoreImagingTuning` 并固化进 RAW metadata。关闭时明确使用 `PhotonCoreImagingTuning.DEFAULT`。
重处理读取的是拍摄时的已解析数值，不会受以后模型或开关调整影响。
自动解析还会记录 `photonCoreTuningModel=photon-sensor-area-v1` 和原始
`photonSensorPhysicalAreaMm2`，便于审计当次配置来源。

## 标定样本

样本只取 Mi 15 Ultra 配置中同一成像意图的第一个 profile（`p0`），避免把不同 profile 的风格差异混进
传感器尺寸关系。配置文件仅作为数值样本，不参与运行时解析。

小米官方 FAQ 给出了四颗后摄的型号、像素数、像素尺寸、传感器规格和焦段：

| 配置 lens | 镜头 | 传感器 | 像素数 | 单像素 | 标定面积 |
| --- | --- | --- | ---: | ---: | ---: |
| 0 | 23 mm 主摄 | Sony LYT-900 | 50 MP | 1.6 μm | 128.0000 mm² |
| 1 | 14 mm 超广角 | Samsung JN1 | 50 MP | 0.64 μm | 20.4800 mm² |
| 2 | 70 mm 长焦 | Sony IMX858 | 50 MP | 0.7 μm | 24.5000 mm² |
| 3 | 100 mm 潜望长焦 | Samsung HP9 | 200 MP | 0.561 μm | 62.9442 mm² |

面积按 `有效像素数 × 单像素边长²` 计算。它用于离线标定；运行时不猜传感器型号，也不使用
`1/x 英寸`光学规格，而是采用 Camera2 报告的物理尺寸。

官方来源：

- [Xiaomi 15 Ultra FAQ：传感器型号、规格、像素尺寸和焦段](https://www.mi.com/uk/support/faq/details/KA-536389/)
- [Xiaomi 15 Ultra 产品规格](https://www.mi.com/global/product/xiaomi-15-ultra/specs/)
- [Sony LYTIA 移动传感器规格：LYT-900 1/0.98、1.6 μm、50 MP](https://www.sony-semicon.com/en/products/is/mobile/lineup.html)
- [Samsung ISOCELL HP9：200 MP、0.56 μm、1/1.4 英寸](https://semiconductor.samsung.com/news-events/news/samsung-unveils-versatile-image-sensors-for-superior-smartphone-photography/)
- [Samsung ISOCELL JN1：50 MP、0.64 μm、1/2.76 英寸](https://semiconductor.samsung.com/image-sensor/mobile-image-sensor/isocell-jn1/)

## 转换后的 Photon 样本

只保留 Photon 当前真正消费的融合和空域降噪领域。HDR、高光、gamma、色彩、锐化和除雾不进入拟合。

| lens | 噪声相关性 | luma 五层 | 细节重建五层 | 离群抑制五层 | chroma 五层 | 频率响应 offset |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 0.500 | 0.312500 | 0.312500 | 0.812500 | 0.125 | 6.5 |
| 1 | 0.875 | 0.171875 | 0.312500 | 0.125000 | 0.125 | 14.5 |
| 2 | 0.875 | 0.234375 | 0.312500 | 0.812500 | 0.875 | 20.0 |
| 3 | 0.500 | 0.406250 | 0.312500 | 0.812500 | 0.500 | 3.5 |

表中的“五层”表示五个 pyramid level 使用同一数值。融合 gradient threshold 没有有效的逐镜头
样本，因此保持 SNR 自适应；参考信号保持 Photon 自己的 `0.18` fallback。

## 拟合方法

自变量使用面积档位：

```text
x = log2(clamp(areaMm2, 20.48, 128.0) / 32.0)
y = valueAt32mm2 + changePerAreaStop * x
```

四点最小二乘拟合后，只采用 `R² >= 0.5` 的关系。低于阈值说明焦段、像素结构或作者风格的影响大于
传感器面积，继续按尺寸拟合会制造错误因果，因此改用中位数。

| Photon 维度 | 32 mm² 值 | 每面积档变化 | R² | 策略 |
| --- | ---: | ---: | ---: | --- |
| 融合噪声相关性 | 0.767513962 | -0.164396329 | 0.878 | 对数面积拟合 |
| luma 五层倍率 | 0.252164225 | +0.059759506 | 0.530 | 对数面积拟合 |
| 降噪响应 offset | 13.499369928 | -4.878369857 | 0.641 | 对数面积拟合 |
| Sabre SNR20 level 1 | 0.608876213 | +0.033127858 | 0.668 | 对数面积拟合 |
| 细节重建 | 0.312500 | 0 | 常量 | 固定值 |
| 离群抑制 | 0.812500 | — | 0.373 | 中位数 |
| chroma | 0.312500 | — | 0.125 | 中位数 |

其余 Sabre 节点采用跨镜头一致值或中位数：

```text
SNR 5 : [0.80, 2.20, 0.50, 1.65, 0.70]
SNR 20: [fitted, 2.10, 0.40, 0.80, 0.20]
SNR 40: [0.85, 0.40, 0.30, 0.457, 0.10]
```

## Mi 15 Ultra 面积点的最终 Photon 配置

这是回归模型在四个标定面积上的实际输出，不是把原样本逐项复制回来：

| 传感器 | 面积 | 融合噪声相关性 | luma 五层 | 响应 offset | SNR20 level 1 |
| --- | ---: | ---: | ---: | ---: | ---: |
| JN1 | 20.4800 mm² | 0.873362 | 0.213688 | 16.640339 | 0.587547 |
| IMX858 | 24.5000 mm² | 0.830854 | 0.229139 | 15.378958 | 0.596112 |
| HP9 | 62.9442 mm² | 0.607063 | 0.310490 | 8.738073 | 0.641209 |
| LYT-900 | 128.0000 mm² | 0.438721 | 0.371683 | 3.742630 | 0.675132 |

四组配置共同使用：细节重建 `0.3125 × 5`、离群抑制 `0.8125 × 5`、chroma
`0.3125 × 5`，以及上面的完整 Sabre 节点。

## 运行规则

- 自动模型标识：`photon-sensor-area-v1`。
- “RAWmax 画质调优”默认关闭；关闭时始终使用 `PhotonCoreImagingTuning.DEFAULT`。
- 开启时，有隐藏的显式 `PhotonCoreImagingTuning` 则显式值优先。
- 开启且没有显式值时，按当前输出物理镜头面积解析。
- 普通 RAW、JPGmax、单帧 JPG 和预览快照不启用面积模型。
- Camera2 未提供有效物理尺寸时，退回 `PhotonCoreImagingTuning.DEFAULT`。
- 小于 20.48 mm² 或大于 128 mm² 时夹到标定边界，不做危险外推。
- 面积拟合不改变除雾；独立去雾管线保持静默默认启用和 `1.0` 强度，不从传感器面积推导。
