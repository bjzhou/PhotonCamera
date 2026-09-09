# LumixLab RAW 渲染流程分析

分析日期：2026-09-08。对象：用户提供的 `/Users/zhoubinjia/Desktop/lumixlab/`。本文依据 Java 反编译代码、ARM64 原生机器码与 SPIR-V 指令交叉分析，没有运行 App 或用 RAW 样张进行像素比对。

**核心结论：LumixLab 的 RAW 显影由 Panasonic 专用 CPU 解包器、Vulkan 对数域去马赛克、镜头校正和可复用的 RGB 编辑管线组成。PhotoStyle 是基础显色的一部分；降噪和锐化在基础显色之后、最终曲线和创意 LUT 之前。当前 Java 保存链输出的是 8 bit/channel Bitmap。**

完整证据清单见 [manifest.json](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/manifest.json)，逐着色器公式见 [shader-analysis.md](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/shader-analysis.md)，解包细节见 [unpack-analysis.md](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/unpack-analysis.md)。

后续补充：[RAW 机型白名单、共享标定与未支持文件处理](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/raw-model-support.md)。机型准入涉及单独提供的 `libllc.so`，来源哈希见补充清单。

## 1. 样本、证据强度与架构

APK 原始 manifest 确认包名 `com.panasonic.jp.lumixlab`、版本 `3.1.0 / 22`、minSdk 30、targetSdk 35。目录中的 36 个 SPIR-V 文件已逐个与 APK 内资产计算 SHA-256，全部一致。

一个来源边界需要保留：提供的 APK 没有 `lib/` 条目，ARM64 `.so` 是目录中单独提供的材料。因此本文确认了 JNI 接口和 shader 数据结构的衔接，**没有通过对应原生 split APK 的签名/哈希确认 `.so` 与主 APK 的发行版本关系**。所有原生结论严格对应下面这个二进制。

| 对象 | SHA-256 / 标识 |
|---|---|
| `lumixlab.apk` | `6ba873110d201675a905f7dac39bcda3291674e7440a484d6d5bd1a78447115f` |
| `libtechorfilter.so` | `03e1c4e11e86012e03faf025fd566be79df3fc75ee28d38433d676a959b3d25f` |
| 原生 Build ID | `13a4d635b27e1371b8a6ac02dd1d5bc160333183` |

本文用三种强度表述证据：明确调用/指令可确认的事实；从数据依赖推导的解释；缺少样本或完整控制流而不能确认的内容。库中存在某个函数或 shader，不等于 App 的 RAW 分支执行了它。

| 层 | 主要对象 | 职责 |
|---|---|---|
| 编辑界面 | `H5/z`、`H5/p`、`I5/w` | 打开 RAW、编辑参数、低清/全尺寸回调、保存 |
| Java 管理器 | `com.panasonic.jp.lumixlab.util.p1` | 图片身份缓存、任务调度、配置、LUT 加载、Bitmap |
| JNI 门面 | `com.techor.techorfilter.ImageFilter` | 加载 `techorfilter`，传资产、数组、Bitmap 与取消回调 |
| 原生门面 | `TECHOR_Filter` | 参数和引擎调用 |
| RAW 状态 | `VulkanDemosaic` | EXIF、解包器、各尺寸像素缓存、颜色参数 |
| CPU RAW | `IslZTiffExifPanasonic`、`IslInputBayerPanaRAW` | Panasonic MakerNote/CF2 解包与参数提取 |
| GPU 执行 | `APLImageProcessor`、`Buffer` | Vulkan pipeline、descriptor、dispatch、barrier、回读 |
| 输出编码 | `N6/C2885f`、`N6/C2884e` | JPEG / HEIF |

`libtechorfilter.so` 内有 `IslZ*`、`HS2Demosaic`、`SILKYPIX Developer Studio` 与 Ichikawa Soft Laboratory 版权字符串。这能证明它包含这套技术体系的代码，不能证明与某个桌面 SILKYPIX 版本逐像素一致。当前主链确实执行 Vulkan；CPU `HS2Demosaic` 符号或 `DomosaicTest` 的存在不能当作自动 CPU 回退的证据。

尽管资产目录叫 `shaders/glsl`，实际文件声明的是 **SPIR-V 1.3、HLSL 600、GLCompute**，不是 OpenGL fragment shader。[frontEnd 声明](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/shaders/frontEnd.spvasm:1)

## 2. 真实主链与执行边界

```text
RAW 文件全部字节
  │
  ├─ nativeReadExifAndUnpack
  │    ├─ Panasonic EXIF / MakerNote / 标定参数
  │    └─ CPU CF2 strip 解压 → 完整 uint16 Bayer 缓存
  │
  ├─ 分别准备 step=4、step=1 的显影缓存
  │    └─ nativeGetRawDecodeLens
  │         ├─ getRaw：保持 CFA 的采样 → uint32 Bayer
  │         ├─ DecodeOnly
  │         │    frontEnd → preProcess → firstProcess → secondProcess
  │         └─ LensCorrect2
  │              lensProcessA → lensProcessD → packed RGB 缓存
  │
  └─ 初始显示 / 修改参数 / 导出：nativeCnv2
       ├─ setCnvParam：WB、曝光、机型 PhotoStyle、降噪参数等
       ├─ cnvOnlyProcess：基础显色、PhotoStyle、HSL、分离色调
       ├─ [可选] yccBlurH → yccBlurV → [level>0] yccCNR
       ├─ [可选] nrFirst → nrSecond → nrSecondHLPF → nrThird → nrFourth
       │         → nrFifthPre → nrFifth
       ├─ [可选] sharpPreProcess → sharpProcess
       ├─ backendProcess：对比度/gamma、色阶、曲线、LUT1、LUT2、颗粒
       └─ AHardwareBuffer 回读 → ARGB_8888 Bitmap
            ├─ 屏幕：方向与预览尺寸处理
            └─ 保存：全尺寸请求 → 裁剪/边框/输出缩放 → JPEG 或 HEIF
```

