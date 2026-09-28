# 从参考 JPG 估计 sRGB LUT

独立 PyTorch 训练项目。输入一张已调色的普通 sRGB JPG，预测可以应用到其他 sRGB 照片上的 33³ LUT。参考 ORT 仅用于结构分析；不读取其权重作为初始化、不调用它生成标签。所有训练标签来自手机自己的 LUT。

## 模型与数值预算

参考模型的实际结构和统计见 [结构分析](../../docs/lut-reference-structure.md)。它使用两个 12 层 ViT、先对图像做三次串联曲线处理，再由主分支输出 256 个压缩 LUT 混合系数。推理文件包含约 2,840 万个 FP16 浮点常量，55.5 MiB；这不等于已知的可训练参数数目。

默认模型为 `pixel_pairs`，按“像素对应点 → 拟合 LUT”设计。旧的曲线/低秩 LUT 模型仅通过 `--architecture legacy` 或加载旧检查点使用，新训练不能接着旧权重恢复。

```text
效果图 RGB 224×224
  → 共享 CNN：局部特征 + 128维全局特征
  ├→ 196组点对：效果图真实RGB → 预测对应原图RGB + 置信度
  └→ 343组控制点：固定源RGB网格 → 预测目标RGB
  → 三线性控制网格 + 点对约束的局部加权最小二乘拟合
  → 33³ sRGB LUT → [0,1] 输出
```

效果图每个16×16区域选取一个真实像素，共14×14组。网络预测该像素对应的原色，目标色直接来自输入，训练时由同位置原图监督。343个RGB控制点覆盖照片里缺失的颜色，预测的是完整三维映射，不是色温、影调、饱和度参数，也没有独立曲线头。所有分支联合训练。

先从控制点插值得到全色域映射，再根据像素点对的拟合残差，在RGB邻域求正则化加权最小二乘解。相近颜色的重复像素用密度归一化，避免大片天空/背景压过少量其他颜色；置信度有独立监督，不能通过任意降低权重逃避损失。详见 [点对算法与验证](../../docs/lut-pixel-pair-model.md)。

默认 646,537 个可训练参数，约2.47 MiB FP32参数；估算186.75M MAC（不计指数、归一化、三线性插值等操作），不是Android耗时实测。拟合按33个网格切片计算，单个权重矩阵约0.81 MiB；训练反向仍需保存中间量，显存会随batch增加。`budget` 可重复核对；训练上限200万参数，TFLite导出上限8 MiB。

| 环节 | 精度与约定 |
|---|---|
| JPG | 原始8位sRGB；读取EXIF方向，不额外解码为线性RGB |
| PLUT | 原始uint8/uint16解码到FP32，16位使用65535标度 |
| 标签与图像渲染 | FP32三线性插值，RGB数值范围0..1 |
| 训练参数、Adam状态 | FP32 |
| CUDA混合精度 | 可选FP16+GradScaler或BF16；只对编码器计算降精度 |
| 点对头、置信度、控制点、拟合及损失 | 始终FP32；避免低精度颜色累加 |
| 部署 | 默认全FP32；可选CNN卷积核以FP16存储，其余权重及输入输出FP32，CPU计算FP32 |
| 输出文件 | 8位小数CUBE或uint16 PLUT v3，后者最大舍入误差约0.5/65535 |

没有使用 INT8 权重量化或8位 LUT 中间缓存。转成FP32不会增加JPG原本的信息量。网格监督通过同一sRGB域内三线性采样统一到33³；**效果图始终用原始尺寸的LUT渲染**，包括混合/强度增强，避免用重采样的近似效果替代真实标签。验证的 `target_grid_mae` 单独量化33³监督表与原始LUT的套图差异。陡峭曲线存在表示精度限制，不能宣称完全无损。没有色域或传递曲线转换。

## 数据提取与冻结

在仓库根目录执行下列命令；按本仓库 AGENTS.md，`uv` / Python 在沙箱外运行。依赖有独立 `uv.lock`，不修改已有 scripts 环境。

