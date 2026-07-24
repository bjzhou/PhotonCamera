# GLES 驱动兼容性记录

本文记录项目在真实 Android 设备上确认过的 GLES 驱动限制。修改 compute shader、image
load/store、纹理格式或 accumulator 架构前必须复查本文，并在目标设备上运行
`GlesRawRadianceStackerShaderTest`。不能仅凭 GLES 版本号或桌面 GLSL 编译结果判断移动端可用性。

## SSBO binding 点数量

已确认存在只提供 8 个 shader storage buffer binding 点的 GLES 3.1 驱动，合法范围为
`0..7`。超出范围的 binding 会在 shader 编译阶段直接失败，例如：

```text
Shader raw_flow_readback compute compilation failed: Compile failed.
ERROR: 0:8: shader storage block binding gets value 12, out of range [0 - 7]
```

SSBO binding 点是上下文绑定槽，不是需要跨 program 保持唯一的资源编号。不同 compute
program 若各自只声明一个 SSBO，必须复用 binding 0，并在每次 dispatch 前通过
`glBindBufferBase` 绑定当前 buffer。shader 中的 `layout(std430, binding = ...)` 与 CPU 侧
绑定点必须完全一致。

Radiance 的 flow readback、registration samples、registration global scores、diagnostics 和
fusion participation stats 都是单 SSBO program，统一使用 binding 0。RCD 是唯一需要同时使用
多个 SSBO 的路径，固定只使用 `0..7`；第九张工作 buffer 必须换入已有绑定槽，不得使用
binding 8。SSBO、image 和 UBO 分属不同的绑定命名空间，相同数字不会互相占用。

初始化 Radiance 后端时必须查询 `GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS`：VGN 路径至少需要
1，RCD 路径至少需要 8。新增 shader 不得通过持续增大 binding 编号来规避不同 program
之间的名称重复。

## OPPO PLW110 / Mali-G720-Immortalis MC12

已确认环境：

- 设备：OPPO PLW110
- GPU：ARM Mali-G720-Immortalis MC12
- GLES：OpenGL ES 3.2
- 驱动：`v1.r44p1-01eac0.7c759d1daf93e2baa476e2d4d07e761b`

### `readonly` SSBO 元素不能直接传给用户函数

该驱动会把 `readonly` SSBO 数组元素的访问限定符保留到用户函数调用处。即使函数参数按
GLSL 值语义传递，下面的合法 GLSL ES 3.10 写法仍会在编译阶段被拒绝：

```glsl
layout(std430, binding = 2) readonly buffer HistogramRange {
    uint histogramRange[];
};

float orderedFloatValue(uint ordered) {
    // ...
}

float rangeMinimum = orderedFloatValue(histogramRange[0]);
```

驱动错误为：

```text
S0001: Function call discards 'readonly' access qualifier.
```

必须先把 SSBO 元素复制为普通局部值，再传给用户函数：

```glsl
uint rangeMinimumOrdered = histogramRange[0];
float rangeMinimum = orderedFloatValue(rangeMinimumOrdered);
```

不能通过移除 SSBO 的 `readonly` 限定符规避编译错误；只读访问契约必须保留。内建函数当前
未复现同一限制，但新增用户函数调用不得直接接收 `readonly` SSBO 成员或数组元素。

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
（Prepare 到 Pass 3），随后直接从 YCCD 转回未白平衡 camera RGB；每帧重建阶段不调度 VGN
色度降噪和 IIR。非参考帧只生成 Dense G、原生 R-G 和原生 B-G，再分别沿全局 R/B 相位格点补全两个
色差平面。warp 和融合阶段不再读取或判断 CFA 相位，因而不会把跨相位位移解释成绿色像素。
Quad/Nona 等非标准 CFA 继续使用区域 RCD 兼容后端。

标准 Bayer 的 Radiance 在所有帧完成融合后运行独立的 VGN chroma postprocessor。融合输出
先从未白平衡 camera RGB 乘 calculation WB 进入 YCCD，运行 color-noise 1/2/3、三组四向
IIR 和 error/filter，再除以同一组 calculation WB 返回 camera RGB。LSC 已在逐帧 RAW 重建时
应用，postprocessor 不得再次采样、应用或反应用 LSC。

