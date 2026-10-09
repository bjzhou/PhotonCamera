# Canon Picture Style：公共 PGTM 之后的色彩与调性渲染引擎

> 偏色修正：旧实现错误地使用了 `0x1e58a0`。已由原机型分派确认并替换为 R5 `0x1f5b20`，补齐遗漏的色度参数与 YUV→RGB 节点。详细原因、原生对照与验证范围见 [颜色内核证据](../../.codex-tmp/canon_dpp/r5-color-kernel.md)。

2026-09-17。Canon 已接入现有渲染引擎接口，RAW 编辑面板提供 Canon 引擎和六种照片风格选择，设置、照片及预设保存恢复同一风格。EOS R5 最终曲线、完整整数颜色内核和真实 MLIB ICC 链已接入代码。本轮 Kotlin 编译与8类54项JVM测试通过；原指令数值对照及静态shader编译不等同于实机 GPU 验证。

## 公共管线与职责边界

```text
公共 RAW 解码 / 堆栈 / 去马赛克 / 降噪 / 白平衡 / 源相机标定
  → 公共线性 ProPhoto
  → 公共 PGTM（沿用 usePhotonHdr 的现有策略）
  → 公共曝光
  → profileToEngineTransform：目标 EOS R5 白平衡 camera RGB
  → Canon applyEngineTone：RawRecipe 颜色内核 + Picture Style Profile
  → 线性 sRGB
  → 公共调整 / 编码 / 锐化 / HDR 与保存
```

Canon 与 Lumix、HNCS 等一样是渲染引擎，**与 `usePhotonHdr` 共存，运行在公共 PGTM 之后**。`RawEngineTonePass` 的实际顺序仍是采样输入 → `applyProfileGainTableMap` → `prepareProfileGainInput` → `uProfileToEngineTransform` → `applyEngineTone`。Canon 使用现有单次 fragment draw 的接口，不引入 DPP 节点图调度器。

Canon 不接管 RAW 前端、PGTM、公共曝光或公共 HDR。DPP `HDRProcessMode=0` 只定义导出颜色资源的参考配方；它不设置或替换 App 的 HDR 策略。DPP USM、Sharpness、ColorMoire、ALO、Tkr/Ohyear、镜头校正及其他空间处理不在接入范围内。

## 六种风格与 UI、持久化

| 风格 | Canon ID | 持久化值 |
|---|---:|---|
| Standard | 0x81 | `standard` |
| Portrait | 0x82 | `portrait` |
| Landscape | 0x83 | `landscape` |
| Neutral | 0x84 | `neutral` |
| Faithful | 0x85 | `faithful` |
| Monochrome | 0x86 | `monochrome` |

`RawRenderingEngine.Canon` 使用 shader ID 8、线性曝光语义和默认额外曝光 0 EV。`RawEditPanel.kt` 的引擎列表包含 Canon；选中后显示 `CanonPictureStyleSelector`。`PresetEditorScreen.kt` 同样提供引擎和风格选择，并从原预设恢复、保存当前选项。名称及说明使用多语言资源。

`RawToneMappingParameters.canonPictureStyle` 贯通 DataStore 的读取、单项保存和批量保存，照片 JSON、Room 字段与预设映射。DataStore 键为 `raw_canon_picture_style`；Room 已加入 43→44 迁移；旧记录或未知持久化值回到 Standard。拍摄和照片重编辑使用该参数构建相同类型的 render plan，具体数据通路见 [配置审计](../../.codex-tmp/canon_dpp/app-config-audit.md)。

仅开放这六种风格。Auto、Fine Detail、User1–3、AtCapture 和 PF2/PF3 导入不在当前支持范围。原生 Canon 对比度、色调、饱和度以及 Mono 滤镜/调色固定为本次导出配方的中性/关闭值，没有宣称开放这些参数的独立控件。App 公共调整继续位于原有位置，不能据参数名称相似就等同为 DPP 原生调整。

