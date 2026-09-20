# MGC 9.7.047 V25 RAISR 驱动胶水（npcam/C++ 侧）算法规格

本文只覆盖 **AOT 内核之外的胶水层**：`RaisrUpsample` 阶段、compiled-params、滤波器组、
哈希接口、composite 输入、调用顺序与尺寸。三个 AOT 内核本体（2x per-shift 5x5 滤波、
hash/filter-class、composite）由他人另行 lift，本文只写它们的**接口契约**。

## 0. 二进制与取证方式

- 目标：`.codex-tmp/mgc_v25/apk/lib/arm64-v8a/libgcastartup.so`
- SHA-256：`76966e7c150dfcb2795ea5b2119827a7e90b13d8c03035dbc4de583d9d12eaa6`（本次已重新校验（verified））
- 段映射（`llvm-readelf -l`（verified））：
  - `.rodata` VA == 文件偏移
  - `.data` 所属 LOAD 段 `Offset=0x61f9ec0 VirtAddr=0x61fdec0` ⇒ **`.data` 文件偏移 = VA − 0x4000**
    （用 `R_AARCH64_RELATIVE` 槽位交叉验证：`.data` 内 4944 个指向 `.rodata` 的 RELATIVE 槽，
    在 VA−0x4000 处全为 0（与"重定位槽在文件中置 0、addend 存 `.rela.dyn`"一致）（verified））
  - 与 `llvm-objdump -s -j .data` 的 VA 行号交叉一致（verified）
- 反汇编：`/opt/homebrew/opt/llvm/bin/llvm-objdump -d --arch-name=aarch64 --start-address=X --stop-address=Y`
- 函数边界来自 `.codex-tmp/ida/mgc_v25/raisr_recon/fde_ranges.txt`（`start size end`）
- 本次新增的原始转储（scratch，未入构建）：
  `.codex-tmp/ida/mgc_v25/raisr_recon/spec/{xref.py,355f230.txt,355ffec.txt,3589540_3589BF0.txt,`
  `0x358f370_0x358f794.txt,0x35a1b24_0x35a27f8.txt,composite.txt,hash2x.txt,2xkernel.txt,`
  `3589300_35894AC.txt,data_hexdump.txt,relocs.txt}`
- 本文档标记规则：仅当有指令/字符串/原始字节直接支撑时写 **(verified)**；由多处证据推出但
  非直接观察写 **(inferred)**；无法静态判定写 **未决**（附具体原因）。

### 关键内核名表（`.rodata`，名字串地址（verified））

| 名称串地址 | 名称 | 入口（本表新确认的绑定见正文） |
| --- | --- | --- |
| `0xBB5E80` | `NanoRaisrUpscalePerShiftFRH2xInt16Opt5x5Halide` | `0x358A240` |
| `0xBB6340` | `NanoRaisrUpscalePerShiftFRH3xInt16Opt5x5Halide` | `0x358BEF0` |
| `0xBB6800` | `NanoRaisrUpscalePerShiftFRH4xInt16Opt5x5Halide` | `0x358DC94` |
| `0xBB6CC0` | `HashFromOrientation2xThinOptHalide` | `0x3591F3C` |
| `0xBB7000` | `HashFromOrientation3xThinOptHalide` | `0x3596470` |
| `0xBB7340` | `HashFromOrientation4xThinOptHalide` | `0x359A41C` |
| `0xBB7620` | `OrientationUint8ThinOptHalide` | `0x359DAF4` |
| `0xBB7900` | `CensusHighFreqBlenderHalide` | 相邻阶段（本次不展开） |
| `0xBB7C40` | `SharpenDOGHalide` | 相邻阶段（本次不展开） |
| `0xBB8000` | `CopyImageHalide` | `0x35BC4C0` **(inferred)** |
| `0xBB82E0` | `NanoRaisrCompositeHalide` | `0x35C8C54`（由 `0x35A1F70` 调用（verified）） |

> 更正前一版文档的一处判断：`0x358F794` **不是**独立的 cheap-upscale 内核，它是
> `HashFromOrientation*` 的 `halide_do_par_for` 体：hash 内核在 `0x35928D8`
> `ldr x1, [x1, #0x80]`（`x1 = GOT[0x61E7080]`）取函数指针，而 `.rela.dyn` 中
> `r_offset=0x61E7080 → addend=0x358F794`（verified）。

---

## 1. RAISR upsample 的完整数据流、域、位深与尺寸/对齐

### 1.1 入口与前置检查

`RaisrUpsample` 阶段入口 **`0x355F230`**（FDE `0x355F230..0x355FFEC`，size `0xDBC`）。
该函数在整份 `.text` 中只有一个调用者：`0x3364BC8`（位于 `0x33641DC..0x3365320`）
（verified，`bl` 全量扫描）。因此"RAISR 结果如何与色度合成"发生在 `0x33641DC` 内，
本次未展开（见未决事项 §8）。

入参（verified）：

- `x0` = 源图像描述符；`float` 域取 `[x0+0x10]` 与 `[x0+0x28]`
  （`0x355F2A4 ldr x8,[x21,#0x10]`、`0x355F2B8 ldr x8,[x21,#0x28]`；
  `scvtf s1, x8` ⇒ 这两个字段被当作**像素数**，即源宽/高）
- `x1` = user_context（`0x355F40C str x23, [x0]`，写入 `0x427D2F0` 返回的 TLS 槽）
- `x2` = 打包尺寸：低 32 位 = 目标宽，高 32 位 = 目标高
  （`0x355F29C lsr x19, x2, #32`；`0x355F2A8 scvtf s0, w25`（低半））
- `x3` = 调试/统计相关（`0x355F400 str x26, [sp,#0x58]`，后续只用于可选的 trace 对象）

```asm
355f2c4: fdiv s0, s0, s1     ; s0 = 目标宽 / 源宽
355f2d4: fdiv s1, s1, s2     ; s1 = 目标高 / 源高
355f2d8: fcmp s0, s1
355f2dc: fcsel s8, s1, s0, mi ; s8 = min(rx, ry)
355f2e0: fmov s0, #2.0
355f2e4: fcmp s8, s0
355f2e8: b.pl 0x355f400       ; s8 >= 2.0 才跳过报错
355f2f4: ... 0x604392 "Upsample: RaisrUpsample expects a resample_rate >= %f but was %f"
```

- **`resample_rate = min(target_w/src_w, target_h/src_h)`，要求 ≥ 2.0**（verified）。
  不满足时只打日志（`__android_log_write(6, "libgcam", ...)`，`0x355F38C..0x355F3B0`）后继续。

### 1.2 cheap 输入：luma 由 RGB→Gray Halide 内核产生

- `0x355F554 bl 0x3C4E098`：`0x3C4E098` 把 `sp+0x2F8` 的 TImage 包成 Halide buffer 后
  调用 `0x3C50CBC`（`0x3C4E150 bl 0x3C4E1F0` 建 buffer，`0x3C4E164 bl 0x3C50CBC`）。
