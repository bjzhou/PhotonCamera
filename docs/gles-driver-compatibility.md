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
每个输出像素使用六张 `R32UI`，NR 与 Detail 各自保存完整的逐通道和值/权重：

1. NR `sumR + sumG`
2. NR `sumB + weightB`
3. NR `weightR + weightG`
4. Detail `sumR + sumG`
5. Detail `sumB + weightB`
6. Detail `weightR + weightG`

六张纹理均通过 `packHalf2x16` 原位累积。参考帧连续 RGB 底图在参考帧累积完成后，由
`usampler2D` 读取 NR accumulator，再写入单独的 `RGBA16F writeonly image2D`。最终
normalize 只能通过六个 `usampler2D` 和一个普通 `sampler2D` 读取这些资源。

这样 compute pass 同时最多绑定六个 read/write image，低于 GLES 3.1 保证的八个 compute
image unit 下限；所有 read/write image 仍是已经在 PMA110 验证过的 `R32UI` 格式。新增绑定
数量仍须在代表设备上执行 shader compile、bind、dispatch 和 normalize 采样验证。

Radiance 的公共对齐/光度置信度来自绿色结构引导。连续 RGB 域的色度一致性必须分别使用
`R-G` 和 `B-G` 对手轴，差值方差分别为 `Var(R)+Var(G)` 与 `Var(B)+Var(G)`；不得把 R/G/B
噪声精度先平均为一个标量。R、G、B 的 NR/Detail 权重须独立累计和归一化，R 或 B 的色度
噪声只能降低对应通道，不能连带降低绿色或另一个色度通道。

Radiance 拒绝原因调试图需要跨帧保留分类原因、排查优先级、拒绝强度和命中次数时，使用
两张 `RGBA16F` 纹理 ping-pong：上一张仅作为普通 `sampler2D` 读取，下一张仅以
`layout(rgba16f) writeonly image2D` 写入。每次 dispatch 后交换纹理角色。禁止把其中任何一张
绑定为 `GL_READ_WRITE`，也禁止在同一个 shader 中对同一张 `RGBA16F` 同时调用
`imageLoad` 和 `imageStore`。

Radiance 的 tile confidence 固定使用 `RGBA16F`，不能把 NR 与 Detail 压回同一个标量：
R 是 NR confidence，G 是 Detail confidence，B/A 是仅供调试使用的 NR 拒绝原因编号和强度。
拒绝优先级由原因编号在 accumulator shader 中恢复，不占用纹理通道。跨帧累计只记录实际
达到 material rejection 阈值的逐帧原因；A 通道累计被拒帧数。最终颜色强度按被拒帧比例的
平方根显示，因此局部运动即使仍有其他帧成功融合也能看见，而弱惩罚不会被误画成拒绝。

RAW proxy 的通道语义也必须保持分离：R 是跟踪信号，G 是物理采样有效性（主要排除削波），
B 是对齐可观测性。暗部和低纹理可以令 B 接近零，使局部对齐保持继承流场，但不能令 G 清零。
NR confidence 只由采样有效性、噪声归一化光度一致性和局部流场连续性决定；patch score、
patch peak 和纹理强度只能限制 Detail/SR，不能拒绝暗部降噪融合。
局部流场范围从 `flowRangePenaltyStartPx` 开始连续降权，并在 `flowRangeRejectPx` 归零；该惩罚
必须由 patch peak 或噪声归一化边缘证据激活，避免低纹理暗部因流场不可观测而再次被误拒绝。

SR Detail 调试覆盖必须在最终 normalize pass 中根据 `additionalDetailWeight` 生成，不能直接
显示上游 G 通道候选 mask。最终覆盖强度还要乘 NR 一致性和 detail stability，确保青色只表示
真正进入最终细节分支的非参考帧支持；零支持区域保持原图。若同时开启拒绝图，实际拒绝颜色
最后写入并覆盖 SR Detail 青色。

