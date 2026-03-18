# HDR Gainmap 规划

## 目标

为当前相机 App 增加基于 gainmap 的 HDR JPEG 导出能力，覆盖三类输入来源：

1. RAW 路径：基于 RAW 线性数据生成较高可信度的 gainmap。
2. HLG 拍摄路径：基于拍摄时直接获取的 HLG/P010 HDR 数据生成 gainmap。
3. 普通 JPG 路径：不追求细节恢复，只追求在 HDR 屏幕上激发更高亮度和更强 HDR 观感。

本文档只定义技术路线、模块边界、实施顺序和验收标准，不直接约束最终 UI 形态。

## 已知现状

### 1. 当前 YUV/JXL 路径

当前保存下来的 JXL 已经经过 tone mapping，不能作为可靠的 HDR reference。  
因此，现有 `original.jxl` 不能直接用于生成真实 gainmap，只能继续作为 SDR 或后处理输入。

### 2. 当前 RAW 路径

当前 RAW 管线已经具备：

- RAW 解码、白平衡、CCM
- scene 分析
- 曝光增益
- 曲线 tone mapping
- log/LUT 渲染

但目前 RAW 管线仍然以“产出最终成像 bitmap”为主，缺少单独的：

- `scene-linear` 中间结果
- `HDR reference` 输出
- 与 SDR base 对齐的双输出渲染

因此，RAW 路径要先完成“渲染链拆分”，再生成 gainmap。

### 3. 当前 P010/HLG 路径

当前 `Camera2Controller` 已支持 `P010` 输出格式选择，但尚未完整建立“HLG still capture”链路。  
也就是说，当前是“格式可能为 P010”，但不等于“拿到的内容一定是可用的 HDR HLG 图像”。

当前实现已补到以下状态：

- 拍摄 metadata 中会记录 `dynamicRangeProfile`
- HLG 模式下会优先把拍照输出配置为 `HLG10`
- native `processAndSaveYuv` 在 `P010` 路径上会将 JXL 以显式 `BT.2100 + HLG` 颜色编码写入

这意味着：

- Java 侧不再只能依赖“P010 文件内容猜测”来理解色彩语义
- 但 HLG 的 `sdrBase` / `hdrReference` 生成仍属于第一版，后续还需要继续调 tone mapping 和 gainmap 参数

## 总体原则

### 1. gainmap 的本质

gainmap 不是单纯的高光 mask，而是从 SDR base 恢复到 HDR 呈现目标的一张增益图。  
因此所有实现路径都应围绕以下两个对象组织：

- `sdrBase`
- `hdrReference`

核心关系为：

```text
gain = hdrReferenceLinear / sdrBaseLinear
logGain = log2(gain)
```

### 2. 三条路径共享同一个编码出口

虽然三类输入的上游不同，但最终都应收敛到统一的输出模型：

```kotlin
data class GainmapSourceSet(
    val sdrBase: Bitmap,
    val hdrReference: HdrBuffer?,
    val sourceKind: SourceKind,
    val confidence: Float
)
```

统一后续模块：

- `GainmapProducer`
- `UltraHdrWriter`

这样可以避免三条路径各自实现 JPEG + gainmap 编码。

### 3. 新增优先，不侵入旧链路

遵循项目约束，新功能优先新增方法/文件，不把复杂逻辑继续堆进现有方法中。  
因此 HDR gainmap 实现应以新模块为主，再由 `PhotoProcessor` / `PhotoManager` 统一接入。

## 兼容性策略

### 设备 HDR/HLG 支持

对于 HLG / P010 / HDR still capture 兼容性，不做复杂黑白名单系统。  
只要硬件能力声明支持，就提供开关让用户自行尝试是否可用。

采用如下策略：

1. 如果设备能力声明支持相关格式或能力，则在 UI 中允许打开 HLG HDR 拍摄。
2. 如果运行时拍摄或处理失败，则本次拍摄降级回普通路径。
3. 不在前期实现里维护复杂的设备探测结论、试探 session、持久化黑名单。
4. 后续如确有大量兼容性问题，再补设备维度的降级策略。

这意味着：

- 前期实现成本更低
- 风险转移给用户开关自行验证
- 运行时异常处理必须足够稳，不能导致相机状态损坏

## 三条技术路线

## 一、RAW 路径

### 目标

从 RAW 数据生成“可信度最高”的 gainmap，用于主要的 Ultra HDR 输出路径。

### 关键问题

RAW 管线当前把以下步骤耦合在同一条最终渲染链里：

- 场景线性重建
- 曝光增益
- tone mapping
- log 转换
- LUT 风格渲染

这会导致 `hdrReference` 和 `sdrBase` 无法被稳定地定义。

### 设计原则

RAW 路径必须先拆成三层：

1. `sceneLinear`
   含义：RAW 去黑电平、白平衡、CCM、降噪后的场景线性表示。

2. `hdrReference`
   含义：从 `sceneLinear` 出发，施加共享曝光归一化后，保留较高亮度范围的 HDR 参考输出。

