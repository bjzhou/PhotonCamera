# MGC V25 RAISR 输出放大：原版事实与接入设计

## 结论

原版 MGC 的 finish 输出放大只有两条互斥实现：`LancetUpsample`（Lanczos 系）
与 `RaisrUpsample`（RAISR）。Photon 已实现前者（`RawOutputPass` 的 Lanczos-3
输出重采样，`RawOutputGeometry.resample`），本文件记录后者的原版事实与移植设计。

RAISR 在原版里不是单个内核，而是一组 Halide AOT 内核加 npcam 胶水代码：

| 内核 | 作用 | 输入 → 输出 |
| --- | --- | --- |
| `NanoRaisrUpscalePerShiftFRH2xInt16Opt5x5Halide` | 2x per-shift 5×5 滤波 | `input_`,`filters_`,`hash_value_image_` → `result` |
| `NanoRaisrUpscalePerShiftFRH3x/4xInt16Opt5x5Halide` | 3x/4x 同上 | 同上 |
| 哈希内核（入口 `0x3591F3C`，无独立名字串） | 由 `ori_`/`up_ori` 生成滤波类别索引 | `ori_`,`up_ori` → `result`(`hash_value_image_`) |
| `NanoRaisrCompositeHalide` | 用 fallback/census/randomness 抑制伪影 | `image_fallback_`,`image_raisr_`,`randomness_lut`,`census_fallback`,`census_raisr` → `output_image` |
| `CensusHighFreqBlenderHalide`、`SharpenDOGHalide`、`CopyImageHalide`、`OrientationUint8ThinOptHalide` | 同一条 finish 链上的相邻内核（polysharp/blender） | 见名表 |

因此“新增 MGC 的 RAISR”= 移植哈希、2x per-shift、composite 三个 AOT 内核，
外加重新实现 npcam 驱动胶水（cheap upscale、hash 输入、per-shift 参数、
census/randomness 输入），并与现有 Lanczos 输出放大互斥。

## 来源与可复核地址

- 二进制：`.codex-tmp/mgc_v25/apk/lib/arm64-v8a/libgcastartup.so`
- SHA-256：`76966e7c150dfcb2795ea5b2119827a7e90b13d8c03035dbc4de583d9d12eaa6`（MGC 9.7.047 V25）
- 地址为 ARM64 ELF 虚拟地址；`.rodata` 的 VA 与文件偏移相同。
- 本次新增的逆向辅助脚本（未纳入构建）：
  `.codex-tmp/ida/mgc_v25/raisr_recon/{scan_adrp.py,scan_relocations.py,eh_frame_ranges.py}`
  （`eh_frame_ranges.py` 解析 `.eh_frame` 得到全部函数边界，输出 `fde_ranges.txt`）

### 关键字符串

| 地址 | 内容 | 代码引用 |
| --- | --- | --- |
| `0x4F258F` | `disable_raisr` | `0x5B97090` |
| `0x4FBD5E` | `Unsupported integer scale factor for per-shift RAISR filtering.` | `0x3589A10` |
| `0x58BF21` | `NanoRaisrDirectUpscaleAndRefineLumaMin( *input_y_npcam, cheap_upscaled_y_npcam.get(), compiled_params, nano_raisr_filters, sharpen_params, raisr_rescale_factor, disable_sharpening_and_blending_pass, raisr_upscaled_y_npcam)` | `0x355FF40` |
| `0x5ABC9C` | ` Raisr %dx (%.0f ms).` | `0x355F834` |
| `0x5C785E` | `raisr` | `0x5B94744` |
| `0x5F52B8` | `RaisrUpsample` | `0x355F258` |
| `0x604392` | `Upsample: RaisrUpsample expects a resample_rate >= %f but was %f` | `0x355F2F4` |
| `0x6993B1` | `RaisrCompositer failed.` | `0x35A1F78` |
| `0x6A9022` | `research/vision/npcam/lib_raisr/nano_raisr/nano_raisr_direct_5x5.cc` | `0x3589720` |
| `0x633522` | `research/vision/npcam/lib_enhance/polysharp_raisr2020.cc` | `0x3576940` 等 |

`Upsample: LancetUpsample expects a resample_rate >= %f but was %f` 与
`Resample(finished.u8_image(), LanczosKernel<1>, target, context, {resample_rate, resample_rate})`
确认原版的 Lanczos 侧实现；`InitParams_finish_lancet_enabled` 是原版的 lancet 开关。

### 内核名表（`0xBB5E80..0xBB8500`，均无代码/数据引用，仅调试名）

- `0xBB5E80` `NanoRaisrUpscalePerShiftFRH2xInt16Opt5x5Halide`
- `0xBB6340` `NanoRaisrUpscalePerShiftFRH3xInt16Opt5x5Halide`
- `0xBB6800` `NanoRaisrUpscalePerShiftFRH4xInt16Opt5x5Halide`
- `0xBB82E0` `NanoRaisrCompositeHalide`
- 同区还有 `CensusHighFreqBlenderHalide`、`SharpenDOGHalide`、`CopyImageHalide`、
  `OrientationUint8ThinOptHalide`。

内核 buffer 名与维度（Halide `buffer_t` 元数据）：

- 2x：`0xBB5D40..0xBB61A0`：`input_`、`filters_`、`hash_value_image_`、`result`；
  `filters_` 的 `extent.2 = 216`、`stride.3 = 5400` ⇒ `[shift][216 filter][5][5]`
  （216 = RAISR 的 24 角度 × 3 相关度 × 3 强度类）。
- 3x：`0xBB6200..0xBB6660`；4x：`0xBB66C0..0xBB6B20`（结构相同）。
- 哈希内核：`0xBB6B60..0xBB6E60`：`ori_`、`up_ori`、`result`。
- composite：`0xBB82E0..0xBB84F0`：`image_fallback_`、`image_raisr_`、`output_image`、
  `randomness_lut`、`census_fallback`、`census_raisr`，另有
  `artifact_correction_max_strength_`、`artifact_map_scale_fixed_`、
  `artifact_map_bias_fixed_`、`fallback_strength_`、`debug_output_select_`。

### 代码结构（`.eh_frame` 已确认的函数边界）

| 地址（范围） | 角色 |
| --- | --- |
| `0x355F230` | `RaisrUpsample` 阶段入口 |
| `0x355F2E0..0x355F2E8` | `fmov s0,#2.0; fcmp s8,s0; b.pl` ⇒ **要求 resample_rate ≥ 2.0**；否则报错（`0x355F2F4`）后继续 |
| `0x355F55C` / `0x355F568` / `0x355F770` | 依次调用 `0x35894AC`（参数默认值）、`0x355FFEC`（`NanoRaisrDirectUpscaleAndRefineLumaMin`）、`0x3589540` |
| `0x35894AC` (0x94) | 参数结构默认值：`+0x54 = 43200`、`+0x58 = 0xbab436`（滤波器组指针）、`+0x34 = 0.7f`、`+0xC/+0x44 = 4`、`+0x20 = 3` |
| `0x3589540` (0x1FC) | TImage 入口：`0x3589588 → 0x358F370`（哈希）、`0x35895F4/0x3589630/0x3589670 → 0x3589824`（per-shift）、`0x358968C → 0x35A2474`（composite 链）、`0x3589594 → 0x35A27D4` |
| `0x3589824` (0x384) | 整数倍率分派：`cmp w19,#2/#3/#4` → `0x358A240`/`0x358BEF0`/`0x358DC94`；其它倍率报 `Unsupported integer scale factor...`。调用约定：`x0 = user_context`，`x1..x4 = 4 个 buffer_t*` |
| `0x358F370` (0x424) | 哈希编排；`0x358F5B8 → 0x3591F3C`（哈希内核） |
| `0x35A2474` (0x1D8) | composite 链入口，调用 `0x35A1B24`、`0x35A1D80`、`0x35A216C`；`0x35A1F78` 引用 `RaisrCompositer failed.` |
| AOT 内核（无 CFI） | 2x ≈ `0x358A1F8..0x358B900`；3x ≈ `0x358BEA8..0x358D53x`；4x ≈ `0x358DC4C..0x358F34x`；哈希入口 `0x3591F3C`，范围 ≈ `0x3591E00..0x3592C00`；composite 范围 ≈ `0x35C9000..0x35CB418` |