顺序不是按名称排序得出的：JNI 中 `0x2ed8c4 / 0x2ed918 / 0x2ed980` 分别调用 getRaw、DecodeOnly、LensCorrect2；`VulkanDemosaic::Cnv2` 的 `0x2d33b8 / 0x2d3510 / 0x2d3604 / 0x2d36b4 / 0x2d3778 / 0x2d3794` 对应基础显色、YCC、两组 NR、锐化与后端。

[RAW JNI 顺序](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/Java_com_techor_techorfilter_ImageFilter_nativeGetRawDecodeLens.asm:1) · [编辑执行顺序](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/VulkanDemosaic_Cnv2.asm:1)

`cnvProcess.spv`、`lensProcess.spv`、`GaussH/V.spv`、RGB/YUV 转换版本没有被无条件插入这条 RAW 主链。尤其不能把整合型 `cnvProcess` 与 `cnvOnlyProcess + backendProcess` 再串联一次。

## 3. RAW 打开、EXIF 与 CPU 解包

`H5/z.Q()` 遇到 `fileType==0` 时进入 `p1.z()`，把输入模式设为 `RAW2`。同一 fileKeyId 已有缓存时直接复用；换图则重置配置并读取文件全部字节，再调用 `ImageFilter.e()`。

[入口](/Users/zhoubinjia/Desktop/lumixlab/app/src/main/java/H5/z.java:2311) · [RAW 管理与缓存](/Users/zhoubinjia/Desktop/lumixlab/app/src/main/java/com/panasonic/jp/lumixlab/util/p1.java:3836)

### 3.1 元数据也是显影输入

`readExifAndUnpack` 明确读取：宽高、CFA、型号/机型 ID、RAW bit size、压缩信息、有效区域、畸变与像差参数、传感器尺寸、焦距、Optical Black、PhotoStyle、RAW 版本、拍摄 WB、采样最大值、ISO、颜色空间判断及颜色校正色温信息。

因此这条管线不能仅靠 Bayer、一个黑电平和一个 3×3 矩阵完整重现。MakerNote 提供的参数参与解压、白点、镜头和颜色处理；资产中还有按机型准备的风格表。

JNI 返回数据的实际意义：

| 返回物 | 内容 |
|---|---|
| String | 相机型号字符串，Java 用于风格列表选择 |
| 第一个 `float[2]` | 元数据初始化与解包耗时；不是 WB 或像素 |
| `int[0] / [1]` | RAW 宽 / 高 |
| `int[2]` | CFA / ColorAddress 枚举 |
| `int[3]` | 已映射为 App 风格索引的 as-shot PhotoStyle |
| `int[4]` | cameraID |
| `int[5]` | 解包状态，Java 检查非零失败 |
| 第二个 `float[2]` | WB2Kelvin 的 Kelvin、DBB 偏色坐标 |

时间记录可确认使用 duration 除以 1000，但本次没有单独核对所链接 chrono 实现的 tick 单位，不给它附加未经验证的毫秒单位。[EXIF 与输出数组](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/VulkanDemosaic_readExifAndUnpack.asm:1)

### 3.2 CF2 解压流程

确认执行的是：

```text
IslInputBayerPanaRAW::Decode
  → 读取 CF2 gamma slope/point/clip、Huffman init/table、shift-down table
  → 读取 strip 网格、字节偏移、行偏移、宽高等
  → 为每个 strip 读取压缩字节
  → DecodeStrip
       → IslZISInputBayerPanaRAWPack8::Dec
            → 64-bit 输入位反转
            → DecHuff
            → Gamma / GammaCore
       → 四个分量重新排列成 2×2 Bayer 单元
  → 合并到完整 uint16 Bayer 图
```

这里 `Gamma` 属于 **CF2 压缩数据重建**，不等于显示 gamma 或 sRGB 编码。解压过程中没有 RGB 插值；真正去马赛克在之后的 GPU 阶段。

strip 合并循环的明确黑电平操作是：每点减 `OB[1]`，夹到 `[0,65535]`，存 uint16。不能把这段写成按 CFA 逐点减四通道黑电平；同时，其他黑电平值也被保存给后续参数，不能反过来认定全流程只使用这一项。`GetOpticalBlack` 读取失败时这份代码使用四个零值。

[Decode](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/IslInputBayerPanaRAW_Decode.asm:1) · [DecodeStrip](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/IslInputBayerPanaRAW_DecodeStrip.asm:1)

Huffman/predictor 全部状态转换、每种 CF2 GammaCore 分支尚未写成经过样张验证的等效实现。本文确认了调用链和数据变换边界，不宣称已经得到通用 Panasonic RAW 解码器源码。

## 4. 快速预览不是先显影全图再缩小

打开 RAW 后分别提交两份缓存任务：`W/4 × H/4, step=4` 与 `W × H, step=1`。原生另有 step=2 槽位，但这条 Java 初始化链明确提交的是 4 和 1。槽位映射为 `4→0，2→1，1→2`。

