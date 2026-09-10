# Lumix S9 PhotoStyle 渲染引擎

## 范围与标定来源

固定读取 LumixLab 的 S9 PSL1 资产，支持 16 种 PhotoStyle，默认 Standard。
这是接入 PhotonCamera RAW 前端的颜色引擎：继续使用现有黑白电平归一、去马赛克、降噪、PGTM、编辑和导出。
Lumix 按源内嵌标定自动决定是否执行等效 Camera RGB 转换；没有可用源标定时，白平衡后的相机 RGB 直接进入 PhotoStyle。界面保留 S9 PhotoStyle 选择。内部设置值统一为 `Lumix`，不保留此前两种模式的名称兼容。

S9 标定直接读取项目已有的 `app/src/main/assets/dcp/Panasonic DC-S9 Adobe Standard.dcp`，不是松下原厂 CCM。
使用 ColorMatrix1/2、ForwardMatrix1/2、A/D65 光源、两组 90×30×1 HueSatMap，以及 36×8×16 LookTable。两种表的编码均为 linear；LookTable 的 ValueScale 全为 1，但色相和饱和度修正不可省略。不引入 Adobe ToneCurve；成像曲线来自 Lumix PhotoStyle。
不再维护 calibration.json 或单独导出的 HueSatMap 运行时资产。DCP SHA-256：`a4ca993432ff857713befdf179b09952c348a7085086e15dcd1aa2253a2e0fa9`。
这里反解的是 Adobe S9 配置的颜色映射，不能声称从 Lumix LUT 唯一分离了松下原厂 CCM。

## 空间与矩阵方向

共享线性 pass 输出 `p = M_source_photo × r`，其中 `r` 是归一化线性源相机 RGB，`M_source_photo` 含当前白平衡与工作空间变换，可选 PGTM 在 ProPhoto 中计算。
Lumix 通过 `diag(1 / sourceCameraWhite) × inverse(M_source_photo) × p` 恢复白平衡后的源相机 RGB。

没有可用内嵌源标定的导入 RAW，native 只导出 `W = diag(WB)`，它的输出不能直接标成 ProPhoto。
这条旁路沿用“源 RGB 直接解释为 S9 RGB”的约定，以项目现有 S9 DCP 的 CM/FM 和当前白点定义
`B = S9 WB Camera RGB → linear ProPhoto`。共享前置矩阵为 `B × W`，PhotoStyle 入口矩阵为 `inverse(B)`：

`归一化 sensor RGB → W → S9 WB Camera RGB → B → linear ProPhoto → 可选 PGTM → inverse(B) → S9 WB Camera RGB → PhotoStyle`。

ML AE 的 `ProPhoto → linear sRGB`、HDRNet 输入及 PGTM 的生成/采样现在使用真正的工作空间值。
关闭 PGTM 时，`inverse(B) × B × W = W`；开启 PGTM 时，其标量增益作用于工作空间，再返回相机域。
该空间往返不夹掉负值或超范围值，白平衡只施加一次。它不改变 `cameraCalibration=null`，不生成等效 LUT，
不使用 LibRaw 内置矩阵，也不施加 S9 DCP 的 HueSatMap、LookTable 或 ToneCurve；这是线性坐标变换，
不是一次 Adobe DCP 渲染。最终颜色仍由原版 PhotoStyle 产生。HNCS 的同类旁路使用其既有目标 DCP 遵守相同契约。

对每个镜头的固定标定预生成两个端点转换，分别以 A、D65 为参考白点：

`源 WB Camera RGB → 源 CM/FM 构建的 Camera-to-ProPhoto → 逆 S9 LookTable → 逆 S9 HueSatMap → 逆 S9 WB Camera-to-ProPhoto → S9 WB Camera RGB`。

源矩阵取 Camera2 静态 ColorMatrix1/2 和参考光源，或 RAW 内嵌的 ColorMatrix/ForwardMatrix/CameraCalibration/AnalogBalance。不再用 LibRaw 的 cam_xyz/rgb_cam 作为源标定或这条路径的前置颜色变换。仅 FM 且有独立 AsShotWhiteXY 时，在 WB 参考相机 RGB 域烘焙；仅 FM 但缺少独立白点时按用户要求保留旁路。
S9 Camera-to-ProPhoto 使用既有 DNG 颜色模型，结合 ColorMatrix、ForwardMatrix、CameraWhite 和 D50 PCS 白适应。所有矩阵输入输出均是线性值；HueSatMap 与 LookTable 在 ProPhoto HSV 中求逆，必须在逆 S9 矩阵之前、按正向相反的顺序执行。

