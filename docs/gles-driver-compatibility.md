# GLES 驱动兼容性记录

本文只记录已确认或需要重点验证的 GLES 驱动兼容性问题，以及对应的错误做法、正确做法和
验证要求。具体业务算法、单次排查过程和逐设备测试流水不在本文展开。

修改 compute shader、image load/store、纹理格式、buffer binding 或 GL 状态管理前，应复查
本文，并在代表设备上运行实际的 compile、bind、dispatch、readback 和后续采样测试。不能仅凭
GLES 版本号、扩展列表或桌面 GLSL 编译结果判断移动端可用性。

## Compute work-group 必须满足 GLES 3.1 最低保证

已确认设备：Xiaomi M2101K7BNY，Android 13。

### 问题

OpenGL ES 3.1 只保证：

- `GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS >= 128`；
- `GL_MAX_COMPUTE_WORK_GROUP_SIZE` 的 X/Y/Z 轴分别至少为 `128/128/64`。

不能假设所有 GLES 3.1 设备都允许 256 个 invocation。超限可能在 shader 编译或 program
链接阶段以不同形式失败：

```text
'local_size_x' qualifier value (256) exceeds the maximum supported size (128)
Max number of total work group invocations exceeded.
```

### 错误做法

- 图像 compute shader 固定使用 `16x16`。
- 一维 compute shader 固定使用 `256x1`。
- 只根据开发设备或 GLES 版本号判断工作组可用。
- 只修改 shader 的 `local_size`，但仍按旧尺寸计算 `glDispatchCompute`。
- 对依赖 `gl_LocalInvocationID`、shared memory 或 barrier 的算法机械缩小工作组。
- 在关键 shader 编译完成后才查询能力；失败设备将无法留下 renderer 和限制信息。

### 正确做法

- 通用二维图像 pass 使用 `8x8`，一维 pass 和归约使用 `128x1`。
- shader 编译入口统一验证每轴尺寸及三轴乘积不超过 GLES 3.1 最低保证。
- dispatch group count 与 shader 工作组尺寸共用
  `GlesComputeWorkGroup` 中的常量和整除上取整逻辑。
- EGL context `makeCurrent` 后、编译任何 shader 前，记录 vendor、renderer、GL version、
  `GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS` 和三轴
  `GL_MAX_COMPUTE_WORK_GROUP_SIZE`。
- 修改包含 shared memory 或 barrier 的 shader 时，同步检查共享数组几何、lane 索引、
  数据装载次数和每次 barrier 前后的完整参与关系。
- 使用一个 work group 写固定 cell 的多分量 SSBO 时，`local_size` 必须覆盖全部分量，并为
  超出有效分量的 lane 设置显式退出。不能让未覆盖的 SSBO 元素依赖新分配 buffer 恰好为零；
  `glBufferData(..., null, ...)` 的内容未定义，不同驱动可能分别表现为零值或历史垃圾数据。

`DNG_PGTM_CELL_STATS` 需要对每个 cell 的 256 个样本进行排序。兼容路径保留 256 项共享数组，
由 128 个 lane 各装载两个样本，并在 bitonic sort 的每个阶段各处理两个 comparator；不能通过
减少样本数量或只运行半个排序网络来规避工作组限制。

### 验证

- 静态确认所有 compute shader 的 invocation 乘积不超过 128。
- 覆盖不能整除工作组尺寸的宽高，确认 dispatch 不遗漏边缘。
- 真机执行 shader compile/link、dispatch、barrier 和 readback。
- 对共享算法比较修改前后的输出，包括 PGTM cell 分位数、NLM、RCD、Quad Bayer 和 Radiance。

## Graphics program 的 GLSL ES 版本必须一致

已确认设备会严格拒绝使用不同 GLSL ES 版本的 vertex/fragment shader 链接：

```text
Shader languages do not match.
```

shader 分别编译成功不代表可以跨版本链接。例如 `#version 300 es` 的 fullscreen vertex
不能与使用 image/SSBO 能力的 `#version 310 es` fragment 组成同一个 program。

### 错误做法

- 所有 fullscreen fragment 固定复用一份 `#version 300 es` vertex shader。
- 为了继续复用 vertex shader，把需要 3.1 能力的 fragment 降级到 300。
- 只检查 fragment 的编译结果，不检查 program 两端的版本契约。

### 正确做法

