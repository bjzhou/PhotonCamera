# GLES 驱动兼容性手册

本文只维护三类信息：已在目标设备复现的驱动缺陷、为跨驱动稳定性建立的实现契约，以及值得继续验证的研究线索。业务算法、单次排查过程和逐设备测试流水不在此展开。

兼容性结论必须由完整链路验证：`compile/link -> allocation -> bind -> dispatch/draw -> barrier -> readback/consumer`。GLES 版本、扩展列表、桌面 GLSL 编译结果或 framebuffer complete 均不能单独证明路径可用。

## 快速索引

| 主题 | 状态 | 强制结论 |
| --- | --- | --- |
| Compute work-group | 已确认，且受 GLES 3.1 最低保证约束 | 通用 2D 使用 `8x8`，1D 使用 `128x1`，invocation 总数不得超过 128 |
| GLSL `#version` 位置 | 已确认，Mali | 动态与多行字符串源码必须让 `#version` 从第一个字节开始，前面不得有换行 |
| Graphics GLSL ES 版本 | 已确认 | 同一 program 的 vertex/fragment `#version` 必须一致 |
| SSBO binding | 跨驱动约束 | 查询上限；不同 program 复用低编号槽位 |
| PBO 热路径回读 | 已确认存在驱动差异 | 优先 compute 打包到 SSBO，超限或编译失败时回退 framebuffer readback |
| `readonly` SSBO 实参 | 已确认，Mali | SSBO 元素先复制到局部变量，再传给用户函数 |
| `RGBA16F` / `RGBA16UI` image 原位读写 | 已确认 | 改用 framebuffer、`R32UI` half 打包、ping-pong 或 additive blending |
| `RGBA16UI` attachment 回读 | 跨驱动约束 | 以 RGBA16 回读，在 native 层批量移除 Alpha |
| MRT attachment 残留 | 已确认，Adreno | render-target 数减少时显式 detach 尾部 attachment |
| `uint16 -> float` | 已确认，Mali | 首次转换走 compute image load/store，不走 fragment sampler 直接转换 |
| 纹理/sampler 状态 | 跨驱动约束 | 每次 draw 显式绑定 program、framebuffer、texture unit 和所有 sampler |
| `imageStore` 可见性 | 跨驱动约束 | barrier 必须覆盖下一位 consumer，而非只覆盖 producer |
| CPU/GPU Float 除法 | 已确认，Adreno；跨驱动精度约束 | CPU 算法迁到 GPU 时不能假定 `/` 与 JVM Float 逐位一致 |
| 后台 compute 调度 | 已确认，Mali | 以资源 RAW/WAR/WAW 冲突和 fence 管理并发，不以队列长度代替所有权 |
| IMG/PowerVR `imageSize` | 研究线索，项目未复现 | 只做对照验证，复现前不建立全局兼容分支 |

## 全局基线

### CPU/GPU 全局位移均值精度

PMA110 / Adreno 840 / GLES 3.2 V@0842.44 上，直方图的整数统计与 CPU 一致，但
`float(sum) / float(count)` 在部分输入上与 JVM Float 相差 1 ULP，并可传到候选位移。
这是浮点除法精度差异，不能仅凭 `highp` 声明认定迁移无损。
RAW Spatial 的 `GlesSpatialGlobalAlignment(cpuCompatibleMean = true)` 在无十票峰值时，
以整数长除法生成 Float 有效位并执行 ties-to-even 舍入；此分支的票数与整数和都可被
Float 精确表示。实机验证需同时比较均值纹理和最终候选输出，不能只比较直方图票数。

### 能力快照

EGL context `makeCurrent` 后、编译任何 shader 前记录：

- `GL_VENDOR`、`GL_RENDERER`、`GL_VERSION`；
- `GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS`；
- `GL_MAX_COMPUTE_WORK_GROUP_SIZE` 的 X/Y/Z；
- `GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS`。

在首次使用对应资源前查询 `GL_MAX_SHADER_STORAGE_BLOCK_SIZE`、image unit 上限和 `GL_MAX_TEXTURE_SIZE`。不要用纹理尺寸上限推断 image format/访问模式支持，也不要由 write-only image 可用推断同格式 read/write 可用。

驱动错误日志至少保留 shader/pass 名称、GPU/驱动版本、访问模式、internal format、binding 和原始错误文本。

### Barrier 交接矩阵

`glMemoryBarrier` 描述的是下一位 consumer 需要看到什么：