### 静态数据

- 滤波器组：`0xBAB436`，`43200` 字节 = `21600` 个 int16 = 4 shift × 216 filter × 25 tap，
  Q12（每个滤波器 25 抽头之和落在 4104..4113，即 2^12 附近的量化）。
  仅被 `0x358951C` 引用（`0x35894AC` 的默认参数）。
  四个 shift 互为水平/垂直翻转，正是 2x 上采样的 per-shift 亚像素相位网格。
  已提取为 tracked 资源 `app/src/main/cpp/mgc_denoise_static/mgc_raisr_filters.bin`
  （SHA-256 `0ace2b67b820732dd0cccebeea867521cf9144721196574918f618a1da9ed3c6`），
  可用 `scripts/research/extract_mgc_raisr_filters.py` 复现（脚本会校验源 SHA-256 与
  Q12 归一化范围）。
- `randomness_lut`：`0x7C59978`（`.data`，文件偏移 = VA−0x4000），**256 字节**的 16×16 dither 表，
  取值只有 {0,5,10,15}，0x100 之后为 0 填充。已提取为 tracked 资源
  `app/src/main/cpp/mgc_denoise_static/mgc_raisr_randomness_lut.bin`
  （SHA-256 `dd3e825c6571e9371bc94c3b781b6b6a652eaeb3a1b20544a61e0f573519398b`），
  可用 `scripts/research/extract_mgc_raisr_randomness_lut.py` 复现。
  长度由数据本身判定；内核具体索引表达式仍未证明（见未决事项）。

### Halide runtime 宿主符号

与既有 GuidedUpsample 移植一致：`halide_malloc 0x5F91100`、`halide_free 0x5F9111C`、
`halide_trace 0x5F93F88`、`halide_do_par_for 0x0585F89C`。

## Photon 接入设计

### 与 Lanczos 的互斥

- `MultiFrameConfig` 增加输出放大算法枚举：`LANCZOS3`（默认）/ `MGC_RAISR`。
- 倍率语义（已确认）：选择 RAISR 时输出倍率锁定 `2.0`（RAISR 只支持 ≥2x 的整数
  per-shift 滤波，本 App 倍率上限 2.0，故只有 2x 可达）；滑杆置灰并给出原因文案。
  切回 `LANCZOS3` 后滑杆恢复 1x–2x 连续可调。
- 管线接入点唯一：`RawOutputGeometry.resample` 为真时，`RawOutputPass` 走
  Lanczos 还是 RAISR 由算法枚举决定；同一时刻只跑一种，绝不同时叠加。

### 内核移植（沿用仓库既有套路）

1. `scripts/research/generate_mgc_raisr_static_asm.py`：按
   `generate_mgc_guided_upsample_static_asm.py` 的方式，从固定 SHA 的
   `libgcastartup.so` 提升 2x per-shift、哈希、composite 三个闭包，产出
   `mgc_denoise_static/mgc_raisr_*_capsule.bin` 与 `.S.in`。
2. `CMakeLists.txt` 增加 capsule SHA-256 校验与静态库目标。
3. 原生侧三个文件分工：
   - `mgc_raisr_driver.cpp`：驱动胶水，导出 `photon_mgc_raisr_upscale_rgba`
     （单次整帧，探针用）与 `photon_mgc_raisr_upscale_rgba_banded`（分带，探针比对用）。
   - `mgc_raisr_bands.h`：分带运行器与共享量化 `ToU8`（模板，driver 与 JNI 共用）。
   - `mgc_raisr_jni.cpp`：Kotlin 入口，负责取位图/缓冲、格式与尺寸校验、像素格式转换。
4. Kotlin 侧新增 `MgcRaisrUpscale`（对齐 `MgcGuidedUpsample` 的所有权/释放模型），
   只持有"调用方已有的帧"和"要的 2x 图"两个 Bitmap，不申请任何 scratch、不做逐像素循环。

### 驱动胶水

需在原生侧重新实现（对应 `0x3589540`/`0x3589824`/`0x358F370`/`0x35A2474`）：

1. 从最终 sRGB 结果取 luma（`ori_`），做与 `Lanczos` 同源的低分辨率准备；
2. cheap upscale 得到 `up_ori`（fallback luma）；
3. 哈希内核：`ori_` + `up_ori` → `hash_value_image_`；
4. 2x per-shift 内核：`input_` + `filters_` + `hash_value_image_` → RAISR luma；
5. census（`census_fallback`/`census_raisr`）与 `randomness_lut`；
6. composite：fallback + RAISR + census + randomness → `output_image`；
7. 与色度（沿用现有重采样）合成，替换原 Lanczos 的亮度重采样结果。

## 实施状态

已完成（`compileDefaultDebugKotlin` 通过）：

- `raw/RawOutputUpscaleMode.kt`：`LANCZOS3`（默认）/ `MGC_RAISR`，RAISR 固定 2x
  （`RAISR_REQUIRED_OUTPUT_SCALE = 2f`），并提供 `resolveOutputScale` / `usesRaisr`。
- `RawOutputScaling`：新增 `rawDisplayOutputUpscaleMode` 属性键，`read` 按算法归一化倍率，
  `readUpscaleMode` 兼容旧照片（缺省即 Lanczos-3）。
- `RawOutputGeometry`：`upscaleMode` 参数、`outputScale`、`raisrUpsample`；
  RAISR 选中时几何与支持区都按 2x 求解。
- `RawDemosaicProcessor`：`rawOutputScale` 旁新增 `rawOutputUpscaleMode`（5 处签名 + 4 处内层转发），
  并在 `RAW_OUTPUT_RESAMPLING` 日志里输出 `upscale=` 与 `raisr=`。
- `MediaMetadata.rawOutputUpscaleMode`：拍摄时由 `CameraViewModel` 从偏好写入；
  `GalleryManager` 用 `RawOutputScaling.write(..., metadata.rawOutputUpscaleMode)` 持久化到 DNG；
  `PhotoProcessor` 与 `GalleryManager` 的 9 处渲染调用点用 `RawOutputScaling.readUpscaleMode(...)` 还原。
- 偏好：`raw_output_upscale_mode` 键 + `saveRawOutputUpscaleMode`（选中 RAISR 时把倍率写为 2x），
  `saveRawMaxOutputScale` 按当前算法归一化；`CameraViewModel.rawOutputUpscaleMode` + `setRawOutputUpscaleMode`。
- 设置界面：专业模式「图像质量」组内新增「输出放大算法」二选一；RAISR 选中时输出倍率滑杆置灰，
  描述文案切换为锁定说明。
- 字符串：`values`、`values-zh-rCN`、`values-zh-rTW`、`values-zh-rHK`、`values-b+zh+Hant`、`values-ja`
  （新增 5 条：模式标题/说明/两个选项/锁定说明）；其余语言沿用既有回退英文的约定。

待完成：

1. AOT 内核与静态资源 —— **已完成并验证**：五个内核符号
   `photon_mgc_raisr_{rgb_to_gray,orientation,hash,upscale_2x,composite}` 与两个数据符号
   `photon_mgc_raisr_{filters,randomness_lut}` 均已链接进 `libmy-native-lib.so`
   （Debug `.so` 符号表可见，且两个 `.bin` 的内容在 `.so` 中各出现且仅出现一次、字节一致）。
   capsule SHA-256 `d6c952ed…f7cb` 与 CMake 校验一致，`./gradlew buildCMakeDebug` 通过。