- 从 fragment 的 `#version` 生成相同版本的 fullscreen vertex shader。
- 创建 program 前显式校验 vertex/fragment 的 GLSL ES 版本相同，让错误在进入驱动前暴露。
- 需要 image、SSBO 或其他 GLES 3.1 能力的 fragment 保持 `#version 310 es`，配套使用
  `#version 310 es` vertex；普通 3.0 fragment 继续使用 300 配对。
- 新增动态生成的 fragment shader 时，将 300/310 两种来源都纳入版本配对单元测试。

## SSBO binding 点数量

### 问题

部分 GLES 3.1 驱动只提供 8 个 shader storage buffer binding 点，合法范围是 `0..7`。
超出范围会在 shader 编译阶段失败：

```text
shader storage block binding gets value 12, out of range [0 - 7]
```

SSBO binding 点是单次 program 执行时的绑定槽，不是跨 program 全局唯一的资源编号。

### 错误做法

- 为不同 program 持续分配递增且不复用的 binding 编号。
- 只检查 shader 中的 binding，不检查 CPU 侧 `glBindBufferBase`。
- 根据开发设备的上限假定所有设备都支持相同数量。

### 正确做法

- 初始化时查询 `GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS`。
- 不同 program 复用低编号 binding；单 SSBO program 统一优先使用 binding 0。
- 同一 program 同时使用多个 SSBO 时，数量不得超过运行时上限。
- shader 的 `layout(std430, binding = N)` 必须与 CPU 侧 binding 完全一致。
- SSBO、image 和 UBO 属于不同绑定命名空间，相同编号不会互相占用。

## `readonly` SSBO 元素作为用户函数实参

已确认设备：OPPO PLW110，Mali-G720-Immortalis MC12，驱动
`v1.r44p1-01eac0.7c759d1daf93e2baa476e2d4d07e761b`。

### 问题

该驱动会把 `readonly` SSBO 元素的访问限定符错误地传播到用户函数调用，导致合法 GLSL
在编译阶段失败：

```text
Function call discards 'readonly' access qualifier.
```

### 错误做法

```glsl
float value = decodeValue(readonlyBuffer.values[0]);
```

不能通过移除 SSBO 的 `readonly` 限定符规避错误，这会破坏资源访问契约。

### 正确做法

先复制到普通局部变量，再传给用户函数：

```glsl
uint encoded = readonlyBuffer.values[0];
float value = decodeValue(encoded);
```

新增用户函数调用时，不要直接传入 `readonly` SSBO 成员或数组元素。

## `RGBA16F` image 原位读写

已确认设备：PMA110。

### 问题

该驱动支持 `layout(rgba16f) writeonly image2D`，但不支持
`layout(rgba16f) image2D` 的 read/write 访问。对同一 image 同时使用 `imageLoad` 和
`imageStore` 会在编译阶段失败：

```text
unsupported format on read/write image
```

write-only 可用不代表同格式的 read/write 也可用。

### 错误做法

- 用单张 `RGBA16F` texture 原位完成 accumulator 的读取和写入。
- 将 `RGBA16F` 绑定为 `GL_READ_WRITE`。
- 把同一张纹理别名绑定到两个 image unit，模拟 source/destination。
- 根据 invocation 不访问同一像素，推断格式一定可以原位读写。

### 正确做法

需要原位读写的 half-float 数据使用已验证的整数 image：

- 存储格式使用 `R32UI`。
- shader 使用 `layout(r32ui) uimage2D`。
- 绑定使用 `GL_READ_WRITE + GL_R32UI`。
- 通过 `packHalf2x16` / `unpackHalf2x16` 保存两个 half。
- 后续纹理采样使用 `usampler2D`，不能使用普通 `sampler2D`。

必须保留浮点格式时，使用 ping-pong：

- source 仅作为 `sampler2D` 或 readonly image 读取；
- destination 仅作为 `writeonly image` 写入；
- dispatch 后交换两张纹理的角色；
- 每个 pass 都显式区分只读 source 和只写 destination。

如果算法只是逐帧加法累加，不需要在 shader 中读取旧值，优先使用 framebuffer additive
blending：