```bash
uv sync --project scripts/lut_training --python 3.12 --locked

uv run --project scripts/lut_training python -m photon_lut.extract \
  scripts/lut_training/runs/device_photos \
  --serial DEVICE_SERIAL --package com.hinnka.mycamera.debug

uv run --project scripts/lut_training python -m photon_lut.extract_luts \
  --output scripts/lut_training/runs/device_luts \
  --serial DEVICE_SERIAL --package com.hinnka.mycamera.debug

uv run --project scripts/lut_training photon-lut prepare \
  --images scripts/lut_training/runs/device_photos \
  --luts scripts/lut_training/runs/device_luts \
  --output scripts/lut_training/runs/manifest.json

uv run --project scripts/lut_training photon-lut audit-data \
  --manifest scripts/lut_training/runs/manifest.json \
  --output scripts/lut_training/runs/resampling-audit.json
```

原图从 App 外部私有目录 `Pictures/photos/<photoId>/` 提取，兼容 `origin.jpg` 与代码实际使用的 `original.jpg`；两者都有时优先前者。不抽取HEIC、缩略图、渲染图、RAW、视频。用户LUT通过 `run-as` 只读导出 `files/custom_luts`，需要可访问的debug包；不自动root或更改手机权限。两个提取模块都保留来源清单，原子写入并核对手机/本地SHA-256。

`prepare` 检查文件格式、行数、payload长度、值域、有限性及sRGB标记。拒绝的文件记录在manifest `excluded` 中并汇总原因，绝不补零或截断来修补标签。非sRGB LUT也记录并排除。只扫描指定LUT目录顶层，避免无意加入子目录下的Log复原/相机校准表。

原图按EXIF方向处理后的完整像素去重；LUT按标准化33³完整网格去重。**先按原图组与LUT组分别划分 train / validation / test，再生成组合**；同一原图或同一LUT不会跨自己的分组。训练、验证和导出会校验清单中源文件SHA-256；源文件变化必须重新生成清单并开启新实验。

默认每个照片目录、每个LUT名称各自一组。连拍/同场景近重复照片及同风格不同强度LUT应人工归到同一组，正式效果评估前使用 `--groups groups.json`：

```json
{
  "photo-id-a/original.jpg": "scene-001",
  "photo-id-b/original.jpg": "scene-001",
  "lut:custom-style-weak.plut": "style-family-001",
  "lut:custom-style-strong.plut": "style-family-001"
}
```

该文件中的图片路径相对于 `--images`。精确去重不能替代场景/风格家族分组；默认划分下的验证结果只能说明这些照片目录、这些LUT文件上的泛化。

## 训练目标

每条训练样本包含不同原图 `X₁,X₂` 和同一已知LUT `L`：先生成 `Y₁=L(X₁), Y₂=L(X₂)`，模型分别只看到效果图。原图及标签仅用于训练损失。

- LUT监督：`|L̂-L|`，覆盖参考图未出现的颜色网格。
- 渲染监督：`|L̂₁(X₁)-Y₁|` 和另一张原图的对应项。
- 跨场景监督：`|L̂₁(X₂)-Y₂|` 及反方向，直接约束迁移后的实际颜色。
- 同风格一致性：`|L̂₁-L̂₂|`。
- 3D残差曲率与越界约束。没有强制所有通道单调，避免与合法风格的交叉通道变化冲突。
- 原色点对监督：预测源RGB与原图同位置RGB比较，按源颜色分组平衡像素权重。
- 控制点监督：343个预测目标RGB与标签LUT对应位置比较。
- 点对拟合监督：把真实原色经预测LUT映射后，与同位置效果RGB比较。
- 置信度校准：根据原色预测误差与JPEG观测误差构造停止梯度的可靠性目标。

前六项权重依次为 `1,1,1,0.1,0.0001,0.1`，新增四项权重为 `2,1,1,0.1`。曲率按网格间隔归一化。LUT和控制点直接监督作用于裁剪前输出以保留越界梯度；渲染使用裁剪后可部署输出。