2. 驱动胶水（详见 `docs/research/mgc-raisr-driver-spec.md` §7/§9）：五个内核与两张静态表
   都已就绪，尚需在原生侧按调用顺序把它们串起来（见该文 §7 的调用顺序图）。
   仍未定的一项：
   - **色度重组**：位于 `0x355F230` 之外（唯一调用者 `0x3364BC8`），未展开；
     需要决定继续逆向还是采用明文记录的等价色度上采样方案。
   - `mgc-raisr-driver-spec.md` §8 的部分未决项（compiled-params `+0x18/+0x1C/+0x38/+0x3C`
     的 f32 写入 / i32 读取冲突）静态不可判定，需要按仓库既有 `probe_*` 做法做动态验证。
3. 管线接入：RAISR 是对亮度做的全图整数倍放大，不能像 Lanczos 那样在
   `RawOutputPass` 的分块着色器里逐块完成。需要以 `MgcGuidedUpsample` 同样的
   “读回 → 原生内核 → 上传” 模式，在 `renderOutputPass` 之后按全图执行，并把
   `RawTilePlanner` 的 `supportPx`/`processingPeriod` 扩展到 5x5 滤波与降采样上下文所需范围。
4. 端到端验证（真机出图对比）。

### AOT 模块的 worker/wrapper 布局（本轮已解出）

Halide AOT 的并行任务函数指针集中在一张表 `0x61E7068..0x61E7160`（`.got`，每项 8 字节，
`R_AARCH64_RELATIVE`）。wrapper 用 `adrp x1, 0x61E7000` + `ldr x1, [x1, #off]` 取出
worker 指针后 `bl halide_do_par_for`。据此得到的模块布局是严格递增的
“worker 区间 + wrapper 区间”配对：

| 内核 | worker 区间 | wrapper 区间 | 表项 |
| --- | --- | --- | --- |
| 2x per-shift | `0x3589BF0..0x358A240` | `0x358A240..0x358B830` | `0x61E7068` |
| 3x per-shift | `0x358B830..0x358BEF0` | `0x358BEF0..0x358D534` | `0x61E7070` |
| 4x per-shift | `0x358D534..0x358DC94` | `0x358DC94..0x358F370` | `0x61E7078` |
| hash | `0x358F794..0x3591F3C` | `0x3591F3C..0x3592C10` | `0x61E7080` |
| orientation | `0x359B0A8..0x359DAF4` | `0x359DAF4..0x35A1B24` | `0x61E7098` |
| rgb→gray | `0x3C50BC8..0x3C50CBC` | `0x3C50CBC..0x3C516C0` | `0x61E8630` |
| composite | `0x35BD0DC`、`0x35BF998`、`0x35C2254`、`0x35C29FC`、`0x35C2FD0`、`0x35C4A44`、`0x35C64E4`、`0x35C6C30`、`0x35C86A0` 各 worker（共 9 个） | `0x35C8C54..0x35CB418` | `0x61E7120`..`0x61E7160` |

导出符号与调用约定（wrapper 处实证）：

```text
photon_mgc_raisr_rgb_to_gray(user_context, rgbx_in_, result)              // 0x3C4E164 调用点
photon_mgc_raisr_orientation(user_context, input_3ch, num_angle_buckets, result)  // 0x358F564 调用点，w2 = params[0x18]
photon_mgc_raisr_hash(user_context, ori_, num_angle_buckets, min_strength, max_strength, min_coherence, max_coherence, result)
photon_mgc_raisr_upscale_2x(user_context, input_, filters_, hash_value_image_, result)
photon_mgc_raisr_composite(user_context, image_fallback_, image_raisr_, image_artifact_fallback, randomness_lut,
                           fallback_strength_q8, artifact_correction_max_strength_q8, artifact_map_scale_q4,
                           artifact_map_bias_q8, debug_output_select, output_image)
```

注意：灰度内核的 task slot 在**另一张表** `0x61E8000`（`[x1,#0x630]`），不是 RAISR 模块的
`0x61E7000`；早期把 `0x61E7630` 当它是错的，正确 worker 为 `0x3C50BC8`。

证据：2x wrapper 在 `0x358B30C` 取 `[x1,#0x68]`、3x 在 `0x358CFB0` 取 `[x1,#0x70]`、
4x 在 `0x358ED7C` 取 `[x1,#0x78]`、hash 在 `0x35928D8` 取 `[x1,#0x80]`，随后都在
`bl 0x585F89C`（`halide_do_par_for`）；composite wrapper 用
`0x35C9C5C/0x35C9EE8/0x35CA20C/...` 处的 `adrp x1, 0x61E7000` 配 `[x1,#0x120..0x160]`。

因此本次只需要 2x 一个 per-shift 内核时，`CODE_RANGES` 取
`(0x3589BF0, 0x358A240)` + `(0x358A240, 0x358B830)`；模块起点
`0x3589BF0` 紧接在有 CFI 的 `0x3589BA8..0x3589BF0` 之后，边界明确。

### 闭包自洽性校验（本轮已做）

对 2x（`0x3589BF0..0x358A240` + `0x358A240..0x358B830`）、hash
（`0x358F794..0x3591F3C` + `0x3591F3C..0x3592C10`）与 composite wrapper
（`0x35C8C54..0x35CB418`）逐条解码后：

- **逃逸的 PC 相对分支：0 条**（ADR / literal / b.cond / cbz / tbz / b / bl 全部落在闭包内或命中宿主符号）。
- 外部调用只有两类：Halide 运行时（`malloc 0x5F91100`、`free 0x5F9111C`、
  `do_par_for 0x585F89C`、`trace 0x5F93F88`）与 Halide 校验/错误辅助函数
  `0x5F94D60`、`0x5F94E38`、`0x5F94EC4`、`0x5F94FA8`、`0x5F95034`、`0x5F950CC`、
  `0x5F95158`、`0x5F95260`、`0x5F95540`、`0x5F95560`、`0x5F95638`、`0x5F956A4`。
  这些调用点都位于错误/校验分支（前面是边界检查、后面是清理），
  既有移植已用 `PHOTON_MGC_DEFINE_HALIDE_ERROR(address)` 宏在
  `mgc_denoise_static.cpp` 里为同类地址提供日志桩（其中 `0x5F95158` 已存在），
  RAISR 新增的地址需要按同一宏补齐。
- ADRP 引用的数据页：`.got` 的 `0x61E7000`（worker 指针表，需要 `R_AARCH64_RELATIVE`
  把对应表项重定位到 capsule 内的 worker 符号）以及若干常量页
  （`0x6B4000`/`0x6B6000`/`0x6BC000`/`0xBB5000`/`0xBB6000` 等，随闭包按需拷入）。

## 驱动数据流（按规格 §7，供原生实现直接照做）

源为裁剪分辨率 `Sw×Sh` 的成片 sRGB，目标 `2Sw×2Sh`（本版只有 2x）：

1. `rgbx_in_`（U8 4 通道）→ `photon_mgc_raisr_rgb_to_gray` → `gray`（1 通道 `Sw×Sh`）。
   Orientation 内核的元数据（名串 `0xBB7620`）只有 `input_image_`（Input）与 `result`（Output）
   两个 buffer，另有内部 Func `filter_x_gtg`/`local_gtg`；调用点 `0x358F564` 传
   `(user_context, input_image_, num_angle_buckets, result)`。
2. 以同一块 `gray` 数据声明 3 通道视图 → `photon_mgc_raisr_orientation` →
   `ori`（3 通道 `Sw×Sh`，对应 hash 元数据里的 `ori_.extent.2 = 3`）。
3. `photon_mgc_raisr_hash(ori, num_angle_buckets=24, min/max strength, min/max coherence)`
   → `hash_value_image_`（1 通道 `2Sw×2Sh`，Int16）。四个 f32 取自 compiled-params
   `+0x24..+0x30`（见规格 §2）。
