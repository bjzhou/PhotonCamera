# MGC V25 Sabre 区域误拒绝排查

## 结论

经典 Sabre 的基准帧 reference-color 预滤波 pass 缺失，且 alternate guide 使用了
Spatial/`REJECTION_ONLY` 的 biquadratic 分支。两侧滤波不对称，导致完全相同、无位移的
高频纹理也会产生光度差异。后续 DilateMask 累加邻域拒绝值，能将这些差异扩展为整片
零融合权重，从而只剩基准帧，局部多帧降噪失效。

已恢复基准帧预滤波、两侧 bicubic B-spline 采样，以及对应的方差系数。基准帧的
green-only 标志仍由未滤波 guide 的方差符号决定；先按原版对每次双线性采样结果取绝对值，
再在过滤后的基准方差上恢复标志。预滤波借用尚未填入 alternate 数据的 currentGuide，
无需新增常驻纹理。原有拒绝阈值和 DilateMask 保持不变。

这是已复现的代码缺陷；尚未获得用户发生噪点的 RAW burst，不能认定所有实拍噪点都由它导致。

## V25 原版依据

来源：`.codex-tmp/mgc_97_v25/apktool/lib/arm64-v8a/libgcastartup.so`。
下表 shader 地址为该文件中 NUL 结尾源码字符串的偏移，ARM64 地址为虚拟地址。

| 原版位置 | 契约 | 修复前差异 |
| --- | --- | --- |
| `kBaseFrameRefColorEntryPoint`，`0x4d9fd9` | 先过滤基准 guide，再恢复未滤波中心的 green-only 标志 | Sabre 直接传入未过滤 guide |
| `kFunctionSampleBicubic`，`0x5e2284` | 经典 Sabre 两侧使用相同的四次双线性采样 B-spline 滤波 | alternate 使用 biquadratic |
| `kRejectionFunctions`，`0x6843e4` | 非 `REJECTION_ONLY` 方差系数：green `0.211665`、RGB `0.0898866` | 使用 `0.25`、`0.0976597` |
| `kRejectionEntryPoint`，`0x54dc29` | 输出 `1 - min(1 - unblocker, frame_weight)` | 公式相符，无需调松阈值 |
| `kDilateMaskEntryPoint`，`0x654696` | 邻域拒绝值求和后减 `0.2`、除 `2`、再反转为接受权重 | 公式相符，但会扩大上游误拒绝 |

程序宏不是仅由源码中的 `#ifdef` 推测：

- `0x34d93c4` / `0x34d93d8`：经典容器构造时 `w2=0`；第二个 rejection-only 容器
  在 `0x34d93e4` / `0x34d93ec` 传入 `w2=1`。
- `0x34e73d4`：构造函数将 `w2` 存入对象 `+0xc`。
- `0x34e7ed0` / `0x34e7ed4`：只有该字段非零才添加 `kDefRejectionOnly`。

DilateMask 的 5×5 邻域在均匀拒绝值 `r` 下输出
`clamp(1.1 - 12.5*r, 0, 1)`，所以约 `8.8%` 的逐像素拒绝就足以让最终融合权重变为零。
这解释了为什么错误会表现为成片区域，而不是少数孤立点。

## 验证

`compileDefaultDebugKotlin` 通过。导出实际 JVM 初始化后的 shader，确认 `#version`
位于字节 0，并在 NVIDIA RTX 5080 离屏 GL 上执行 compile/link、RGBA16F guide 写入、
R8 rejection MRT、R8 DilateMask 和回读。

对照使用 V25 中提取的原始滤波与 rejection 函数。测试统一 fullscreen UV 输入方式，
避免将不同全屏三角形的 varying 插值舍入混入滤波算法比较。测试输入为合成 guide，
不是完整 RAW burst；噪声 LUT 固定，两帧 noise model 相同，unblocker 与 motion prior 关闭。
另保留修复前实际 shader 做回归对照。验证了 64×64 和 64×48 guide。

| 输入 | 修复前内部区域接受权重 | 修复后 | 原版 V25 |
| --- | --- | --- | --- |
| 相同平面 | 1 | 1 | 1 |
| 相同 green-only 高频条纹，零位移 | 0，整片拒绝 | 1 | 1 |
| 高频条纹整数位移，flow 正确补偿 | 0，整片拒绝 | 1 | 1 |
| 相同 RGB 纹理 | 1 | 1 | 1 |
| guide 方差正负号交错 | 1 | 1 | 1 |
| 分数 flow | 与原版存在差异 | 与原版一致 | 基准 |
| 内容从 0.5 变为 0.8 | 0 | 0 | 0 |

修复后七组用例的完整 R8 reverse-weight 和最终接受图都与原版逐字节一致。
这证明静止纹理误拒绝被消除，真实差异的拒绝仍然有效；不能替代 Android GPU 和实拍验证。

## 复跑

先按项目要求在沙箱外执行 Kotlin 编译，再从项目根目录运行以下 PowerShell。
基线提交固定为修复前的 `2cf1e3cb8963412343484c593deaf9d2665e5810`。

```powershell
.\gradlew.bat compileDefaultDebugKotlin
$sabreOutput = '.codex-tmp/sabre-rejection-audit'
$sabreStdlib = Get-ChildItem "$env:USERPROFILE/.gradle/caches/modules-2/files-2.1/org.jetbrains.kotlin/kotlin-stdlib" -Recurse -Filter '*.jar' |
    Where-Object { $_.Name -match '^kotlin-stdlib-[0-9.]+\.jar$' } |
    Sort-Object LastWriteTime -Descending |
    Select-Object -First 1 -ExpandProperty FullName
& "$env:JAVA_HOME/bin/java.exe" --class-path "app/build/tmp/kotlin-classes/defaultDebug;$sabreStdlib" scripts/research/ExportMgcSabreRejectionShaders.java $sabreOutput
$sabreOldSource = git show 2cf1e3cb8963412343484c593deaf9d2665e5810:app/src/main/java/com/hinnka/mycamera/processor/GlesMgcRawSabreShaders.kt | Out-String
$sabreOldShader = [regex]::Match($sabreOldSource, '(?s)val rejection = """(.*?)"""\.trimIndent').Groups[1].Value
$sabreOldShader.Trim() | Set-Content "$sabreOutput/old-rejection.frag" -Encoding utf8
uv run scripts/research/validate_mgc_sabre_rejection.py --mgc-library .codex-tmp/mgc_97_v25/apktool/lib/arm64-v8a/libgcastartup.so --shader-dir $sabreOutput
uv run scripts/research/validate_mgc_sabre_rejection.py --mgc-library .codex-tmp/mgc_97_v25/apktool/lib/arm64-v8a/libgcastartup.so --shader-dir $sabreOutput --height 48
```

结果保存为输出目录下的 `gpu-probe-results-64x64.json` 和 `gpu-probe-results-64x48.json`。
应用拍摄日志新增 `rejectionGuideFilter=bicubic-both-frames`，可确认设备运行的是修复后的链路。