step>1 在 Bayer 域按 **2×2 CFA 单元抽样**。对偶数 i、j，可写成：

```text
dst[j  ][i  ] = src[y+j*step  ][x+i*step  ]
dst[j  ][i+1] = src[y+j*step  ][x+i*step+1]
dst[j+1][i  ] = src[y+j*step+1][x+i*step  ]
dst[j+1][i+1] = src[y+j*step+1][x+i*step+1]
```

这保留了 CFA 相位，但没有对跳过的单元做均值或低通。快速预览也会完成自己的去马赛克和镜头校正。由此可以推导：**低清预览不与全尺寸成片缩小后严格等价**，细线、纹理、混叠与降噪结果可能不同；这是采样方法上的推论，实际差异大小需样张测量。

Java 有“full 完成后忽略迟到的 step4 回调”的保护。拖动 LUT 强度时可见 step4，结束拖动请求 step1；忙碌时跳过部分拖动请求，并取消旧 Future。[抽样实现](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/IslInputBayerPanaRAW_GetRAWData32_step.asm:1) · [回调保护](/Users/zhoubinjia/Desktop/lumixlab/app/src/main/java/H5/p.java:22) · [拖动调度](/Users/zhoubinjia/Desktop/lumixlab/app/src/main/java/H5/z.java:2361)

## 5. 四阶段对数域去马赛克

### 5.1 frontEnd：as-shot WB、可选裁剪、对数编码

输入是每点占 4 字节的 uint32 Bayer，数值来自 uint16 解包结果。shader 按坐标选择 R/G/G/B，对 R、B 分别乘 `asShot_WBR/WBB`，G 保持；`bValidCLIP==1` 时使用通道上限裁剪。

随后编码为：

```text
L = clamp(floor((ln(v + 819) - 6.70808411) * 1345.03857 + 0.5), 0, 65535)
```

这一步没有解压位流、没有减黑电平，也没有 CCM。shader 的 CFA selector 是固定 RGGB 解释；虽然原生读取了 ColorAddress，本次没有证明所有可能 CFA 如何统一进入该顺序，不能声称它支持任意运行时 Bayer 排列。

[WB、clip 与 log](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/shaders/frontEnd.spvasm:124)

### 5.2 preProcess：方向信息和候选通道

根据四种 CFA 位置分支，读取多个邻域，计算横纵差异、带权统计与候选通道；输出 `ISLEHS2PPIXEL` 的四个 uint32 字段，许多数值以 16-bit 两两打包，每点 16 字节。

这是有方向/梯度信息的自定义去马赛克，不能凭相似结构命名为 AHD、AMaZE 或 RCD。`HS2` 是实际符号体系，不能直接映射到某个公开算法名称。

### 5.3 firstProcess：融合候选、逆对数、转色差

消费前一步的候选和差异信息，做邻域比较与限制，得到三个 log 域通道。末端明确逆变换：

```text
v = exp(L * 0.000743473065 + 6.70808411) - 819
```

输出是 12 字节记录：`Y:uint32, Cb:int32, Cr:int32`。结合重组指令可确认：

```text
Y = G
Cb = B - G
Cr = R - G
```

G 夹到 16 位范围，色差夹到有符号 16 位范围。**它不是 BT.601/709 YCbCr，也不是三个浮点颜色通道。**

[逆 log 与色差输出](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/shaders/firstProcess.spvasm:4443)

### 5.4 secondProcess：色差平滑并重建 RGB

保持中心 G，对邻域 Cb/Cr 加权处理，再恢复 `B=G+Cb、R=G+Cr` 并夹紧。输出结构为：

```text
bg = (G << 16) | B
ra = R
```

每点两个 uint32、8 字节，实际 B/G/R 各占 16 位。

一个需要保留的指令级细节：当前 SPIR-V 的色差核对应 `[1,2,0; 2,5,2; 1,2,1]/16`，上右位置使用了中心项。不能在等效重写时悄悄替换成常见对称 Gaussian 核。这里也有 unsigned 坐标减法配合 UClamp；不能未经边缘样张验证，就把它描述为标准 clamp-to-edge。分块 halo 只能解释内部条带边界，不能自动证明图像四周无差异。

[色差核和 RGB 重组](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/shaders/secondProcess.spvasm:123)

## 6. 镜头校正：像差、畸变、暗角分开实现

实际 RAW `LensCorrect2` 执行 `lensProcessA → lensProcessD`，二者消费和输出 8 字节 packed RGB。执行 pass 不意味着每张照片启用对应校正；shader 内还有开关。

**横向色差 A：**根据像素距光学中心的半径，从 1024 项 `vecRG / vecBG` 径向表插值，分别计算红、蓝采样位置；绿通道保持基准位置。红蓝采用四点双线性采样。这是横向放大率色差校正，不是轴向色差模型。

**几何畸变 D：**令 `dx=x-cx，dy=y+offset_y-cy，r=sqrt(dx²+dy²)`，以 `t=r/dist_f*100` 插值 101 点 `vecRate`，得到 `scale=1+rate(t)`，再按 `cx+dx*scale、cy+dy*scale-offset_y` 反向采样。虽然 push constant 还有 G0/G2/G4/G6，这条 packed shader 实际使用的是径向表；不能仅凭字段存在声称 GPU 直接计算多项式。

**暗角：**在之后的 `cnvOnlyProcess` 中进行径向亮度补偿，而不是包含在 A/D 两步里：

```text
a = (r / imageHeight) * shadingAngt
gain = 1 + shadingFactor * (1 / cos(atan(a))^4 - 1)
```