postprocessor 使用 `RGBA16UI texture2DArray` 保存分页图像。Radiance tile 只决定 array layer
的存储位置，所有邻域访问都先用全局输出坐标映射到 layer；IIR invocation 必须扫描完整输出行
或完整输出列，不能在 layer 边界重置递归状态。输出倍率大于 1 时，IIR 数字截止频率需要按
输出倍率换算，以保持 RAW 像素空间的滤波尺度；方向 mask 也必须在融合输出分辨率重新计算，
不能插值参考帧 Pass 3 的整数 bit mask。

`RGBA16UI` 工作纹理继续遵守显式只读/只写约束。每个 pass 分别绑定 readonly source 和
writeonly destination，并在四个 IIR 方向之间 ping-pong；禁止把同一 image 声明成 read/write，
也禁止以两个 image unit 别名绑定同一纹理来模拟原位处理。新增 array image 路径必须在
PMA110 上验证 array layer bind、全局跨 layer 读取、完整行列 IIR dispatch 和 layer readback。

VGN chroma 的 layer readback 固定使用 `GL_RGBA_INTEGER + GL_UNSIGNED_SHORT`。不能假定移动端
驱动支持从 `RGBA16UI` attachment 直接以三通道格式回读。最终 DNG 需要连续 RGB16，因此先把
RGBA16 tile 回读到 native direct scratch，再由 arm64 NEON 批量执行 RGBA16 → RGB16 和目标
tile 行跨度写入。禁止在 Kotlin 中通过 `ShortBuffer.get/put` 逐像素去掉 Alpha；12 MP 图像会
产生约 7500 万次带边界检查的 direct-buffer 访问，并把一次回读放大到数秒。该 native pack
只改变内存布局，不改变通道数值、tile 边界或 RGB16 DNG 语义。

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
- Radiance 输出倍率 `1.0`、非整数倍率（建议 `1.5`）与 `2.0`
- Radiance VGN reference、semantic seed/resolve、clear、accumulate、reference-base capture 与
  normalize pass
- Radiance VGN chroma array capture、YCCD seed、color-noise 1/2/3、三组四向 IIR、error/filter、
  inverse-WB camera RGB、逐 layer readback 与 native RGBA16 → RGB16 tile pack

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
`app/src/androidTest/java/com/hinnka/mycamera/processor/GlesRawRadianceStackerShaderTest.kt`，让测试实际
dispatch 对应 pass，而不只编译 program。

## vivo V2242A / Mali-G715-Immortalis MC11

已确认环境：

- 设备：vivo V2242A
- SoC 平台：MT6985
- 系统：Android 15
- GPU：ARM Mali-G715-Immortalis MC11
- GLES：OpenGL ES 3.2，驱动 `v1.r38p1`

### fragment sampler 中的 `uint16` 直接转浮点会在饱和值产生非有限值

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
- 问题只出现在 HDR LinearRaw 路径，仍走 CFA 输入的 RAW Radiance 不受影响。

`highp` 声明、把输入从 `GL_RGB16UI` 改成 `GL_RGBA16UI`，均不能消除该问题。后者只改变
纹理像素布局，错误的数值转换仍然存在。

### 不能让低字节直接乘 `1/65535`

曾在整数域拆分高、低 8 bit，使每次整数转浮点的输入都不超过 255：

```glsl
uvec3 sample16 = texture(uLinearRawTexture, vTexCoord).rgb;
uvec3 high8 = sample16 >> 8u;
uvec3 low8 = sample16 & uvec3(255u);
vec3 rgb =
    vec3(high8) * (256.0 / 65535.0) +
    vec3(low8) * (1.0 / 65535.0);
```

这个写法避免了 `65535` 转 FP16 的溢出，但并没有消除错误的 FP16 lowering：
`1.0 / 65535.0` 小于 FP16 最小正规数。会 flush FP16 次正规数的实现可能把整个低 8 bit
贡献变成 0，实际输出退化为每通道只剩高 8 bit。经过白平衡、CCM 和 tone mapping 后，
外观不是均匀的普通 8-bit banding，而是暗部大面积绿色/青色等高线、彩色色阶和边缘色带。

### `unpackUnorm2x16` 也不能作为故障驱动的最终路径

