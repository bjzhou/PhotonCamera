# DCP → DCP HALD / LUT 工具

桌面命令行工具，固定 D50，用源 DCP 的逆变换接目标 DCP 的正向变换。
输入是 **sRGB 编码的 HALD PNG**；输出为 16 位 sRGB HALD PNG、浮点 `.cube`、JSON 诊断报告。

## 使用

需要 macOS / Linux、C++17 编译器、CMake、zlib 开发库和 `uv`。macOS 可使用 Xcode Command Line Tools。
在仓库根目录执行，Python 依赖由 `uv` 管理；第一次转换会自动编译桌面 SDK 动态库到本目录的 `build/`。
这些命令应按仓库要求在沙箱外运行，不需要 Android Gradle 构建或安装 App。

生成恒等 HALD（已有 HALD 可跳过）：

```bash
uv run tools/dcp_lut/dcp_lut.py --language zh identity \
  --level 8 --output /tmp/identity-hald.png
```

转换示例：

```bash
uv run tools/dcp_lut/dcp_lut.py --language zh convert \
  --source "app/src/main/assets/dcp/Google Pixel 10 Pro XL Wide Camera Adobe Standard.dcp" \
  --target "app/src/main/assets/dcp/RICOH GR IV Camera Positive Film.dcp" \
  --hald /tmp/identity-hald.png \
  --output-prefix /tmp/pixel-to-ricoh-positive
```

生成：

- `/tmp/pixel-to-ricoh-positive.hald.png`：16 位 RGB PNG，写入 sRGB 色彩标记。
- `/tmp/pixel-to-ricoh-positive.cube`：RGB 浮点数据，红色索引变化最快，精度不经过 PNG 量化。
- `/tmp/pixel-to-ricoh-positive.json`：输入文件 SHA-256、D50 矩阵、曲线来源、各阶段逆解残差、色域裁切计数。

查看某个 DCP 的 D50 参数：

```bash
uv run tools/dcp_lut/dcp_lut.py --language zh inspect \
  "app/src/main/assets/dcp/Leica M8 Camera Standard.dcp"
```

`--language en` / `--language zh` 放在子命令前。用户帮助和状态消息集中在 `messages.json`；底层 SDK / 文件系统错误保留原始诊断。
默认保护已有输出，可用 `--overwrite` 明确替换；输出始终不能与任一输入路径相同。

## 色彩处理约定

参考 App 的 `RawDemosaicProcessor.kt`、`AdobeCurveToneAlgorithm.kt`、`DcpHueSatMapGl.kt`，
并直接调用仓库内的 Adobe DNG SDK 1.7.1，而不是从零实现 DCP 标签解析或近似插值。

正向链：

```text
白平衡归一化 camera RGB
→ D50 camera-to-PCS → 线性 ProPhoto RGB D50
→ HueSatMap
→ ProfileBaselineExposureOffset 的 exposure ramp
→ LookTable
→ Adobe RGB tone curve（内置 spline，缺省 ACR3；包含负曝光 tone）
→ PCS D50 → 线性 sRGB D65
→ sRGB 编码
```

工具实际组合的链：

```text
HALD sRGB
→ 解 sRGB
→ 线性 sRGB D65 → PCS D50 → 线性 ProPhoto RGB D50
→ 逆 Adobe RGB tone
→ 逆 LookTable
→ 逆 exposure ramp
→ 逆 HueSatMap
→ 逆源 D50 色彩矩阵
→ 目标 D50 色彩矩阵
→ 目标 HueSatMap → exposure ramp → LookTable → Adobe RGB tone
→ 线性 sRGB D65 → sRGB 编码
→ 新 HALD + CUBE
```

严格逆序必须先逆 LookTable，再逆 HueSatMap。曲线不能逐通道独立应用：Adobe 对最大/最小通道应用曲线，
并按原来的相对位置重建中间通道；逆曲线使用同一 RGB 规则。

- D50 的 `SetWhiteXY`、ColorMatrix / ForwardMatrix 选择与双/三光源插值由 SDK 完成。
- 色域转换使用 SDK 的 ProPhoto 和 sRGB PCS 矩阵，包含 D50 ↔ D65 色适应。DCP 工作空间始终是**线性 ProPhoto**，不应用 ProPhoto gamma 1.8。
- 两种 HSV 表直接调用 SDK `RefBaselineHueSatMap`，包括周期色相插值、二维半/三维表差异和 `Profile*Encoding` 的 V 轴 sRGB 编解码。
- 内置曲线调用 SDK spline solver，再构建 SDK 默认 4096 区间的一维表；缺省使用 SDK ACR3。这里遵循 SDK 曲线精度，不采用 App 当前 `DcpToneCurve.toLut()` 的 256 点线性近似。
- 保留 DCP 的 `ProfileBaselineExposureOffset`：正 EV 用 exposure ramp，负 EV 用 SDK exposure tone。
- HALD 没有 RAW 场景元数据。DNG 图像自身的 BaselineExposure、曝光补偿、Shadows、黑电平都设为 0；不虚构 `DefaultBlackRender=Auto` 所需的图像黑场，不运行 PGTM、局部色调映射或其他图像相关流程。
- 两个 DCP 通过**白平衡归一化 camera RGB**连接：矩阵为 `ProPhotoFromPCS × CameraToPCS × diag(CameraWhite)`。
  不同机型的传感器响应不是同一物理色彩空间，这一连接定义的是用户指定的 DCP 风格组合，不能恢复另一台相机的真实 RAW 响应。
  逆矩阵产生的虚拟 camera RGB 交给 SDK `RefBaselineABCtoRGB`：保留其负值，
  按 camera white 截断上界（归一化坐标为 1），矩阵后截断 ProPhoto 到 `[0,1]`，包括 HDR profile。
  报告记录越界及裁切数量；源矩阵回算失败同样会触发严格模式拒绝导出。