三个通道乘同一 gain。原生 EXIF 阶段读取镜头/传感器/焦距与校正信息，并构造采样表；不应把这套模型直接等同于 Android Camera2 的二维 lens shading map。

[A](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/shaders/lensProcessA.spvasm:156) · [D](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/shaders/lensProcessD.spvasm:159) · [暗角](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/shaders/cnvOnlyProcess.spvasm:420)

## 7. 白平衡、曝光与 PhotoStyle 显色

### 7.1 WB 有两个阶段

去马赛克前应用的是 as-shot WB；编辑阶段另由 Kelvin/DBB 计算 R/B 增益。`setCnvParam` 存在把计算增益除以参考 WB 的分支，避免把前面已经施加的白平衡简单重复乘一次。具体分支由当前输入状态决定。

DBB 不是 UI 原始 tint 整数：Java 将 tint 除以 1000，原生 `calcDBBMinMax(step,K)` 再决定有效范围。不能用一个固定的色温→RGB 近似公式替代这套 `IslZWBCalc` 状态与色温校正。

[WB 参数生成](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/VulkanDemosaic_setCnvParam.asm:1) · [动态 DBB 范围](/Users/zhoubinjia/Desktop/lumixlab/app/src/main/java/com/panasonic/jp/lumixlab/util/p1.java:2687)

### 7.2 曝光也有多个来源

RAW Java 曝光增益为 `2^(EV + 风格转换偏移)`，原生再乘 `defaultGain`。最终 RGB 的加法亮度位于后端，不等价于前面的乘法曝光。

例如从 STD_FAMILY 转 VLOG_FAMILY，表内偏移分别是：

| 机型组 | EV 偏移 |
|---|---:|
| GH7 / G9M2 / L10 | -2.3333333 |
| S1RM2 | -1.3333334 |
| S1M2 / S1M2E / S9 / S5M2 / S5M2X | -2.6666667 |

这是当前代码中的风格转换标定值，不能推广为这些相机 RAW 的通用曝光补偿。[转换表](/Users/zhoubinjia/Desktop/lumixlab/app/src/main/java/com/panasonic/jp/lumixlab/util/s1.java:30)

### 7.3 PhotoStyle 与创意 LUT 是两套系统

PhotoStyle 从 assets 下 `photoStyleLUT/<camera>/lut_<style>.bin`、`_low.bin`、`_high.bin` 加载。机型目录映射包含 S5M2、G9M2、GH7、S9、S1M2、S1M2E、S1RM2、L10；这只证明存在资产选择分支，不是完整 RAW 机型兼容列表。

资产读取器解析 88 字节 little-endian header，支持 float16 / float32。基础文件 `lut_<style>.bin` 是 2048 项一维风格曲线；`_low.bin`、`_high.bin` 是 33³ RGB 三维颜色表，3D RGB 表在 Java 中扩成每节点四个 float。随后传 `setPhotoStyleLUT`，原生保存并生成渲染所需表。

**low/high 不能解释成图像阴影/高光两张创意 LUT。**原生 `GetCTempInfoForColorCorrection` 及 `GetPhotStyleCorrectLUT` 证明它们参与颜色校正色温插值：内部坐标 q 在低端 256、高端 512 之间，逐元素得到 `(low*(512-q)+high*(q-256))/256`；区间外选择端点表。缺失相应元数据时，通过色温控制点 `(3000,256)、(5000,512)、(6500,618)、(7500,725)` 建立映射，编辑色温变化也可触发表更新。

`GetPhotoStyleLUT` 还根据机型、风格/拍摄风格、ISO 选择原生 preLUT 表。因而同一风格名不意味着所有机型、ISO、色温都使用完全相同的颜色转换。

[Java 资产加载](/Users/zhoubinjia/Desktop/lumixlab/app/src/main/java/com/panasonic/jp/lumixlab/util/p1.java:1576) · [色温插值](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/VulkanDemosaic_GetPhotStyleCorrectLUT.asm:1) · [preLUT 选择](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/VulkanDemosaic_GetPhotoStyleLUT.asm:1)

### 7.4 cnvOnlyProcess 的实际运算次序

1. packed BGR 解包；暗角增益、编辑 WB；除 `pixelMaxVal` 归一化并夹紧；乘 `fBrightness` 再夹紧。
2. PhotoStyle 分支：特定 colorspace 修正 → 可选亮度相关 tone correction → 2048 项一维 shaper → 33³ 三维 PhotoStyle LUT。
3. PhotoStyle 分支合流后：可选 `transformMatrix` 3×3 变换；PhotoStyle 开启时同样可执行。该主链宿主以 `MakeUpSaturation` 生成矩阵，不能把该字段称为相机 CCM 或 DNG ColorMatrix。
4. `naturalSatMatrix`、八色 HSL、阴/中/高三段 split tone。
5. 量化到 `0..4095`；普通输出为 packed RGB，`validYCC` 输出为偏置色差格式。

这说明空间 NR 面对的通常已经是 **经过基础显色、HSL 和分离色调的 12-bit 有效值图像**；它不是直接在原始线性 Bayer 上运行。这里的若干夹紧也意味着无法仅凭 UI 有 -5 EV 滑块就证明所有前级高光都能恢复。

[基础显色](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/shaders/cnvOnlyProcess.spvasm:392)

### 7.5 PhotoStyle 的线性输入、非线性查表域与 sRGB 边界