- `0x3C50CBC` 引用的字符串为 `0xC32640 "Output buffer result"`、
  `0xC32660 "Input buffer rgbx_in_"`、`0xC326C0 "rgbx_in_.stride.0"`，
  而内核名 `0xC32620 "RgbToGray3ChOptHalideU8"` 紧邻其前（verified）
  ⇒ **RAISR 的输入亮度由 `RgbToGray3ChOptHalideU8`(`0x3C50CBC`) 从 3 通道 RGB 生成**。
- 结合 `0x58BF21` 的源码级调用串
  `NanoRaisrDirectUpscaleAndRefineLumaMin( *input_y_npcam, cheap_upscaled_y_npcam.get(), compiled_params, nano_raisr_filters, sharpen_params, raisr_rescale_factor, disable_sharpening_and_blending_pass, raisr_upscaled_y_npcam)`
  （`0x355FF40` 的 `adrp x3,0x58b000; add x3,x3,#0xf21`（verified））可知：
  进入 RAISR 的是**亮度域**，且源码层面存在"低分辨率 luma"与"cheap upscale 后的 luma"两个图像。

### 1.3 两个 npcam 缓冲 / 0x68 字节分配

```asm
355f410: mov w0, #0x68
355f414: ldr x9, [x21, #0x28]   ; 源高
355f41c: ldr x8, [x21, #0x10]   ; 源宽
355f420: lsl x20, x9, #1        ; 2*源高
355f424: lsl x19, x8, #1        ; 2*源宽
355f428: bl  0x604e104          ; operator new(0x68) -> x24
355f444: stp x19, x8, [x24, #0x28]
355f448: stp x20, x8, [x24, #0x40]
```
之后（`0x355F4D8`）又取 `x19=[x21+0x10]`、`x20=[x21+0x28]`（未乘 2）另建 `x25`
（`0x355F504 stp x19,x8,[x25,#0x28]`、`0x355F508 stp x20,x8,[x25,#0x40]`）。
- `x24` = 2×源尺寸 的缓冲描述符，`x25` = 1×源尺寸（verified）。
- 这些 0x68 字节对象经 `0x3C4D990`(`0x355F548`)、`0x3C4E098`(`0x355F554`)、
  `0x3C4D888`(`0x355F5D0`) 在 npcam 结构与 Halide `buffer_t` 之间来回转换；
  转换函数本体未展开（见未决事项 §8）。

### 1.4 传给滤波驱动的实际尺寸（verified）

`0x355F75C` 起（参数装载）：

```asm
355f754: ldp x3, x7, [sp, #0x48]  ; x3 = raisr 滤波器组描述符, x7 = 输出 TImage*
355f758: add x2, sp, #0x560       ; x2 = &compiled_params
355f75c: ldr x0, [sp, #0x4e0]     ; x0 = input_  (1 通道 luma)
355f760: ldr x1, [sp, #0x468]     ; x1 = 目标(输出)尺寸描述符
355f764: add x4, sp, #0x474       ; x4 = &sharpen_params
355f768: mov w5, #2               ; scale = 2   （硬编码！）
355f76c: mov w6, wzr              ; flag = 0
355f770: bl  0x3589540
```

- **per-shift 内核的整数倍率在此调用点上恒为 2**（verified）。
  3x/4x 的内核存在但在这条路径不可达（`0x3589540` 的唯一调用者就是 `0x355F770`，verified）。
- `x1` 给出最终输出尺寸；`0x3589540` 内 `0x35895A0 ldp w27, w28, [x21]` 用它建 RAISR 结果图。
- `input_`(`[sp+0x4e0]`) 的维数即"低分辨率 luma"尺寸；hash 图尺寸 = `input_` 尺寸 × scale。

### 1.5 尺寸/对齐

- **未发现** 宽度向上取整到 128、高度取整到 16 之类的显式对齐代码：`0x3589540` 只用
  `[x21]`/`[x21+4]` 的原始宽高建 TImage（`0x35895A0..0x35895D4`）；`0x358F370` 只用
  `ori_w*scale`、`ori_h*scale`（`0x358F3F8 mul w25, w8, w23`、`0x358F3FC mul w26, w9, w23`）。
  Halide AOT 内核自身会用 `halide_error` 做边界/负 extent 检查（如 `0x358A4BC..0x358A530`
  的空 buffer 路径、`0x358A5B4..0x358A5D0` 的空 buffer 检查），但**驱动层不做 128/16 对齐**
  （verified：无对应对齐指令）。
- 边缘扩展（edge extension）同样不在驱动层：驱动只把 dims 原样转成
  `halide_dimension_t`。内核内部的边界处理属于内核本体，本次不展开。
- 每像素位深：内核名含 `Int16`（`0xBB5E80`）；驱动层只做指针/维数搬运，不做量化
  （verified）。U12/Q14 的具体约定在 AOT 内核内部（未决，见 §8）。

### 1.6 内核参数结构（`buffer_t` 形态，verified）

驱动把每个 TImage 展开成一个 **0x80 字节的栈结构**（`0x3589824` 里 4 份：
`sp+0x1B0`/`sp+0x120`/`sp+0x90`/`sp+0x00`）：

| 偏移 | 含义 | 证据 |
| --- | --- | --- |
| `+0x00` | 置 0（内核视为可选 buffer/device，配合 `+0x10` 判空） | `0x3589860` 附近 `stp q1,q1`；内核 `0x358A4DC ldr x9,[x19]; cbz x9` |
| `+0x10` | `void* host`（= TImage `[+0x20]`） | `0x3589848 ldr x8,[x1,#0x20]; 0x3589860 str x8,[sp,#0x1c0]`；内核对 `[x1,#0x10]` 做非空判定 `0x358A5B4` |
| `+0x20` | 8 字节常量，驱动填 `{0x6B20B30}`（普通 1 通道图）或 `{0x6B80E20}`（filters） | `0x3589850 ldr d0,[x9,#0xb30]`、`0x3589944 ldr d0,[x9,#0xe20]` |
| `+0x28` | `halide_dimension_t* dim`，指向 `+0x38` 的内联数组 | `0x358988C str x20,[sp,#0x1d8]`（`x20 = base+0x38`） |
| `+0x38` | `halide_dimension_t dim[4]`，每项 `{i32 min, i32 extent, i32 stride, i32 flags}` 16 字节 | 内核 `0x35C8D38 ldr x16,[x1,#0x28]` 后 `0x35C8D54 ldr d4,[x16]`、`0x35C8DB4 ldr d3,[x16,#0x10]` |

`halide_dimension_t` 的 stride=16 与 `{min,extent,stride,flags}` 顺序由内核实证：
`0x35C8D44 ldp w10,w24,[x8,#0x4]`（extent0）、`0x35C8D50 ldr d15,[x8]`（min0+extent0）、
`0x35C8D68 ldp w9,w10,[x8,#0x14]`（stride1+flags1）等（verified）。

**TImage 侧字段布局**（多函数一致，verified）：