4. `photon_mgc_raisr_upscale_2x(gray, filters, hash_value_image_)` →
   RAISR 亮度（1 通道 `2Sw×2Sh`，Int16）。
5. `photon_mgc_raisr_composite(fallback, raisr, dead, randomness_lut, 0, 3, 0, 1, 0)` →
   输出亮度。`fallback` 是同一目标尺寸的便宜上采样亮度，composite 的 `x3` 是死参。
6. 色度重组在主调用者 `0x3364BC8` 内（未展开，见未决事项）。

滤波器组按 `shift*5400 + cls*25 + ky*5 + kx` 索引；两张静态表已作为
`photon_mgc_raisr_filters` / `photon_mgc_raisr_randomness_lut` 符号随库携带。

## 真机探针：ABI 实测（本轮新增）

静态阅读无法确定每个 Halide buffer 的元素类型与内存布局（`.rodata` 里没有类型信息），
而错误的 descriptor 会被内核的 ABI 校验拒绝。仓库里已有 `probe_*` 的做法，
于是本轮新增了一个**在真机上跑的探针**：

- 源码：`.codex-tmp/ida/mgc_v25/raisr_recon/probe/raisr_probe.cpp`
- 构建：NDK 29 交叉编译，直接链接 App 构建产物里的
  `app/.cxx/Debug/4m3j6146/arm64-v8a/mgc_raisr_static.S` 与 `mgc_raisr_tables_static.S`
- 运行：`adb push` 后在设备上执行；探针内置 `alarm(10)`，外层再套 `timeout 25`，
  避免错误 descriptor 让内核跑飞
- 判据：探针把 Halide 校验回调计数（并记录最后命中的桩地址）。
  **正确组合 = 该校验计数为 0 且输出数值合理**；错误组合会命中
  `halide_error_bad_type`（`0x5F94D60`）等桩。

已实测确定的第一个内核 ABI（`errors=0`，输出为干净递增序列
`41,56,71,86,101,116,131,146`，均值 106.69）：

```text
photon_mgc_raisr_rgb_to_gray(user_context,
                             rgbx_in_ : UInt8, 3 通道, 交错(x stride=3, c stride=1),
                             result   : UInt8, 1 通道)
```

关键点：**通道是交错布局**（dim0 stride = 通道数、通道维 stride = 1）。
之前按平面布局（dim0 stride=1、通道维 stride=W·H）构造，正是被
`Input buffer rgbx_in_` 的 ABI 校验拒绝的原因（wrapper 在 `0x3C50E20` 附近把
声明类型 `0x00010801 = UInt(8,1)` 与实参比较，并按维度的 min/extent/stride 逐项校验）。

其余四个内核（orientation / hash / upscale_2x / composite）的类型与布局仍需用同一探针
逐个确定，方法相同：给出候选组合，取 `errors==0` 且输出合理者。

已实测确定的 ABI（判据：Halide 校验回调计数为 0，且输出数值合理）：

| 内核 | 输入 | 输出 |
| --- | --- | --- |
| `rgb_to_gray` | `rgbx_in_`: UInt8, 3 通道, **交错**(x stride=3, c stride=1) | `result`: UInt8, 1 通道 |
| `orientation` | `input_image_`: UInt8, 3 通道, **平面** | `result`: UInt8, 3 通道, 平面 |
| `hash` | `ori_`: UInt8, 3 通道, 平面（`W×H`） | `result`: UInt8, 1 通道（`2W×2H`） |
| `upscale_2x` | `input_`: UInt8 1 通道；`filters_`: Int16 4 维 `[5][5][216][4]`；`hash_value_image_`: UInt8 1 通道 `2W×2H` | `result`: UInt8, 1 通道 `2W×2H` |
| `composite` | `image_fallback_`: UInt8 lanes=1 二维；`image_raisr_`: UInt8 lanes=1 二维；`randomness_lut`: UInt8 **一维 256**；标量 `(0, 3, 0, 1, 0)` | `output_image`: UInt8, 1 通道二维 |

即**整条 RAISR 亮度链都在 U8 域**，只有滤波器组是 int16（Q12）。这解释了内核名里的
`Int16` 指的是滤波器/内部定点，而不是图像元素类型。另外注意 `rgbx_in_` 是交错布局、
而 orientation 的输入与 composite 的输入都是平面布局——不同内核约定不同，不能混用。

实测输出样例：`rgb_to_gray` 得到干净递增亮度 `41,56,71,86,101,116,131,146`；
`orientation` 输出 `80,88,88,80,...`；`hash` 输出全 51；`upscale_2x` 均值 63.74。
`composite` 只有 `randomness_lut` 取**一维 256** 时 `errors==0`
（二维 16×16、三维 16×16×1、四维、二维 256×1 全部被
`halide_error_bad_dimensions` 拒绝），所以规格 §7 里"驱动给 randomness_lut dims 全 0"
的记录是错的，不要照抄。

各内核的失败线索（用于回归验证）：`image_fallback_` 曾因 lanes/类型不符被
`bad_type` 拒绝；`image_raisr_` 只有 UInt8 lanes=1 通过；`randomness_lut` 维度数必须为 1。

## 原生驱动

`app/src/main/cpp/mgc_denoise_static/mgc_raisr_driver.cpp` 把五个已实锤 ABI 的内核串成
一次 2x 放大，导出两个 C 链接入口（Kotlin 不直接调用，探针用）：

```text
photon_mgc_raisr_upscale_rgba(input, width, height, output)                // 单次整帧，就地
photon_mgc_raisr_upscale_rgba_banded(input, width, height, output, band_core_rows)
```

单次整帧的约定：入参是原生网格上的成片 float RGBA（0..1 sRGB），同一块 buffer 需能容纳
**2x** 的输出（`64 B/输入像素`）——整帧 scratch 正是下一节 OOM 的根因，所以 App 一律走
分带入口；整帧入口保留给探针做基准比对。

驱动内部顺序：`rgbx_in_(U8 3ch 交错)` → `rgb_to_gray` → luma 复制成 3 通道平面 →
`orientation` → `hash(2W×2H)` → `upscale_2x` → 与 bilinear fallback 一起送 `composite`
→ 用 BT.601 全范围矩阵与 bilinear 色度重组 → float RGBA。

**两处不是"提升原版"而是"按原版行为重建"**（已在文件头注明）：

1. composite 的 fallback 亮度：原版在未提升的 npcam C++ 里做 cheap upscale，这里用同一
   亮度网格上的双线性插值。
2. 色度重组：原版在 `0x3364BC8` 内且未展开，这里用双线性色度 + BT.601 全范围矩阵；
   该矩阵与 `RgbToGray3ChOptHalideU8` 实测一致（`grey(0,64,32)=41=0.299*0+0.587*64+0.114*32`，
   BT.709 会得 64），所以亮度与色度用的是同一套系数，往返不产生色偏。

分带与 Kotlin 入口：

- `mgc_raisr_bands.h` 的 `RunBands<Source, Sink>` 负责分带、halo、预算与裁剪；模板参数只
  要求 `Fill(top, rows, float*)` 与 `Write(row, const float*, count)`，因此 driver 的整帧
  基准与 App 的位图/分块源共用同一份分带逻辑。
- `mgc_raisr_jni.cpp` 提供 `nativeUpscaleBitmap(source, destination)` 与
  `nativeUpscaleTile(source, tileWidth, tileHeight, core*, destination)`，用
  `AndroidBitmap_lockPixels` 直接读写两张位图：源支持 RGBA_F16（GPU 读回的原格式，
  half→float 含次正规）与 ARGB_8888，输出按 Android 的 RGBA_8888 字节序直接落盘，并用与
  驱动输入同一份 `ToU8` 量化，保证 8bit 往返无损。分块 halo 也由原生持有，Kotlin 不再有
  任何 halo/预算常量。