- 将 NR sum/weight 和 detail sum/weight 分别存入两张 `RGBA16F` attachment；
- fragment shader 只输出本帧的 `vec4(rgb * weight, weight)` contribution；
- MRT 的两个 draw buffer 都使用 `GL_FUNC_ADD + GL_ONE, GL_ONE`；
- 每次 draw 后恢复 blend 状态，切回单 attachment 前显式 detach 第二个 attachment；
- accumulator 由 write-only image 清零后，进入 framebuffer blending 前必须包含
  `GL_FRAMEBUFFER_BARRIER_BIT`。

这条路径保留每帧写回 FP16 的舍入语义，同时避免非法的 `RGBA16F` image 原位读写。不能把
包含非加法更新、次序相关替换或任意读改写的算法机械改成 blending。

同时还应查询 image unit 上限，保证单个 compute pass 的并发 image 数量不超过设备能力。

## `RGBA16UI` attachment 回读

### 问题

不能假定移动端驱动支持从 `RGBA16UI` attachment 直接以三通道格式回读。

### 错误做法

- 直接请求三通道 readback，并依赖驱动完成格式转换。
- 在 Kotlin 中通过 `ShortBuffer.get/put` 逐像素去除 Alpha；高分辨率图像会产生大量带边界
  检查的 direct-buffer 访问。

### 正确做法

- 使用 `GL_RGBA_INTEGER + GL_UNSIGNED_SHORT` 回读 RGBA16。
- 在 native 层批量执行 RGBA16 → RGB16，只改变内存布局，不改变通道数值和图像语义。

## Framebuffer MRT 附件必须显式解除

已确认设备：Adreno 840，驱动
`OpenGL ES 3.2 V@0842.41 (GIT@8cfe428358, I8188c84bfe, 1777522173)`。

### 问题

Framebuffer 会保留之前绑定但本次未覆盖的颜色附件。从三个半分辨率 MRT attachment 切换到
两个全分辨率 attachment 时，只调用两次 `glFramebufferTexture2D` 和
`glDrawBuffers(2, ...)` 不会解除 `COLOR_ATTACHMENT2`。该驱动会按仍绑定附件的尺寸交集限制
有效写入区域，使后续全分辨率 draw 只覆盖半宽乘半高的四分之一画面。

### 错误做法

- 认为 `glDrawBuffers` 缩短列表会自动解除多余 attachment。
- 切换到更少的 render target 时只替换本次使用的 attachment。
- 因 `glCheckFramebufferStatus` 返回 complete，就推断 viewport 覆盖了目标纹理完整尺寸。

### 正确做法

- render-target helper 记录前一次 attachment 数量。
- 本次 target 数减少时，对尾部 attachment 显式调用
  `glFramebufferTexture2D(..., texture=0, level=0)`。
- 解除旧 attachment 后再调用 `glDrawBuffers`、检查 framebuffer 状态并设置 viewport。
- MRT 数量变化且纹理尺寸也变化的路径，真机验证完整四角均被写入。

## 16-bit 整数纹理转浮点

已确认设备：vivo V2242A，Mali-G715-Immortalis MC11，驱动 `v1.r38p1`。

### 问题

在 fragment sampler 中把 `uint16` 纹理值直接转换为浮点时，该驱动可能按 FP16 处理中间值。
饱和值 `65535` 超过 FP16 最大有限值 `65504`，会产生 `Inf`，通道相减后进一步形成 `NaN`。

该问题也可能表现为低位精度丢失：暗部出现彩色色阶、等高线或边缘色带。最终颜色可能随后续
shader 不同而变成绿色、黑色或其他颜色，不能据此反推输入通道已损坏。

### 错误做法

```glsl
uvec3 sample16 = texture(uLinearRawTexture, vTexCoord).rgb;
vec3 rgb = vec3(sample16) * (1.0 / 65535.0);
```

以下做法也不能可靠修复：

- 只增加 `highp` 限定符。
- 把 `RGB16UI` 改成 `RGBA16UI` 后继续走相同的 fragment sampler 转换。
- 拆分高低 8 bit 后让低字节直接乘 `1.0 / 65535.0`；该系数可能在 FP16 lowering 时被
  flush 为 0。
- 使用 `unpackUnorm2x16` 替代已确认异常的路径。
- 在后续 pass 用 `isnan` / `isinf` 替换结果；邻域计算此时已经被污染。

### 正确做法

首次整数到 half-float 的转换使用已验证的 compute image load/store 模型：