**PhotoStyle 整体从线性域 RGB 接入；其中的 3D LUT 接收一维风格曲线映射后的非线性 RGB，不能把这个查表域统一叫作 sRGB。**这里的线性 RGB 指 RAW 去马赛克并逆转临时 log 编码后的相机 RGB 数值，不等于已变换到 sRGB 原色的 linear-sRGB；前级仍存在裁剪、插值与校正。PhotoStyle 内部在一维曲线之前还可以执行第 7.4 节的亮度相关 tone correction。

表来源可直接闭合：Java `P()` 把基础文件经 `F0.e()` 读作一维表；native `setPhotoStyleLUT` 将该参数复制到对象 `+0xe548` 的 vector；`setCnvParam` 将其复制到 `LUTTBL[287496]`，对应 shader 第 551 行起的逐通道一维插值。低/高色温三维表经插值进入 `LUTTBL[291592]`，随后进行三线性查表。原生 ISO/preLUT 生成的亮度校正表是另一块 `LUTTBL[289544]`，不应与基础文件的一维风格曲线混淆。

对提供的 **S9** 资产直接读取 float16 并按 shader 做一维线性插值，得到：

| 一维表输入 x | Standard | Natural | V-Log | 标准 sRGB 编码函数参考值 |
|---|---:|---:|---:|---:|
| 0 | 0 | 0 | 0.125000 | 0 |
| 0.01 | 0.054287 | 0.085881 | 0.404768 | 0.099853 |
| 0.18 | 0.638896 | 0.667217 | 0.703125 | 0.461356 |
| 0.5 | 0.897217 | 0.870605 | 0.810059 | 0.735357 |
| 1 | 1 | 1 | 0.878418 | 1 |

这些是**一维曲线的输入/输出**，并非完整 RAW 的灰卡曝光或最终像素值；尚未计入上游曝光/WB、可选 tone correction、三维表及后续调整。数值足以排除“所有风格先统一 linear→sRGB，再套 PhotoStyle 3D LUT”的解释。

已追踪 RAW 主链没有一个位于 PhotoStyle 之后、对所有风格固定执行的独立 `linearToSRGB()` 阶段。后端 `pow(x,1/fGamma)` 的 RAW 默认参数为 1；写入 8-bit Bitmap 是量化/打包，不能当作传递函数编码证据。普通 SDR 风格的显示显色由 PhotoStyle 曲线和颜色表连同后续曲线承担；V-Log 使用自己的风格编码。当前能定位的是这些非线性映射的执行位置，**不能进一步断言每个风格的最终输出都严格等于标准 sRGB OETF，或输出文件的色彩标签均正确**。

[一维表读取](/Users/zhoubinjia/Desktop/lumixlab/app/src/main/java/com/panasonic/jp/lumixlab/util/F0.java:32) · [一维表保存](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/VulkanDemosaic_setPhotoStyleLUT.asm:86) · [上传 shader 表](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/VulkanDemosaic_setCnvParam.asm:487) · [逐通道曲线及 3D 查表](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/shaders/cnvOnlyProcess.spvasm:551) · [数值复查脚本](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/inspect-photostyle-curves.cjs)

### 7.6 相机颜色校正与 CCM 的位置

若 CCM 特指从相机 RGB 转换到目标工作色域的线性 3×3 矩阵，**本次追踪的 RAW/PhotoStyle 主链没有确认一个独立的此类矩阵阶段**。已确认的机型、色温相关颜色映射是 PhotoStyle 的 33³ 三维表：位于一维风格曲线之后，饱和度/HSL/NR 之前。它在功能上承担相机基础颜色映射，但不能据此反推出资产制作时使用的 CCM 数值、目标原色或烘焙算法。

实际存在的跨通道处理应分别理解：

| 处理 | 位置 | 可确认的含义 |
|---|---|---|
| `colorspace==2` 的分段 RGB 差值校正 | PhotoStyle 一维曲线前 | 条件色彩空间修正；系数随差值符号变化，不是一个全局固定 CCM |
| PhotoStyle 33³ 颜色 LUT | 一维风格曲线后 | 按机型/风格选择、按色温插值的基础颜色映射 |
| `transformMatrix` | PhotoStyle 开关分支合流后 | 宿主 `MakeUpSaturation` 构造的饱和度矩阵 |
| `naturalSatMatrix` | `transformMatrix` 后 | 自然饱和度处理使用的矩阵 |

控制流证据：shader `%269` 合流块的 `%527 = OpPhi` 在 PhotoStyle 开启时接收 LUT 输出 `%526`，关闭时接收前级 `%265`；之后才检查 `bValidMat` 并对 `%527` 做三行 dot。因此矩阵并非“非 PhotoStyle 专属分支”。该点修正了早期笔记的分支解释。

[合流及矩阵执行](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/shaders/cnvOnlyProcess.spvasm:744) · [宿主生成饱和度矩阵](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/VulkanDemosaic_setCnvParam.asm:200) · [曲线前条件校正](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/shaders/cnvOnlyProcess.spvasm:480)

### 7.7 按 PhotonCamera 定义逆变换 V-Log 表

用 `TransferCurve.VLOG.logToLinear()` 的分段公式还原八个机型的 V-Log 一维表，确认它们分为三组逐字节一致的资产。x=0.05..0.90 范围内，逆变换主体近似 `k*x`：S9/S5M2/S1M2/S1M2E 的 k≈15.06975，GH7/G9M2/L10 的 k≈8.45439，S1RM2 的 k≈5.92519，相对 RMS 偏差分别约 0.256%、0.277%、0.170%。它们可近似理解为线性增益后进行 V-Log 编码，但还不是逐像素等价的建表公式。