## 输入相机域与数值尺度

Canon 提供独立的宿主曝光设置 `canonExposureCompensationEv`，默认 −0.5 EV、范围 −4～+4 EV。它与普通手动曝光补偿相加，通过公共渲染曝光入口在 PGTM 后、Canon 曲线前施加一次；不改动原厂配方。该设置只在 Canon 引擎生效，随编辑参数和预设持久化，切换风格保留，重置回 −0.5 EV。

固定目标为 EOS R5，ModelID `0x80000421`、原模型索引 `0x67`。`EquivalentCameraCalibration` 复用公共源标定，把 PGTM/曝光后的 ProPhoto 转为目标白平衡 camera RGB。源白平衡、曝光均已消费，Canon 不再重复执行。

Canon 色彩矩阵提供「默认 / EOS R5」选择，与 Leica M9 的选择语义一致。默认使用拍摄设备标定，再映射到 R5 输入域；EOS R5 直接以目标 R5 标定解释传感器 RGB，并通过可逆矩阵桥接到公共 ProPhoto，保持 PGTM、曝光和 HDR 的工作空间不变。选择默认时必须存在源相机标定，缺失时明确报错，不静默切换到 R5。`canonUseR5ColorMatrix` 默认 `false`，贯通 RAW 编辑面板、设置、照片保存恢复及预设导入导出和匹配；Room 48→49 迁移新增 `rawCanonUseR5ColorMatrix`，旧记录使用默认选项。

目标配方固定 ISO100，原生属性 `0x1000a` 与公开属性 `0x10026` 必须同时提供。Model provider 实际读取前者；只提供后者会退到 ISO0 分支，生成错误的 `gamma_c`，造成亮度基本正常但色彩不够鲜艳。它与手机拍摄 ISO 无关，不动态套用手机 ISO。`CanonProfile` 加载时验证这一来源契约；原指令、真实 R5 RAW/JPG 对照见 [ISO 配方审计](../../.codex-tmp/canon_dpp/iso-property-audit.md)。

目标标定在 `assets/canon/eos_r5/calibration.json`，来源是有 SHA 记录的 `Canon EOS R5 Adobe Standard.dcp`，**仅使用 ColorMatrix 与标定光源**。不使用 Adobe tone curve、LookTable 或风格处理。它负责不同相机之间的三通道线性颜色域适配；Canon Picture Style 来自 Canon 原生资源。矩阵标定不能消除不同传感器光谱响应的一切差异，不能据此宣称手机输入与真实 R5 RAW 完全等价。

标称线性白 1 映射至原 14-bit 白码 **16383**。shader 将输入乘以 16383，截断到整数并限于 UInt16 范围，保留超过标称白的输入，再按原内核执行其内部限幅。没有猜测的 EV 补偿。原 `0x056be0` 生成的默认色阶块为 312 字节，见 [levels-20302.bin](../../.codex-tmp/canon_dpp/r5-model-recipes/levels-20302.bin)。

原 RawRecipe 在缺失第四输入平面时用 `0x027990` 从同一输入 RGB 生成辅助值：

```text
aux = (R * 1224 + G * 2404 + B * 468) >> 12
```

无额外半舍入、白平衡或 gamma。生产者、通道位置及内核第四平面读取已闭合，详见 [辅助输入证据](../../.codex-tmp/canon_dpp/rawrecipe-auxiliary-input.md)。因此提取的颜色内核无需空间辅助图；该辅助值直接由当前像素生成。

## 实际颜色运算顺序