- Kotlin 侧 `MgcRaisrUpscale` 只剩"建一张目标 Bitmap + 调 JNI"，不申请 scratch、不做逐像素
  循环；缩放比例常量仍与 `RAISR_REQUIRED_OUTPUT_SCALE` 对齐。

`./gradlew compileDefaultDebugKotlin buildCMakeDebug` 均通过，
Debug `.so` 内可见 `Java_com_hinnka_mycamera_raw_MgcRaisrUpscale_nativeUpscaleBitmap`
与 `..._nativeUpscaleTile`。

早期阶段（已被上面取代）曾有一个按 Halide buffer 逐内核桥接的
`MgcRaisr_nativeUpscale2x/nativeHash/nativeComposite`（无 Kotlin 调用方）与一个
`nativeRender(float buffer, w, h)`：前者随本次改造删除，后者的 position 被位图入口替换。

待完成：管线接入。RAISR 的输入必须是**原生网格**的成片，而现有 `RawOutputPass` 在
`geometry.resample` 时直接把结果画到 2x 目标上（含分块路径 `outputRegion = scaledCore`）。
所以不能简单替换着色器分支，需要在 RAISR 模式下把输出通道改为 1x 目标再跑 RAISR 到 2x，
并确认分块时 1x 中间纹理的完整性。

### 管线接入（本轮已完成）

- `RawOutputPass.Input.nativeCopy`：新增开关，强制 `uResample=0` 且 `uNativeGrid=1`，
  在几何本身是 2x 的情况下仍按原生网格做无插值输出。这是 RAISR 需要的"喂给它原生网格"。
- `RawDemosaicProcessor.renderOutputPass(..., nativeCopy)` 透传该开关。
- 分块路径：`outputGeometry.raisrUpsample` 为真时，先把该 tile 以 `nativeCopy` 渲到
  `tile.outputCore`（原生网格），`readTilePixels` 取回原生 tile，再交给
  `MgcRaisrUpscale.upscale(Bitmap)` 得到 2x tile，最后画到 canvas 的 `scaledCore` 位置。
  因为输出倍率恰好是 2x，`scaleRegion` 的取整是精确的，tile 边界不会产生接缝。
- **RAISR 强制走分块路径**：`highResolutionOutput` 增加 `outputGeometry.raisrUpsample`。
  若分块仍不可用（`tileBlockingReason != null`），未分块分支会**明确打错误日志**说明
  结果仍是 Lanczos-3，而不是静默降级。
- `MgcRaisrUpscale` 增加 `upscale(Bitmap): Bitmap?`：分块路径最终是在 Bitmap canvas 上
  拼装，这条重载让驱动可直接消费/产出 8 位图，省掉一次纹理往返；RAISR 链本身内部就是
  8 位量化，用 ARGB_8888 承载不额外损失。

`./gradlew compileDefaultDebugKotlin buildCMakeDebug` 均通过。

仍待处理：

1. **未分块分支尚不支持 RAISR**（当前明确报错并保持 Lanczos）。需要给
   `outputGeometry.raisrUpsample` 且分块被拒的情况也接上原生→RAISR→2x 的路径。
2. **真机出图未验证**：按仓库约定不执行增量安装，因此没有在设备上跑完整拍摄链路；
   驱动本身的五个内核描述符已在探针里逐个实测通过，但"真实拍摄 → RAISR 成片"未闭环。
3. 两处"重建而非提升"的子步骤（cheap fallback、色度重组）见上文，需在真机上确认观感。

## 真机驱动自测：缺陷已定位并修复

### 两个缺陷（一个是探针的，一个是驱动的）

1. **探针缺陷（已修）**：我为 lanes 支持加的"1 通道快速路径"把元素 code 硬编码成了
   `Int`，于是所有单通道缓冲变成 `Int8`，被内核按类型拒绝。它污染了 composite 的全部
   测量（`raisrMean=0.00` 就是这么来的）。修正后：`orientationMean=72.49`、
   `hashMean=51.20`、`raisrMean=63.74`、composite 输出均值 `63.74`，全部 `errors=0`。
2. **驱动缺陷（已修）**：`rgbx_in_` 我按二维（`{W,3}`/`{H,3W}`）构造，真机报
   `Input buffer rgbx_in_` 类型校验失败。正确形式是**三维**：
   `{0,W,3,0} / {0,H,3W,0} / {0,3,1,0}`（最内 stride = 通道数，通道维 stride = 1，即交错 RGB）。
   这也解释了为什么探针能过而驱动不能：探针的交错包装本来就会发三个维度。

### 修复后的实测

```text
driver status=0 errors=0 last='' out=128x96 mean=0.5602 min=0.0000 max=1.0000
       unwritten=0 vsBilinearMeanAbs=0.00405 first=0.000,0.000,0.122,1.000
```

- `errors=0`：五个内核全部接受描述符，没有任何校验回退。
- 尺寸正确（64×48 → 128×96），数值全在 [0,1]，无未写入像素。
- **电平正确**：输出 RGB 均值 0.4136，而该测试图案的真实输入 RGB 均值为
  0.4167（R 是左右对折的斜坡，均值 0.25；G、B 各 0.5）。之前的"偏暗"是我算错了
  输入均值，不是驱动问题。
- **与双线性参考的平均绝对差仅 0.00405**：在合成渐变上，一个健康的放大器本就应当
  非常接近双线性，只差一点锐化/细节重建。
- 另外单独验证 `upscale_2x` 是保电平的：平坦场 64→64.00、128→128.04、200→200.96。
- 重复运行结果完全一致（确定性）。

`./gradlew compileDefaultDebugKotlin buildCMakeDebug` 均通过。

仍待处理：真机**完整拍摄链路**出图（受"不要增量安装"约束未做）；两处"重建而非提升"
的子步骤（cheap fallback、色度重组）的观感确认。

### 管线接入的当前边界（必须说清）

- **未分块路径已接 RAISR**：用 `nativeGrid()` 把整帧渲到原生网格再跑驱动。这条路径的
  `uNativeGrid` 区域就是整图，纹理坐标与区域一一对应，映射是确定的。
- **分块路径暂不应用 RAISR**：`RawOutputPass` 的 `uNativeGrid` 分支按
  `vTexCoord * textureSize` 直接取纹素，**不经过 `uTexMatrix`**；而分块时喂进去的是带
  support 边距的 working 纹理，区域起点不在纹理原点。我之前那版按 `tile.outputCore`
  传 `outputRegion`（该参数是**输出坐标**语义）并且忽略了 support 偏移，属于未验证且
  很可能错误的做法，已撤掉。现在分块遇到 RAISR 会**明确打错误日志并保持 Lanczos-3**，
  不会产出错误像素。
- 因此：**目前 RAISR 只在小尺寸（不分块）输出上真正生效**；大尺寸 2x 会走分块并退回
  Lanczos。这是现阶段的真实覆盖范围，不是完成态。

正确的分块做法（**本轮已实现**，坐标事实与依据）：

```text
raisrTransfer(Layout.FLOAT).read(sharpenTextureId, workWidth, workHeight, ...)
  -> MgcRaisrUpscale.upscaleTile(核心 = localSourceCore，halo 由原生按 kBandHaloPx 自行加/裁)
  -> MgcRaisrUpscale.rotateForOutput(结果, config.rotation)
  -> sdrCanvas.drawBitmap(结果, scaledCore.left, scaledCore.top, copyPaint)
```

三条约定已落实并给出依据（不是猜的）：

1. **working 纹理是 source 朝向**。`toOutputBounds(rotation)` 对 90/270 只做
   `Rect(top,left,bottom,right)` 的维度交换；而 demosaic/色彩/sharpen 各遍都以
   `globalOriginX/Y = working.left/top`（source 坐标）工作，只有最后的
   `renderOutputPass` 才应用旋转。所以纹理内 core 用 `localSourceCore`。
