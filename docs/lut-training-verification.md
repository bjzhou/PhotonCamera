# sRGB LUT 训练程序验证记录

以下记录对应2026-09-24的旧结构。2026-09-28的新像素点对算法及验证见 [点对模型](lut-pixel-pair-model.md)。

日期：2026-09-24。实现及命令见 [训练说明](../scripts/lut_training/README.md)，参考文件解析见 [模型结构](lut-reference-structure.md)。本记录描述训练程序验证，没有修改参考模型，没有训练成可发布权重。后续 Android 接入见 [设备端 AI 仿色](lut-android-integration.md)。

## 实际数据

从连接手机的 `com.hinnka.mycamera.debug` 提取原始JPG和用户LUT，运行数据均位于git忽略的 `scripts/lut_training/runs/`。

- 376个照片目录，355张原始JPG；21个目录不存在 `origin.jpg` / `original.jpg`。
- 291个用户PLUT；排除14个非sRGB、12个标准化后完全重复的LUT、1个原本就是0字节的文件，最终264个独立sRGB LUT。没有修补空文件，也没有转换非sRGB LUT。
- 原图分组：train 249 / validation 53 / test 53；LUT分组：train 184 / validation 40 / test 40。
- 当前按照片目录、LUT文件分组，未人工审核同场景连拍和风格家族。正式效果评估前应复核组别；这里没有宣称跨场景、跨家族的产品效果。

## 数值与表示精度

LUT轴顺序、0/1端点、非对称跨通道仿射LUT的三线性采样验证通过。CUBE读写误差小于1e-7，uint16 PLUT读写误差小于 `0.5/65535 + 1e-7`。编码器、特征投影、系数头、曲线头、压缩解码器全部获得非零且有限的梯度；CPU和MPS完整反向传播通过。

对264个LUT各用4,096个固定随机RGB样本比较原网格与33³重采样表：所有LUT的平均MAE为0.0003811，所采样颜色的最大绝对误差为0.13787。最大值来自有陡峭映射的21³源LUT；均值小不代表每个颜色都准确。报告在 `runs/resampling-audit.json`，由 `audit-data` 命令生成；有限采样不是全域最坏误差界。

因此训练效果图使用**原始网格**渲染，网格监督使用33³表；验证另报 `target_grid_mae`，没有用近似标签掩盖源LUT与33³表示的差异。

## 实际运行

在Apple MPS、FP32上运行2 epochs × 3 steps、每步2个风格对、渲染224²、开启JPEG观测增强。每轮验证已见/未见风格各184个原图对，所有训练/验证LUT至少覆盖一次。

- 6次优化正常完成，各损失、梯度范数和权重均有限。
- 检查点、优化器、随机状态保存成功，`--resume .../last.pt` 恢复读取成功（此时计划epoch已经完成，没有额外优化）。
- 第二轮未见LUT验证集：LUT MAE约0.12730，跨照片MAE约0.07818；平均LUT基线渲染MAE约0.07649。少量训练的模型尚未优于该基线，不能作为可用风格提取模型。
- 最终test划分没有用于训练或调参。
- 实际参考JPG经 `predict` 导出CUBE和uint16 PLUT，并重新读取33³网格成功。

短训练运行目录：`runs/smoke-native`。它用于验证算法链路，默认正式训练配置仍是320²渲染、60 epochs × 250 steps。

## 模型预算和部署数值

默认模型651,803个可训练参数，FP32参数约2.486 MiB，Conv/Linear与LUT解码约140.62 M MAC / 张224²图片；该MAC不包括归一化、直方图和逐元素操作。

| 导出 | 实际文件字节 | LUT最大误差 | 套图最大误差 |
|---|---:|---:|---:|
| 全FP32 TFLite | 3,043,904（2.903 MiB） | 1.19e-7 | 1.79e-7 |
| CNN卷积核FP16存储，其余FP32 | 2,218,536（2.116 MiB） | 1.79e-7 | 2.98e-7 |

误差相对于同一检查点的PyTorch FP32模型，使用16张来自真实验证原图与原始LUT的合成效果观测及4个黑/白/噪声/渐变探针、TensorFlow 2.21.0 TFLite CPU解释器测得。两个模型均通过输入输出形状/类型、内置算子、8 MiB文件预算和数值门槛检查。输入仍为FP32 `[1,3,224,224]`，输出仍为FP32 `[1,3,33,33,33]`。

转换直接从检查点映射TensorFlow推理图，不生成ONNX中间文件。独立编码特征检查最大误差为1.34e-7，避免近恒等LUT头掩盖卷积padding或BatchNorm映射错误。混合模型中仅26个CONV_2D/DEPTHWISE_CONV_2D卷积核通过标准FLOAT16→DEQUANTIZE模式压缩；其余权重及LUT头/统计分支为FP32，CPU计算也为FP32。不包含Flex/SELECT_TF_OPS或自定义算子。

短训练模型接近恒等映射，这些误差不能外推为收敛模型的误差；正式训练后的每次 `export` 都会重新校准验证。Android delegate的延迟、计算精度及CUDA FP16/BF16训练尚未在这台Mac上验证。

Python语法检查及Ruff F类静态检查通过。未新增单元测试；因没有Android代码改动，没有运行Gradle构建。