训练在线均匀采样已知LUT，25%概率在两个**训练集**LUT之间插值，10%生成恒等标签，其余强度0.4..1。所有变换都同步生成真实标签，不对效果图单独做色相/曝光扰动。可随机水平翻转原图。50%概率给输入观测增加质量80..100的JPEG压缩，FP32重建目标保持不变。这些增强增加组合，不能创造新的独立拍摄场景或独立风格。

```bash
uv run --project scripts/lut_training photon-lut budget

# 用真实点对隔离验证拟合器，不代表网络已经学会预测这些点。
uv run --project scripts/lut_training photon-lut audit-pairs \
  --manifest scripts/lut_training/runs/manifest.json \
  --output scripts/lut_training/runs/point-pairs-oracle.json

uv run --project scripts/lut_training photon-lut train \
  --manifest scripts/lut_training/runs/manifest.json \
  --output scripts/lut_training/runs/train-pixel-pairs \
  --device auto --precision fp32
```

默认：60 epochs × 250 steps，batch_size=8个风格对（实际16张观测），原图先缩放到224²，再以原生LUT渲染224²效果图，确保点对一一对应。新结构强制 `render_size=224`，避免先渲染320再缩小时非线性LUT与平均像素不交换造成监督错位。AdamW、学习率3e-4、warmup/cosine、梯度裁剪1.0。CPU/MPS使用FP32；CUDA可显式选择BF16/FP16编码器计算。无预训练权重或外部教师。

`--anchor-size`（4..9）控制RGB网格容量，默认7；`--kernel-sigma` 默认0.14；`--fit-regularization` 默认0.1。核宽与正则项须结合留出场景评估，不应通过提高强度掩盖错误点对。旧模型的 `--bases/--rank` 仅在 `--architecture legacy` 生效。修改结构后重新训练。

`--batch-size` 控制显存；`--workers` 控制加载并发。`--validation-samples` 至少覆盖训练与验证各自的所有LUT，程序会检查，不接受缺失风格的评估。每个split至少需要两张独立原图。训练日志包含各损失、梯度范数、学习率、每轮耗时、验证指标。

`last.pt` 包含模型、优化器、GradScaler、随机状态及清单哈希；`best.pt` 按未见LUT验证集的 `LUT MAE + 跨场景 MAE` 选择。断点在epoch边界保存。继续相同实验时保留所有原配置，再加 `--resume .../last.pt`；禁止静默更改数据或训练配置。

## 验证、导出与使用

验证分别报告“未见原图 + 已见LUT”和“未见原图 + 未见LUT”，包含网格MAE、渲染MAE/PSNR、跨场景MAE，以及恒等LUT、训练LUT均值两个基线。新结构同时报告原色点对误差及移除像素点对拟合的 `base_*` 指标，检查点对分支是否真正提高效果。训练阶段只使用validation选checkpoint，最终test只在模型配置冻结后评估。

```bash
uv run --project scripts/lut_training photon-lut evaluate \
  --checkpoint scripts/lut_training/runs/train-pixel-pairs/best.pt \
  --manifest scripts/lut_training/runs/manifest.json --split test \
  --output scripts/lut_training/runs/train-pixel-pairs/test.json

uv sync --project scripts/lut_training --extra export --locked

uv run --project scripts/lut_training --extra export photon-lut export \
  --checkpoint scripts/lut_training/runs/train-pixel-pairs/best.pt \
  --manifest scripts/lut_training/runs/manifest.json \
  --output scripts/lut_training/runs/train-pixel-pairs/model.tflite

uv run --project scripts/lut_training --extra export photon-lut export \
  --checkpoint scripts/lut_training/runs/train-pixel-pairs/best.pt \
  --manifest scripts/lut_training/runs/manifest.json --precision encoder-fp16 \
  --output scripts/lut_training/runs/train-pixel-pairs/model-encoder-fp16.tflite

uv run --project scripts/lut_training photon-lut predict \
  --checkpoint scripts/lut_training/runs/train-pixel-pairs/best.pt \
  --image /path/to/reference.jpg --output /path/to/style.plut
```

