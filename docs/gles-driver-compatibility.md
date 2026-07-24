# GLES 驱动兼容性记录

本文只记录已确认或需要重点验证的 GLES 驱动兼容性问题，以及对应的错误做法、正确做法和
验证要求。具体业务算法、单次排查过程和逐设备测试流水不在本文展开。

修改 compute shader、image load/store、纹理格式、buffer binding 或 GL 状态管理前，应复查
本文，并在代表设备上运行实际的 compile、bind、dispatch、readback 和后续采样测试。不能仅凭
GLES 版本号、扩展列表或桌面 GLSL 编译结果判断移动端可用性。

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