| 偏移 | 含义 |
| --- | --- |
| `+0x00` | i32 宽（extent0） |
| `+0x04` | i32 高（extent1） |
| `+0x08` | i32 通道数（`num_channels`）；驱动断言必须 == 1，串 `0x62DE7B "im.num_channels() == 1"`，文件串 `0x5FE748 "./research/vision/npcam/lib_common/buffer_common.h"`（`0x3589AF0..0x3589B24`） |
| `+0x0C` | i32 stride0 |
| `+0x10` | i32 stride1 |
| `+0x14` | i32 stride2 |
| `+0x20` | `void* data` |

> 4 维描述符（filters）用的是**另一种对象**：extent 在 `+0x00,+0x04,+0x08,+0x0C`，
> stride 在 `+0x1C,+0x20,+0x24,+0x28`，host 在 `+0x48`
> （`0x3589930 ldr x8,[x3,#0x48]`、`0x3589950..0x3589980`）（verified）。
> 也就是说 `0x3589824` 的第 4 个实参不是 TImage 而是 `0x355FFEC` 产出的滤波器组描述符。

### 1.7 整数倍率分派与错误串

`0x3589824`（FDE `0x3589824..0x3589BA8`）签名（verified）：
`f(x0=input_ TImage*, x1=hash TImage*, x2=**未使用**, x3=filters 4D*, w4=scale, x5=result TImage*|NULL)`。

- `x2` 在整段函数体内**没有任何引用**（verified：仅作为形参被忽略）。
- 三处 `num_channels()==1` 检查针对 `x1`(`0x3589838`)、`x0`(`0x3589880`)、`x5`(`0x35898CC`)。
- 分派：`0x3589988 cmp w19,#4` → `0x358DC94`；`0x3589990 cmp w19,#3` → `0x358BEF0`；
  `0x3589998 cmp w19,#2` → `0x358A240`；否则 `0x3589A10` 报
  `0x4FBD5E "Unsupported integer scale factor for per-shift RAISR filtering."`
- 内核调用实参（verified）：`kernel(ctx, B(from x0), D(from x3), A(from x1), C(from x5))`
  （`0x35899B8`：`x1=sp+0x120`、`x2=sp`、`x3=sp+0x1B0`、`x4=sp+0x90`）
  ⇒ 与内核 buffer 声明序 `input_ / filters_ / hash_value_image_ / result` 完全一致。
- `ctx` 由 `0x3589984 bl 0x427D35C` + `ldr x0,[x0]` 取得（Halide user_context）。

### 1.8 结果尺寸与 `flag`（w6）

`0x3589540(x0..x7)` 内的三条 `0x3589824` 调用（verified）：

| 调用点 | x5（result） | 触发条件 |
| --- | --- | --- |
| `0x35895F4` | `x24` = 新分配 TImage | `(w24 & 1) == 0` 且 `0x35A27D4(x20) != 0` 且新建成功 |
| `0x3589630` | `x19` = 调用者给的输出图 | `(w24 & 1) != 0` |
| `0x3589670` | `NULL` | 上面两条都不成立 |

`0x24C` 新图的尺寸来自 `x21`（`0x35895A0 ldp w27,w28,[x21]`），即**目标/输出尺寸**
（`0x355F230` 传的是 `[sp+0x468]`）。本路径 `w6 = 0`，因此走 `0x3589590` 分支。

---

## 2. `0x35894AC` 的 compiled-params：逐字段解码

`0x35894AC`（FDE size `0x94`）是一个**叶函数**，约定 `x8 = &params`，把 0x70 字节结构写默认值。
下表"默认值"均为该函数的立即数或它读取的 `.data` 常量原始字节（verified）。

| 偏移 | 宽度 | 默认值 | 写入指令 / 常量地址 |
| --- | --- | --- | --- |
| `+0x00` | i32 | `1` | `0x35894C0 str x9`（`x9=0x0000000C00000001`） |
| `+0x04` | i32 | `12` | 同上 |
| `+0x08` | u16 | `0` | `0x35894BC strh wzr` |
| `+0x09` | u8 | `0` | `0x3589524 strb wzr` |
| `+0x0A` | u8 | `0` | `0x35894E4 strb wzr` |
| `+0x0B` | — | 未写 | — |
| `+0x0C` | i32 | `4` | `0x3589528 str w10`（`w10=4`） |
| `+0x10` | u8 | `1` | `0x35894CC strb w9(1)` |
| `+0x11..0x13` | — | 未写 | — |
| `+0x14` | i32 | `0` | `0x358952C str wzr` |
| `+0x18` | 8B | `19 ef 02 be c3 68 b8 3c` ⇒ `{f32 −0.12786521, f32 +0.0225108918}` | `0x35894DC ldr d0,[0x6B30CF0]` → `0x35894E8 str d0,[x8,#0x18]` |
| `+0x20` | i32 | `3` | `0x35894F0/F4`（立即数 3） |
| `+0x24..+0x33` | 4×f32 | `{+0.0523100868, +0.00511798495, −0.0055033979, −0.0482351705}` | `0x35894EC ldr q0,[0x6BE0B00]` → `0x35894FC stur q0,[x8,#0x24]` |
| `+0x34` | f32 | `0.7f` | `0x3589504/08/10`（`0x3F333333`） |
| `+0x38` | 8B | `fd 33 89 be ae 32 3a 3e` ⇒ `{f32 −0.267974764, f32 +0.181833953}` | `0x3589500 ldr d0,[0x6B50E40]` → `0x3589530 str d0,[x8,#0x38]` |
| `+0x40` | u8 | `1` | `0x35894C8 strb w9(1)` |
| `+0x44` | i32 | `4` | `0x3589534 str w10(4)` |
| `+0x48` | i64 | `0` | `0x35894D4 stur q0,[x8,#0x48]`（覆盖 0x48..0x57） |
| `+0x50` | i64 | `0` | 同上 |
| `+0x54` | i32 | `43200`（`0xA8C0`） | `0x3589514/18` |
| `+0x58` | ptr | `0xBAB436` | `0x358951C/20/38`（`str x9,[x8,#0x58]`，覆盖上面 q0 写的 0x58..0x5F） |
| `+0x60` | i64 | `0` | `0x35894D8 stur q0,[x8,#0x58]` 的高半 |
| `+0x68` | i64 | `0` | `0x358950C str xzr` |

常量原始字节（在 VA−0x4000 = 文件偏移处读取，并与 `llvm-objdump -s` 的 VA 行对照一致）（verified）：

- `0x6B30CF0`（file `0x6B2CCF0`）：`19ef02be c368b83c b50799bd 844a0ebd`
- `0x6B50E40`（file `0x6B4CE40`）：`fd3389be ae323a3e 1c4158be 98be23bd`
- `0x6BE0B00`（file `0x6BDCB00`）：`1a43563d c5b4a73b d955b4bb 3e9245bd dfaad33c ...`
- `0x6B20B30`（file `0x6B1CB30`）：`8a2e21bd 7bcca5bc`（普通 1 通道 buffer 的 `+0x20` 常量）
- `0x6B80E20`（file `0x6B7CE20`）：`f8803fbd f1c12cbb`（filters buffer 的 `+0x20` 常量）
- `0x6BE0390`（file `0x6BDA390`）：`e7e80739 3188403c d28a19bc 1103b03b` ⇒ `{0.00012961366, 0.011751221, −0.009371476, 0.005371459}`（composite 用，见 §5）

