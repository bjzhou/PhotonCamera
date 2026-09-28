# PI 3D LUT 参考模型结构

参考文件：`PI_3D_LUT_v1.0.0_model_B_fp16.ort`。下面统计由 `scripts/lut_training/photon_lut/inspect_reference.py` 直接解析 ORT FlatBuffer，并由 ONNX Runtime 1.30.0 CPU session 读取 I/O 得到。机器可读完整清单在 `scripts/lut_training/runs/reference.json`（运行产物，gitignored）。

## 模型规模和接口

- SHA-256：`98f2c3ffcbb1eb078e877c5806c3b70f11320bb3e6157ad8e9f4b588b9ca003d`
- 文件：58,195,688 bytes（约 55.49 MiB）；ORT format version 6，IR version 8。
- 输入：`image`，FP32，固定形状 `[1, 3, 224, 224]`。
- 输出：`lut`，FP32，固定形状 `[1, 3, 33, 33, 33]`。
- FlatBuffer 图包含 1,734 个节点和 748 个 initializer。initializer 中 418 个 FLOAT16，共 28,404,272 个标量、56,808,544 bytes；另有 330 个 INT64 initializer，共 857 个标量、6,856 bytes。
- 这些是推理图中的 initializer 统计，不能解释成可训练参数量：ORT 导出会把权重、常量、查表数据都固化为 initializer，无法从推理文件判断训练时哪些变量被冻结。

算子数量：Gemm 148、MatMul 51、Conv 2、LayerNormalization 50、Reshape 301、Transpose 101、Cast 674、Add 80、Mul 109、Div 53、Erf 26、Exp 24、ReduceMax 24、ReduceSum 24、Sub 30、Clip 5、Abs 3、Pow 3、Greater 3、Where 3、Sqrt 3、Concat 3、Gather 2、Split 2、Squeeze 6、Unsqueeze 3、Tanh 1。

## 可复核的网络连接

整体连接为：

```text
image
  ├─ encoder_curve ViT（12 层，hidden=192）→ classifier_curve MLP（192→192→3）→ Tanh
  │    └─ 3 个系数依次作用于整幅 RGB 图像，串联三段曲线变换并裁剪
  └─ 曲线处理后的图像 → encoder ViT（12 层，hidden=384）→ classifier MLP（384→384→256）
       └─ 256 个混合系数 × factorized CLUT bank → 加权成单个 33³ RGB LUT → Clip → lut
```

两路 ViT 都使用 16×16 patch embedding。输入是 224×224，故 patch 网格为 14×14，另加 CLS token 后序列长度为 197。投影权重形状分别为 `[192,3,16,16]` 和 `[384,3,16,16]`；位置 embedding 分别为 `[1,197,192]` 和 `[1,197,384]`。每个 encoder 都能在 `reference.json` 的节点名 `encoder_curve.vit_model.encoder.layer.0..11` 或 `encoder.vit_model.encoder.layer.0..11` 中逐层复核。

注意力 reshape 形状也保留在 JSON 的 `flatbuffer.node_args`：curve ViT 的 Q/K/V reshape 为 `[1,197,3,64]`，转置后为 `[1,3,197,64]`；主 ViT 为 `[1,197,6,64]`，转置后为 `[1,6,197,64]`。对应每层注意力分数矩阵是 `[1,3,197,197]` 和 `[1,6,197,197]`。这些维度来自图中 reshape / transpose 节点的输出形状，不是根据 ViT 命名猜测。

曲线分支的 `classifier_curve.mlp.2.weight` 形状 `[3,192]`，输出经 Tanh 后拆成三个标量。节点连接显示第一个标量生成的 `/curve/Clip_1_output_0` 被第二段继续处理，得到 `/curve/Clip_2_output_0` 后再由第三段处理，最后 `/curve/Clip_3_output_0` 接入主 ViT 的 patch projection。每段都有 `Abs`、阈值 `Greater`、`Where`、`Sqrt`、`Pow` 和 `Clip` 运算。三个系数是对整幅 RGB 张量连续应用的串联曲线参数，不能解释为 RGB 三个通道各自一个系数；从图结构也无法推出具体的颜色空间约定或曲线可逆性。

## CLUT 生成器

主分类头输出 256 个混合系数。`lut_generator.cluts` 用紧凑因子合成 CLUT bank：initializer `psi` 为 `[24576,32]`，`M_w` 为 `[32,1089]`，`M_s` 为 `[33,32]`。图中先以 `psi × M_w` 建立低秩空间，再通过 `M_s` 沿 33 个采样点展开，得到 256 组候选 LUT；`classifier` 的 256 个值加权汇成 `[1,3,33,33,33]`。33³ 网格每个颜色通道有 35,937 个采样值，RGB 总计 107,811 个输出值。最后有 Clip，再转换为 FP32 输出。

这类“系数头 + 共享因子化 LUT bank”把模型生成成本与直接预测 107,811 个 LUT 数值分开控制。不过参考模型实际体积主要仍由双 ViT 及固化的因子张量决定，约 55.5 MiB 的 ORT 文件不能直接视作手机端新训练模型的合理目标；新模型应按目标延迟和包体预算单独设计轻量图像编码器、共享/低秩 CLUT 与输出精度。

## 检查脚本

脚本用 `onnxruntime.tools.ort_format_model` 引入 ONNX Runtime 配套的 `ort_flatbuffers_py.fbs.InferenceSession` schema，记录文件摘要、ORT session I/O、operator 频数、全部 initializer 的名称/shape/dtype/元素数/存储 bytes、全部节点及属性，以及小于等于 16 元素的 initializer 和节点属性常量值。FLOAT initializer 摘要明确标注为“不是可训练参数量”。

```bash
uv run --no-project --with onnxruntime --python 3.12 python \
  scripts/lut_training/photon_lut/inspect_reference.py \
  /path/to/model.ort scripts/lut_training/runs/reference.json
```