3. `sdrBase`
   含义：从同一份 `sceneLinear` 出发，施加 SDR tone mapping 和最终 look 后得到的基础 JPEG 图。

### 曝光定义

RAW 路径中要显式区分两类曝光：

1. `sceneNormalizationGain`
   作用：让 RAW 图在不同场景下稳定落到统一中灰锚点。  
   它应同时作用于 `hdrReference` 和 `sdrBase`。

2. `displayToneMapping`
   作用：把图像压进具体显示目标。  
   这一步 HDR 和 SDR 应分开。

因此，不应简单地在“当前 `exposureGain` 前”直接导出 `hdrReference`。  
正确做法是：

1. 先得到 `sceneLinear`
2. 应用共享的 `sceneNormalizationGain`
3. 然后再分叉：
   - 一支去生成 `hdrReference`
   - 一支去生成 `sdrBase`

### LUT / 风格化策略

建议拆分为：

- 技术性曝光归一化和基础色彩校正：作用于 HDR / SDR 两边
- 审美型 LUT / 最终风格 look：默认只作用于 SDR base

原因：

- gainmap 的目标是恢复 HDR 呈现，不应被强风格 LUT 扭曲
- 风格 LUT 更适合作为 SDR 输出外观的一部分

如果后续要支持“风格化 HDR”，也应单独设计，不放在第一期。

### RAW 路径阶段拆分

#### 阶段 A：重构 RAW 管线输出层

目标：

- 把当前 `RawDemosaicProcessor` 中的输出改成可选双输出
- 明确 `sceneLinear`、`hdrReference`、`sdrBase`

建议新增：

- `RawHdrRenderResult`
- `RawHdrRenderer`

#### 阶段 B：收敛曝光与曲线参数

目标：

- 把 `SceneStats.exposureGain`
- `curveLut`

从“最终成像辅助参数”重构成：

- `sceneNormalizationGain`
- `sdrToneCurve`
- `hdrTonePolicy`

#### 阶段 C：生成 gainmap

目标：

- 从 `hdrReference` 与 `sdrBase` 计算真实 gainmap
- 加入平滑、下采样、增益裁剪

### RAW 路径验收标准

1. SDR 输出观感与当前 RAW 导出尽量一致。
2. HDR 屏幕上高亮区域应明显提升，但不过曝炸裂。
3. 色偏、光晕、局部亮度跳变不能明显增加。
4. 同一场景不同曝光下，gainmap 行为应连续稳定。

## 二、HLG 拍摄路径

### 目标

通过拍摄时直接获取 HLG/P010 数据，生成相对真实的 HDR gainmap 输出。

### 设计前提

当前 `P010` 只是格式选择，不等于完整 HLG still capture。  
该路径需要从拍摄配置侧补齐 HDR still capture 能力。

### 设计原则

HLG 路径要形成独立处理链，不依赖现有已 tone mapped 的 JXL。

标准流程：

1. 拍摄时获取 HLG/P010 图像
2. 按 BT.2020 + HLG 规则恢复 HDR 参考亮度关系
3. 生成 `hdrReference`
4. 再从同一份 HDR 信号生成 `sdrBase`
5. 生成 gainmap

### 兼容性取舍

本期不实现复杂的兼容性探测与黑名单。

策略如下：

1. 若设备声明支持 HDR / P010 / 相关能力，则允许用户打开开关。
2. 实际拍摄异常、图像无效、处理失败时，直接降级回普通拍摄路径。
3. 不做复杂的 probe session 和运行时能力持久化。

### HLG 路径阶段拆分

#### 阶段 A：拍摄链路补齐

目标：

- 在 `Camera2Controller` 中补齐 HLG still capture 的拍摄配置
- 明确 HLG 模式下使用的 format、color space、request 配置

#### 阶段 B：新增 HLG 处理器

建议新增：

- `HlgImageProcessor`

职责：

- P010 / HLG 解码
- HLG 到线性 HDR 表示转换
- 生成 `hdrReference`
- 生成 `sdrBase`

#### 阶段 C：接入 gainmap 生成器

输出统一进入 `GainmapProducer` 和 `UltraHdrWriter`。

### HLG 路径验收标准

1. 支持设备上可以稳定拿到可用图像。
2. HDR 屏幕上高亮峰值明显增强。
3. SDR fallback 正常。
4. 拍摄失败或设备不兼容时能稳定降级，不影响普通拍照。

## 三、普通 JPG 路径

### 目标

普通 JPG 路径不追求真实细节恢复，只追求在 HDR 屏幕上获得更强的 HDR 观感。  
因此这条路径应明确定位为：

`亮度激发型 gainmap`

而不是：

`真实 HDR 还原`

### 设计原则

普通 JPG 路径生成的是 `estimated gainmap`，不是 `true gainmap`。

目标是：

- 提升亮部峰值亮度
- 保持 SDR fallback 不变
- 避免 halo、脏色、硬边

### 简化模型

推荐采用保守的 highlight expansion 模型：

1. sRGB 转线性
2. 计算亮度 `luma`
3. 构造高亮 mask
4. 基于 mask 生成温和增益
5. 对 gainmap 做平滑和下采样