### 2.1 语义（由消费者反推）

`0x355FFEC`（`NanoRaisrDirectUpscaleAndRefineLumaMin` 的胶水，见 §1.2/§7）在入口处做：

```asm
3560008: ldp w9, w10, [x0, #0x18]  ; w9=[0x18], w10=[0x1C]
356000c: ldr w21,     [x0, #0x3C]  ; w21=[0x3C]
3560014: mul w9, w10, w9           ; w9  = [0x18]*[0x1C]
3560018: ldr w10,     [x0, #0x20]  ; w10 = [0x20]
356001c: mul w25, w21, w21         ; w25 = [0x3C]^2
3560020: mul w23, w9, w10          ; w23 = [0x18]*[0x1C]*[0x20]  -> 滤波器类别数
3560024: ldr w9,      [x0, #0x44]  ; w9  = [0x44]               -> shift 数
356002c: mul w19, w23, w25
3560030: mul w22, w19, w9
3560044: lsl w9, w22, #1
3560048: ldr w10,     [x0, #0x54]  ; 43200
356004c: cmp w10, w9
3560050: b.ne 0x3560094            ; 不匹配 -> 通用路径
...
3560054: ldr x4, [x20, #0x58]      ; 滤波器组指针
3560058: mov w0, w21 ; mov w1, w21 ; mov w2, w23 ; w3 = [0x44] ; w5=1,w6=0,w7=0
3560090: b   0x3560618             ; 通用 C++ per-shift 实现（ksize, ksize, nclass, nshift, bank, ...)
```

- 尺寸自洽条件：`2·[0x18]·[0x1C]·[0x20]·[0x3C]²·[0x44] == [0x54]`（verified）。
  代入 `[0x20]=3`、`[0x44]=4`、`[0x54]=43200` ⇒ `[0x18]·[0x1C]·[0x3C]² = 1800`，
  唯一与 RAISR 语义自洽的整数解是 **`[0x18]=24`（角度档）、`[0x1C]=3`（相关度档）、
  `[0x3C]=5`（5×5 核）**，于是类别数 `= 24·3·3 = 216`，`216·25·4·2 = 43200` 字节（inferred，数学唯一解）。
- 不匹配时打印 `0x4CAA71 "Inconsistent raw filter data size (%d) and size needed (%d)."`
  （`0x3560338..0x3560360`，verified）。
- `0x3560034/0x356003C` 读 `[x0+0x08]`、`[x20+0x09]` 两个 bool：任一非 0 直接走通用路径。
- `0x3560104..0x3560110`：若 `[0x08]!=0`，`w23`（=类别数）被改成 `[0x3C]/2+1`；
  `0x356011C..0x3560130`：若 `[0x09]!=0`，`w25`（=ksize²）被改成 `([0x18]+3)/4+1`。
  这两处只在 bool 置位时生效，默认路径不启用（verified）。
- `0x358F370`（hash 编排）读 `[x22+0x18]` 作为 **i32 标量**传给 hash 内核
  （`0x358F5B0 ldr w2,[x22,#0x18]`），读 `[x22+0x24..0x33]` 作为 **4 个 f32**
  （`0x358F5A0 ldp s0,s1,[x22,#0x24]`、`0x358F5A8 ldp s2,s3,[x22,#0x2c]`）传给同一内核
  （verified）。
- hash 内核元数据给出的标量名（`0xBB6B80..0xBB6C10`）为
  `num_angle_buckets_`、`min_strength_`、`max_strength_`、`min_coherence_`、`max_coherence_`
  （verified）。即：`[0x18]`=num_angle_buckets，`[0x24]`=min_strength, `[0x28]`=max_strength,
  `[0x2C]`=min_coherence, `[0x30]`=max_coherence（inferred：按寄存器/元数据顺序对齐）。
- `0x359DAF4`（OrientationUint8ThinOptHalide）同样只取 `[x22+0x18]`（`0x358F554 ldr w2,[x22,#0x18]`，
  verified）。

> **重要冲突（未决）**：`+0x18`/`+0x1C` 与 `+0x38`/`+0x3C` 被 `0x35894AC` 以 `str d`（8 字节）
> 写入，其字节是 **f32 对**；而 `0x355FFEC`、`0x358F370`、`0x359DAF4` 都把 `+0x18`/`+0x1C`/`+0x3C`
> 当 **i32** 读。按默认字节算 `[0x18]=0xBE02EF19`、`[0x1C]=0x3CB868C3`、`[0x3C]=0x3E3A32AE`，
> 上述尺寸自洽式不成立，通用路径会算出 `malloc(-1)`/巨量尺寸。可能的解释只有两种，静态阅读无法区分：
> (a) `+0x18/+0x1C` 与 `+0x38/+0x3C` 在设计上是"浮点视图"，而默认初始化保留的是**未被使用/过期**的常量；
> (b) `0x35894AC` 的默认值只是占位，真实参数由本二进制中不存在的外部 tuning 注入。
> 无论哪种，**这些 8 字节字段的默认值都不要照抄**；重实现时应使用
> `(num_angle_buckets=24, num_coherence_buckets=3, num_strength_buckets=3, kernel=5, shifts=4)`。
> 另注：hash 内核把该 i32 只取**最低字节**存入闭包
> （`0x35928BC strb w8,[sp,#0x128]`，`w8 = [sp+0x58]` = 入参），默认字节的最低字节是 `0x19 = 25`。
> 其余字段（`+0x00,+0x04,+0x0C,+0x10,+0x20,+0x24..0x34,+0x40,+0x44,+0x54,+0x58`）语义与默认值
> 均有消费者实证（verified）。

---

## 3. 滤波器组（filter bank）布局

- **地址/长度**：VA `0xBAB436`，长度 `43200` 字节（= `params+0x54` 的值）（verified）。
  位于 `.rodata`（VA == 文件偏移）。
- **元素类型**：`int16`（verified，读取原始字节）：
  ```
  0xBAB436:  38  -74 -251   49  -36  -95  193 1224
             -390  106 -249  956 3848 -750  198   32
             -269 -552  -48   13  -12   61  156    0
  ```
  每 25 个 int16 成一组，组内出现中心大峰（`3848`、`3824`…），符合定点 `Q12`（中心 tap ≈4096）
  的 RAISR 5×5 核（inferred，量级证据）。