2. **行序 row 0 = 图像顶部**。`createBitmap` 来自 `androidx.core.graphics.createBitmap`，
   不做翻转；`readTilePixels` 直接 `copyPixelsFromBuffer` 就得到正确图像，说明帧缓冲里
   存的是 Y 翻转后的内容。pack compute shader 写的是
   `pixels[p.y*uSize.x+p.x] = texelFetch(uInput, p + (0,uRowOffset))`，其 y=0 同样是 GL
   底部，于是两条路径的行序一致，我的按行拷贝不需要翻转。
3. **旋转用 `postRotate(rotation)`**。shader 用
   `Matrix.rotateM(textureMatrix, 0, -rotation, ...)` 旋转的是纹理坐标，等价于输出图像
   相对源图旋转 `+rotation`；这与仓库既有 `PhotoProcessor.rotateBitmapForRawOutput`
   的 `postRotate(normalized)` 一致。

halo 取 4 px：远小于 `RAW_TILE_SUPPORT_PX = 112`，所以一定落在 working 纹理内，且被
完整裁掉，不会影响 2x 与 `scaleRegion` 的精确对齐。

**仍未在设备上验证**：分块路径的朝向与接缝（需要安装 APK 走完整拍摄链路，受
"不要增量安装"约束未做）。未分块路径与驱动本身已在设备上验证。

已加的运行时不变式：分块结果尺寸必须等于 `scaledCore` 的尺寸（2x 与 `scaleRegion` 精确
对齐），不等则打错误日志并放弃该 tile，而不是把错位的图块画上去。

**性能提示（需要真机评估）**：RAISR 是 CPU 链路（每像素要跑 orientation/hash/5×5 滤波/
composite），而分块循环是串行的。以 12MP 原生输入、2x 输出为例，每帧要走 5 个内核 ×
12M 像素；这与 MGC 原版同样吃 CPU，但本 App 的分块是逐块串行，实测耗时需要在真机上确认
（`RAW_TILE_DONE` 日志里的 `upscale=raisr` 与 `tookMs` 可直接对比 Lanczos 路径）。

**探针实测吞吐（`perf` 模式，本轮修正）**：

```text
perf iter=1 in=1024x768 status=0 ms=225 msPerInputMP=286
perf iter=2 in=1024x768 status=0 ms=88  msPerInputMP=112
perf iter=3 in=1024x768 status=0 ms=60  msPerInputMP=77
```

三点必须说明，否则数字会被误读：

1. **首次调用含分配与缺页开销**：iter1 的 225 ms 里约 165 ms 是首次分配/触碰内存，
   稳态是 iter3 的 **60 ms / 0.786 MP ≈ 77 ms per 输入 MP**。按此外推 12MP 单线程约
   **0.9 s**（先前记的 212 ms/MP 是含冷启动的首次值，已作废）。
2. **这是单线程**。探针里的 `photon_mgc_halide_do_par_for` 顺序执行任务；App 里的
   `HalideDoParFor`（`mgc_denoise_static.cpp:395`）会 `pthread_create` 最多 15 个 worker
   真正并行，所以 App 实测应当更快。
3. 因此 RAISR 落地后的耗时量级是**秒级以内**，而不是最初估计的"十几秒"。真机拍摄时用
   `RAW_TILE_DONE` 的 `tookMs` 与 Lanczos 对照仍是最终判据。

顺带说明：迭代间变快主要来自分配器复用与页缓存，显式做 scratch 池的额外收益有限
（剩余约十几到二十个百分点），暂不为它引入每 tile 长驻的大块内存。

## 真机验证清单（交给使用者执行）

日志标签：Kotlin 侧 `PLog_<tag>`，即 `PLog_RawDemosaicProcessor`；原生驱动
`PLog_MgcRaisr`。

**A. 设置项自检**

1. 专业模式 →「图像质量」→「输出放大算法」应有 Lanczos-3 / MGC RAISR 两项。
2. 选 MGC RAISR：输出倍率滑杆显示 `2.00×`、置灰不可拖，描述变为"MGC RAISR 仅在 2× 下放大…"。
3. 切回 Lanczos-3：滑杆恢复 1.00×–2.00× 可拖动。
4. 杀进程重开：选择与锁定的倍率都应被记住。

**B. 拍摄与日志**

```bash
adb logcat -c
adb logcat -s PLog_RawDemosaicProcessor PLog_MgcRaisr
```

专业模式、RAWmax 开启、2x 输出拍一张，然后核对：

应当出现

- `RAW_OUTPUT_RESAMPLING … upscale=MGC_RAISR raisr=true`
- 每块一行 `RAW_TILE_DONE … scaled=Rect(…) localCore=Rect(…) upscale=raisr tookMs=…`，
  且 `scaled` 的宽高应恰为 `localCore` 的两倍（2x 对齐的直接证据）

出现即为缺陷（请把整行发回）

- `MGC RAISR tile is AxB but its scaled core is CxD` → 区域空间取错
- `MGC RAISR upscale failed status=` / `MGC RAISR tile upscale failed status=` → 原生入口拒绝了
  格式/尺寸（`PLog_MgcRaisr` 会指出是哪个 buffer 或哪一步）
- `PLog_MgcRaisr` 的 `banded upscale failed:` / `banded tile upscale failed:` /
  `unable to lock …` → 该张（或该 tile）退回 Lanczos，需连同前后日志发回
- `MGC RAISR unavailable … using Lanczos-3` → untiled 路径同样退回 Lanczos
- `MGC RAISR requested but tiling is unavailable` → 分块被拒，退回 Lanczos
- 任何 `Input buffer …` 的 Halide 校验日志

**C. 出图对照（同一场景拍 Lanczos-3 与 MGC RAISR 各一张）**

1. 朝向 / 镜像：RAISR 图不得上下翻转或左右镜像（看天空与地面、文字标牌）。
2. 接缝：天空、墙面等平坦区域放大到 100%，看 tile 边界（`localCore` 的 left/top）有无细亮/暗线或错位。
   整帧路径现在按 **32 MiB 预算分带**处理，同样要看**水平横带边界**（约每 160 行一条）是否有横线。
3. 色调：白平衡与色相应与 Lanczos 版一致，不得整体偏色。
4. 亮度：整体亮度应与 Lanczos 版接近；若明显偏暗，先怀疑 composite 的标量参数。
5. 细节：细纹理（树叶、织物、砖墙）应更锐、边缘更干净；出现振铃或更软也要记录。

**D. 耗时**

汇总两次拍摄 `RAW_TILE_DONE` 的 `tookMs`（每块与总计）。RAISR 是 CPU 链路，预计显著慢于
Lanczos；量级差异需要如实记录，作为是否默认关闭该选项的依据。

## 持久化缺口：已修复

按 `rawColorEngine` 的既有模式补齐了相册数据库的持久化：

1. `GalleryMediaEntity` 新增
   `@ColumnInfo(defaultValue = "'LANCZOS3'") val rawOutputUpscaleMode: String = "LANCZOS3"`。
2. `GalleryDatabase` 版本 **45 → 46**，新增 `MIGRATION_45_46`
   （`ALTER TABLE gallery_media ADD COLUMN rawOutputUpscaleMode TEXT NOT NULL DEFAULT 'LANCZOS3'`，
   回填值取 Lanczos-3，与"更早的照片都是 Lanczos 放大"这一事实一致），并加入迁移列表。
   历史迁移体（含 536 行那处建表重建）**保持冻结不动**；全新安装由 Room 依据实体建表、
   直接标记为 46，不会跑迁移。
3. `GalleryMediaStore.buildEntity` 写 `metadata.rawOutputUpscaleMode.name`；
   `GalleryMediaEntity.toMetadata()`（实体扩展函数，字段直接取自实体）读回并
   `RawOutputUpscaleMode.fromName(...)`，缺省即 Lanczos-3，兼容旧行。
4. `MediaMetadata.fromJson` 的往返也已补上。