| Producer 后的 consumer | 必须包含 |
| --- | --- |
| image load/store | `GL_SHADER_IMAGE_ACCESS_BARRIER_BIT` |
| sampler fetch | `GL_TEXTURE_FETCH_BARRIER_BIT` |
| framebuffer attachment/readback | `GL_FRAMEBUFFER_BARRIER_BIT` |
| SSBO 后续 shader 访问 | `GL_SHADER_STORAGE_BARRIER_BIT` |
| SSBO 后续 buffer update/map | `GL_BUFFER_UPDATE_BARRIER_BIT` |

在生产者明确知道下一访问类型的所有权交接点一次性组合所需 bits。`glFlush` 只提交命令，不建立内存可见性；CPU readback 正确也不能证明 texture fetch 可见。

### 验证门禁

- 新增 image format、访问模式或资源类型时，验证实际分配、绑定、`glDispatchCompute`/draw、barrier、readback 和后续采样，并查询对应 binding/image unit 上限。
- Compute 覆盖尺寸不能整除工作组的边缘；图像检查左上、内部、右下，避免漏掉局部旧块或越界。
- 共享内存/barrier 算法比较修改前后输出；Radiance 重点覆盖 PGTM、NLM、RCD、Quad Bayer 和 Radiance pass。
- 遇到绿屏、黑屏、闪烁或色带，按 pass 隔离输入输出，优先检查 GL error、`NaN/Inf`、binding、barrier 和颜色空间契约。
- 桌面静态检查与 Kotlin 编译不能替代目标设备验证。Radiance shader 修改应扩展有明确门禁价值的 [`GlesRawRadianceStackerShaderTest`](../app/src/androidTest/java/com/hinnka/mycamera/processor/GlesRawRadianceStackerShaderTest.kt)，但不要直接在实机运行 Android Test；真机 dispatch 通过不会卸载现有 APK 的诊断入口完成。

## Compute work-group：只依赖 GLES 3.1 最低保证

**证据**：Xiaomi M2101K7BNY，Android 13。

GLES 3.1 只保证 `GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS >= 128`，并保证 X/Y/Z 轴 `GL_MAX_COMPUTE_WORK_GROUP_SIZE >= 128/128/64`。固定 `16x16` 或 `256x1` 可能在编译/链接时报错：

```text
'local_size_x' qualifier value (256) exceeds the maximum supported size (128)
Max number of total work group invocations exceeded.
```

实现契约：

- 通用二维图像 pass 使用 `8x8`；一维 pass 和归约使用 `128x1`；所有 compute shader 的 invocation 乘积不超过 128。
- Shader 编译入口统一验证各轴及三轴乘积；dispatch group count 与 shader 尺寸共用 `GlesComputeWorkGroup` 常量和整除上取整逻辑。
- 修改 shared memory/barrier 算法时，同时校验共享数组几何、lane 索引、装载次数，以及每个 barrier 前后的完整参与关系；不得机械缩小工作组。
- 一个 work group 写固定 cell 的多分量 SSBO 时，lane 必须覆盖所有分量，超出有效分量的 lane 显式退出。`glBufferData(..., null, ...)` 内容未定义，不能依赖新 buffer 恰好为零。

`DNG_PGTM_CELL_STATS` 的每个 cell 必须排序 256 个样本：保留 256 项共享数组，由 128 个 lane 各装载两个样本，并在 bitonic sort 每阶段各处理两个 comparator。不得减少样本或只执行半个排序网络。

## GLSL `#version` 必须从源码首字节开始

**证据**：vivo V2509A，Mali-G1-Ultra MC12，驱动 `v1.r54p1`。

该驱动拒绝在 `#version` 前包含换行的空白前导，原始错误为：

```text
#version must be on the first line in a program and only whitespace are allowed in the declaration
```

实现契约：

- Kotlin 多行字符串使用 `.trimIndent()` 去除首尾空行和公共缩进；若必须使用
  `const val`，则直接写成 `"""#version 310 es`。两种方式都必须保证传给驱动的源码
  从 `#version` 开始。
- 动态拼接 shader 时，统一校验源码以 `#version ` 开头；不要依赖驱动接受 BOM、空行或注释前导。
- 桌面编译成功不能替代目标 Mali 驱动的实际 compile/link 验证。

## Graphics program：两端 GLSL ES 版本一致

**证据**：已确认存在严格拒绝跨版本链接的设备，原始错误为：

```text
Shader languages do not match.
```