- **索引顺序**（Halide 元数据 `0xBB5D40` 起，verified）：
  `filters_.extent.0 = 5`、`filters_.stride.0 = 1`、`filters_.min.0 = 0`、
  `filters_.stride.2 = 25`、`filters_.extent.2 = 216`、`filters_.stride.3 = 5400`
  ⇒ 4 维 `[shift][216 class][ky 5][kx 5]`，即
  `idx = shift*5400 + cls*25 + ky*5 + kx`（int16 单位），`cls = angle*9 + coherence*3 + strength`
  （后者的具体拆分属内核语义，inferred）。
- **是否 scale 专用**：**所有倍率共用同一张表**（verified）：`params+0x58` 只由 `0x35894AC`
  的常量设置（`0x358951C/20`），而该函数在 `0x355F230` 中每帧只调用一次且在
  `0x358F370`/`0x3589824` 之前；`0x3589540`/`0x358F370`/`0x3589824` 都不修改 `+0x58`。
  由于本路径 scale 恒为 2（§1.4），实际被使用的是 **2x 组**；3x/4x 内核虽然存在，但驱动不会
  在本调用点传入 3/4。
- **表尾**：`0xBAB436 + 43200 = 0xBB5CF6`；其后 5 字节 0 填充，紧接 `.rodata` 串
  `0xBB5CFB "__user_context"`（verified，原始字节对照）。⇒ 表长确为 43200，无额外尾部。
- **引用点唯一**：全二进制仅 `0x358951C` 把 `0xBAB436` 物化为指针（verified，与既有文档一致）。

---

## 4. `hash_value_image_` 的语义与驱动侧尺寸

- **驱动侧尺寸（verified）**：由 `0x358F370` 产出，返回给 `0x3589540` 的 `[sp+0x28]`，
  再作为 `x1` 传给 `0x3589824` → 成为 per-shift 内核的 `hash_value_image_`。
  ```asm
  358f454: ldr x8, [x24, #0x20]      ; 源 luma host
  358f498: ldp w8, w10, [x24]        ; w8=源宽, w10=源高
  358f3f8: mul w25, w8, w23          ; 宽 * scale
  358f3fc: mul w26, w9, w23          ; 高 * scale
  358f404..428: new TImage(w1=0, w2=w25, w3=w26, w4=1, 0, 0)   ; 1 通道
  ```
  ⇒ `hash_value_image_` 尺寸 = **(`ori_w*scale`, `ori_h*scale`)、单通道**；
  与 `result` 同尺寸（`0x3589540` 用 `[x1]`/`[x1+4]` 建结果图，`0x35895A0`）。
- **元素类型**：驱动力只搬运指针与维数，不做量化（verified）；`Int16` 由内核名
  `NanoRaisrUpscalePerShiftFRH2xInt16Opt5x5Halide`(`0xBB5E80`) 及 per-shift 内核的
  `halide_buffer_t` 类型字段（内核自填 `+0x20` 为 `Int(16) lanes=1`，`0x358A55C..0x358A56C`
  写入 `0x00000004_00011000`，低 32 位分解为 code=0/bits=16/lanes=1）（inferred）。
  逐像素布局：单通道，每像素 1 个 int16，`stride = 1`（inferred，来自 `TImage` 通道数 1 + 内核
  `stride.0=1` 的同类约定）。
- **分类数学在内核内部（明确）**：驱动**没有**任何梯度/角度/相干性计算。分类链是：
  1. `0x359DAF4` = **`OrientationUint8ThinOptHalide`**（名串 `0xBB7620`），
     输入 = `ori` 的 3 通道缓冲（`input_` 原尺寸），标量 = `params[0x18]`，
     输出 = `x19`（新建 `TImage(w1=1, w2=源宽, w3=源高, w4=3)`，3 通道，原分辨率）。
     （调用点 `0x358F55C`：`x1=sp+0x120`、`w2=[x22+0x18]`、`x3=sp+0x90`，verified）
  2. `0x3591F3C`/`0x3596470`/`0x359A41C` = **`HashFromOrientation{2,3,4}xThinOptHalide`**，
     缓冲区实参只有 2 个（`0x3591F58 cbz x3`、`0x3591F60 cbz x1`，verified），
     `x1` = 3 通道的 orientation 图（维数取自 `[x1+0x28]` 的 dim2，元数据
     `ori_.extent.2 = 3`，`0xBB6E20`，verified）；`x3` = 上采样尺寸的单通道图
     （`0x3591F64 ldr x28,[x3,#0x28]`，`0x3591F94 ldr d5,[x28,#0x10]` 取其 dim1 边界 ⇒ 输出边界）。
     标量：`w2`（`0x3591F5C str w2,[sp,#0x58]`，仅取低字节写入 `halide_do_par_for` 闭包）
     + `v0..v3` 四个 f32（闭包 `sp+0x98..0xA4`，`0x35928CC/28D0`，并行体 `0x358F794`
     在 `+0x10/+0x18` 读回，verified）。
  3. 并行体 = `0x358F794`（经 `0x35928D8 ldr x1,[x1,#0x80]` 取 `GOT[0x61E7080] → 0x358F794`，
     `0x35928DC bl 0x585F89C` = `halide_do_par_for`，verified）。
  ⇒ **哈希/分类数学 100% 在 AOT 内核内**；驱动只提供 `ori`(3ch 原尺寸)、1 个 i32、
  4 个 f32，以及一个上采样尺寸的单通道输出缓冲。

---

## 5. composite 的输入与标量参数

### 5.1 调用链与实参

```
0x3589540 ──0x3589594──> 0x35A27D4(sharpen_params)            ; 探针
0x3589540 ──0x358968C──> 0x35A2474(sharpen_params, raisr_luma, target_img, out_img)
0x35A2474 ──0x35A251C──> 0x35A1B24(raisr_luma, tmp, d0, d1)      ; 内核 0x35B57F4
0x35A2474 ──0x35A2540──> 0x35A1D80(target, tmp, target, sharpen, out)
0x35A1D80 ──0x35A1F70──> 0x35C8C54 = NanoRaisrCompositeHalide   ; 失败串 0x6993B1
0x35A2474 ──0x35A25A8/0x35A260C──> 0x35A216C(...)                ; 内核 0x35A75B0
0x35A2474 ──0x35A25E0──> 0x35A264C(img_a, img_b) -> 0x35B34C0    ; 拷贝/转换
```
（各 `bl` 地址见 `0x35a1b24_0x35a27f8.txt` 行 645/654/680/705/777，verified）

`0x35A264C` 先逐字段比较两图的 `w/h/ch`（`0x35A264C..0x35A2678`，不等则返回 0），
再转成两个 Halide buffer 调 `0x35BC4C0`（`0x35A272C`）——与 `CopyImageHalide`(`0xBB8000`)
位置相邻，故 `0x35BC4C0 = CopyImageHalide`（inferred）。

### 5.2 composite 实参（`0x35A1F40..0x35A1F70`，verified）

