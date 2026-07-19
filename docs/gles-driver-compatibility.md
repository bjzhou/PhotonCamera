# GLES 驱动兼容性记录

本文记录项目在真实 Android 设备上确认过的 GLES 驱动限制。修改 compute shader、image
load/store、纹理格式或 accumulator 架构前必须复查本文，并在目标设备上运行
`GlesRawStackerShaderTest`。不能仅凭 GLES 版本号或桌面 GLSL 编译结果判断移动端可用性。

## PMA110

### `RGBA16F` image 的访问限制

PMA110 的 GLES 驱动可以编译和运行以下组合：

- `layout(rgba16f) writeonly image2D`
- `glBindImageTexture(..., GL_WRITE_ONLY, GL_RGBA16F)`

但不能编译以下组合：

- `layout(rgba16f) image2D`，即 read/write image
- 对该 image 同时使用 `imageLoad` 与 `imageStore`
- `glBindImageTexture(..., GL_READ_WRITE, GL_RGBA16F)`

驱动编译错误为：

```text
Shader raw_accumulate compute compilation failed:
unsupported format on read/write image
```

因此不得使用单张 `RGBA16F` texture 原位完成 accumulator 的读取和写入。即使同一个
compute invocation 只访问唯一像素、没有跨 invocation 竞争，该格式仍会在 shader 编译阶段
被驱动拒绝。

### 当前兼容策略

需要原位 read/write 的 half-float accumulator 使用规范支持的整数 image：

- `R32UI`
- `layout(r32ui) uimage2D`
- `GL_READ_WRITE + GL_R32UI`
- 使用 `packHalf2x16` / `unpackHalf2x16` 在一个 texel 中保存两个 half

RAW base accumulator 使用两张 `R32UI`：

1. `weightedValue + weight`
2. `squareSum + clipMass`

总显存仍为 8 B/像素，与单张 `RGBA16F` 相同，但不需要两张 `RGBA16F` ping-pong。
MFSR accumulator 只保存 `weightedValue + weight`，使用一张 `R32UI`，为 4 B/输出像素。

所有读取 accumulator 的 fragment/compute shader 必须使用 `usampler2D`，取出 `uint` 后再
调用 `unpackHalf2x16`。禁止把 `R32UI` texture 绑定给普通 `sampler2D`。

### Radiance RGB accumulator

`GlesRawRadianceFusion` 同样遵循上述限制，不使用 `RGBA32F/RGBA16F` read/write image。
每个输出像素使用四张 `R32UI`：

1. NR `sumR + sumG`
2. NR `sumB + weight`
3. Detail `sumR + sumG`
4. Detail `sumB + weight`

四张纹理均通过 `packHalf2x16` 原位累积。参考帧连续 RGB 底图在参考帧累积完成后，由
`usampler2D` 读取 NR accumulator，再写入单独的 `RGBA16F writeonly image2D`。最终
normalize 只能通过四个 `usampler2D` 和一个普通 `sampler2D` 读取这些资源。

这样 compute pass 同时最多绑定四个 read/write image，且所有 read/write image 都是已经
在 PMA110 验证过的 `R32UI`。

Radiance 每帧先通过项目既有的 RCD pass 得到条带式 `RGBA16F` 连续 RGB。RCD 结果通过
`writeonly image2D` 写入、在 accumulator pass 中只作为普通线性过滤 `sampler2D` 读取，
不作为 read/write image。这样避免分别插值 R/G/B CFA 平面造成的绿色 zipper 和孤立伪色，
同时把 accumulator pass 的 RAW/LSC 邻域读取缩减为少量 RGB texture sample。

窄核 Detail accumulator 默认只向宽核 NR 结果注入亮度高频；色度由宽核分支持有。只有在
多帧细节支持度和一致性都足够高时，才允许通过 `detailChromaStrength` 恢复一部分窄核色度。
这样可避免对齐残差重新被放大成彩色 zipper。

### 验收要求

相关修改至少验证以下路径：

- shader compile/link
- `GL_R32UI` clear dispatch
- `GL_READ_WRITE` accumulator dispatch
- `R32UI` imageLoad/imageStore
- `usampler2D` normalize
- MFNR 与 MFSR 两种模式
- Radiance clear、accumulate、reference-base capture 与 normalize 四个 pass

桌面静态检查和 Kotlin 编译不能替代真机验证。新增格式前应优先扩展
`app/src/androidTest/java/com/hinnka/mycamera/processor/GlesRawStackerShaderTest.kt`，让测试实际
dispatch 对应 pass，而不只编译 program。

## vivo V2242A / Mali-G715-Immortalis MC11

已确认环境：