```glsl
layout(rgba16ui, binding = 0) readonly uniform highp uimage2D inTex;
layout(rgba16f, binding = 1) writeonly uniform highp image2D outTex;

void main() {
    ivec2 position = ivec2(gl_GlobalInvocationID.xy);
    uvec4 sample16 = imageLoad(inTex, position);
    imageStore(outTex, position, vec4(sample16) / 65535.0);
}
```

配套要求：

- 传给 `glBindImageTexture` 的普通 2D texture 使用 `glTexStorage2D` 不可变存储，再通过
  `glTexSubImage2D` 上传。
- 三通道输入按规范使用
  `GL_RGB_INTEGER + GL_UNSIGNED_SHORT + GL_RGB16UI` 上传。
- GLSL ES 没有 `rgb16ui` image layout；需要 image load 时，先用整数 compute pass 将
  `RGB16UI` 扩展为 `RGBA16UI`，再转换为 `RGBA16F`。
- 对高分辨率输入可按条带扩展和转换，避免常驻一整帧额外的 `RGBA16UI` 临时纹理。
- 在首次浮点转换处消除非有限值，不能在下游补偿。

### 验证

至少覆盖：

- `0`、普通值、`65504`、`65505`、`65535`；
- `0/1`、`255/256`、`256/257` 等相邻值，确认低位没有被冲掉；
- 实际的 upload、image bind、dispatch 和 readback；
- 转换后的 `NaN` / `Inf` 检查；
- 后续包含通道相减的 shader。

## GL 纹理与 sampler 状态

### 问题

`glBindTexture` 作用于当前 active texture unit；sampler uniform 的 GL 初始值为 0。资源上传或
分支绑定不完整时，辅助纹理可能覆盖 unit 0 的主输入，或错误采样动态画面。此类状态泄漏常表现
为首帧黑屏、闪烁、错误颜色，缓存后又可能暂时正常。

### 错误做法

- 创建辅助纹理前不显式切换 texture unit。
- 依赖 helper 调用顺序或上一帧遗留的 active unit、framebuffer、program 和 texture binding。
- 因某个颜色分支关闭而省略仍被 shader 声明的 sampler 绑定。
- 把线性 RGB 中间纹理直接作为 sRGB 显示或 LUT 输入。

### 正确做法

- 上传辅助资源前显式选择专用 texture unit。
- 每次绘制前显式绑定主输入、所有 sampler、program 和 framebuffer。
- 所有 shader 中声明且可能被读取的 sampler 都设置明确的 unit 和有效纹理。
- 保持 pass 间的颜色空间契约；线性 RGB 必须经过对应的输出转换后再显示或进入要求 sRGB
  输入的处理。

## `imageStore` 结果交给 sampler 或 framebuffer

### 问题

compute shader 通过 `imageStore` 写完纹理后，`GL_SHADER_IMAGE_ACCESS_BARRIER_BIT` 只覆盖后续
image load/store 访问。若同一纹理接下来改由 sampler 读取，或作为 framebuffer attachment
回读，还必须声明对应的 consumer barrier。部分驱动在缺失 barrier 时仍会碰巧刷新全部缓存；
另一些驱动会保留局部旧块，表现为偶发的轴对齐黑色矩形。

### 错误做法

- 写完 GPU 纹理后只调用 `glFlush`；提交命令不等于建立内存可见性。
- 只保留 `GL_SHADER_IMAGE_ACCESS_BARRIER_BIT`，随后直接用 `sampler2D` / `usampler2D` 采样。
- 因 CPU `glReadPixels` 已得到正确内容，就推断后续 texture fetch 也必然可见。

### 正确做法

- image load/store consumer 使用 `GL_SHADER_IMAGE_ACCESS_BARRIER_BIT`。
- sampler consumer 使用 `GL_TEXTURE_FETCH_BARRIER_BIT`。
- framebuffer attachment/readback consumer 使用 `GL_FRAMEBUFFER_BARRIER_BIT`。
- 在生产者明确知道下一访问类型的所有权交接点一次性组合所需 bits；不能依赖后续无关命令
  偶然刷新缓存。
- GPU 纹理跨组件交接的真机测试必须实际执行 `imageStore -> barrier -> sampler fetch`，并覆盖
  左上角、图像内部和右下角，不能只验证 program 编译或 CPU readback。

## 后台 compute 的资源安全调度

已确认设备：OPPO PKD130，MT6835，Mali-G57 MC2，驱动 `v1.r38p1`。

