# 设备端 AI 仿色

AI 仿色入口是 `LutCreatorScreen` / `LutCreatorViewModel`，`LutSynthesisScreen` 是多层 LUT 合成工具。AI 入口使用 `StyleLutEstimator` 根据效果图直接预测 LUT，本地图像对入口继续使用 `LocalImageAnalyzer` 和 `LutGenerator`。

## 当前模型

- 来源：用户指定的 `scripts/lut_training/runs/train-srgb/model.tflite`。
- 应用资源：`app/src/main/assets/models/style_lut/model.tflite`。
- SHA-256：`3262517ef349a209187eca1c98adb0e5c043f93784799b63df5fc11dd762cf4b`。加载时验证该哈希，防止同名权重误用。
- 文件大小 3,043,904 字节，651,803 个训练参数，FP32 权重与 CPU 推理，最多四线程及 XNNPACK。
- 导出验证报告随资源保存为 `model.validation.json`，记录转换精度及输入输出约定；导出精度通过不等同于仿色效果验收。

## 输入输出约定

输入为 `float32[1,3,224,224]`，NCHW、sRGB RGB、范围 0..1。软件解码处理 EXIF 方向，以 sRGB 像素输入；JPEG 使用与 Pillow draft 相同选择条件的 1/2/4/8 采样倍数。

完整图像先按 Pillow RGB BICUBIC 缩放到 **320×320**，保留其 22 位定点系数及逐方向 uint8 舍入，再按训练时 `torch.interpolate(bilinear, align_corners=False, antialias=True)` 缩放到 **224×224**。第二段保持浮点精度。不裁剪，不进行均值方差归一化。Android 与 Pillow 的 JPEG 解码实现仍可能产生像素差异。

输出为 `float32[1,3,33,33,33]`，N,C,B,G,R。验证形状、类型、有限值及 0..1 范围后，重排成 RGB 交错、R 网格轴变化最快的数据，直接保存为 16 位 sRGB PLUT。模型输出不经过旧配方拟合或额外平滑。

替换权重时必须同时核对训练 `render_size`、预处理、张量约定、模型哈希与导出报告；不能仅凭文件名或相同张量尺寸判断兼容。

## 界面及生命周期

移除云端提示词与还原图预览，更新设备端处理文案，保留现有功能访问权限策略。推理在后台执行，每次请求独立关闭解释器、释放 Bitmap；界面状态在主线程发布，取消后不再发布结果；临时 PLUT 在导入后清理。

## 验证

- `./gradlew compileDefaultDebugKotlin` 通过。
- Kotlin 两段缩放与训练环境 Pillow + PyTorch 对照，覆盖 320×320、500×375、31×71、225×227、112×896、1×10、193×295、4032×3024，最大绝对误差 `1.78813934e-7`。
- 在已连接 PMA110 手机上，通过临时独立探针运行 App 所用 LiteRT 1.0.1 的 arm64 CPU/XNNPACK 运行时。手机模型哈希与用户指定文件一致；三个真实验证照片及 LUT 合成的参考输入均通过，最大绝对误差相对桌面推理为 `1.78813934e-7`。
- 三次模型调用分别耗时 11.66、9.38、6.12 ms，仅统计 `Interpreter.run`，不包含解码、预处理或模型加载，也不是稳定性能基准。
- 三个输出相对恒等 LUT 的网格 MAE 分别为 0.04648、0.03656、0.02180；前两个输出之间的网格 MAE 为 0.05820，确认模型会随参考图变化。此检查不替代视觉效果评估。
- 对真机输出按保存规则进行 uint16 量化，最大绝对误差 `7.65919685e-6`。
- 未重新安装 App，未验证完整界面的选择图片→保存→应用操作。真机探针隔离验证模型推理，不包含 Android JPEG 解码。