融合参与度日志同样必须统计最终 accumulator weight，而不是上游 mask。Radiance accumulate
在每个输出 core 内按固定步长采样，使用 SSBO 原子计数分别记录尝试数、NR 非零权重数、NR
Q6 平均 RGB 权重和、Detail 非零权重数、Detail Q6 平均 RGB 权重和；working halo 不计数，
避免分片重叠造成重复。
日志要把整帧准入率、局部 NR 参与率、平均 merge factor 和 Detail 参与率分开输出，才能与
GCam 的 merge frame count、block rejection percentage 和 average merge factor 对照。

Radiance 对标准 2x2 Bayer 使用非对称重建：参考帧在每个分片内运行完整 VGN 基础解马赛克
（Prepare 到 Pass 3），随后直接从 YCCD 转回未白平衡 camera RGB；不调度 VGN 色度降噪和
IIR。非参考帧只生成 Dense G、原生 R-G 和原生 B-G，再分别沿全局 R/B 相位格点补全两个
色差平面。warp 和融合阶段不再读取或判断 CFA 相位，因而不会把跨相位位移解释成绿色像素。
Quad/Nona 等非标准 CFA 继续使用区域 RCD 兼容后端。

重建结果通过 `writeonly image2D` 写入、在 accumulator pass 中只作为普通线性过滤
`sampler2D` 读取，不作为 read/write image。参考帧纹理编码为 camera RGB；非参考帧纹理
编码为 `(G, R-G, B-G)`，仅在采样后解码为 RGB。分片原点必须按 CFA 周期对齐，VGN 工作域
必须从全局 CFA 相位映射到规范 RGGB，相位选择不得依赖输出坐标或输出倍率。

窄核 Detail accumulator 默认只向宽核 NR 结果注入亮度高频；色度由宽核分支持有。只有在
多帧细节支持度和一致性都足够高时，才允许通过 `detailChromaStrength` 恢复一部分窄核色度。
这样可避免对齐残差重新被放大成彩色 zipper。
由于 Radiance 缓冲保持未白平衡 camera RGB，亮度高频的提取、headroom 限制与中性轴注入
必须先进入 calculation/WB RGB，完成后再除以 WB gain 返回 camera RGB。不能直接在 camera
RGB 中增加 `vec3(detail)`，否则后续 WB 会把边缘的正负高频变成互补的紫色/黄绿色彩边。

### 验收要求

相关修改至少验证以下路径：

- shader compile/link
- `GL_R32UI` clear dispatch
- `GL_READ_WRITE` accumulator dispatch
- `R32UI` imageLoad/imageStore
- `usampler2D` normalize
- MFNR 与 MFSR 两种模式
- Radiance VGN reference、semantic seed/resolve、clear、accumulate、reference-base capture 与
  normalize pass

Radiance 的噪声与色差一致性必须继续按传感器通道以及 `R-G`、`B-G` 两条色差轴分别
估算，但最终帧采纳权重和参考帧回退置信度必须对完整 RGB 三元组共用同一个保守值。
不得让 G 与 R/B 使用不同的有效帧集合，否则即使非参考帧已经完成 CFA 无关重建，细边缘
仍会因为通道来源不一致产生绿/品红色边。

非参考帧 semantic proxy 的 Dense-G 二阶校正必须限制在所选方向的相邻原生 G 范围内，
最终估计也不得超出四个相邻原生 G 的包络。无界 Hamilton–Adams 校正在少数虚焦或高反差
彩色边缘上会制造不存在的 G 极值，这种错误会在进入融合前就表现为局部绿色边缘。

`R-G` 与 `B-G` 从同色 2×2 格点恢复到全分辨率时，不能在强边缘上无条件双线性插值。
平坦区使用双线性权重，高反差区还需按目标 Dense-G 与各同色格点 G 的相似度引导权重，
使亮度与色差边缘保持同一位置；否则合法但更宽的色差过渡仍会形成局部绿/品红色边。

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