Radiance/VGN 连续提交 compute、fusion 和 chroma pass 时，CPU 可能覆写 GPU 尚在读取的
RAW texture 或 UBO。只限制队列长度、只加 barrier 或逐 pass 等待都不完整：前两者没有
资源所有权，后者会破坏流水。

### 实现规则

- VGN、semantic、fusion、normalization 和 chroma 共用容量为 2 的资源依赖窗口。pass
  声明 texture/buffer 的读写集合；存在 RAW、WAR 或 WAW 冲突时，在提交 consumer 前等待
  最新冲突 fence，无冲突时才允许两个 pass 同时在途。
- CPU 会覆写的 RAW texture 和 UBO 各使用 A/B ring；回卷前只等待该槽最后一个使用者。
  GPU-only 的 RGB、semantic、中间纹理和 accumulator 保持单份。
- pass 结束后插入 fence，但不逐 pass `glFlush`。等待目标 fence 时，第一次
  `glClientWaitSync` 使用 `GL_SYNC_FLUSH_COMMANDS_BIT`，后续轮询使用 flags=0。
- VGN/Radiance compute 统一使用 `GL_ALL_BARRIER_BITS`，并在 pass 后解除 image、sampler
  和 indexed buffer 绑定。
- 不做逐 pass 或逐 tile checkpoint。只在资源冲突、ring 槽复用、CPU readback、纹理回收
  和组件最终交接时等待。
- 调度不得改变 shader、pass 数、帧选择、参数、累加顺序或输出格式。

### 验证

- long frame 开启和关闭时，Radiance、chroma、导出及单帧 RAW 都必须完成。
- pending fence 不得超过 2；等待只能来自声明的资源冲突或所有权交接。
- 修复前后输出像素应一致，并比较 Radiance、chroma 和单帧 RAW 总耗时。

## IMG/PowerVR `imageSize` 研究线索

### 问题

第三方实现记录了部分 IMG 驱动上 `imageSize(image)` 结果不可靠，但该问题尚未在本项目目标
设备上复现，因此不能当作所有 IMG/PowerVR 设备的既定结论。

### 错误做法

- 未经真机复现就全局禁用 `imageSize`。
- 硬编码尺寸或在结果末端 clamp，掩盖实际越界。

### 正确做法

- 对尺寸直接决定 LUT、卷积或 `imageStore` 边界的接口，允许 CPU 显式传入尺寸。
- 真机同时比较显式尺寸与 `imageSize`，覆盖 mip level、internal format 和访问模式。
- 复现后记录 GPU/驱动版本、纹理格式、绑定方式、查询值和最小 shader，再决定兼容分支。

研究来源见
[`research/phocus_glsl/04_color_tone/README.md`](../research/phocus_glsl/04_color_tone/README.md)。

## GPU 纹理交接与延迟 CPU 回读

### 问题

`glReadPixels` 往往是异步 GPU 命令后的第一个 CPU 同步点。直接用它的调用耗时表示
“readback”会把此前尚未完成的 compute、fragment、barrier 和实际像素传输混在一起，既无法
判断真正瓶颈，也会错误地让只需要 GPU texture 的后续显影等待 CPU Buffer。

### 正确做法

- 同一 EGL context 和 GL dispatcher 内，stacker 通过 `imageStore` 写完输出并声明
  `GL_SHADER_IMAGE_ACCESS_BARRIER_BIT | GL_TEXTURE_FETCH_BARRIER_BIT |
  GL_FRAMEBUFFER_BARRIER_BIT` 后，直接把 texture 所有权交给 RAW 显影。
- 需要整行/整列递归扫描的全帧滤波，输入必须是连续的全尺寸 `uimage2D`。上游 tile fragment
  pass 应直接用全局 viewport 写入这张完整 texture；不要先写临时 tile texture，再为每个 tile
  dispatch 一次 capture/copy。不能在 IIR 内循环里通过 uniform 数组动态查找 tile，再访问
  `uimage2DArray` layer；不同移动驱动对这类动态循环的展开和分支 lowering 差异很大，而且会
  破坏跨 layer 的缓存局部性。
- 分配全尺寸工作纹理前查询 `GL_MAX_TEXTURE_SIZE`。Radiance VGN 色度链使用三张
  `RGBA16UI` 2D texture 做 ping-pong，最终 YCCD → RGB 写入已经空闲的工作纹理并移交所有权，
  不再为 GPU handoff 分配第四张同尺寸纹理。