原表从 x≈0.966 起进入末端相同值平台，逆变换后仍是平台。该函数不除以 `maxLinear=46.08`，还原值大于 1 是正常的。此次隔离一维表，未加入 3D LUT、上游曝光、WB、ISO 校正或原生额外裁剪。

[完整还原、曲线图和数据](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/vlog-restoration/README.md)

## 8. 后级色差处理与七个 NR pass

### 8.1 validYCC 的格式与闭环

此时的数据定义与去马赛克后的色差不同：

```text
bg = (G << 16) | (G-B+32768)
ra = G-R+32768
```

H/V 两步在 `bHSLBlur` 开启时可分别对 G 做三点滤波；色差降噪 level>0 时对偏置色差做可配置横纵 box filter。

宿主 descriptor 对应三块缓存 A/B/C：

| 条件 | H | V | CNR | 最终 |
|---|---|---|---|---|
| level=0 | A→B | B→A，恢复 RGB | 不执行 | A 为 RGB |
| level>0 | A→C | C→B，保留偏置色差 | 读 B 与原 A，覆写 A 为 RGB | A 为 RGB |

这不是没有旁路输入的简单串行滤波。CNR 从 H/V 处理后的 B 取中心与邻点，从 A 取原有色差，沿横纵 ±N、±2N、±3N 成对检查相似度；被接受样本组成估计 F，原始色差为 E，按 `((256-level)*E + level*F)>>8` 混合。恢复 RGB 时 G 来自 B，`B=G-Cb、R=G-Cr`。

因此进入后续 NR / 锐化 / backend 前已经恢复 RGB，不会把偏置色差误当 B/R。

[YCC 宿主](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/APLImageProcessor_execute_CnvYCCBlur.asm:1) · [CNR 输入与输出](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/shaders/yccCNRProcess.spvasm:298)

### 8.2 NR 是传统单帧空间算法

`setCnvParam → CalcNRParamAll → CalcNRParam` 根据机型及当前参数产生阈值、半径、核与强度。主机端存在机型专用 NR 曲线表；不能把 UI 的 `nrLevel` 直接当作一个 Gaussian sigma。

| pass | 输入/输出每点存储 | 确认的工作 |
|---|---:|---|
| nrFirst | 8→28 B | 解包 RGB；加权 L、半幅 B−G/R−G 色差、gammaL、高光指示 |
| nrSecond | 28→44 B | 构建亮度/色差 LPF 及高光相关统计，使用 Gaussian 核和可配置半径 |
| nrSecondHLPF | 44→40 B | 高光 LPF 相关处理与统计整理 |
| nrThird | 40→40 B | 成对邻域相似度/阈值加权，亮度和色差参数分开 |
| nrFourth | 40→48 B | 后续平滑，增加 DiffL / OrgDiffL 残差 |
| nrFifthPre | 48→48 B | 对 LPF L/Cb/Cr 统计进行横向 GaussianC |
| nrFifth | 48→8 B | 纵向 GaussianC、残差与局部统计融合、逆 gamma、RGB 重建 |

nrThird/Fourth 存在中心权重、亮/色阈值、Size、Step、RetryMax、SumFactMin 等参数。典型成对权重依赖两侧与中心的差异，而非对每个邻点统一做线性低通。nrFifth 使用类似 `G=L+gainCb*Cb+gainCr*Cr；B=G+2Cb；R=G+2Cr` 的重建，保留/处理局部残差信息。

宿主的 `execute_NROnly` 虽接收六个 shader 名称参数，实际使用前五个；`nrFifthPre` 在随后 `execute_NROnly2` 执行，再到 `nrFifth`。因此不能仅按 JNI 参数数目算 pass 数。

此 RAW NR 链没有时间帧、运动矢量或神经网络权重输入，也没有调用 ONNX 的证据。安装包存在 AI LUT 模型不代表 RAW 去马赛克或 NR 由该模型完成。

[NR 调度](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/APLImageProcessor_execute_NROnly.asm:1) · [末两步](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/APLImageProcessor_execute_NROnly2.asm:1) · [NR 参数](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/APLImageProcessor_CalcNRParamAll.asm:1)

## 9. 锐化不是一次简单 USM

`sharpPreProcess` 对每通道计算中心减去 20 个等权邻点均值。邻域是 5×5 去掉四角和中心：

```text
0 1 1 1 0
1 1 1 1 1
1 1 0 1 1
1 1 1 1 1
0 1 1 1 0
```

`sharpProcess` 再检查周围 3×3 残差，使用邻域第二极值处理孤立极值，做分段幅度变换，最终逐通道夹到 `0..4095`。阈值与 `pixelMaxVal` 有关：`P/512、11P/512、10P/512`，主增益由 `trunc(1024*sharpFactor)` 生成。小残差段还存在收缩行为，不能直接用 `rgb += amount*(rgb-blur)` 等价代替。

Java 会按预览 step 调整 sharpness/HSL blur 的相关输入。详细整数分段公式与符号处理见算法附录，保留了截断顺序。[高频残差](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/shaders/sharpPreProcess.spvasm:370) · [非线性锐化](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/shaders/sharpProcess.spvasm:306)

## 10. 后端曲线、创意 LUT 与颗粒

`backendProcess` 的顺序是：输入归一化 → 对比度/gamma → 色阶和加法亮度 → RGB 独立曲线 → 共用 toneL 曲线 → LUT1 → LUT2 → 颗粒 → 输出量化。