```text
目标 R5 camera RGB → UInt16 输入码和同域辅助值
  → RawRecipe 普通 R5 整数颜色运算
      ├→ gamma_y 支路、亮度计算 ────────────────────┐
      └→ 保留查表前 RGB → gamma_c → 色差矩阵        │
                            → gamma_uv / 色度权重 ─┤
                                                   ↓
                                             Q8 / Q13 / R5色度区域变换 → YUV → RecipedYUV2RGB
  ├→ 五种彩色风格：真实 MLIB RGB→Lab ICC → DPP sRGB 输出 Profile
  └→ Monochrome：RawRecipe 已执行黑白颜色计算，旁路彩色风格 ICC
  → sRGB 传递函数解码 → 线性 sRGB → 公共输出
```

`gamma_y`、`gamma_c` 和 `gamma_uv` 属于有合流关系的亮度与色度支路，不能写成三次串联的 RGB 曲线。`CanonRecipeColorMath.renderR5Pixel` 实现普通入口完整整数函数，`CanonToneAlgorithm` 按同一顺序实现 GLSL。其矩阵、分支、舍入、限幅、符号色差增益及 Mono 系数来自实际内核参数，不用经验 tone curve 或额外转灰代替。详见 [完整颜色内核证据](../../.codex-tmp/canon_dpp/r5-color-kernel.md)。

本次固定配方未启用 DPP RGBRecipe 自定义总曲线/分通道编辑、8Axis 或用户 PF；这些条件性处理不作为额外效果强行加入。DPP 完整调度的研究见 [静态流程](../../.codex-tmp/canon_dpp/RENDER_PIPELINE.md)，该图中所有节点并非本引擎的功能要求。

## 最终 gamma 与原生参数的来源

原 `Model.DppModel.dll` provider `0x015530` 读取其 BINARY101/102 资源，按 R5 与风格产生 `0x2e0f01` 点块、`0x2e0f09` 控制块和 `0x2e0f00` 颜色参数。随后执行完整原 `DppCore.dll` **`0x061de0`**，包括 R5 分支的多轮生成和混合，导出实际最终表对象。

| 每风格资源 | 长度与用途 |
|---|---|
| `gamma_y.i32le` | 131072 个 Int32，最终亮度表 |
| `gamma_c.i32le` | 131072 个 Int32，最终颜色表 |
| `gamma_uv.i32le` | 65536 个 Int32，最终径向色度增益表 |
| `parameters.bin` | 2304 字节，原 `0x2e0f00` 参数 |
| `kernel_words.i32le` | 360 个 Int32，普通入口标量参数，指针槽不作为运行期地址保存 |
| `chroma_weights.u16le` | 4×1024 个 UInt16，原生生成的色度权重 |
| `gamma-manifest.json` | 原 DLL 指纹、配方读取、文件长度与 SHA |

资源位于 `assets/canon/eos_r5/<style>/`。此前 210 张预备表及 `CanonR5SeedCompiler` 保留为研究资料，没有将 seed 当最终 gamma。详细生成链、缺失元数据语义及重放方法见 [曲线生成证据](../../.codex-tmp/canon_dpp/gamma-generation.md) 和 [实施记录](../../.codex-tmp/canon_dpp/IMPLEMENTATION.md)。

配方中 HTP 关闭、DPP HDR 关闭、颜色参数中性；原生 ISO `0x1000a=100` 和公开 ISO `0x10026=100` 明确提供。二者的映射已由原 EXIF 解析器验证。其他未提供的元数据按原缺失状态保留默认，不伪造读取成功。

## 真实 Picture Style ICC 链

默认 R5 五种彩色风格走新路径：DLL 内嵌 17³ 表 → 原 `0x1538d0` 生成 MLIB recipe → 原 `MLIBcreateCustomMLDataEX` 生成 **33³ mft2 RGB→Lab ICC**。生产使用这些实际 ICC 与原 DPP sRGB 输出 ICC，资源位于 `assets/canon/eos_r5/profiles/`。

`CanonIccProfile` 与 `CanonIccShader` 评价输入曲线、33³ 四面体插值 CLUT、输出曲线、Lab v2/D50 及输出 Profile 的 XYZ 矩阵/逆 TRC，最后解码回线性 sRGB。不能把 ICC Lab 输出当 RGB，也不能直接归一化原始 17³ 数据冒充完整颜色匹配。

