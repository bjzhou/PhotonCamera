# YUV Spatial 实机计时与优化

## 测量条件

2026-09-06，PMA110 / Adreno 840，OpenGL ES 3.2 V@0842.44。
JPGMax，HDR 关闭，8 帧 P010，输入 4080×3064，输出 4080×3060，超分辨率关闭。
每组同场景拍摄 3 次，以下均为开启 timer query 的三次算术平均，单位 ms。
总耗时从 stacker 入口算到 GL 资源释放完成，不包含相机采集和后续照片保存。

| 阶段 | 对齐优化前 | 硬件插值与稀疏对齐 | 再复用双上传槽 |
| --- | ---: | ---: | ---: |
| 总耗时 wall | 756.355 | 523.714 | 449.375 |
| GPU pass 合计 | 387.585 | 187.760 | 183.481 |
| 最精细层 LK 两次迭代 GPU | 165.903 | 38.986 | 38.980 |
| 上传整个帧 CPU scope | 470.961 | 278.441 | 211.156 |
| 拒绝图主计算 GPU | 5.796 | 5.898 | 5.824 |
| 像素读回与 Bitmap 拷贝 CPU | 80.793 | 60.055 | 65.990 |

对应 capture ID：

- 对齐优化前：`5mksrvgo33`、`5mku4c3l9m`、`5mkvxsjn23`。
- 对齐优化后：`5mujn71s81`、`5mukjfxn5p`、`5mum2iyau7`。
- 双上传槽：`5mxn615j16`、`5mxo2to68s`、`5mxpguvwip`。

双上传槽组总耗时范围 430.716–472.442 ms，均值降低 40.6%；GPU 合计降低 52.7%。
各组拍摄不是同一批输入帧的离线重放，场景位移、调度、频率、着色器缓存及读回成本存在波动。
硬件插值组第一次 program 初始化为 87.637 ms，表中保留该样本，不剔除冷启动成本。
这些结果不能直接外推到关闭计时的生产耗时或其他设备。

## 计时口径

- `PLog_YuvTiming` 通过 capture、frame、stage 标识阶段；对齐包含金字塔比例和迭代序号。
- `cpuMs` 是调用的 CPU 墙钟时间，`cpu-scope` 包含嵌套 scope，不能相加当作总时间。
- `gpuMs` 使用 `GL_EXT_disjoint_timer_query`，异步查询，不逐 pass 等待。
  CPU 提交与 GPU 执行重叠，不能将两者相加。上传调用内的驱动等待也会计入 CPU。
  上传及驱动辅助操作未必完整归属于 elapsed query，因此 GPU 合计不是整条链的占用时间。
- 仅在原有 CPU 读回点等待队列，再分别记录 `readback.gpuQueueWait`、
  `readback.pixelTransfer` 和 `readback.bitmapCopy`。
- Adreno 的 53 位计数器有效，周期约 104 天。只有零位计数器才视为不支持；
  结果处理 disjoint、未完成、异常退出和计数周期溢出，失效时输出 `NA`。
- 不支持 timer query 时记录有序 fence 的 `queueTailMs`，它仅代表读回时剩余的工作，
  不代表完整 GPU duration。早先 `backend=queue-tail` 的记录不参与上表 GPU 对比。
- 详细计时默认关闭。仅在 Debug runtime 下设置 `debug.photon.yuv.timing=true` 才采集并输出；
  设为 `false` 可关闭，未开启时不创建阶段计时 query/fence。

## 实现与精度取舍

YUV LK 使用硬件双线性插值代替逐点四次整数采样和 Q15 运算；32×32 tile 的梯度产品和
当前帧拟合统一使用间隔 2 的 16×16 样本。粗层 LK 保留全部样本，归一化项在同一次遍历归约。
候选位移保持整数 SAD、整向量选择和相同候选顺序，比较时按间隔 2 采样。