```asm
35a1f48: add x1, sp, #0x1d0   ; A <- x0  (0x35A1D80 的 arg0)
35a1f4c: add x2, sp, #0x140   ; B <- x1
35a1f50: add x3, sp, #0xb0    ; C <- x2
35a1f54: add x4, sp, #0x260   ; D <- 静态全局（见下）
35a1f58: mov w5, w19          ; fcvtzs( s0=sharpen[0x0C], #8 )
35a1f5c: mov w6, w20          ; fcvtzs( s1=sharpen[0x10], #8 )
35a1f60: mov w7, w21          ; fcvtzs( s2=sharpen[0x14], #4 )
35a1f64: str x28, [sp, #0x10] ; E <- x4 (0x35A1D80 的 arg4 = 最终输出图)
35a1f68: strh wzr, [sp, #0x8] ; 第 5 个标量 = 0
35a1f6c: strh w27, [sp]       ; 第 4 个标量 = fcvtzs( s3=sharpen[0x18], #8 )
35a1f70: bl 0x35c8c54
```
内核侧 ABI 实证（`0x35C8C54` 序言）：
- 只用 `x1`、`x2`、`x4`、`x23`（= `[sp+0xb10]` = 调用者 `[sp+0x10]` = E）作为 buffer，
  `0x35C8D38/0x35C8D3C/0x35C8D6C` 读 `[x+0x28]` 取 dims，`0x35C8F9C/0x35C9000/0x35C9010`
  读 `[x+0x10]` 取 host（verified）。
- **`x3` 在整个内核体（`0x35C8C54..0x35CB418`）里从未作为基址寄存器出现**
  （verified：`[x3` / `[x3]` 匹配数为 0；`x3` 仅被后续指令覆盖为临时值/字符串地址 `0xBB8400`）。
  ⇒ composite 的第 3 个指针实参是**未使用**的（驱动仍按 A 传入）。
- `ldrh w9, [sp, #0xb00]`（`0x35C8CEC`）只读第 4 个标量；`[sp+0x8]` 的 0 未被读取（verified）。

因此 composite 的形参序列（按 ABI 观察）为：
`(ctx, x1=?, x2=?, <未用指针>, x4=?, w5, w6, w7, i16@[sp], i16@[sp+8], ptr@[sp+0x10]=output_image)`。

### 5.3 各 buffer 的来源

| 实参 | 内容 | 证据 |
| --- | --- | --- |
| `x1` (A) | `0x35A1D80` 的 arg0 = `0x35A2474` 的 arg2 = `0x3589540` 的 arg1 = `0x355F230` 的 `[sp+0x468]`（目标图像） | `0x35A1DA4..0x35A1E30` 从 arg0 建 A |
| `x2` (B) | `0x35A1D80` 的 arg1 = `0x35A2474` 的 arg1 = `0x3589540` 新建的 RAISR 亮度图 | `0x35895A4..0x35895D4` |
| `x4` (`randomness_lut`) | GOT 槽 `0x61E70A0`，`.rela.dyn` 中 `r_offset=0x61E70A0 → addend=0x7C59978`（**静态 `.data` 对象**） | `0x35A1DBC ldr x8,[x8,#0xa0]`；relocs.txt 第 158050 行（verified） |
| `x23`/E (`output_image`) | `0x35A1D80` 的 arg4 = `0x35A2474` 的 arg3 = `0x3589540` 的 arg7 = `0x355F230` 的 `[sp+0x50]`（最终输出 TImage） | `0x35A1EF4..0x35A1F3C`；`0x3589688`（verified） |

**`randomness_lut` 细节**：
- 表体在 VA `0x7C59978`（文件偏移 `0x7C55978`），原始字节起始
  `0f 0f 0f 0a 0f 0f 0a 05 0f 0a 0a 05 0f 0f 05 00 ...`（verified，并与 `llvm-objdump -s` 的
  `7c59970 / 7c59980` 行一致）。对象首地址前 8 字节为 0（`0x7C59970`），故起点确为 `0x7C59978`。
- 前 ≥ `0x1B6` 字节取值绝大多数落在 `{0x00,0x05,0x0A,0x0F}`（4 档量化），
  在偏移 `0x1B6` 之后出现 `0xCDCCCC3D` 等浮点数据，说明 LUT 对象在此结束或其后续为另一对象
  （verified 到"偏移 0x1B6 处首次出现非 {0,5,10,15} 的连续数据"）。
- **精确长度/周期未定**（见未决事项 §8）：驱动为它构造的描述符 **dims 全为 0**
  （`0x35A1DB4..0x35A1DE4` 用 `q4 = 0` 覆盖 D+0x00..0x2DF 全段，只写了 `+0x10` host、
  `+0x20` 常量、`+0x28` dims 指针，verified），所以内核必然用与 dims 无关的索引
  （硬编码周期/mod 或 unclamped 常量索引）读取该表。

**`census_fallback` / `census_raisr`**：不是实参。元数据里它们只有裸名字
（`0xBB8480`、`0xBB84A0`），既无 `Input buffer ...` 也无 `Output buffer ...` 标签，
也没有 `.stride.` 条目；而 `image_fallback_`/`image_raisr_`/`randomness_lut`/`output_image`
四者都有标签（`0xBB8360/0xBB8380/0xBB83A0/0xBB83C0`，verified）
⇒ **census 变换是 `0x35C8C54` 内部的 Halide Func**，本次不展开（元素类型/半径/位宽未决）。

### 5.4 composite 标量参数的值与来源（verified）

标量来自 `sharpen_params`（`0x355F230` 的 `sp+0x474`）：

| `sharpen_params` 偏移 | 来源 | 值 |
| --- | --- | --- |
| `+0x00` | `0x355F620 str s0,[sp,#0x474]`，其中 `s0 = ((s8 − 2.0f)·55.0f)/6.0f + 15.0f`（`0x355F5D4..0x355F610`，`55.0f = 0x425C0000`） | 2x 时 = `15.0f` |
| `+0x04` | `0x355F5DC str wzr` | `0.0f` |
| `+0x08` | `0x355F5E8 strb w29(1)` | `1`（"启用"；`0x35A27D4` 判据） |
| `+0x0C..+0x1B` | `0x355F614 ldr q1,[0x6BE0390]` → `0x355F618 stur q1,[x28,#0xb8]`（`x28 = sp+0x3C8` ⇒ `sp+0x480`） | `{0.00012961366, 0.011751221, −0.009371476, 0.005371459}` |

复合标量（`fcvtzs` 定点转换，`0x35A1F0C..0x35A1F28`）：

| 内核形参（按位置） | 转换 | 数值 |
| --- | --- | --- |
| `w5` | `fcvtzs(s0, #8)`，`s0=[sharpen+0x0C]` | `(int)(0.00012961366·256) = 0` → `fallback_strength_ = 0`（inferred 名称对应） |
| `w6` | `fcvtzs(s1, #8)`，`s1=[sharpen+0x10]` | `(int)(0.011751221·256) = 3` → `artifact_correction_max_strength_ = 3`（inferred） |
| `w7` | `fcvtzs(s2, #4)`，`s2=[sharpen+0x14]` | `(int)(−0.009371476·16) = 0` → `artifact_map_scale_fixed_ = 0`（inferred） |
| `[sp]` i16 | `fcvtzs(s3, #8)`，`s3=[sharpen+0x18]` | `(int)(0.005371459·256) = 1` → `artifact_map_bias_fixed_ = 1`（inferred） |
| `[sp+8]` i16 | 常量 0 | `debug_output_select_ = 0`（inferred） |

