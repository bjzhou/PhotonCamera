# RAW Radiance 多帧实现说明

> 本文件保留原路径以兼容已有链接。旧 MFNR/MFSR RAW stack 方案已废止，当前唯一的 RAW
> 多帧实现是 Radiance。

## 当前架构

RAW 多帧入口由以下组件构成：

- `Camera2Controller` 负责统一的多帧拍摄调度。
- `MultiFrameStacker.processBurstRaw` 校验输入并进入 Radiance。
- `GlesRawRadianceFusion` 规划同曝光融合、辅助曝光高光恢复和输出倍率。
- `GlesRawRadianceStacker` 完成 RAW 重建、配准、置信度计算、RGB 融合与色度后处理。

旧的 `GlesRawStacker`、`RawStackMode`、`RawStackTuningResolver`、RAW CPU/JNI stacker 和旧
CFA accumulator shader 已移除，不存在运行时回退或双实现分支。

## 控制语义

Camera2 控制层只暴露一个 `multiFrameOutputScale: Float?`：

- `null`：关闭多帧拍摄；
- `1.0f`：启用 Radiance，输出保持原始尺寸；
- `1.0f..2.0f`：启用 Radiance，并按该倍率生成输出采样网格。

控制层不再分别维护 MFNR/MFSR 布尔值。设置与预设仍可保留面向用户的降噪/超分选项，
但在进入 `Camera2Controller` 前必须合并成上述单一倍率；冲突的迁移数据以超分设置为准。

超分倍率是连续浮点参数，不得按整数档位处理。读取持久化数据、UI 输入、控制器入口和
处理器入口都必须限制在 `[1.0f, 2.0f]`。倍率只改变输出采样网格，配准和 tuning 中以 RAW
像素为单位的阈值不随输出尺寸直接放大。

非 RAW 的 YUV 多帧处理仍使用其独立实现；RAW 超分倍率不能被误传给只支持固定 2x 的 YUV
路径。

## Radiance 数据流

1. 选择参考帧并构建跟踪 proxy。
2. 通过金字塔、局部 flow 和全局 registration 对齐非参考帧。
3. 对标准 Bayer 运行 VGN 参考重建，并为非参考帧生成 Dense-G/R-G/B-G 语义重建。
4. 按噪声、光度一致性、流场连续性和细节可靠性生成独立的 NR/Detail confidence。
5. 在目标浮点倍率网格中累计宽核 NR 与窄核 Detail RGB。
6. normalize 后运行 VGN chroma postprocessor，输出连续 RGB16 LinearRaw。
7. 若存在规划后的短曝光辅助帧，在同一 Radiance 链路内完成曝光归一化高光恢复。

非标准 CFA 使用 Radiance 内的区域 RCD 重建后端，但共享同一配准、置信度、融合与输出逻辑。

## GLES 约束

Radiance accumulator 使用 `R32UI` image 和 `packHalf2x16`，避免移动端驱动不支持
`RGBA16F` read/write image。拒绝原因纹理使用严格的 `RGBA16F` ping-pong，只读上一张并只写
下一张。完整格式、绑定和 readback 约束见 `docs/gles-driver-compatibility.md`。

## 验证要求

修改 RAW Radiance 时至少执行：

- `./gradlew compileDefaultDebugKotlin`
- `./gradlew buildCMakeDebug`
- `./gradlew compileDefaultDebugAndroidTestKotlin`
- `GlesRawRadianceStackerShaderTest` 真机测试

倍率测试至少覆盖 `1.0f`、一个非整数倍率和 `2.0f`，并验证输出尺寸、tile/layer 边界、IIR
跨层访问与 RGB16 readback。