对比度以中心 c 做分段幂曲线，指数 p 为 `fContrast`：

```text
x≤c: y = c*(x/c)^p
x>c: y = 1-(1-c)*((1-x)/(1-c))^p
gamma: y = y^(1/fGamma)
levels: y = clamp(level_a*y + level_b + brightnessAdd, 0, 1)
```

RAW 配置 gamma 默认 1；普通 RGB 初始化为 2.2。这不代表 RAW 最后没有任何非线性编码，因为 PhotoStyle shaper/LUT 和曲线已经参与显色。不能用“最后统一套 2.2”来概括两种输入。

白曲线/阴影/高光通过 `getUseToneL` 合成为 4096 项表；RGB 通道曲线单独传入。**backend 的 toneL 是同一张一维表分别映射 R/G/B，不是先计算一个亮度再等比例缩放 RGB。**前面 PhotoStyle 的亮度相关 tone correction 又是另一种操作。

两级用户 LUT 各自来自 `EditInfoEntity` / `LutInfoEntity` 的本地资源与独立强度，默认可加载 identity cube/tone。GPU 使用八顶点三线性插值；两次是顺序混合：

```text
c1 = clamp((1-f1)*c0 + f1*LUT1(c0), 0, 1)
c2 = clamp((1-f2)*c1 + f2*LUT2(c1), 0, 1)
```

第二级输入已经过第一级，不能把两张 LUT 都作用于原图后再平均。这里也没有四面体插值的证据。

最后 `noise_L / noise_C` 用坐标和 `noise_seed` 产生 sin/fract 伪随机颗粒；彩色模式分别扰动 RGB，单色模式共享扰动。Java 来源是 `editGranular`，这明确是 **增添颗粒**，不是前面的 NR。

[后端公式](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/shaders/backendProcess.spvasm:345) · [双 LUT](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/shaders/backendProcess.spvasm:536) · [颗粒](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/shaders/backendProcess.spvasm:822)

## 11. 位深、缓存、分块与同步

| 边界 | 格式 / 精度 |
|---|---|
| CPU 解包结果 | uint16 Bayer，每点 2 B；容器 16 位不证明传感器有效位深为 16 |
| GPU Bayer 输入 / log Bayer | uint32，每点 4 B |
| demosaic pre | 4×uint32，16 B |
| demosaic first | uint32 + 2×int32，12 B |
| demosaic second / lens 缓存 | 2×uint32 packed BGR，8 B，有效通道 16 位 |
| cnvOnly 之后 | packed 存储，RGB 有效值 0..4095；YCC 分支含 32768 偏置 |
| NR 中间 | 28 / 44 / 40 / 48 B 等不同结构 |
| backend 输出 | 当前 Cnv2 调用传 outputMaxVal=255，随后整理为 RGBA8 |
| Java / 保存入口 | ARGB_8888 Bitmap，8 bit/channel |

所以准确描述是“分阶段整数/浮点混合计算”，而非“全程 FP16”“全程浮点”或“16 位无损直到 HEIF”。

原生保留完整解包 Bayer 和各尺寸的显影/镜头缓存。修改曝光、WB、LUT、NR 等时进入 Cnv2，复用前面缓存，不重新解析 RAW；色温改变还可能重新插值 PhotoStyle 表。缓存不能与所有后端中间值都永久有效混为一谈。

`DemosaicOnly` 对大图使用条带：目标主体约 **1,575,424 像素**（`0x180a00`），主体高度按宽度计算后对齐偶数行，并处理前后各 6 行上下文，相关 GPU 分配可见 `oneTimeLine+12`。它降低去马赛克阶段 GPU 工作集，但 CPU 完整 Bayer 和显影缓存依然占用整图内存。不能把条带阈值当成整个进程内存上限。

已确认 Vulkan command buffer、compute dispatch、阶段间 pipeline barrier、fence 等同步。解码 execute 末端还可见 QueueWaitIdle 和结果提取。Cnv2 使用 AHardwareBuffer 锁定/读取后把通道整理到 Bitmap；这不是从 GPU 到 UI 的完全零拷贝路径。RAW JNI 的全局互斥也意味着 Java 两份 executor 任务并不等于两个独立引擎同时显影。

[分块与 halo](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/VulkanDemosaic_DemosaicOnly.asm:1) · [GPU 同步](/Users/zhoubinjia/Projects/PhotonCamera/research/lumixlab_raw/evidence/native/APLImageProcessor_execute.asm:1)

## 12. UI 参数与保存行为

下表是当前 RAW UI 映射，实际 as-shot 初始化或机型规则可能覆盖名义默认值：

| 参数 | RAW 范围 / 默认 |
|---|---|
| 曝光 EV | -5..5 / 0 |
| 加法亮度 | -0.4..0.15 / 0 |
| 对比度 | 0.5..2.5 / 1 |
| 高光 | -1..0.1 / 0 |
| 阴影 | -0.5..0.75 / 0 |
| 色温 | 2000..9000，名义 5500；实际读 as-shot |
| Tint | -50..50 / 0；送入原生前除 1000、动态限幅 |
| 饱和度 / 自然饱和度 | 0..1.4 / 1；0..1.5 / 1 |
| 锐化 | 0..1；未编辑 RAW 进入相应 UI 时设 0.5 |
| NR | 0..150；未编辑 RAW 进入相应 UI 时设 50，滑块上半段非线性映射 |
| 颗粒 | 0..0.7 / 0 |
| 白场 | 左端 1.5，默认 1，右端 0.7 |
| 黑场 | 左端 0.1，默认 0，右端 -0.1 |