当前帧保留整数金字塔供候选选择使用，另以 MRT 生成 RG16F 可过滤金字塔。
RG 分别保存 `floor(gray/16)` 和余数；两分量可在 FP16 中精确表示，过滤后重组。
避免直接 R16F 保存 Fixed14 造成低位损失。该金字塔在本次尺寸增加约 15 MiB，随 capture 释放。
拒绝图 RGB/variance guide、整数金字塔值、输出分辨率和累加链不变。

参考帧的整数上传纹理只负责初始格式转换，参考图像保存在独立浮点纹理中。
后续 P010 帧交替复用参考与当前帧已有的两组整数上传纹理，不增加上传纹理内存。
普通 YUV 与 HDR 使用同一上传入口。

## HardwareBuffer 输入

后续输入改为 `Image.hardwareBuffer -> EGLImage -> GL_TEXTURE_EXTERNAL_OES`，通过
`GL_EXT_YUV_target` 的高精度原始 YUV sampler 读取。P010 和 YUV_420_888 使用同一入口，
正常路径不访问 `Image.planes`，不做 CPU 全帧打包或 `glTexSubImage2D` 上传。
GPU 仍用两次 draw 生成下游所需的全尺寸 Y 和半尺寸 CbCr 工作纹理，输出仍读回 Bitmap；
这里的零拷贝指相机缓冲区导入，不代表整个处理链没有纹理写入或读回。

原始 sampler 不经过驱动的 RGB 矩阵转换。P010 采样值先还原 10 位码值，再乘
`64 / 65535`，与旧路径的左对齐 16 位归一化及 R16F/RG16F 存储契约一致；8 位输入
直接写入 R8/RG8。后续颜色转换与融合 shader 不变。