名称来源：`0xBB8180 "fallback_strength_"`、`0xBB81A0 "artifact_correction_max_strength_"`、
`0xBB81E0 "artifact_map_scale_fixed_"`、`0xBB8200 "artifact_map_bias_fixed_"`、
`0xBB8220 "debug_output_select_"`（verified，均在 composite 的元数据表窗口内、
位于内核名 `0xBB82E0` 之前）。**具体哪一个名字对应哪一个位置属 inferred**——
驱动与内核的绑定只能靠类型/位置推断，元数据表不携带顺序信息。

---

## 6. 色度 / 彩色处理

- **RAISR 只处理亮度**（verified）：
  `0x355F230` 先用 `0x3C4E098 → 0x3C50CBC = RgbToGray3ChOptHalideU8` 从 3 通道 RGB
  产生 luma（§1.2）；随后整条 RAISR 链（orientation、hash、per-shift、composite）
  的每个缓冲都是**单通道**（`0x358F370` 建 1 通道 hash 图、`0x3589824` 的
  `num_channels()==1` 断言、`0x3589540` 建 1 通道结果图、composite 输出经 `TImage(w4=1)`）。
- `RaisrUpsample` 的产物是**放大后的单通道亮度图**（`0x355F230` 的 `[sp+0x50]`，
  见 §1.4/§5.3）。
- **与色度的重组不在 `0x355F230` 内**：该函数在整份二进制中只有唯一调用者
  `0x3364BC8`（位于 `0x33641DC..0x3365320`）（verified）。色度插值/重组发生在
  `0x33641DC` 里，本次未展开 ⇒ **未决**（见 §8）。
- 相邻但**不属于**本 RAISR 路径的 finish 阶段内核：
  `CensusHighFreqBlenderHalide`(`0xBB7900`)、`SharpenDOGHalide`(`0xBB7C40`)、
  `CopyImageHalide`(`0xBB8000`)、`OrientationUint8ThinOptHalide`(`0xBB7620`)。
  其中 `OrientationUint8ThinOptHalide` 实际是 RAISR 链的第一站（§4），
  `CopyImageHalide` 被 composite 链用作无锐化时的直通（§5.1）。

---

## 7. 调用顺序图（含精确尺寸）

记源（RGB）尺寸为 `Sw × Sh`，目标尺寸 `Tw × Th`，
`scale = min(Tw/Sw, Th/Sh) ≥ 2`（本路径恒为 2）。

```
RaisrUpsample  0x355F230
├─ 0x355F2C4..2DC   scale = min(Tw/Sw, Th/Sh)            ; 要求 scale ≥ 2.0（0x604392）
├─ 0x427D2F0 + 0x355F40C   设置 Halide user_context = x1
├─ new(0x68)×2:  0x355F428(x24=2Sw×2Sh) / 0x355F4E0(x25=Sw×Sh)
│     （0x355F444 stp x19(=2Sw),… / 0x355F448 stp x20(=2Sh),…）
├─ 0x3C4D990  0x355F548   npcam→Halide 适配
├─ 0x3C4E098  0x355F554   → 0x3C50CBC RgbToGray3ChOptHalideU8(rgbx_in_ → result)
│                          ⇒ input_y : 1ch, Sw×Sh, Int16/定点
├─ 0x35894AC  0x355F55C   compiled_params = 默认值（0x70B @ sp+0x560）
├─ 0x355FFEC  0x355F568   compiled_params → 0x240 = filters 描述符（见 §2.1）
│      · 尺寸自洽检查：2·[0x18]·[0x1C]·[0x20]·[0x3C]²·[0x44] == [0x54](=43200)
│      · 走 0x3560618 / 通用路径产出 4 维 filters 描述符
├─ 0x3C4D888  0x355F5D0   → [sp+0x4E0] = input_ (1ch)
├─ 0x3589540  0x355F770   (x0=input_, x1=[sp+0x468]=目标图, x2=&params,
│                          x3=filters, x4=&sharpen, w5=2, w6=0, x7=输出图)
│   │
│   ├─ 0x358F370  0x3589588   (x0=input_, x1=&params, w2=scale, x8=&out)
│   │   ├─ A = new TImage(w1=1, Sw, Sh, 3, 0, 0)          ; 0x358F3A4..0x358F3CC
│   │   ├─ B = new TImage(w1=0, Sw*scale, Sh*scale, 1,0,0); 0x358F404..0x358F42C
│   │   ├─ 0x359DAF4  OrientationUint8ThinOptHalide  0x358F564
│   │   │      (ori=input_(3ch 视图), w2=params[0x18], out=A)   ⇒ A : 3ch, Sw×Sh
│   │   ├─ 2x: 0x3591F3C  HashFromOrientation2xThinOptHalide  0x358F5B8
│   │   │      (x1=A(3ch), x2=params[0x18], x3=B, v0..v3=params[0x24..0x30])
│   │   │      ⇒ B : 1ch, Sw*2 × Sh*2  = hash_value_image_   ; 经 *out 返回
│   │   └─ 并行体 0x358F794（halide_do_par_for，GOT[0x61E7080]）
│   │
│   ├─ 0x35A27D4  0x3589594   探针：sharpen[+0x08]!=0 || max(sharpen[+0],sharpen[+4])>0
│   ├─ 0x35895A0..5D4   result = new TImage(0, Tw, Th, 1, 0, 0)   ; dims 取自 x1=[sp+0x468]
│   ├─ 0x3589824  0x35895F4   scale==2 → 0x358A240
│   │      kernel(ctx, input_(Sw×Sh,1ch), filters(4D), hash(Sw*2×Sh*2,1ch), result(Tw×Th,1ch))
│   │      缓冲区校验：x1/x0/x5 的 [buf+0x08]==1，否则
│   │      串 0x62DE7B "im.num_channels() == 1" / 文件 0x5FE748 buffer_common.h
│   │      倍率非 2/3/4 ⇒ 串 0x4FBD5E "Unsupported integer scale factor ..."
│   ├─ 0x35A2474  0x358968C   (x0=&sharpen, x1=result, x2=目标图, x3=输出图)
│   │   ├─ 0x35A1B24  0x35A251C → 0x35B57F4  (result, tmp, d0, d1)     [可选]
│   │   ├─ 0x35A1D80  0x35A2540 → 0x35C8C54  NanoRaisrCompositeHalide 0x35A1F70
│   │   │      x1=目标图(帧缓冲), x2=RAISR 亮度图, x3=<未用>, x4=randomness_lut(0x7C59978),
│   │   │      w5=0, w6=3, w7=0, i16[sp]=1, i16[sp+8]=0, [sp+0x10]=最终输出图
│   │   │      4 个 buffer 的 dims 全由驱动给出（randomness_lut dims 全 0）
│   │   └─ 0x35A216C  0x35A25A8/0x35A260C → 0x35A75B0   [可选]
│   │          无锐化时：0x35A264C → 0x35BC4C0 CopyImageHalide（w/h/ch 必须一致）
│   └─ 0x355FFEC 已产出 filters；0x355F774 失败 → 0x355FF38
├─ 日志：0x355F834 " Raisr %dx (%.0f ms)."（串 0x5ABC9C）
└─ 失败时打印源码级调用串 0x58BF21（0x355FF40）
```