分别编译成功不代表可以链接。`#version 300 es` fullscreen vertex 不能与使用 image/SSBO 的 `#version 310 es` fragment 组成 program。

实现契约：

- 从 fragment 的 `#version` 生成同版本 fullscreen vertex，并在进入驱动前显式校验两端版本。
- 需要 GLES 3.1 能力的 fragment 保持 310 并配对 310 vertex；普通 3.0 fragment 保持 300 配对。
- 动态 fragment 生成逻辑同时覆盖 300/310 两种来源的版本配对单元测试；不得为复用 vertex 而降级 fragment。

## Binding 与显式 GL 状态

### SSBO binding

部分 GLES 3.1 驱动只提供 8 个 SSBO binding，合法范围为 `0..7`，超限可能在 shader 编译时报错：

```text
shader storage block binding gets value 12, out of range [0 - 7]
```

- Binding 是单次 program 执行的槽位，不是跨 program 的全局资源 ID；不同 program 复用低编号，单 SSBO program 优先使用 0。
- 同一 program 的并发 SSBO 数量不得超过运行时上限；`layout(std430, binding = N)` 必须与 CPU 侧 `glBindBufferBase` 一致。
- SSBO、image、UBO 是独立命名空间，同编号互不占用。

### Texture 与 sampler

`glBindTexture` 作用于当前 active texture unit，而 sampler uniform 的 GL 初始值是 0。绑定不完整可能让辅助纹理覆盖 unit 0 主输入，表现为首帧黑屏、闪烁或错误颜色，并因缓存而暂时消失。

- 上传辅助资源前选择专用 texture unit；每次 draw 显式绑定 program、framebuffer、主输入和所有 sampler。
- 即使颜色分支关闭，也为 shader 中可能读取的 sampler 设置明确 unit 和有效纹理。
- 保持 pass 间颜色空间契约；线性 RGB 不能未经输出转换直接显示或传给要求 sRGB 的 LUT。
- 不依赖 helper 调用顺序或上一帧遗留的 active unit、framebuffer、program、texture binding。

## SSBO 与 image format

### `R16UI` 采样不代表可用于 image store

GLES 3.1 可以通过 `usampler2D` 采样 `R16UI` texture，但核心 GLSL ES 3.10 image
format qualifier 不包含 `r16ui`。需要 compute shader 写入并由 RAW sampler 读取时，使用
`RGBA16UI` + `layout(rgba16ui) writeonly uimage2D`，下游继续读取 `.r`；不要声明
`layout(r16ui)`，也不要由 texture 可分配、可采样推断它可用于 image load/store。

### `readonly` SSBO 元素不能直接作为用户函数实参

**证据**：OPPO PLW110，Mali-G720-Immortalis MC12，驱动 `v1.r44p1-01eac0.7c759d1daf93e2baa476e2d4d07e761b`。

该驱动会把 `readonly` 错误传播到函数调用并拒绝合法 GLSL：

```text
Function call discards 'readonly' access qualifier.
```

保持 SSBO 的 `readonly` 契约，先复制到普通局部变量：

```glsl
uint encoded = readonlyBuffer.values[0];
float value = decodeValue(encoded);
```

禁止直接调用 `decodeValue(readonlyBuffer.values[0])`，也禁止通过移除 `readonly` 规避。

### `RGBA16F` image 原位读写

**证据**：PMA110。该驱动支持 `layout(rgba16f) writeonly image2D`，但 `layout(rgba16f) image2D` read/write 编译失败：

```text
unsupported format on read/write image
```

禁止将同一张 `RGBA16F` texture 绑定为 `GL_READ_WRITE`，也禁止别名绑定到两个 image unit 模拟 source/destination。按算法选择以下模型：

1. **必须原位读写**：使用 `R32UI` + `layout(r32ui) uimage2D` + `GL_READ_WRITE/GL_R32UI`，以 `packHalf2x16` / `unpackHalf2x16` 保存两个 half；后续采样必须用 `usampler2D`。
2. **保留浮点格式**：source 只读、destination 只写，dispatch 后 ping-pong 交换角色。
3. **纯逐帧加法**：优先 framebuffer additive blending。NR sum/weight 与 detail sum/weight 分别使用两张 `RGBA16F` attachment；fragment 输出 `vec4(rgb * weight, weight)`；两个 MRT draw buffer 均使用 `GL_FUNC_ADD + GL_ONE, GL_ONE`。每次 draw 后恢复 blend 状态，切回单 attachment 前 detach 第二 attachment；write-only image 清零后转入 blending 前包含 `GL_FRAMEBUFFER_BARRIER_BIT`。