这些 RAW 初始锐化/NR 是 UI 行为，不能说原生每次无条件加 0.5/50。历史字段 `EditGaussianBlur` 实际映射 `nrLevel`，界面文案为 noise_removal，也不等于只做 Gaussian blur。

[RAW UI 初始化](/Users/zhoubinjia/Desktop/lumixlab/app/src/main/java/I5/w.java:859)

预览的 `J()` 处理 RAW 方向及屏幕缩放；step1 预览仍可能缩小，任一边超过 6144 时可缩到 4096。**step1 不等于最后交给 UI 的 Bitmap 永远是原始尺寸。**

保存时 `H5/RunnableC2315a` 先设全尺寸标志，再调用 `R(-1,-1,1)`，随后裁剪/编辑变换、边框和输出尺寸处理，保存到 `DCIM/LUMIXLab`。

保存调用中虽然出现 `Bitmap.CompressFormat.PNG` 枚举，这个分支在下层被映射为 HEIF，扩展名 `.hif`；不能据此报告 RAW 支持 PNG 导出。JPEG 走 `Bitmap.compress(JPEG,quality)`；HEIF 走 Android HEIF writer 的 Bitmap 输入。

**已确认的是 8-bit Bitmap 保存入口。**不能因 `.hif` 扩展名、HLG 风格或库中存在 nativeCnv2to16 接口，就认定当前 RAW 保存为 10-bit HDR、保留场景线性数据，或写入了正确 HDR metadata。实际输出 ICC、nclx、bit depth 与 EXIF 回写完整性需用成片验证。

[全尺寸保存请求](/Users/zhoubinjia/Desktop/lumixlab/app/src/main/java/H5/RunnableC2315a.java:163) · [HEIF 映射](/Users/zhoubinjia/Desktop/lumixlab/app/src/main/java/com/panasonic/jp/lumixlab/util/C1517b0.java:2822) · [HEIF 编码入口](/Users/zhoubinjia/Desktop/lumixlab/app/src/main/java/N6/C2884e.java:52)

## 13. 错误、取消与不能过度推断的部分

取消回调从 Java AtomicBoolean 读取，JNI 在解包条带及显影阶段检查；它是阶段/条带粒度取消，不能当作任意 GPU 指令立即停止。退出会请求取消、释放原生图像缓存、清 Java ready 状态与 fileKeyId。

`ImageFilter.a/b/c/d` 的 Java 包装丢弃 native 返回 int；unpack 则通过 int[5] 显式判断错误。静态机器码还显示 getRaw 没传播底层提取返回值，以及 getRaw 后某个取消分支绕过临时 uint32 缓冲释放。这些是值得关注的静态路径，**没有用设备证明其触发频率、用户表现或长期内存影响**。

JADX 对大型方法有错误 switch、重复块等警告，不依据反编译中的空指针伪码或可疑循环直接断言产品缺陷。[JNI 门面](/Users/zhoubinjia/Desktop/lumixlab/app/src/main/java/com/techor/techorfilter/ImageFilter.java:31)

| 问题 | 本次结论 |
|---|---|
| 是否真正 RAW 显影，而不是只编辑内嵌 JPEG？ | 主链明确解压 Bayer 并执行去马赛克；画廊缩略图可能另用 JPEG，不改变此结论 |
| 是否 AI 去马赛克/AI RAW NR？ | 所追踪主链是显式计算 shader；未发现 ONNX 在该链执行 |
| 是否多帧融合？ | 该链只消费一张 RAW，没有多帧配准/融合输入 |
| 是否有独立坏点、去条纹、高光重建？ | 已追踪主链未建立这些独立阶段的执行证据；不能由库中泛用符号或高光滑块推断 |
| 是否标准 DNG/LibRaw 流程？ | 活跃解包器是 Panasonic 专用 CF2/EXIF 路径；不能由其他 TIFF/DNG 支持符号泛化 |
| 是否有完整输出色彩管理？ | 读到颜色空间分支，但最终 ICC/显示管理未通过输出文件验证 |
| 是否有 CPU 自动回退？ | 存在 CPU/测试符号，但未确认主链的自动回退调度 |
| 是否已可逐像素复刻？ | 否；还需完整 CF2/标定表分支、边界/截断、参考 RAW 与成片比对 |

## 14. 对 PhotonCamera 最直接的技术启示

可以参考的结构是把“RAW 解包/去马赛克/镜头缓存”和“交互调色/空间处理/输出编码”明确分开，并为每个中间格式声明有效位深、通道顺序、是否 log、是否偏置色差。LumixLab 中同叫 Y/Cb/Cr 的结构在不同阶段含义和符号都不同，照搬名称很容易接错。

PhotoStyle 应按机型标定、色温插值、ISO/preLUT、基础显色理解，用户创意 LUT 则位于后端；把所有东西揉成最后一张 LUT 无法自然保持 WB、曝光和空间处理的原有关系。

快速预览的 CFA 抽样、整数阶段量化、条带 halo、空间参数随缩放变化，都应纳入“预览与成片一致性”的设计与验证。8-bit 输出接口也需要与内部高位深明确区分。

这些是从当前样本得到的架构与行为依据，不是已验证能直接移植到手机传感器的算法参数。本次只新增分析材料与证据，未修改 PhotonCamera 渲染代码。