- CPU/DNG Buffer 不是 GPU 交接结果的必填字段。DNG 消费者应在前台显影完成后单独请求
  materialization，并保持 texture 存活到该消费者结束。
- 已完成且后续只读的 flow、robustness 和 tile mask 应直接转移 texture 所有权，立即为下一帧
  分配工作纹理；不要为了形成 cache 再执行三次全表面 copy。诊断采样必须发生在所有权转移前。
- 普通对齐帧只需要 flow bounds 时，在 GPU 上将每帧 grid 归约成一个
  `vec4(minX,maxX,minY,maxY)`，所有帧提交结束后一次 map 小型 SSBO。不能逐帧回读完整
  `RGBA16F` flow grid 并在 CPU 上扫描。
- 需要拆分计时时，在读回前插入 `glFenceSync(GL_SYNC_GPU_COMMANDS_COMPLETE, 0)`，提交后使用
  `glClientWaitSync` 单独记录 `gpuQueueWait`；fence 已完成后再分别记录 `glReadPixels` 的
  `pixelTransfer` 和 RGBA16 → RGB16 的 `cpuPack`。
- 需要继续定位 stacker 的异步队列尾部时，在 normal alignment、long alignment、
  highlight alignment、tiled reconstruction、chroma postprocess 和 final export 的命令边界
  插入有序 fence，但不能在 stacker 内逐段等待。fence 所有权随导出的 texture 传给消费者，
  首个 CPU 同步点再按顺序等待并记录各阶段尚未完成的队列时间。
- 阶段 fence 的结果表示“到达首个同步点时仍待执行的 queue tail”，不是该阶段从头到尾的完整
  GPU 执行时长。已经在 CPU 提交期间完成的阶段会记录为 `0ms`；如需完整 shader GPU duration，
  应另行使用驱动支持的非阻塞 timer query，并处理 disjoint 状态。
- 首个消费者必须分别记录 `upstreamStackGpuWait` 和自身的 GPU 等待，例如曝光预览使用
  `previewGpuQueueWait`、DNG materialization 使用 `materializationGpuWait`，不能再次把两者
  合并为笼统的 `gpuQueueWait`。
- 同一 context 内的显影依赖命令队列顺序，不要为了 GPU→GPU 交接调用 `glFinish`。跨共享
  context 才需要额外验证 sync object 的共享和等待行为。
- fence 必须在所有退出路径调用 `glDeleteSync`；framebuffer、scratch buffer 和导出的 texture
  也必须按消费者生命周期分别释放。

### 验证

- 日志必须明确区分 CPU 命令提交、`gpuQueueWait`、`pixelTransfer`、`cpuPack` 和 allocation。
- 真机确认 stacker 返回 GPU texture 时没有发生全尺寸 `glReadPixels`。
- 真机确认 RAW 显影完成后才开始 DNG materialization，并验证取消、写入失败和显影失败路径
  不泄漏 texture、sync、framebuffer 或 native buffer。
- 对同一输出比较延迟 materialization DNG 与原同步路径的 RGB16 数值，要求逐通道一致。

## 通用验证要求

- 不根据 `GL_MAX_TEXTURE_SIZE` 推断 image load/store 格式支持。
- 不根据 write-only image 可用推断同格式 read/write image 也可用。
- 新增资源类型时查询对应的 binding 或 image unit 上限。
- 每个新增 image format 和访问模型都在代表设备上验证
  compile/link、texture allocation、bind、dispatch、barrier、readback 和后续采样。
- 错误检查覆盖纹理分配、image binding 和 dispatch；不能用后续 pass 仍能执行推断前序成功。
- 驱动错误日志保留 shader 名称、GPU/驱动版本、访问模式、internal format 和原始错误文本。
- 遇到绿、黑、闪烁或色带时，按 pass 隔离输入输出，并优先检查 GL error、`NaN` / `Inf`、
  binding 和颜色空间契约。
- 桌面静态检查和 Kotlin 编译不能替代真机测试。Radiance shader 相关修改应扩展并运行
  `app/src/androidTest/java/com/hinnka/mycamera/processor/GlesRawRadianceStackerShaderTest.kt`，
  让测试实际 dispatch 对应 pass，而不只编译 program。