Blending 路径保留逐帧 FP16 写回舍入语义，但仅适用于加法；不得用于非加法更新、次序相关替换或任意读改写。每个 compute pass 还必须校验并发 image 数不超过 image unit 上限。

### `RGBA16UI` image 原位读写

**证据**：OPPO PMA110，Adreno 840，驱动
`OpenGL ES 3.2 V@0842.41 (GIT@8cfe428358, I8188c84bfe, 1777522173)`。该驱动
拒绝同时包含 `imageLoad` / `imageStore` 的 `layout(rgba16ui) uimage2D`：

```text
unsupported format on read/write image
```

- 不由 `RGBA16UI` readonly/writeonly image 或整数 framebuffer 可用推断同格式 read/write
  image 可用。
- 逐通道组装 RGBA16UI 时，使用整数 framebuffer fragment 输出配合
  `glColorMask`；每个通道恰好写一次，结束后恢复完整 color mask，并在 image consumer
  前包含 `GL_FRAMEBUFFER_BARRIER_BIT | GL_SHADER_IMAGE_ACCESS_BARRIER_BIT`。
- 算法确实需要读取旧值时，使用 readonly source 与 writeonly destination ping-pong；不要把
  read/modify/write 改写成依赖未定义 attachment 内容的局部通道覆盖。

### `RGBA16UI` attachment 回读

不要依赖驱动从 `RGBA16UI` attachment 直接完成三通道格式转换：

- 使用 `GL_RGBA_INTEGER + GL_UNSIGNED_SHORT` 回读 RGBA16。
- 在 native 层批量执行 RGBA16 -> RGB16，只改变内存布局，不改变通道值或图像语义。
- 不在 Kotlin 中用 `ShortBuffer.get/put` 逐像素移除 Alpha；高分辨率 direct-buffer 边界检查成本过高。

## 16-bit 整数纹理转浮点

**证据**：vivo V2242A，Mali-G715-Immortalis MC11，驱动 `v1.r38p1`。

Fragment sampler 中的 `uint16 -> float` 可能被 lowering 为 FP16：`65535 > 65504` 会产生 `Inf`，通道相减后形成 `NaN`；低位也可能丢失，表现为暗部彩色色阶、等高线或边缘色带。下游可把异常显示成绿、黑或其他颜色，不能据此反推输入通道损坏。

禁止路径：

```glsl
uvec3 sample16 = texture(uLinearRawTexture, vTexCoord).rgb;
vec3 rgb = vec3(sample16) * (1.0 / 65535.0);
```

`highp`、改为 `RGBA16UI` 后继续 sampler 转换、`unpackUnorm2x16`、下游 `isnan/isinf` 补偿均不能可靠修复。拆高低 8 bit 时，低字节直接乘 `1.0 / 65535.0` 还可能因 FP16 lowering 被 flush 为 0。

首次转换必须使用已验证的 compute image load/store：

```glsl
layout(rgba16ui, binding = 0) readonly uniform highp uimage2D inTex;
layout(rgba16f, binding = 1) writeonly uniform highp image2D outTex;

void main() {
    ivec2 position = ivec2(gl_GlobalInvocationID.xy);
    uvec4 sample16 = imageLoad(inTex, position);
    imageStore(outTex, position, vec4(sample16) / 65535.0);
}
```

配套契约：

- 传给 `glBindImageTexture` 的 2D texture 使用 `glTexStorage2D` 不可变存储，再用 `glTexSubImage2D` 上传。
- 三通道输入按规范以 `GL_RGB_INTEGER + GL_UNSIGNED_SHORT + GL_RGB16UI` 上传。
- GLSL ES 没有 `rgb16ui` image layout；需要 image load 时，先由整数 compute 将 `RGB16UI` 扩展为 `RGBA16UI`，再转为 `RGBA16F`。
- 高分辨率输入可按条带扩展和转换，避免常驻整帧 `RGBA16UI` 临时纹理。
- 在首次浮点转换点消除非有限值，不在下游补偿。

验证值至少包括 `0`、普通值、`65504`、`65505`、`65535`，以及 `0/1`、`255/256`、`256/257` 等相邻值；检查转换后 `NaN/Inf` 和包含通道相减的后续 shader。

## Framebuffer MRT：减少附件时显式 detach