`compileDefaultDebugKotlin` / `buildCMakeDebug` 均通过。

## 渲染调用点的取值来源（本轮收敛）

9 处 `rawOutputScale = RawOutputScaling.read(...)` 的调用点原先用
`RawOutputScaling.readUpscaleMode(metadata.customProperties)` 取算法。但
`customProperties` 里的该属性是在**同一个 `saveRawStackedPhoto` 内稍后才写**的
（`RawOutputScaling.write(..., metadata.rawOutputUpscaleMode)`），存在顺序依赖：
拍摄当次渲染有可能读不到。现在 9 处全部改为直接取已持久化的照片字段
`metadata.rawOutputUpscaleMode`（`updatedMetadata` / `rawMetadata` 同理），
顺带把 DB 修复的价值用满。

已审计：`app/src/main` 里所有传 `rawOutputScale` 的调用点都同时显式传了
`rawOutputUpscaleMode`，不存在"具名参数缺省 → 静默退回 Lanczos"的位置
（缺省值本身也是 `LANCZOS3`，是安全默认）。

## 色彩空间与精度（已核对，不是缺陷）

- 分块目标 `sdrBitmap` 是 `RGBA_F16` + `workingColorSpace`；而
  `resolveWorkingColorSpace()` 恒为 **sRGB**（不是 linear、不是 P3）。RAISR 产出的
  `ARGB_8888` 位图默认就是 sRGB 色彩空间，**因此 `drawBitmap` 不会触发任何色彩空间转换**，
  不存在由此引入的偏色。若将来把 `resolveWorkingColorSpace()` 改成线性或 P3，就必须同步给
  RAISR 的位图设置同一色彩空间（`Bitmap.setColorSpace`，只改解释、不改数值），否则会出现偏色。
- RAISR 链路在**进出两端各量化到 8 位**（位图是 ARGB_8888），而 Lanczos 路径全程 F16。
  这不是精度回退，而是算法本身的性质：提升上来的五个内核都在 UInt8 成品域工作，
  MGC 原版喂给它们的也是 u8 成品图。已在此显式记录，避免被误当成 bug 去"修"。

## JNI 入口的校验（历史：容量校验 → 位图入口）

早期 `nativeRender(float buffer, w, h)` 只校验 `capacity >= width*height*16` 字节，而函数
实际要写 **2x** 的 RGBA float（`64 B/输入像素`），即**少算 4 倍**，任何按 1x 尺寸申请缓冲的
调用方都会被越界写。当时改为 `capacity >= width*height*64`。

该入口已随"Kotlin 不持有 scratch"的重构删除，由位图入口取代：`nativeUpscaleBitmap` 用
`AndroidBitmap_getInfo` 校验源格式（RGBA_F16 / ARGB_8888）与目标 `2W×2H` + RGBA_8888，
`nativeUpscaleTile` 校验核心矩形落在 tile 内、DirectBuffer 容量 ≥ `tileW*tileH*16`、目标恰为
`2*coreW × 2*coreH`。容量错算这一整类隐患因此不再存在于调用边界上——缓冲不再由 Kotlin 提供。

## 分块 halo 实测（决定性证据）

上一轮只能"推理"halo 取 4 够不够。用探针在真机上直接量了：

做法：在 192×128 图上跑一次完整驱动作为基准；再取内部 64×32 的 core、外加不同 halo
裁出来单独跑一次；比较结果图里 core 对应区域是否与基准逐位一致。

```text
halo= 0 status=0 maxDiff=0.0392 meanDiff=0.00036   ← 边缘被 clamp，约 10/255 的误差
halo= 2 status=0 maxDiff=0.0000 meanDiff=0.00000   ← 已经逐位一致
halo= 4 status=0 maxDiff=0.0000 meanDiff=0.00000   ← 当前取值，留有 2px 余量
halo= 6/8/16 同样 maxDiff=0.0000
```

结论：

1. RAISR 链（orientation + hash + 5×5 per-shift + composite）在 1x 网格上的真实支撑
   **≤ 2 px**；halo=2 就足以让分块结果与整图结果**逐位相同**。
2. 代码里取 `photon_raisr::kBandHaloPx = 4`（`mgc_raisr_bands.h`，Kotlin 侧不再有该常量），
   有 2 px 余量，且实际输出与基准完全一致——**分块的"内容正确性"由此得到实证**，接缝只可能
   来自 Android 侧的拼装/朝向，不可能来自 RAISR 本身。
3. 这也把 halo 从"猜测"变成了"有数据的余量选择"。

因此真机验证清单里需要你确认的部分，收敛为**Android 侧的绘制环节**（朝向/翻转/色彩空间/
位置对齐），而非算法内容。

## 真机首拍发现并修复：竖屏变横屏（转置）

实测拍摄日志（`RAW_OUTPUT_RESAMPLING source=2728x2048 physicalSize=4080x3064 scale=2.0
output=6128x8160 lanczos=true upscale=MGC_RAISR raisr=true`）后，最终
`SDR_BITMAP_COMPLETE size=5456x4096` —— **期望 6128×8160 竖屏，实际 5456×4096 横屏且压扁**，
而 5456×4096 正好是 `2728×2048` 的 2 倍。

根因：`RawOutputGeometry.nativeGrid()` 把**旋转后**的 `nativeWidth/nativeHeight`
（rot=90 时为 2048/2728）当成 `referenceWidth/referenceHeight` 传了进去，而这两个参数是
**未旋转**语义（构造函数会按 rotation 再交换一次）。于是 1x 网格变成 2728×2048（横屏），
渲染与 RAISR 全部在错误的网格上进行，最终竖屏场景被转置成横屏。

修复：`nativeGrid()` 改为**沿用同一 reference**，只把 scale 置 1：

```kotlin
RawOutputGeometry(sourceBounds, rotation, 1f, referenceWidth, referenceHeight)
```

按日志数值验算：reference `4080×3064`、rot=90 → 1x 网格 `3064×4080`（竖屏）→ RAISR 2x →
`6128×8160` ✓，与期望输出一致；无数码变焦时 reference 等于裁剪尺寸 `2728×2048` →
`resample=false` → 精确原生拷贝 → RAISR 2x → `4096×5456` ✓。两种情况都自洽。

**数码变焦并存时的语义**（这次拍摄正好命中）：`physicalSize` 存在时 1x 网格是物理输出尺寸，
源裁剪到物理尺寸之间那一步（本日志为 1.496×）仍由 Lanczos 完成，RAISR 只承担最后的整数 2x。
这与 MGC `RaisrUpsample` 要求整数倍率一致；代价是该组合下 Lanczos 会参与，需要在文档里如实标注。

顺带把分块路径的失败模式从"整张照片失败"改成**软回退**：若 RAISR tile 尺寸不等于
`scaledCore`（数码变焦下会出现），只对该 tile 打错误日志并改用 Lanczos-3，
不再 `return null` 让整次拍摄失败。

## 真机次拍发现并修复：整帧 scratch 导致 OOM（分带处理）

第二次实拍在 `MgcRaisrUpscale.upscale` 抛
`java.lang.OutOfMemoryError: Failed to allocate a 800071699 byte allocation`。

根因（算术可复核）：驱动是**原地**放大，调用方缓冲必须同时容纳输入和 2x 输出，
即 `2w*2h*4ch*4B = 64 B/输入像素`。本次输入 1x 网格 `3064×4080`（12.5 MP），
`3064*4080*64 = 800,014,080 B` ≈ 763 MiB，与日志的 800,071,699 B（含 direct buffer
对齐/头部）一致。这是**单次分配**，必然失败；此前 `> Int.MAX_VALUE` 的守卫也拦不住
（763 MiB < 2 GiB）。

修复不是加补偿措施，而是换掉"整帧 scratch"这个设计，并且把整条放大链路搬进原生：