示意公式：

```text
l = luminance(sdrLinear)
m = smoothstep(t0, t1, l)
g = 1 + strength * pow(m, k)
hdrTarget = sdrLinear * g
gain = hdrTarget / max(sdrLinear, eps)
```

补充约束：

- 接近硬裁剪白区限制最大增益
- 高饱和区域优先提升亮度而不是大幅提升色度
- gainmap 保持低频，避免边缘 halo

### 预期效果

这条路径的验收不看“恢复多少细节”，而看：

- HDR 屏幕是否更亮
- 高亮观感是否更通透
- 是否引入明显伪影

### 普通 JPG 路径阶段拆分

建议新增：

- `GainmapEstimator`

职责：

- 输入普通 bitmap
- 生成估计型 `hdrReference`
- 输出低频 gainmap

## 公共模块规划

建议新增以下文件：

### 1. `hdr/GainmapSource.kt`

定义：

- `GainmapSourceSet`
- `SourceKind`
- `GainmapResult`

### 2. `hdr/GainmapProducer.kt`

定义统一接口：

- 从 `sdrBase + hdrReference` 生成 gainmap
- 统一处理：
  - 增益计算
  - log 编码
  - 平滑
  - 降采样
  - 限幅

### 3. `hdr/UltraHdrWriter.kt`

职责：

- API 34+ 写入 `Bitmap + Gainmap`
- API < 34 降级普通 JPEG
- 统一替换 `PhotoManager` 中所有最终 JPEG 编码出口

### 4. `raw/RawHdrRenderer.kt`

职责：

- 从 RAW `sceneLinear` 生成：
  - `hdrReference`
  - `sdrBase`

### 5. `hdr/HlgImageProcessor.kt`

职责：

- 从 HLG/P010 生成：
  - `hdrReference`
  - `sdrBase`

### 6. `hdr/GainmapEstimator.kt`

职责：

- 从普通 JPG 生成估计型 gainmap

## 业务接入点规划

### `PhotoProcessor`

新增统一入口，负责根据来源选择 HDR 处理路径：

- RAW -> `RawHdrRenderer`
- HLG -> `HlgImageProcessor`
- 普通 bitmap -> `GainmapEstimator`

建议新增类似接口：

```kotlin
suspend fun processForUltraHdr(...): GainmapSourceSet?
```

### `PhotoManager`

不再直接在各处调用 `Bitmap.compress(JPEG)` 作为最终出口。  
改为统一调用：

- `UltraHdrWriter.writeJpeg(...)`

### `Camera2Controller`

新增：

- HLG 拍摄模式配置
- 用户开关驱动
- 失败时安全降级

## 实施顺序

### 第一阶段：公共基础设施

目标：

- 搭建统一数据结构
- 搭建统一编码出口

工作：

1. 新增 `GainmapSourceSet` / `GainmapProducer` / `UltraHdrWriter`
2. 抽出 `PhotoManager` 最终 JPEG 写入逻辑
3. 先保证现有普通 JPEG 路径不回归

### 第二阶段：RAW 真 gainmap

目标：

- 让 RAW 成为第一条可用的真实 Ultra HDR 路径

工作：

1. 拆分 `RawDemosaicProcessor`
2. 明确 `sceneNormalizationGain`
3. 输出 `hdrReference + sdrBase`
4. 生成 gainmap 并写入 JPEG

### 第三阶段：HLG 拍摄路径

目标：

- 新增基于 HLG/P010 的 HDR 拍摄导出能力

工作：

1. 补齐 HLG still capture
2. 新增 `HlgImageProcessor`
3. 接入统一 gainmap 生成器

### 第四阶段：普通 JPG 亮度激发型 gainmap

目标：

- 为导入图或普通 bitmap 提供 HDR 屏高亮增强能力

工作：

1. 新增 `GainmapEstimator`
2. 控制参数范围，避免伪影
3. 接入统一导出

## 暂不处理范围

以下内容不放在第一轮实现里：

1. 复杂设备黑白名单系统
2. Live Photo 与 gainmap 同时保留
3. HDR 实时预览
4. 风格化 HDR 渲染一致性优化
5. 导入第三方 HDR 格式的完整兼容处理

## 风险点

### 1. RAW 路径风险

- 现有曝光增益与 tone mapping 耦合较深
- 拆分后可能导致 SDR 成像观感变化

### 2. HLG 路径风险

- 设备虽然声明支持，但实际行为不稳定
- 同厂商不同机型实现差异可能很大

### 3. 普通 JPG 路径风险

- 容易出现 halo
- 高饱和高亮可能出现色偏
- 主观观感容易两极分化

## 当前决策结论

1. RAW 路径是主线，优先做真 gainmap。
2. HLG 路径作为拍摄侧 HDR 方案，按“设备声明支持即可开放开关”的策略推进。
3. 普通 JPG 路径不追求细节恢复，只追求 HDR 屏高亮观感。
4. 三条路径共享统一的 gainmap 生成与 JPEG 写入出口。
5. 下一步按本文档的实施顺序开始具体编码。