- HDR DCP 的表使用 SDK overrange 规则，tone 在 overrange 编解码域操作。`--hdr-domain-max` 显式限定源 HDR 表逆解搜索范围，默认 16；输出仍是 SDR sRGB HALD/CUBE。

## HALD 排列和输入要求

HALD level 为 `L` 时，图片尺寸为 `L³ × L³`，LUT 为 `(L²)³` 个节点。
例如 level 8 = 512×512 PNG = 64³ LUT。接受 level 2–16，较大级数会增加内存和耗时。

- 默认 `--layout hald` 使用标准 HALD：光栅序列索引 `r + N*g + N*N*b`，其中 `N=L²`。
- `--layout tiles` 对应 App 当前 `BakedLutExporter` / `LutConverter` 的蓝色切片分块排列，
  `x=(b % L)*N+r`，`y=(b // L)*N+g`。如要把输出 PNG 直接导入当前 App，用此选项生成及转换输入；`.cube` 不受 HALD 排列影响。
- 任意修改过的 HALD 也可输入；输出 LUT 表示“该 HALD 已有映射再接 DCP 转换”。只需要 DCP 之间的转换时，请使用恒等 HALD。
- 接受 8/16 位 RGB 或全不透明 RGBA PNG；不缩放、不旋转、不做隐式色彩管理。无标记 PNG 按 sRGB 解释。
- 拒绝非 sRGB gamma / 色度、ICC/cICP 色彩描述以及透明像素。含 ICC 的图片请先显式转成 sRGB 并保存为标准 sRGB PNG。

## 逆解与误差

HSV 表一般没有解析逆。工具以 SDK 的正向表作为唯一求值函数，采用有界、多起点 Gauss–Newton 求逆。
KD tree 仅提供初始值；不会用最近邻 LUT 替换数值逆解。SDR 搜索域为 `[0,1]³`。

逐阶段回算残差之后，再将逆解 camera RGB 完整通过源 DCP，验证最终 sRGB 是否重建输入。
默认 `--tolerance 0.00002` 是每像素最大通道误差上限；表/曲线残差单位是线性 ProPhoto，最终往返残差单位是编码 sRGB。
计算精度和图像文件量化精度分别记录：CUBE 来自浮点结果，PNG 额外存在最多约 `0.5/65535` 的通道量化误差。

源表可能折叠、饱和或裁切；某些 HALD 颜色没有有效前像，局部求解也可能不收敛。
残差达标只证明找到了可重建输入的前像，**不能证明该前像唯一或就是原 RAW 值**。
源 tone curve 非严格递增时直接拒绝逆向处理；不篡改曲线使其单调。

默认超出容差时仅写 JSON 报告，返回状态码 2，不导出新的 HALD/CUBE。
确认可以接受报告中的误差后，可用 `--allow-approximate` 显式导出求解所得的近似结果；报告状态会标为 `approximate`。
这不会修改 DCP、改变裁切规则或加入色彩补偿。

成功返回 0，参数/输入/构建错误返回 1，严格逆解检查失败返回 2。

## 代码位置

- `sdk_bridge.cpp` / `CMakeLists.txt`：桌面 SDK 桥接和编译，复用 App 同一份 SDK 与 XMP stub。
- `sdk.py`：动态库绑定、DCP 生命周期、参数读取。
- `pipeline.py`：颜色空间转换、RGB tone 正逆运算、HSV 表数值逆解、误差统计。
- `dcp_lut.py`：命令行、HALD 排列、16 位 PNG/CUBE 和报告导出。
- `errors.py` / `messages.json`：用户错误、帮助与状态消息的双语资源。

SDK 参考实现：仓库 `app/src/main/cpp/dcp/dng_sdk/source/` 中的
`dng_render.cpp`、`dng_reference.cpp`、`dng_color_spec.cpp`、`dng_color_space.cpp`、`dng_tone_curve.cpp`。
官方入口：[Adobe DNG SDK](https://www.adobe.com/support/downloads/dng/dng_sdk.html)。