- `mgc_raisr_bands.h` 的 `RunBands<Source, Sink>` 按**水平分带**跑完整条链。每带取
  `coreRows + 2*4` 行输入，带高由 `kBandScratchBudgetBytes = 32 MiB` 反解
  （`budget / (width*64) - 2*halo`），因此单带 scratch ≈ 32 MiB 且与画面尺寸无关；带内结果
  按行交给 Sink，不再有"整帧 float 数组"。
- 分带只在 Y 方向加 halo，X 方向贯通整幅，因此左右边缘就是真实图像边缘。
  上一节的 halo 实测（halo≥2 逐位一致）直接覆盖这个用法。
- 整帧与分块两条路径共用同一个 `RunBands`：driver 侧 Source/Sink 是整帧指针（探针基准），
  JNI 侧 Source 是"RGBA_F16/ARGB_8888 位图行"或"tile 的 float 切片"、Sink 是"目标位图的
  ARGB_8888 行"。
- **Kotlin 不再持有任何 scratch**：`MgcRaisrUpscale` 只 `Bitmap.createBitmap` 出目标图（那
  就是最终交付的图），然后调 JNI；像素格式转换、half→float、量化全部在原生，且用
  `AndroidBitmap_lockPixels` 直接读写位图。
- 分带缓冲及驱动内部全部 vector 分配失败均返回 -2，由调用方走既有的软回退；驱动在 C
  入口内捕获 `std::bad_alloc`，防止异常跨越 JNI。`RunBands` 仍校验 core 必须落在输入区域内。

**分带下限（均匀分带修复前的探针结果）**：新增 `band` 模式，把
`photon_mgc_raisr_upscale_rgba_banded` 的输出与整帧基准**逐位**比对（192×128，比较全部
393216 个 float）：

```text
bandCoreRows=  3 status=0 errors=2 last=0x5f94ec4 name='Input buffer image_fallback_' maxDiff=0.8627451 differing=10712/393216
bandCoreRows=  4 status=0 errors=0 maxDiff=0.0000000 differing=0/393216
bandCoreRows= 16 status=0 errors=0 maxDiff=0.0000000 differing=0/393216
bandCoreRows= 40/64/128/256 同样 maxDiff=0.0000000 differing=0
```

上述固定步长实验中，核心行数 ≤3 时 composite 会拒绝自己那张 fallback buffer
（`halide_error_buffer_extents_too_small`，桩 `0x5F94EC4`，名字 `Input buffer image_fallback_`），
该带结果与整帧不再一致；**≥4 行逐位一致**。这条边界属于 AOT wrapper 的实现细节、不是任何
文档化契约。仅让 `BandCoreRows()` 取 `kMinimumBandCoreRows = 16` 不能约束最后一带的余数：
审查探针以 `1024×1009` 输入、预算推导出的 504 行容量运行，尾带只剩 1 行，仍触发
`image_fallback_` 校验，按应用错误桩返回 `100224708`。

现在将 core 均匀分成 `ceil(coreHeight / capacity)` 带，各带行数最多相差 1，且不超过容量。
容量下限仍为 16；需要多带时，每带 core 至少 8 行，从分带几何上消除短尾带。3064 宽的容量
为 163 行，1770 宽的容量为 288 行；实际行数由均匀划分决定，scratch 上限不增加。

探针构建与运行（NDK 29 交叉编译，链接 App 构建产物里的两份 `.S`）：

```bash
NDK=~/Library/Android/sdk/ndk/29.0.14206865
$NDK/toolchains/llvm/prebuilt/darwin-x86_64/bin/aarch64-linux-android30-clang++ -O2 -std=c++17 \
  -I app/src/main/cpp/mgc_denoise_static \
  -o raisr_probe .codex-tmp/ida/mgc_v25/raisr_recon/probe/raisr_probe.cpp \
  app/src/main/cpp/mgc_denoise_static/mgc_raisr_driver.cpp \
  app/.cxx/Debug/4m3j6146/arm64-v8a/mgc_raisr_static.S \
  app/.cxx/Debug/4m3j6146/arm64-v8a/mgc_raisr_tables_static.S -llog
adb push raisr_probe /data/local/tmp/ && adb shell "cd /data/local/tmp && ./raisr_probe band"
```

管线侧同时补齐 untiled 路径的回退：RAISR 返回 null 时，用同一张已 finalize 的纹理
重新 `renderOutputPass(geometry = outputGeometry)` + `readPixels(finalWidth, finalHeight)`，
即完全走 Lanczos-3 网格；HDR gain reference 的告警只在 **RAISR 真正生效**（`raisrApplied`）
时才打印。分块路径本来就是逐 tile 软回退。

修复后各路径峰值（1x 3064×4080 → 2x 6128×8160）：
源位图 ~95 MiB（`readPixels` 既有路径读回的 RGBA_F16，框架位图、原生堆）+ 目标位图 ~200 MiB
（最终交付的图）+ 单带 scratch ~32 MiB + 驱动内部（按带，~30 B/源像素的 `std::vector`）
~10 MiB，合计 ~340 MiB；此前是 763 MiB 单次分配 + 200 MiB IntArray + 50 MiB IntArray，
且后两者都在 Kotlin 侧。Kotlin 现在不申请任何 scratch，也不做任何逐像素运算。

## 代码审查修复验证（2026-09-20）

验证使用临时 NDK 探针链接当前驱动与 AOT 构建产物，未安装应用；Halide 错误桩返回值与应用
一致，不再以返回 0 掩盖内核校验失败。

- **色度量化**：`RgbToChroma` 在写入 UInt8 前执行饱和量化，避免纯红的 Cr=256、纯蓝的
  Cb=256 窄化后回绕为 0。真机输出由 `(0,183,0)`、`(0,88,0)` 分别变为 `(254,1,0)`、
  `(0,0,253)`；剩余微小误差来自既有的亮度滤波和 8 位色度量化。
- **分块坐标**：`TileSource` 同时保存 region 的 left/top，`Fill` 的行号为 region 局部坐标。
  用生产代码的 `TileSource`、`ArgbSink` 和 `RunBands`，在 `192×192` 图上检查核心大小
  `64×32`、left=`0/24/128`、top=`0/112/160` 的九个位置，均与整帧结果对应区域逐字节一致。
  此检查覆盖原生取数及写出，不覆盖 Android 旋转和 Canvas 拼装。
- **尾带**：`1024×1009` 输入，容量 `16/336/504/505/1009` 均返回 0，无 Halide 校验错误，
  每组比较全部 16,531,456 个 float，差异数均为 0。
- **内存失败**：依次对分带缓冲和驱动十张中间图的分配注入 `std::bad_alloc`，11 个位置均
  返回 -2；移除故障后再次调用返回 0。
- **资源生命周期**：`releaseTiledRenderFramebuffers()` 释放 `raisrTransfer` 的 buffer/FBO，
  保留各 tile 间复用；处理器 `release()` 释放其程序及全部状态。此项已核对释放调用链，
  尚未进行完整拍摄下的 GPU 内存测量。
- `compileDefaultDebugKotlin`、`buildCMakeDebug` 均通过。

## 未决事项

- composite AOT 内核没有任何直接 `BL`／重定位引用（应经函数指针间接调用），
  入口地址需从 `0x35A1B24/0x35A1D80/0x35A216C` 调用链确认。
- `randomness_lut` 的生成方式与尺寸、census 的具体定义需从上述调用链确认。
- `CensusHighFreqBlenderHalide`/`SharpenDOGHalide` 属于相邻的 polysharp/blender
  阶段，是否纳入本次范围需确认（Photon 已有自己的锐化/GuidedUpsample 阶段）。

## 范围评估

即使只做最小忠实集合（哈希 + 2x per-shift + composite + 驱动胶水），
也包含 3 个 AOT 闭包的提升、静态数据提取、npcam 胶水重写、JNI、管线接入与
多语言设置，属于多阶段工程；3x/4x 与 polysharp/blender 内核可按需扩展到同一框架。