## 预生成与持久化

- native OpenMP 并行生成两张 65³ RGB float32 LUT，红色坐标变化最快。两表合计约 6.29 MiB。
- 线性相机输入域为 [0,16]；[0,1] 占前 48 个区间，按 `u = 0.75x` 线性分布；[1,16] 占后 16 个区间，按 `u = 0.75 + 0.25 log(x)/log(16)` 分布。这个 shaper 仅分配 LUT 采样精度，不是图像 sRGB 编码。
- GPU 对两表分别做四面体插值，每张表读取四个顶点，再按照片白点的倒数色温权重混合。权重由烘焙端点的精确 xy 对应色温定义，端点会准确选中自身；与 PhotoStyle 原版 3000–5000 K 的低/高温权重独立。
- 两端点逆变换的插值是此处采用的渲染模型，与“先插值正向 DCP 再求逆”不严格相等。运行时不再逐照片反解 DCP。
- 缓存路径为应用 filesDir/equivalent_camera_calibration_luts。键包含源 CM/FM/参考光源/校准参数、S9 DCP 全内容 SHA、算法版本和采样域。修改曝光或白平衡不会生成新缓存；标定或算法变化才会生成。
- 磁盘格式校验版本、尺寸、精确长度和 payload SHA，原子写入；损坏会记录日志并重建。内存保留最近四组，GPU 纹理按键复用，切换风格不重新上传标定表。

逆映射求解不包含 DCP 的破坏性输出裁剪，不能恢复已经剪掉的信息。表坐标在定义域边界取值，修正因子允许向高动态范围和超色域延伸；超出 Camera RGB=16 的部分使用齐次延伸。局部多解区域选择一个通过正向残差检查的输入，不宣称唯一反演。

Lumix 枚举的 `workingColorSpace=SRGB` 描述输出调整接口；**不描述 PhotoStyle 的入口或 LUT 坐标空间**。

## PhotoStyle 和输出

1. shader 接收白平衡后的线性源相机 RGB，有可用源标定时采样上述两张标定 LUT；无标定时直接跳过查表，随后沿用宿主的标准曝光尺度。启动预热只编译 Lumix shader。
2. CineLike D2/V2 使用 S9 Standard→Cine 的 `−7/6 EV`，V-Log 使用 `−8/3 EV`，其他风格为零。
3. 每通道查询原始 2048 点一维曲线，线性插值。
4. 曲线输出作为非线性查表坐标；对 33³ RGB 表做八角点三线性插值，红色坐标变化最快。不能把这一层坐标称为统一的 sRGB 编码。
5. 低/高色温表优先使用原始 RW2 的 0x011c 校正坐标，缺失时使用原版默认折线：3000 K→256，5000 K→512，6500 K→618，7500 K→725。double 坐标先夹到 uint16 范围并截为整数，再将高温权重 `(q-256)/256` 限制到 `[0,1]`。普通 TIFF/DNG 的同号 PlanarConfiguration 标签不参与此逻辑。
6. 普通风格限制为 `[0,1]`；V-Log 依 ISO 使用原版 3300/3400/3496/3596 的 12-bit 上限；输出按 4095 量化。
7. **不在 PhotoStyle 后直接再做 sRGB OETF**。先解码这些输出代码值，交给现有线性调整接口，最后由 RawSrgbPass 编码一次。中性设置下解码/编码抵消，保留 PhotoStyle 的输出代码值。

V-Log 选择保留平坦的代码值显示；这里的 sRGB 解码/编码是宿主接口的运输约定，不意味着 V-Log 是 sRGB 传递函数，也没有把其原色转换为 sRGB。

## 导入 RAW 的 HDRNet 与日志