输入预处理：JPEG draft缩小解码→EXIF方向校正→RGB→bicubic缩放到训练配置中的渲染尺寸（新结构224²，旧结构默认320²）→FP32 bilinear antialias缩放到224²→NCHW，范围0..1，没有ImageNet均值/方差归一化。训练、predict和export校准都用此规则；TFLite内只包含从224²浮点张量到LUT的网络，预处理由调用端负责。缩放整张图，不中心裁剪。

导出标准TFLite、batch=1，仅允许TFLite内置算子，不启用Flex/SELECT_TF_OPS或自定义算子。通过显式TensorFlow推理图加载PyTorch检查点；内部卷积为NHWC，并严格保留PyTorch对称padding语义，外部输入仍是NCHW。此导出器支持macOS和Linux，不经过ONNX中间文件；TensorFlow是可选的 `export` 依赖，ONNX Runtime仅保留用于分析参考ORT文件。输出扩展名必须为 `.tflite`。

`--precision encoder-fp16` 只把CONV_2D/DEPTHWISE_CONV_2D的常量卷积核编码成标准FLOAT16→DEQUANTIZE模式；偏置、点对头、RGB控制点、拟合及旧结构的dense头仍保留FP32。CPU解压权重后以FP32计算，不宣称整个编码器激活为FP16。GPU delegate是否采用半精度计算由运行时决定，需在目标设备验证。

先用黑/白/噪声/渐变输入独立检查PyTorch与TensorFlow的编码特征；点对模型还独立检查源RGB、目标RGB、置信度及控制网格，并随机化非恒等点对头来验证拟合路径，防止接近恒等输出掩盖转换错误。随后默认用64张来自验证集的合成效果观测及4个合成探针，比较PyTorch FP32与TFLite输出LUT及套图数值。FP32导出要求最大误差≤1e-5且最差样本MAE≤1e-6；编码器卷积核FP16要求≤0.002和≤0.0002。未通过者保留 `.pending.tflite` 和报告但不发布为目标文件；阈值是部署数值门槛，不代表模型提取风格的正确率。旁边的 `.validation.json` 保存输入输出契约、预处理、算子清单、模型/检查点哈希及误差；Android执行delegate的耗时与数值仍需设备验证。

输出统一是 `float32 [1,3,33,33,33]`，后3轴为 `[B,G,R]`，输出通道RGB；写文件时R变化最快，随后G、B，与App三维纹理一致。TFLite输入为 `float32 [1,3,224,224]`。`predict` 支持CUBE与uint16 PLUT。

单张效果图到LUT并非唯一可辨识问题；照片内容、光照与原始白平衡都会影响估计。只有在留出场景、留出风格上持续优于基线并进行跨照片视觉检查，才能把训练权重作为可用产品模型。`runs/` 中的照片、LUT、清单、权重、导出文件全部被git忽略，不打包进Android应用。

## 实现依据

- [TFLite转换接口](https://www.tensorflow.org/api_docs/python/tf/lite/TFLiteConverter)：从显式TensorFlow推理图转换，限制为内置算子。
- [PyTorch混合精度](https://docs.pytorch.org/docs/stable/notes/amp_examples.html)：autocast与GradScaler，数值敏感区域显式FP32。
- [TFLite FP16权重存储](https://developers.google.com/edge/litert/conversion/tensorflow/quantization/post_training_float16_quant)：CPU解压为FP32执行，GPU行为依delegate而定；本项目仅压缩编码器卷积核。
- [Image-adaptive 3D LUT实现](https://github.com/HuiZeng/Image-Adaptive-3DLUT)：可借鉴基LUT、可微渲染和平滑约束；该项目任务是图像增强，本项目的输入/监督任务不同。