**证据**：Adreno 840，驱动 `OpenGL ES 3.2 V@0842.41 (GIT@8cfe428358, I8188c84bfe, 1777522173)`。

Framebuffer 会保留本次未覆盖的旧 attachment。从三个半分辨率 MRT 切到两个全分辨率 attachment 时，仅替换前两个并调用 `glDrawBuffers(2, ...)` 不会解除 `COLOR_ATTACHMENT2`。该驱动按仍绑定 attachment 的尺寸交集限制写入，导致全分辨率 draw 只覆盖左上四分之一。

Render-target helper 必须记录前一次 attachment 数量。数量减少时，先对尾部 attachment 调用 `glFramebufferTexture2D(..., texture=0, level=0)`，再设置 `glDrawBuffers`、检查 framebuffer 状态和 viewport。`glCheckFramebufferStatus == complete` 不证明 viewport 覆盖目标完整尺寸；MRT 数量与纹理尺寸同时变化时，真机验证四角写入。

## Readback、GPU 交接与资源生命周期

### 热路径纹理回读

部分 Adreno 驱动在向 PBO 提交 `glReadPixels` 时会同步清空此前图形队列，即使稍后 map PBO 不再等待。因此提交耗时可能主要是前序 GPU 工作，不能解释为纯像素传输。

- GLES 3.1 优先以 compute 将纹理按目标 ABI 打包到 SSBO，再在 CPU 消费点 map。PBO/SSBO 可复用同一 buffer object；dispatch 后包含 `GL_SHADER_STORAGE_BARRIER_BIT | GL_BUFFER_UPDATE_BARRIER_BIT`。
- `R8 -> byte` 或 `R16I -> short` 以 32-bit word 写 SSBO；分配长度向上对齐 4 字节，消费者逻辑长度不变。Android capsule ABI 为 native little-endian，lane 位移必须匹配。
- Dispatch 前检查 `GL_MAX_SHADER_STORAGE_BLOCK_SIZE`；整图超限时回退 framebuffer readback，不得超限绑定 SSBO。GLES 3.0 或 compute program 编译失败也保留原 readback，且不得静默改变数据。
- 已知尺寸 PBO 在 pipeline/capture 创建时分配，不在首个同步点调用 `glBufferData`。不要假设 PBO 能让所有驱动上的 `glReadPixels` 立即返回。

### GPU -> GPU 交接

- 同一 EGL context/GL dispatcher 内，producer 完成 `imageStore` 并声明 image、texture fetch、framebuffer 所需 barrier 后，直接转移 texture 所有权；不要调用 `glFinish`。跨共享 context 必须另行验证 sync object 的共享与等待。
- CPU/DNG Buffer 不是 GPU handoff 的必填结果。DNG materialization 在前台显影完成后单独请求，并保持 texture 存活到消费者结束。
- 不可替代的 CPU/AOT 处理是显式 GPU 边界：GPU 结果读入 PBO，map 后就地处理，再由同一 PBO 上传 texture；边界两侧不再打包 Java/Kotlin RGB 数组。AOT strength 算法保持原边界，仅允许将输出分辨率相关的 Q8 坐标缩放作为独立 host 后处理，并保持 Float 双线性与舍入语义。
- 已完成且只读的 flow、robustness、tile mask 直接转移所有权，并立即为下一帧分配工作纹理；不要为 cache 做三次全表面 copy。诊断采样必须在转移前完成。
- 所有退出路径调用 `glDeleteSync`；framebuffer、scratch/native buffer、导出 texture 按各自消费者生命周期释放。

### 全帧纹理约束

- 需要整行/整列递归扫描的滤波必须接收连续全尺寸 `uimage2D`。上游 tile fragment 以全局 viewport 直接写完整 texture；禁止每 tile capture/copy，也禁止在 IIR 内循环动态查 uniform tile 数组并访问 `uimage2DArray` layer。
- 分配前查询 `GL_MAX_TEXTURE_SIZE`。Radiance VGN 色度链使用三张 `RGBA16UI` 2D texture ping-pong；最终 YCCD -> RGB 写入已空闲工作纹理并移交，不分配第四张同尺寸纹理。
- 普通对齐帧只需 flow bounds 时，在 GPU 将每帧 grid 归约为 `vec4(minX,maxX,minY,maxY)`，所有帧提交后一次 map 小 SSBO；不逐帧回读完整 `RGBA16F` flow grid。

### 计时语义