逐通道调用 `unpackUnorm2x16(value).x` 在规范上成立，但目标故障驱动仍表现出低位色阶断裂，
不能用它替代已经证实异常的整数归一化路径。也不能把两个通道拼进同一个 `uint` 后一次
解包；`G << 16` 曾被 fragment 编译器按 mediump 截断，使 G 接近 0、整幅图变红/品红。

### 当前兼容策略

首次 LinearRaw 转换采用 Phocus Android 的 UInt16 格式转换模型：输入必须先成为
`RGBA16UI` image，随后由 compute shader 通过 `uimage2D/imageLoad` 读取，并写入
`RGBA16F` image：

```glsl
layout(rgba16ui, binding = 0) readonly uniform highp uimage2D inTex;
layout(rgba16f, binding = 1) writeonly uniform highp image2D outTex;

void main() {
    ivec2 position = ivec2(gl_GlobalInvocationID.xy);
    uvec4 sample16 = imageLoad(inTex, position);
    imageStore(outTex, position, vec4(sample16) / 65535.0);
}
```

来源是 `research/phocus_glsl/00_common_io/formatConvertU16ToHalfFloat_0x3078b02.comp`。
它与失败路径的关键区别不是归一化公式，而是 integer texture 的访问模型：不再使用
fragment sampler，也不使用 `unpackUnorm2x16`，而是让 compute image load/store 完成格式转换。

所有传给 `glBindImageTexture` 的普通 2D texture 必须使用不可变存储。预热纹理和 CPU 上传的
LinearRaw 纹理均使用 `glTexStorage2D` 分配，再通过 `glTexSubImage2D` 上传内容；不能沿用
sampler 路径的 `glTexImage2D` 可变存储。否则 ES 3.1 会在 image binding 阶段产生
`GL_INVALID_OPERATION (1282)`，compute dispatch 也就没有合法的输入 image。错误检查应覆盖
纹理分配、image binding 和 dispatch，不能用后续 pass 仍能执行来推断预热成功。

三通道 DNG 必须先按规范使用
`GL_RGB_INTEGER + GL_UNSIGNED_SHORT + GL_RGB16UI` 上传。`GL_RGB_INTEGER` 与
`GL_RGBA16UI` 不是 ES 允许的 `format/type/internalFormat` 组合，不能依赖驱动隐式补 Alpha。
同时 GLSL ES 没有 `rgb16ui` image layout qualifier，所以不能把 `RGB16UI` 直接绑定给
Phocus shader。

为此，三通道路径先运行一个只含整数操作的 compute pass：通过 `usampler2D/texelFetch`
读取 `RGB16UI`，写成 `uvec4(rgb, 65535u)` 的 `RGBA16UI`。扩展按 128 行条带执行，随后每个
条带立即交给 Phocus image-load shader 写入最终全尺寸 `RGBA16F`。这样没有 CPU 逐像素处理，
也不会为高分辨率 DNG 常驻一整帧额外的 `RGBA16UI` 临时纹理。原本就是 `RGBA16UI` 的
GPU-resident Radiance 输出则跳过扩展，直接走 Phocus 转换。

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
- 相邻低字节值，例如 `0/1`、`255/256`、`256/257`，确认低 8 bit 没有被冲掉；
- `RGB16UI → RGBA16UI → RGBA16F` 的实际 dispatch 和 readback，而不只是 shader compile/link；
- 首次浮点转换后的有限值检查；
- 后续包含通道相减的色度降噪；
- 不同 RAW 渲染引擎的高光输出。

## 通用规则

- 不根据 `GL_MAX_TEXTURE_SIZE` 推断 image load/store 格式支持。
- 不根据 write-only image 可用推断同格式 read/write image 也可用。
- 不以增加补偿 pass 掩盖驱动格式错误；应选择驱动明确支持的存储格式和访问模型。
- 16-bit 整数归一化到 half-float 工作纹理时，优先复用已在量产移动端验证的
  `uimage2D/imageLoad → imageStore` 访问模型；不能假设 sampler、bit-unpack 与 image load
  在故障驱动上具有相同的编译和精度行为。
- 同一异常区域随渲染引擎变化呈现绿、黑或其他颜色时，应优先在引擎之前逐 pass 检查
  `NaN`/`Inf`，不能据最终颜色反推某个 CFA 通道损坏。
- 每个新增 image format 都需要在代表设备上验证 compile、bind、dispatch 和后续采样。
- 运行时错误日志必须保留 shader 名称、访问模式、internal format 和驱动错误文本。