尺寸小结（全部 verified，除标注外）：

| 缓冲 | 尺寸 | 通道 | 元素 |
| --- | --- | --- | --- |
| `input_` | `Sw × Sh` | 1 | Int16 域（内核名 `Int16`） |
| `ori_`（orientation） | `Sw × Sh` | 3 | 内核决定（`ori_.extent.2 = 3`）；名串含 `Uint8` |
| `hash_value_image_` | `Sw·scale × Sh·scale` | 1 | Int16 |
| `result` / RAISR 亮度 | `Tw × Th`（本路径 `= 2Sw × 2Sh`） | 1 | Int16 |
| `filters_` | `[shift][216][5][5]` = 4×216×25 int16 = 43200B | — | Int16 |
| `randomness_lut` | 未知（dims 全 0；静态表 @`0x7C59978`） | — | 字节域，取值以 `{0,5,10,15}` 为主 |
| `image_fallback_` | `Tw × Th` | 1 | Int16 |
| `output_image` | `Tw × Th` | 1 | Int16 |

---

## 8. 未决事项（未决）

1. **`compiled_params` 的 `+0x18/+0x1C` 与 `+0x38/+0x3C` 类型冲突（最高优先级）**
   - 事实：`0x35894AC`（`0x35894DC/0x3589530`）以 `str d` 把 `0x6B30CF0`、`0x6B50E40`
     的 8 字节写进这两个槽；字节是 f32 对（`{−0.12786521, +0.0225108918}`、
     `{−0.267974764, +0.181833953}`）。
   - 事实：`0x355FFEC`(`0x3560008/0x356000C`)、`0x358F370`(`0x358F5B0`)、
     `0x359DAF4`(`0x358F554`) 都把 `+0x18`/`+0x1C`/`+0x3C` 当 i32 用，并由
     `2·[0x18]·[0x1C]·[0x20]·[0x3C]²·[0x44] == 43200` 反推需要 `(24, 3, 5)`。
   - 未决原因：静态阅读无法判断是"默认初始化的常量已过期/仅作占位"还是"存在外部
     tuning 注入路径"。**重实现建议**：直接用 `(24, 3, 3)` 类别三元组、ksize `5`、
     shifts `4`，并把 `+0x54` 校验为 `2·24·3·3·25·4 = 43200`。
   - 未决的可判定性：需要动态验证（在 `0x356004C`/`0x3560150` 看实际取值）或找到外部注入点。
2. **`randomness_lut` 的精确长度与索引方式**。已知表体 VA `0x7C59978`（静态 `.data`）、
   驱动传给 composite 的 dims 全 0、前 ≥0x1B6 字节以 `{0,5,10,15}` 为主。
   表长/周期/内核索引表达式在 `0x35C8C54` 内部，本次未展开。
3. **census 变换的定义**：`census_fallback`/`census_raisr` 是 composite 内核内部 Func
   （无 buffer 标签），其半径/位宽/元素类型全在内核内，未展开。
4. **色度重组位置**：`0x355F230` 的唯一调用者 `0x3364BC8`（`0x33641DC..0x3365320`）
   未展开，因此"RAISR 亮度结果如何与色度插值结果合并"未定。
5. **`0x355FFEC` 的通用路径细节**：`0x3560618`（通用 per-shift 实现，入参
   `(ksize, ksize, nclass, nshift, bank, 1, 0, 0)` + 0x58 字节滤波器描述符）与
   `0x356071C` 的算法未展开；`[x0+0x08]`/`[x0+0x09]` 两个 bool 开启后的尺寸改写
   （`0x3560104/0x356011C`）语义未定。
6. **`input_` 的"低分辨率"来源链**：`x0` 于 `0x355F75C` 取自 `[sp+0x4E0]`，它由
   `0x3C4D888`（`0x355F5D0`）从 `sp+0x490` 对象构造，而 `sp+0x490` 的字段来自
   `0x355F4E0` 分配的 0x68 字节对象与 `0x3C4D990` 的产物。`0x3C4D888/0x3C4D990`
   （npcam TImage/allocator 适配器）未展开，因此"哪一步把源图降到 Sw×Sh"未定
   （只能确定 `input_` 尺寸为 `Sw×Sh`，而 `Tw×Th` 由 `x2` 打包传入）。
7. **`0x35A1B24` → `0x35B57F4` 与 `0x35A216C` → `0x35A75B0` 两个内核的身份**：
   两者都在 composite 链上被 `0x35A2474` 按 `sharpen[+0x10] > 0` / `sharpen[+0x08]`
   条件调用，但名称表未给出确定名字（`0x35B57F4` 与 `SharpenDOGHalide`/`CensusHighFreqBlenderHalide`
   的关系未证实）。
8. **per-shift 内核的精确像素域（U12/Q14 约定）与边界填充**在内核内部，驱动层不体现。
9. `0x35C8C54` 第 3 个指针实参被内核完全忽略（`x3` 零引用）。驱动传的是与 `x1` 相同的
   目标图。是否对应某个"声明了但未使用"的 `ImageParam`，静态阅读无法确认。

---

## 9. 重实现要点（由上文直接得出，全部有据）

1. 只在 `resample_rate = min(Tw/Sw, Th/Sh) ≥ 2.0` 且 `scale` 为整数时启用；本版驱动恒用 2
   （`0x355F768 mov w5, #2`）。
2. luma 用 `RgbToGray3ChOptHalideU8`（等价实现即可）从 RGB 得到，尺寸 `Sw×Sh`。
3. hash 图与 RAISR 结果图是**上采样尺寸**（`Sw·2 × Sh·2`）、单通道、Int16。
4. 滤波器组：`216 classes × 25 taps × 4 shifts` 的 int16，索引
   `shift*5400 + cls*25 + ky*5 + kx`；所有倍率共用一张表。
5. 类别数三元组用 `(24, 3, 3)`，ksize 5，shifts 4；驱动力只做尺寸一致性校验
   `2·nclass·ksize²·nshift == bank_bytes`。
6. composite 的 4 个有效输入为 `(目标图, RAISR 亮度图, randomness_lut, 输出图)`，
   另有 3 个 i32 + 2 个 i16 标量；无锐化时退化为 `CopyImageHalide`。
7. `randomness_lut` 必须作为静态常量表随内核一起携带（来源 VA `0x7C59978`），
   且内核以与 dims 无关的方式索引它。