- 设备：vivo V2242A
- SoC 平台：MT6985
- 系统：Android 15
- GPU：ARM Mali-G715-Immortalis MC11
- GLES：OpenGL ES 3.2，驱动 `v1.r38p1`

### `uint16` 直接转浮点再归一化会在饱和值产生非有限值

HDR 输出使用三通道 16-bit LinearRaw。应用重新打开 DNG 时，先把 `GL_RGB16UI` 输入转换到
`RGBA16F` 线性工作纹理。以下看似符合 GLSL 语义的写法在该驱动上不能使用：

```glsl
uvec3 sample16 = texture(uLinearRawTexture, vTexCoord).rgb;
vec3 rgb = vec3(sample16) * (1.0 / 65535.0);
```

在饱和输入 `65535` 附近，该驱动会让整数转浮点的中间结果表现得像 FP16。`65535` 超过
FP16 最大有限值 `65504`，因而先产生 `Inf`，再进入色度降噪的 `R-G`、`B-G` 运算并形成
`Inf-Inf=NaN`。

外部表现包括：

- 完全饱和高光变成纯绿色；
- 高光边缘出现不规则绿色过渡带；
- 切换渲染引擎后，同一位置可能变成黑色，因为不同 shader 对非有限值的最终表现不同；
- 问题只出现在 HDR LinearRaw 路径，仍走 CFA 输入的 MFNR/MFSR 不受影响。

`highp` 声明、把输入从 `GL_RGB16UI` 改成 `GL_RGBA16UI`，均不能消除该问题。后者只改变
纹理像素布局，错误的数值转换仍然存在。

### 当前兼容策略

在整数域先拆分高、低 8 bit，使每次整数转浮点的输入都不超过 255，再分别归一化：

```glsl
uvec3 sample16 = texture(uLinearRawTexture, vTexCoord).rgb;
uvec3 high8 = sample16 >> 8u;
uvec3 low8 = sample16 & uvec3(255u);
vec3 rgb =
    vec3(high8) * (256.0 / 65535.0) +
    vec3(low8) * (1.0 / 65535.0);
```

这样在驱动错误地降低中间精度时仍不会溢出，并保留完整的 16-bit 输入关系；最终写入
`RGBA16F` 时只发生目标格式本来就需要的 half-float 量化。

不能在色度降噪、色彩转换或输出 pass 末尾用 `isnan`/`isinf` 替换颜色来掩盖该错误。
非有限值必须在首次整数归一化时从源头消除，否则后续的邻域计算已经受到污染。

### 排查证据与验收

本问题依次排除了 CFA、RCD、HDR 融合、DNG 编码、LibRaw 解码和三通道纹理布局：

- HDR 短帧 CPU 采样中 `greenOnly=0`，R/G、B/G 均正常；
- 独立解压 DNG 主 IFD 后，约 48.6 万个高光像素中没有绿色单通道像素；
- 同一 DNG 使用同一版本 App 在另一台手机显示正常；
- 故障机 CPU 解码结果 `greenOnly=0`；
- 改成 RGBX/`GL_RGBA16UI` 后仍然复现；
- 修复前首次 `integer-to-rgba16f` pass 在目标高光区域检测到
  `nonFinite=425175`；修复后同一区域为 `nonFinite=0`、`greenOnly=0`，并且后续色度降噪、
  denoise-profile 与线性色彩转换阶段也全部保持为 0。

相关 shader 修改至少应在目标 Mali 设备上覆盖：

- `0`、普通中间值、`65504`、`65505`、`65535`；
- 整数纹理采样到 `RGBA16F` 的实际 draw 和 readback，而不只是 shader compile/link；
- 首次浮点转换后的有限值检查；
- 后续包含通道相减的色度降噪；
- 不同 RAW 渲染引擎的高光输出。

## 通用规则

- 不根据 `GL_MAX_TEXTURE_SIZE` 推断 image load/store 格式支持。
- 不根据 write-only image 可用推断同格式 read/write image 也可用。
- 不以增加补偿 pass 掩盖驱动格式错误；应选择驱动明确支持的存储格式和访问模型。
- 16-bit 整数归一化到 half-float 工作纹理时，应保证整数转浮点的每个中间值都在 FP16
  有限范围内；不要假设先转换 `65535`、再乘归一化系数在所有移动驱动上都安全。
- 同一异常区域随渲染引擎变化呈现绿、黑或其他颜色时，应优先在引擎之前逐 pass 检查
  `NaN`/`Inf`，不能据最终颜色反推某个 CFA 通道损坏。
- 每个新增 image format 都需要在代表设备上验证 compile、bind、dispatch 和后续采样。
- 运行时错误日志必须保留 shader 名称、访问模式、internal format 和驱动错误文本。