## 研究线索：IMG 驱动的 image 尺寸查询

从 Phocus Android `libcrosssdk.so` 静态恢复的 `color_correct` compute shader 没有使用
`imageSize(uCbCrLut)` 决定二维色度 LUT 的边界，而是在 160 B UBO 中显式传入 `uLutW` 与
`uLutH`。原 shader 注释明确记录其原因是 IMG 驱动上的 `imageSize` 不可靠。

这只是第三方实现提供的兼容性线索，尚未在 PhotonCamera 的目标 IMG/PowerVR 设备上复现，
因此当前不据此修改通用纹理抽象。涉及 image texture 尺寸的新增 compute pass 应遵守：

- 若尺寸直接决定颜色 LUT、卷积或 imageStore 边界，接口设计应允许由 CPU 显式传入尺寸；
- 真机测试同时比较显式尺寸与 `imageSize`，覆盖 mip level、internal format 和只读/只写绑定；
- 在确认特定驱动异常前，不用硬编码尺寸或事后 clamp 掩盖越界；
- 一旦在目标设备复现，应记录 GPU/驱动版本、纹理格式、绑定方式、查询值和最小 shader。

研究证据与公式分析见
[`research/phocus_glsl/04_color_tone/README.md`](../research/phocus_glsl/04_color_tone/README.md)。

### HNCS Cb/Y–Cr/Y 色度表与 Film Curve

HNCS 引擎遵循上述显式尺寸原则。Phocus 二维相机色度表固定为 105×89，尺寸、边界和
`DivFactor` 均由 profile 显式传给 shader。色度表上传为 `RGBA16F sampler2D`，只使用
`texelFetch` 并在 shader 中完成双线性插值：

- 不依赖驱动或资源文件设置的线性过滤状态；
- 避免部分移动驱动对 `RG16F` 纹理格式组合支持不一致；
- 不声明 `RGBA16F image2D`，也不使用 `imageLoad/imageStore`；
- 不把 sampler opaque type 作为用户函数参数。

Film Curve 的 B、C、E 三张原始 65,536 点表分别对应 type 6/companding 1、
type 6/companding 2、type 7/companding 2；都使用 256×256 物理布局，按原程序的整数索引规则
读取，不使用插值，也不需要查询纹理尺寸。切换曲线时，纹理缓存键必须包含曲线 asset
路径与 SHA，不能沿用上一张 256×256 纹理。Gradation、Selective Color 等仍然缺少真实
profile 数据的表时不能用
identity 纹理或经验常量补齐。

HNCS 纹理首次创建时必须先切换到专用纹理单元，不能继承照片输入使用的 `GL_TEXTURE0`。
`glBindTexture` 的绑定属于当前 active texture unit；若资源上传留在 unit 0，会把
`uInputTexture` 从 RAW 图像替换成 256×256 Film Curve，造成首帧黑屏/错误图像，而同一资源
缓存后的第二帧又可能正常。引擎绘制前还应显式重绑 unit 0 与输入图像，使首次和缓存渲染具有
相同状态，不能依赖 helper 的调用顺序或遗留 active unit。

自然光影实时预览复用 HNCS combined shader 时也必须完整绑定 Film Curve sampler 与全部
HNCS uniform。Sampler uniform 的 GL 初始值为 0；若只因 color-map 分支关闭就省略整组绑定，
`uHncsCurveTexture` 会错误采样 unit 0 的动态相机画面，把单个画面像素当作三通道曲线值，
表现为随帧变化的黑白闪烁。预览输入已经是线性 sRGB，不具备 RAW 相机域矩阵、白平衡与
profile metadata，因此 HNCS LUT 选择在预览端只执行共同的 CCM→Film Curve 路径，并在独立
pass 中完成 HNCS companding 解码、HNCS→线性 sRGB 与单次 sRGB 编码；传感器专属二维 LUT
仍只在 RAW 渲染器中执行。

新增 HNCS profile 后，至少在目标 Mali、Adreno 和可用的 PowerVR/IMG 设备上验证 shader
compile/link、纹理上传、边界四点采样、灰轴以及 LUT 网格外的 clamp。完整 profile 契约见
[`docs/hncs-rendering-engine.md`](hncs-rendering-engine.md)。
