# Fotufilm 渲染引擎移植

上游：<https://github.com/DhaliwalX/fotufilm-engine>，提交 `2d07c48c14199be24972db760a7631dc95f74012`。
引擎代码 Apache-2.0（`app/src/main/cpp/fotufilm/LICENSE`、`NOTICE`），胶片 profile 为 CC BY-SA 4.0
（`app/src/main/assets/fotufilm/license/`）。

## 移植边界

Fotufilm 由两部分组成，按原结构一一移植，不引入 LUT 烘焙或近似替代：

| 上游 | 职责 | 本项目 |
| --- | --- | --- |
| `Sources/FotufilmCore`（Swift） | 解析胶片数据；光谱模型生成 exposure / filmOutput / paperOutput 三张 33³ 光谱表；求解打印照明、配光、扫描接收器；生成打包配置（`FOTUFILM_FRAME_CONFIGURATION_COUNT` 个 float）、feature mask、spatial support；整帧测光 | C++，`app/src/main/cpp/fotufilm/core/`，命名空间 `fotufilm` |
| `Sources/FotufilmHalide`（Halide） | 逐像素与空间阶段：曝光、镜头扩散、glare、MTF、halation、耦合抑制与扩散、邻接效应、显影、颗粒、印放 MTF、相纸、输出 | GLSL ES，`app/src/main/java/com/hinnka/mycamera/raw/fotufilm/` |

光谱表是上游运行时由光谱数据现场计算的加速结构（`SpectralRuntime.tables`），本项目同样在端上计算，不离线生成。

### 不移植的上游功能

实验性 layered transport、镜头滤镜叠加与镜头校正、扫描负片导入、三色分色扫描、加密胶片包、视频、相框、几何裁切。
对应配置槽位按上游“功能关闭”时的取值填写。

## C++ 约定（core）

- C++17，命名空间 `fotufilm`，一份 Swift 源文件对应一组同名 `.h/.cpp`（如 `FilmStock.swift` → `FilmStock.h/.cpp`），便于逐文件对照上游。
- 数值语义与 Swift 一致：Swift `Float` → `float`，`Double` → `double`；不改变运算顺序与括号；
  `pow/exp/exp2/log/log10/sqrt` 用 `float` 重载（`std::pow(float, float)` 等）；Swift 的 `min/max/clamp` 按原参数顺序实现。
- `SIMD2/3/4<Float>` → `Float2/Float3/Float4`（`core/Simd.h`，逐分量运算符与下标访问）。
- `[Float]` → `std::vector<float>`，`[[Float]]` → `std::vector<std::vector<float>>`，Optional → `std::optional`。
- 带原始值的 Swift enum → `enum class` + 与上游一致的字符串/整数转换函数。
- 上游的静态缓存（如 `SpectralRuntime` 表缓存）→ 带互斥的有界缓存，键与上游 `cacheIdentifier` 一致。
- 断言/前置条件失败抛 `std::runtime_error`，JNI 层转换为 Java 异常。
- 资源（胶片 JSON、`rec2020-reflectance-prior.coeff`）由 Kotlin 从 assets 读入后以字节传入 core，core 不访问文件系统。
- 注释只保留理解数值所必需的上游说明。

## GLES 约定（渲染图）

- 以 `Sources/FotufilmHalide/Graph/Frame.h` 的 develop / print 图为准，`Stages/*.h` 的表达式逐个移植为 GLSL 函数。
- 配置数组以浮点纹理上传，按 `FotufilmConfigLayout.h` 的槽位读取；三张光谱表以 33³ `RGBA32F` 3D 纹理上传，采样方式与 Halide `Sampling.h` 一致。
- 随机数（`Stages/Random.h` 的 PCG 与解析式 Poisson/正态抽样）用 `uint` 运算逐位移植；以绝对帧坐标取样，保证分块无缝。
- 空间阶段的高斯、抽稀网格高斯、halation 盒式金字塔、整帧均值按上游 GPU 后端（`Pipeline/GpuBackend.h`、`Schedule/Gpu.h`）的语义实现。
- 分块：整帧低分辨率场（halation 场、glare 均值、tone grid）先算，再按 `spatialSupport` 扩展 apron 逐块显影，与上游 Metal 路径（`FotufilmHalideMetal.cpp` 的 halation fields / light grid）结构一致。
- 遵守 `docs/gles-driver-compatibility.md`。

## App 集成

- `RawRenderingEngine.Fotufilm`：在 tone 阶段以线性 Rec.2020 场景光进入 Fotufilm，输出 Display P3 线性显示光，再经 `uOutputTransform` 回到工作空间，之后的管线不变。
- 选项（胶片、画幅、输出介质、观察光源、配光、扫描转换、颗粒、halation、耦合、推拉冲、漂白旁路、过期、长曝光等）保存在偏好、预设与照片元数据中，在 RAW 编辑面板中调节。

### Tone 阶段（`raw/FotufilmToneStage.kt`）

1. 共享的引擎输入 shader（身份引擎）输出线性 Rec.2020 场景光（PGTM、曝光、profile→BT.2020）。
2. 虚拟整帧 = 全图在 tone 输入采样密度下的尺寸（降采样输入即更小的帧，颗粒与毫米级结构保持胶片上的尺寸）；原点为输入在帧中的绝对位置。
3. `FotufilmRenderer` 按子块渲染：子块（含 apron）边长不超过 2048，apron = 帧的 `spatialSupport`，结果与整帧渲染一致。
4. 打印的 Display P3 线性光经 `outputTransform · (P3→BT.2020)` 写回 tone 输出。

整帧测光（Auto Levels、Lab Scan、局部影调、veiling glare）：
- 整帧输入：GPU 盒式降采样到长边 1024，读回后交给 native `meter`。
- 处理器分块：`renderRawTiles` 先逐块开发到 tone 输入并累加测光 cell（`FotufilmMeteringAccumulator`），得到裁切区域的整帧测光图，再以此构建所有块共用的帧。
- 分块 apron 取 `max(112, spatialSupport)`，核心边长相应缩小以保持单块工作区上限。

Fotufilm 交付 SDR 印放，处理器对其不生成 HDR 参考。

### 取景器（`lut/FotufilmPreviewBake.kt`）

取景器沿用 App 对所有引擎的逐点 65³ 图集。Fotufilm 的逐点响应即其平坦区域响应：清除读取邻域的阶段（MTF、halation、glare、镜头扩散、耦合扩散、邻接）与颗粒后，用同一渲染图开发图集格点。拍摄与编辑渲染完整渲染图。

### 控件（`ui/components/FotufilmControls.kt`）

由 native catalogue（上游 Android surface 控件目录）驱动；光线/平衡/色彩/分级控件由 RAW 管线自身提供，不重复显示（Camera Preflash 除外）。换胶片时移除新胶片不接受的值。文本见 `FotufilmStringRes.kt` 与各语言 `strings.xml` 的 Fotufilm 段（由 `scripts/fotufilm_strings.py` 生成，修改文本请改脚本后重新运行）。

增感／减感（`push`）使用 catalogue 中该胶片的 `scale.stops` 生成离散档位按钮（含正常显影 `0`），不允许连续值；每档对应完整的显影曲线。换胶片时也校验档位是否存在，不能只判断最小／最大值。其他滑块的 `stops`（如过期年数）仅为参考刻度，不限制连续调节。