所有新导入 RAW（包括 RW2、DNG 及其他 LibRaw 格式）的 HDRNet PGTM 默认关闭，不继承拍摄全局的开启状态。
RAW 编辑面板的“动态范围优化”开关显式开启后才生成或复用 Photon PGTM，关闭后不再使用它；开关按照片持久化。
用户选择的非 Photon 原生 DNG profile 所含 PGTM 仍遵守其 profile 选择策略，不冒充 HDRNet。

- `RAW_CAMERA_WORKING_SPACE`：打印共享空间、实际前置矩阵和返回 Camera RGB 的矩阵，以及旁路状态。
- `RAW_PHOTON_HDR`：打印 requested、regenerate 与 activeMap。关闭且没有选择原生 PGTM 时应为 `false/false/none`。
- Lumix 日志的 `photoStyleCoordinateSource`、`photoStyleCoordinate`、`photoStyleHighWeight` 专指 PhotoStyle 原版双表混合；
  `calibrationFirstWeight` 则专指等效转换的端点 LUT，旁路时无效。

重新核对原版 `libtechorfilter.so` 的 `GetCTempInfoForColorCorrection`（0x49f9e0）与
`GetPhotStyleCorrectLUT`（0x2d8558）：RAW 坐标来自 IFD0 的 0x011c、SHORT、count=1，
表内混合为 `(low × (512-q) + high × (q-256)) / 256`，两侧使用端点。
生产读取代码对提供的 `5174318624.rw2` 得到 q=502，即 low=0.0390625、high=0.9609375。
原版预混 LUT 节点、当前 shader 混合两次三线性采样，在数学上等价；不宣称 GPU 浮点舍入逐位一致。
文件内部命名为 `original.dng` 不影响按 RW2 header magic=85 读取坐标。

## 与原生 RAW 的边界

当前从宿主的归一化、标准曝光相机 RGB 接入。LumixLab 的 packed RAW `pixelMaxVal/defaultGain`、原始拍摄 PhotoStyle 家族、绝对白平衡尺度、IslZWBCalc 的完整 WB2Kelvin 模型及 ISO tone correction 没有伪装成已移植参数。其 `colorspace==2` 的分段 RGB 差分校正也没有启用；该分支并不是一个标准的 AdobeRGB↔sRGB 矩阵。
需要进行原厂像素对照时，必须先固定这些前端条件以及 PGTM/降噪/锐化，不能用额外的亮度或颜色补偿掩盖差异。

## 验证

- 实际 S9 DCP、Kotlin DNG 颜色模型、S9 ColorMatrix-only 源标定下，两张 65³ 生产 LUT 共 549,250 个节点全部生成成功，无非有限值或逆映射失败。
- 每个端点 100,000 个随机 [0,1]³ 源 Camera RGB，分段网格 + 四面体对比直接 native 求逆：相机 RGB 最大通道误差均值 0.000773/0.000848，P95 0.004367/0.004726，最大 0.028764/0.031985。这些数据只覆盖此源标定和采样域，不能推广为所有手机镜头误差上限。
- 接原版 Standard 后，最终 12-bit 代码值最大通道误差均值为 6.15/6.74，P95 为 33/35，最大为 714/1122（范围 0–4095）。极饱和、接近通道裁剪边界的输入会放大 LUT 近似误差，不能据平均误差声称逐像素等同直接求逆。
- 原均匀 log 网格 + 三线性的 Standard 均值为 13.68/15.59；采用上述网格和四面体降低整体误差，标定纹理读取从每像素 16 次减少到 8 次，持久化大小不变。

- S9 全部 48 个 PSL1 文件的头部、维度、存储类型和有效载荷长度一致；运行时检查有限值。
- 实际 Kotlin `DngSdkColorSpec` 在 A、D50、D65 和中间白点的 S9 矩阵往返最大误差 `1.79e-7`；中性轴偏差 `2.61e-4`，来自源矩阵精度及白点常数。
- 65,536 个代码值的 sRGB 解码/编码往返最大误差 `2.23e-16`；计入一次 RGBA16F 量化，最大误差约 `0.041 / 255`，不会造成二次编码增亮。
- 新 PhotoStyle GLSL 已用 NDK glslc 做静态编译；这不能替代目标设备的 GLES compile/link/draw 验证。
- 设置持久化覆盖偏好、预设、图库元数据、预览和导出；Room 增加 39→40 迁移。
