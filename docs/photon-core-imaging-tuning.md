# Photon 核心成像参数

`PhotonCoreImagingTuning` 保持为本地默认值单例，不提供核心参数的持久化读写。
「HDR+ 画质调优」（1.27.2.2 传感器面积调优）已移除，融合/降噪/锐化统一使用下列本地默认值，
旧照片中残留的 `photonCoreTuningModel` / `photonSensorPhysicalAreaMm2` 属性在重处理时忽略。

## 本地默认值

| 参数 | 默认值 |
| --- | --- |
| Sabre `mergeGradientThreshold` | `-1` |
| 参考信号缺失时的替代值 | `0.18` |
| 噪声谱缩放 `noiseCorrelationScale` | `1` |
| luma/chroma 五层强度倍率 | 全部 `1` |
| revert/outlier 五层倍率 | 全部 `1` |
| 频率响应 `(responseOffset-cos²)+(cos+cosineOffset)²` | offset=`1`，cosineOffset=`-1` |
| Sabre strength/revert/outlier 绝对节点覆盖 | 全部不覆盖，使用原始资产 |
| 新建噪声谱初值 `noiseSpectrumSeed` | `1`；已有测量谱保持自身幅度 |

移除此前 AGC p0 的固定默认调参：strength `[2.5,2.5,2.5,2.5,1.25]`、revert `2`、outlier `0.75`、
responseOffset `0.9375`、噪声谱初值 `0.5`，以及 dl/dm/dh 的 strength/revert/outlier 绝对覆盖。
历史 AGC 参数仅保留在显式测试样本中，用于验证原版插值语义，不参与运行期默认值。

融合阈值 `-1` 对应 AGC `lib_sabre_denoise_control_key=-1.000`，原样进入
`covariance_parameters1.z`。正常有限非负局部特征下，
`clamp(1-(feature-threshold)/transition,0,1)` 为零，取消弱纹理区域向宽各向同性核的额外混合。
显式 `null` 可使用原始 SNR 自适应阈值；归一化范围
为 `-32..32`，允许负阈值通过。既有拍摄日志记录 `mergeGradientThreshold` 与最终 kernel 参数。

## 噪声模型

默认噪声模型为系统默认（Camera2 `SENSOR_NOISE_PROFILE`，缺失时回退 Pixel 8 Pro）。以下三个模型通过通用 `.c` 解析器加载，作为可选模型：

| 编号 | 文件 | 模拟增益 ISO 分界 |
| --- | --- | --- |
| 26 | `noise_profiles/GC02M1_LMIPRO.c` | 600 |
| 48 | `noise_profiles/LGV50_IMX363.c` | 800 |
| 70 | `noise_profiles/GalaxyM51_SLSI_GC5035_54.c` | 800 |

26 号复用已有条目，系数与用户提供的 `.c` 文件完全一致。70 号的测试循环上限 1600 不代表
模拟增益分界，实际使用文件函数中的 800。

空域降噪的原版 `Scale(2)` 数值域转换保持原实现。

## 锐化与除雾

具备参考帧 SNR 的 RAW 使用 MGC 9.6 原版
`SharpenTo16BitHalide`。`PhotonCoreImagingTuning.sharpen` 提供本地 SNR 节点、三频段增强倍率
及显式对比度控制点，默认值等效于原 `sharpen_default.binarypb` 曲线；参数含义、完整默认表及
公式见 [Photon 锐化参数表](photon-sharpen-tuning.md)。用户 sharpening 滑杆与融合 attenuation
继续控制内核外层强度。锐化选择曲线使用参考帧 SNR，降噪使用融合后 SNR，两者不可混用。
没有参考帧统计且无法访问原始 RAW 的其他 GPU 来源保留 GLES USM，并记录原因。
HDRNet Dehaze/DHA 继续使用本地默认值。完整链路见
[Photon HDRNet Dehaze + DHA 链路](photon-dehaze-pipeline.md)。

## 验证

默认值校验确认单位倍率、无节点覆盖、频率响应与噪声谱初值为 `1`；融合参数校验确认 `-1` 经归一化
进入 covariance uniform。原 AGC 插值回归使用显式历史样本，不再依赖生产默认参数。
