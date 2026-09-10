# Lumix S9 PhotoStyle 渲染引擎

## 范围与标定来源

固定读取 LumixLab 的 S9 PSL1 资产，支持 16 种 PhotoStyle，默认 Standard。
继续使用现有黑白电平归一、去马赛克、降噪、PGTM、编辑和导出；界面保留 S9 PhotoStyle 选择。
“匹配相机色彩”默认开启；关闭后使用原版处理入口，白平衡源相机 RGB 直接进入 PhotoStyle。
该模式沿用目标矩阵与其逆为共享测光/PGTM 提供的可逆桥接。开关与 HNCS 独立保存，
切换引擎、保存预设、重新编辑照片和导出均保留各自选择。

目标传感器标定只读取 `app/src/main/assets/dcp/Panasonic DC-S9 Adobe Standard.dcp`
中的 ColorMatrix1/2 和 A/D65 参考光源。明确排除 ForwardMatrix、HueSatMap、LookTable、
ToneCurve 与 BaselineExposureOffset；DCP 仅作为 ColorMatrix 数据来源。
DCP SHA-256：`a4ca993432ff857713befdf179b09952c348a7085086e15dcd1aa2253a2e0fa9`。
ColorMatrix 是 Adobe 提供的传感器标定，不宣称它就是松下原厂 PhotoStyle CCM。

## 空间与矩阵方向

源相机到共享 ProPhoto 的矩阵为 `M_source`，包含当前白平衡。源标定优先使用
ColorMatrix，并保留 AnalogBalance/CameraCalibration；仅 ForwardMatrix 的源 RAW
沿用有独立 AsShotWhiteXY 才启用的规则。Camera2 使用固定物理相机 ColorMatrix，
不使用每帧 CaptureResult 的创意 CCM。

目标矩阵 `B_target` 把白平衡后的 S9 RGB 映射为 ProPhoto。它由当前照片白点下插值的
ColorMatrix、目标 CameraWhite、D50 色适应及 XYZ→ProPhoto 组成；反向矩阵直接进入
现有 `uProfileToEngineTransform`：

`sensor RGB → M_source → linear ProPhoto → 可选 PGTM → inverse(B_target) → S9 WB RGB → PhotoStyle`。

ColorMatrix 的方向是 XYZ→camera RGB，不能直接当 camera→XYZ 使用。复用 DNG
color-spec 的无 ForwardMatrix 路径完成白平衡及色适应；先按倒色温插值 ColorMatrix，
再计算当前白点的矩阵逆，不混合两个预先求逆的端点。
算法依据：[Adobe DNG SDK color-spec](https://android.googlesource.com/platform/external/dng_sdk/+/refs/heads/android14-prebuilt-test/source/dng_color_spec.cpp)。

没有可用内嵌源标定的导入 RAW，保留“源 RGB 直接解释为 S9 RGB”的约定。
native 只导出 `W = diag(WB)`，共享前置矩阵为 `B_target × W`，引擎入口仍为
`inverse(B_target)`。这样 ML AE、HDRNet 与 PGTM 消费真正的 ProPhoto，
且 `inverse(B_target) × B_target × W = W`。白平衡只施加一次，
`cameraCalibration` 仍为 null，不使用 LibRaw 内置矩阵补充源标定。

## 矩阵计算与资源

等效 RGB 只需在渲染计划建立时计算 3×3 矩阵，逐像素沿用共享 pass 的矩阵乘法。
已移除 native 非线性求逆、两张 65³ 标定 LUT、持久化/内存 LUT 缓存、GPU 标定纹理、
四面体采样和输入 shaper。每组减少约 6.29 MiB 标定数据以及每像素八次标定纹理读取。
矩阵自然支持负值和 HDR 超范围值，不需要为有限查表域建立延伸规则。
PhotoStyle 自身的 1D/3D 表仍按原始算法执行。

Lumix 枚举的 `workingColorSpace=SRGB` 描述输出调整接口，不描述 PhotoStyle 的入口或 LUT 坐标空间。

## PhotoStyle 和输出

1. shader 接收共享矩阵已转换好的 S9 白平衡线性 RGB，随后沿用宿主的标准曝光尺度。启动预热只编译 Lumix shader。
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
  `calibration=ColorMatrix` 与 `target` 记录目标矩阵的来源。

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

- JVM 回归覆盖 S9 双光源和 X2D II 100C 单 ColorMatrix1：中性轴、源目标同标定往返、PGTM 标量增益、负值与 HDR 超范围通道。
- 用带有 ForwardMatrix/HueSatMap/LookTable 的配置验证目标计算只采用 ColorMatrix；源目标同标定时组合结果等于一次白平衡。
- 原 65³ 非线性 LUT 的求逆/插值误差统计已不适用于当前矩阵路径。

- S9 全部 48 个 PSL1 文件的头部、维度、存储类型和有效载荷长度一致；运行时检查有限值。
- 65,536 个代码值的 sRGB 解码/编码往返最大误差 `2.23e-16`；计入一次 RGBA16F 量化，最大误差约 `0.041 / 255`，不会造成二次编码增亮。
- 新 PhotoStyle GLSL 已用 NDK glslc 做静态编译；这不能替代目标设备的 GLES compile/link/draw 验证。
- 设置持久化覆盖偏好、预设、图库元数据、预览和导出；Room 增加 39→40 迁移。