每个来源帧有独立 external texture，所有 Image、HardwareBuffer 引用和 EGLImage
保留到 GPU 消费结束。正常路径在输出读回后释放；异常退出必须先等 GPU 完成再归还
相机缓冲区。EIS 与 YUV 共用提取后的 native EGLImage 导入组件。
该入口接收同步 acquire 的 Camera Image：AOSP 的
[ImageReader_imageSetup](https://android.googlesource.com/platform/frameworks/base/+/refs/heads/main/media/jni/android_media_ImageReader.cpp)
调用 [BufferItemConsumer.acquireBuffer](https://android.googlesource.com/platform/frameworks/native/+/refs/heads/main/libs/gui/include/gui/BufferItemConsumer.h)
时使用默认 `waitForFence=true`，相机 producer 已在取得 Image 时同步；不能将该约定直接
套用到异步 acquire 的 NDK Image 或其他来源缓冲区。
扩展缺失、提取 program 编译失败或 EGLImage 导入失败时，记录原因并使用已有 plane
上传路径；P010 双槽 staging 纹理只在该路径实际使用时分配。

### 实测

同一设备、分辨率、帧数与计时设置，11:57 的每种格式各 3 次，全部
`hardwareFrames=8 planeFrames=0 success=true gpuStatus=valid`，每次 232 个 GPU pass。

| 阶段，ms / 8 帧 | P010 双上传槽 | P010 HardwareBuffer | YUV_420_888 HardwareBuffer |
| --- | ---: | ---: | ---: |
| 总耗时 wall | 449.375 | 387.429 | 361.158 |
| GPU pass 合计 | 183.481 | 186.354 | 183.531 |
| 输入整个帧 CPU scope | 211.156 | 22.082 | 13.372 |
| 其中 HardwareBuffer 导入 CPU | — | 7.376 | 4.908 |
| GPU 提取 Y 与 CbCr | — | 14.545 | 8.365 |
| 像素读回与 Bitmap 拷贝 CPU | 65.990 | 59.136 | 71.001 |
| 资源释放 CPU | — | 37.211 | 24.857 |

- P010：`5ne92j5fvk`、`5nea92vlv8`、`5nebsb4d0v`，总耗时范围 358.204–416.802 ms。
- YUV_420_888：`5nemktrah0`、`5nenovzgtw`、`5neoqdwc70`，范围 349.836–367.129 ms。
- 两种 Camera Image 的 HardwareBuffer usage 均为 `0x20003`，保持已有 ImageReader 配置。

P010 输入 CPU scope 降低 89.5%，总耗时进一步降低 13.8%（约 62 ms），相对最初
对齐优化前降低 48.8%。旧 `upload.frame` 与新 `input.frame` 都覆盖一帧的输入准备；
后者包含导入及 GPU 提取命令提交。GPU 总时长基本持平，原来阻塞在上传调用中的部分
等待移到了最终读回：新 P010 `readback.gpuQueueWait` 为 139.425 ms，8 位为 145.021 ms。
不能把输入 scope 减少的 189 ms 当作总耗时收益，也不能把这部分 queue wait 当作像素传输。
8 位没有同设置旧路径的对照组，不给出其优化百分比。

当前 P010 的对齐 GPU 合计 107.186 ms，其中最精细层候选位移两次选择合计 56.261 ms、
LK 两次迭代 39.015 ms；帧累加 36.745 ms，主拒绝图 5.932 ms。
后续应单独测量候选选择、累加和输出边界，
无需继续围绕 CPU 上传槽调整。

### 输入值验证

PMA110 上独立 native EGL/AHardwareBuffer 探针覆盖 P010 与 8 位 YUV，分别以 CPU
可读写 usage 和额外 GPU sampled usage 分配。4 组已知 Y/U/V 码值的原始采样均无误差，
包含色度排列及半分辨率坐标检查；未使用 Android Test。

12:03 的真实相机输入按 17×13 网格对照工作纹理与 Image plane，覆盖四角和内部：

| 格式 | capture | 最大归一化误差 Y / U / V |
| --- | --- | --- |
| YUV_420_888 | `5nimigc62f` | 0 / 0 / 0 |
| P010 | `5niq03dyeu` | 0.000014424 / 0.000011027 / 0.000013113 |

P010 误差位于现有半精度存储的舍入范围，两次全部 8 帧直接导入成功。
这是输入数值抽样验证，不等于整张输出逐像素一致或所有设备均已验证。

`debug.photon.yuv.input.validate=true` 仅在 debug runtime 下对每种格式每进程检查一次；
它引入小纹理读回及 CPU plane 访问，验证拍摄不参与性能均值。验证完成后已恢复为 false。
`debug.photon.yuv.input=planes` 可强制走原输入路径以隔离变量。
最终 `assembleDefaultDebug` 已通过（包含 Kotlin 与 native 编译），APK 已覆盖安装到 PMA110。

## 验证

- `compileDefaultDebugKotlin`、`buildCMakeDebug`、`assembleDefaultDebug` 通过。
- PMA110 实际拍摄执行新 shader：三次均 `success=true`、`gpuStatus=valid`。
  未在手机执行 Android Test。
- 桌面 GPU 检查共享 RAW 的有符号 2×/4×金字塔、梯度产品和候选选择，与修改前逐像素一致。
- 三种曝光比例下，YUV MRT 增加输出前后的 RGB/variance guide 和整数灰度逐像素一致；
  RG16F 编码重组后与整数灰度一致，包含边界和负值金字塔样本。
- 72 组零位移、整数/亚像素平移，覆盖照片片段、重复纹理、平坦、暗部和极低对比输入。
  有纹理样本保持亚像素估计；极低对比样本相对原算法的平均差异最高约 0.24 个 guide 像素
  （约 0.48 个输入像素）。这是对齐精度取舍，不是逐像素等价优化。
- 桌面 LK 对照显式提升了原 shader 的浮点 sampler 精度，以避免桌面 ES 编译器对大数值
  梯度产品的半精度溢出；桌面性能倍率不作为手机收益依据。

本次日志不能证明原照片局部噪点已经消失；该结论仍需对应成片的画质对照。