Monochrome 被原 Profile 装配 mask 排除，其黑白效果在 RawRecipe 内完成，未走彩色风格 ICC。当前资源绑定为满足 sampler 有效性而提供 Standard ICC，但 Mono 分支不会采样它。R5 也不走旧 `0x1d98e0` Mono helper。完整调用、资源及标准 CMM 对照见 [Profile 契约](../../.codex-tmp/canon_dpp/r5-profile-cubes/README.md)。

## 运行期资源与共享 HDR 接线

`CanonProfile` 按六种风格缓存不可变 `CanonRenderPlan`，加载时核验模型、风格 ID、文件长度、SHA 和参数合同。gamma 及色度权重装入 **1024×324 R32F** 二维 atlas，以整数索引手动读取；数据必须可由 Float 精确表达。ICC 资源通过 `CanonIccGlResources` 管理，纹理随算法生命周期上传、复用和释放。资源缺失或合同错误会报错，不返回代用风格或经验曲线。

`RawDemosaicProcessor` 选择 `EquivalentCameraTarget.CanonEOSR5`，构建 plan 并传递到全帧、分块和公共 HDR reference 路径。`RawEngineTonePass.Input` 接收同一 plan，统一完成算法和 shader 分派；`CanonToneAlgorithm` 只返回线性 sRGB。公共 HDR 灰轴响应、gainmap 和最终输出沿用现有路径，参考与 SDR 使用当前风格的同一套颜色资源。

Canon 本身是逐像素运算，不增加空间半径或 tile halo。PGTM 全图坐标与公共最终锐化继续由宿主管线管理。这里描述的是已完成的代码接线；全帧/分块、风格切换和 HDR 组合在真实 GPU 上的运行一致性仍待验证。GLES 约束见 [驱动兼容性文档](../gles-driver-compatibility.md)。

## 已有验证与剩余边界

- 六风格模型参数及最终 gamma 已用原 DLL 指令独立重放并逐字节对照。
- 完整 `0x1f5b20` 与 Kotlin 颜色函数在六风格 **4,872 个像素**上逐整数相等，覆盖黑白边界、立方体角点、超范围和固定随机样本。此前还有 124 个基础算术、1,152 个 seed 选择器对照。
- 17³ MLIB recipe 构造的 12 组研究配置，共 **176,868 个 RGB 整数**与原指令相等；生产五种彩色风格 ICC 由原 MLIB 生成。
- Kotlin ICC 评价器与 LittleCMS2 对原 Profile 的 **45,045 个 RGB 样本**对照，最大线性 RGB 绝对差 **0.00012243**。这是独立标准 CMM 对照，**尚非原 DPP UCS 逐位验证**。
- `compileDefaultDebugKotlin` 及8类54项JVM测试通过，失败及跳过均为0。颜色内核测试先用生产 `CanonProfile.load` 加载六套资产并核验 SHA、ICC 和 atlas，再运行4,872个原生golden对照；复现命令见 [实施记录](../../.codex-tmp/canon_dpp/IMPLEMENTATION.md)。
- ICC shader 及 Canon fragment、两种 combined、HDR reference、HDR base curve 共5种组合已通过 ES 310/OpenGL 静态编译；后者由 `RawHncsShadersTest` 实际执行，未跳过。
- 尚待目标设备验证 GL 资源分配、绑定、绘制及回读，以及六风格、PGTM/HDR 组合、全帧/分块、照片保存重编辑的实际表现。不运行会卸载已有 APK 的实机 AndroidTest。

验收分别覆盖 Canon 颜色子集的数值合同，以及 App 公共管线的组合行为。手机照片不具备与 DPP 完整 RAW 显影逐像素相等的输入前提；范围外的 DPP 空间处理也不构成本引擎缺口。