`glReadPixels` 常是异步 GPU 队列的首个 CPU 同步点，其调用耗时可能混合前序 compute/fragment/barrier 与像素传输。计时必须拆分：

- 读回前插入 `glFenceSync(GL_SYNC_GPU_COMMANDS_COMPLETE, 0)`；提交后用 `glClientWaitSync` 记录 `gpuQueueWait`，fence 完成后分别记录 `pixelTransfer` 与 RGBA16 -> RGB16 `cpuPack`。
- 分别记录 CPU 命令提交、framebuffer/attachment 绑定、`glReadPixels` 提交、`glMapBufferRange` 等待、AOT 和 allocation。
- 定位 stacker 队列尾部时，可在 normal alignment、long alignment、highlight alignment、tiled reconstruction、chroma postprocess、final export 命令边界插入有序 fence，但不在 stacker 内逐段等待。Fence 所有权随导出 texture 交给消费者，由首个 CPU 同步点按序等待。
- 阶段 fence 表示“到首个同步点时仍未完成的 queue tail”，不是完整 GPU duration；已在 CPU 提交期间完成的阶段记为 `0ms`。完整 shader GPU duration 应使用非阻塞 timer query，并处理 disjoint。
- 首个消费者分别记录 `upstreamStackGpuWait` 与自身等待，例如 `previewGpuQueueWait`、`materializationGpuWait`，不得再次合并为笼统 `gpuQueueWait`。

验证 delayed materialization 时，确认 stacker 返回 texture 前无全尺寸 `glReadPixels`，RAW 显影完成后才开始 DNG materialization；覆盖取消、写入失败、显影失败，确认 texture、sync、framebuffer、native buffer 均不泄漏，并要求新旧路径 RGB16 逐通道一致。

## 后台 compute：按资源冲突调度

**证据**：OPPO PKD130，MT6835，Mali-G57 MC2，驱动 `v1.r38p1`。

Radiance/VGN 连续提交 compute、fusion、chroma 时，CPU 可能覆写 GPU 尚在读取的 RAW texture/UBO。队列长度限制没有资源所有权，单独加 barrier 不等待 GPU 完成，而逐 pass 等待会破坏流水。

实现契约：

- VGN、semantic、fusion、normalization、chroma 共用容量 2 的资源依赖窗口。每个 pass 声明 texture/buffer 读写集；存在 RAW/WAR/WAW 时，consumer 提交前等待最新冲突 fence；无冲突才允许两个 pass 在途。
- CPU 可覆写的 RAW texture 和 UBO 分别使用 A/B ring，回卷前只等待该槽最后使用者；GPU-only RGB、semantic、中间纹理、accumulator 保持单份。
- Pass 后插入 fence，不逐 pass `glFlush`。等待目标 fence 时，第一次 `glClientWaitSync` 使用 `GL_SYNC_FLUSH_COMMANDS_BIT`，后续轮询 flags 为 0。
- VGN/Radiance compute 统一使用 `GL_ALL_BARRIER_BITS`，pass 后解除 image、sampler、indexed buffer 绑定。
- 仅在资源冲突、ring 槽复用、CPU readback、纹理回收、最终组件交接时等待；不做逐 pass/tile checkpoint。
- VGN chroma 的最终 image pass 交给依赖其结果的导出转换时，consumer 提交前完成组件交接；不得在只有 barrier 的情况下紧接提交依赖 compute 并删除 source texture。
- 调度不得改变 shader、pass 数、帧选择、参数、累加顺序或输出格式。

验证 long frame 开启/关闭时的 Radiance、chroma、导出、单帧 RAW；pending fence 不超过 2，所有等待均可归因于声明的冲突或所有权交接；修复前后像素一致，并比较各路径总耗时。

## IMG/PowerVR `imageSize`：仅作研究线索

第三方实现记录过部分 IMG 驱动的 `imageSize(image)` 返回值不可靠，但项目目标设备尚未复现。复现前不得全局禁用 `imageSize`，也不得用硬编码尺寸或结果末端 clamp 掩盖越界。

对直接决定 LUT、卷积或 `imageStore` 边界的尺寸，可保留 CPU 显式传入接口，并在真机对照 `imageSize`，覆盖 mip level、internal format、binding 与访问模式。复现后记录 GPU/驱动版本、纹理格式、绑定方式、查询值和最小 shader，再决定兼容分支。

研究来源：[`research/phocus_glsl/04_color_tone/README.md`](../research/phocus_glsl/04_color_tone/README.md)。
