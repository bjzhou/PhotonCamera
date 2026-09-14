# 构建性能排查

## CI 从零构建

最终衡量目标是 GitHub Actions 三个渠道全部完成的墙钟时间，不能用本机单渠道 R8 的局部变化替代。

### 历史 CI 基线

[2026-09-11 的成功运行](https://github.com/bjzhou/PhotonCamera/actions/runs/34569986349)（提交 `389fb82c`）：整个 build job 约 17 分 7 秒，Gradle 构建 16 分 43 秒。日志明确记录 Gradle 缓存未命中。

原流程在一台 runner 中执行 `assembleDefaultRelease assembleSamsungRelease assembleMeituRelease`。日志中三个 Kotlin 编译在相近时间启动，R8 则按 default → samsung → meitu 先后执行；任务标题时间不是严格的 task-duration 数据，不能将其差值直接当作精确 R8 时间。

本公开仓库的标准 Ubuntu runner 是 4 vCPU/16 GB。三个渠道既重复编译，又争用同一台 runner 的 CPU/内存。新流程将它们拆成三个独立 matrix job，每个 job 只构建自己的 Release 变体；全部成功后，publish job 汇总三个 APK 并上传同一个 Release。任一渠道失败不会发布不完整产物。

这会增加 native 配置/编译等公共步骤的总计算量，但减少三个渠道对同一机器的资源竞争与串行等待。下面使用相同源码的冷构建对照衡量收益，历史运行只作为背景。

### 2026-09-14 真实 CI 冷构建

[单 runner 对照 34823943668](https://github.com/bjzhou/PhotonCamera/actions/runs/34823943668)（`df72cf715`）与并行组的 Git 差异只有工作流文件。应用源码、AGP/R8、JDK、Gradle 参数和 runner 标准规格相同，两组均成功且禁用缓存。对照组沿用一条 Gradle 命令构建三个渠道的编排，内部任务仍按 Gradle 原有机制并发，因此“串行组”并非强制所有 task 单线程。

| 指标 | 单 runner 三渠道 | 三个 runner 并行 |
| --- | ---: | ---: |
| 从 workflow 创建到全部 APK artifact 就绪、构建 job 结束 | 16 分 11 秒 | 11 分 28 秒 |
| Gradle 完整构建（并行组取最慢渠道） | 15 分 45.86 秒 | 11 分 4.03 秒 |
| 所有 build job 占用 runner 时间之和 | 16 分 8 秒 | 32 分 10 秒 |

本次对照减少总等待 **4 分 43 秒（29.1%）**，runner 占用时间增加到 **1.99 倍**。这是用更多并行资源降低 CI 等待时间，不能宣称总计算量减少或 R8 算法本身提速。两组均是手动验证，不含正式 Release 发布 job；这是一次受云端执行环境波动影响的对照，不是长期稳定提速保证。

单 runner 中，三个 Kotlin 任务各耗时 214–220 秒，三个 Lint Vital 分析各耗时 267–289 秒。Default R8 为 326.95 秒，日志显示它与三个渠道的 Lint 重叠；后续 Samsung/Meitu R8 分别为 99.85/74.92 秒。这个差距同时受到资源竞争和 JVM 预热影响，不能归因于渠道本身或把后两次当作冷启动性能。拆分 job 可以减少竞争与跨渠道等待，但也会重复 JVM 预热和公共 native 编译，所以收益没有达到三倍。

[并行运行 34823602590](https://github.com/bjzhou/PhotonCamera/actions/runs/34823602590) 使用提交 `0f053b00f`，三个渠道均成功完成签名打包和 artifact 上传，发布 job 按手动运行条件跳过。从 workflow 创建到全部构建 job 完成为 **11 分 28 秒**。

| Gradle profile 阶段 | default | samsung | meitu |
| --- | ---: | ---: | ---: |
| 完整构建 | 11 分 3.40 秒 | 9 分 6.36 秒 | 11 分 4.03 秒 |
| R8 | 277.29 秒 | 202.62 秒 | 273.57 秒 |
| Lint Vital 分析 | 234.47 秒 | 179.06 秒 | 231.76 秒 |
| Kotlin 编译 | 150.49 秒 | 106.53 秒 | 148.96 秒 |
| KSP | 23.97 秒 | 19.16 秒 | 23.69 秒 |
| native 编译 | 91.26 秒 | 58.79 秒 | 90.28 秒 |

阶段存在重叠，不能把各行相加当作总时间。三台 runner 虽使用相同标准规格，实际执行性能仍可能不同；Samsung 在 Kotlin、native、R8、Lint 多个阶段均较快，不能仅凭这次样本归因于渠道源码。

Default 的 R8 内部总时间为 275.584 秒，其中 Create IR 为 154.711 秒（约 56%），名字压缩仅 0.914 秒。此处瓶颈仍是全程序优化，关闭名字压缩无法解决分钟级等待。Samsung Kotlin 报告中分析、IR 转换、代码生成分别为 40.258、10.151、45.531 秒，说明仅并行化 Kotlin 后端也不能消除整个 Kotlin 阶段。

两组均明确记录未恢复/保存 Gradle 缓存，命令使用 `--no-build-cache`，日志无 `FROM-CACHE`。构建报告 artifact 为 `build-reports-serial`、`build-reports-default`、`build-reports-samsung`、`build-reports-meitu`，保留 7 天；关键计时留存于本文，R8 明细留在 Actions 日志。

下载三个 APK artifact 后，确认各自根目录的文件名与 publish job 的汇总路径一致；`apksigner verify` 全部通过且证书相同。`aapt2 dump badging` 验证三个应用 ID 分别为 `com.hinnka.mycamera`、`com.samsung.android.scan3d`、`com.meitu.meiyancamera`，均仅包含 `arm64-v8a`。没有安装到设备，也未发布这些验证产物。

### 从 Release 打包中移除 Lint

使用 `android.lint.checkReleaseBuilds = false`，让 `assemble*Release` 不再执行 fatal Lint 检查。`abortOnError = false` 只改变检查失败后的行为，并不能省去分析时间，因此不用于这次优化。代价是 Release 打包不再由 Lint fatal 问题阻断；Kotlin/Java/native 编译、R8、资源压缩和签名打包仍执行。

三个发布渠道的 `assemble*Release --dry-run` 已确认没有 Lint 任务；显式 `:app:lintDefaultRelease --dry-run` 仍包含分析和报告任务，可以独立运行检查。

这次分别在单 runner 与三 runner 流程中只改变上述开关，继续使用全新 GitHub runner、关闭 Actions 缓存与 Gradle build cache。Lint 与 R8 存在重叠，收益必须比较完整构建和 R8 任务实测，不能直接从总时间扣除原 Lint 耗时。

[无 Lint 并行运行 34825825995](https://github.com/bjzhou/PhotonCamera/actions/runs/34825825995)（`e087143b1`）三个渠道均成功。全部产物就绪时间从 **11 分 28 秒降至 9 分 54 秒**，减少 **1 分 34 秒（13.7%）**；runner 占用时间之和从 32 分 10 秒降至 27 分 23 秒。与前一组相比，构建配置仅新增 `lint.checkReleaseBuilds = false`。

| 并行组 Gradle 阶段 | default：有 Lint → 无 Lint | samsung：有 Lint → 无 Lint | meitu：有 Lint → 无 Lint |
| --- | ---: | ---: | ---: |
| 完整构建 | 663.40 → 558.38 秒 | 546.36 → 456.53 秒 | 664.03 → 573.01 秒 |
| R8 | 277.29 → 178.18 秒 | 202.62 → 141.38 秒 | 273.57 → 188.45 秒 |
| Kotlin 编译 | 150.49 → 147.77 秒 | 106.53 → 114.72 秒 | 148.96 → 150.25 秒 |
| native 编译 | 91.26 → 87.49 秒 | 58.79 → 65.11 秒 | 90.28 → 86.04 秒 |

三个渠道的实际日志与 profile 均无 Lint 任务，也无 `FROM-CACHE`。Default/Meitu 的 Kotlin/native 用时相近，R8 减少约 85–99 秒；这支持 Lint 与 R8 竞争资源是慢点之一，但仍是单次云端对照，不能把全部差异精确归因于同一个因素。

[无 Lint 单 runner 运行 34825850842](https://github.com/bjzhou/PhotonCamera/actions/runs/34825850842)（`cb22224fe`）同样成功，但总等待为 **16 分 57 秒**，比有 Lint 的单 runner 基线 16 分 11 秒慢 46 秒；Gradle 为 16 分 32.58 秒。因此这组没有观察到完整 CI 提速，不能只展示并行组的正向结果。

| 单 runner 阶段 | 有 Lint | 无 Lint |
| --- | ---: | ---: |
| Default Kotlin | 214.71 秒 | 310.24 秒 |
| Samsung Kotlin | 214.33 秒 | 301.51 秒 |
| Meitu Kotlin | 220.43 秒 | 304.47 秒 |
| native 编译 | 58.92 秒 | 88.79 秒 |
| Default R8 | 326.95 秒 | 217.20 秒 |
| Samsung R8 | 99.85 秒 | 120.32 秒 |
| Meitu R8 | 74.92 秒 | 96.37 秒 |

这轮 Kotlin/native 在 Lint 原本执行之前就整体慢约 38–51%，说明存在明显的其他执行环境或资源调度差异；未采集底层 CPU 型号，不能确定具体原因。Default R8 虽减少约 110 秒，仍不足以抵消其他阶段变慢。这个单次样本既不能量化单 runner 关闭 Lint 的稳定收益，也不能支持用它替代并行流程。保留三渠道 matrix；当前可报告的是并行流程单次冷构建节省约 94 秒，并附带运行波动限制。

下载无 Lint 的 Default APK，与有 Lint 的 Default APK 逐项比较 ZIP 中除 `META-INF/` 外的所有文件：816 项全部 SHA-256 相同，无新增、删除或变化，覆盖 DEX、Manifest、资源和 native 库。新 APK 的 `apksigner verify` 通过。这是构建内容校验，未安装到设备。

### CI 配置与复测

- JDK 统一为 Amazon Corretto 21，与 `gradle-daemon-jvm.properties` 的 vendor/version 一致。原先 setup-java 设置 Temurin 17，而 Gradle 需要另行寻找 Amazon 21；统一配置不代表 JDK 下载成本凭空消失。
- 使用 `gradle/actions/setup-gradle` 管理缓存，避免同时使用 setup-java 的 Gradle 缓存。GitHub 缓存不能跨不同标签直接恢复；默认分支有缓存时发布任务才能复用。可以在默认分支手动运行 `cold_build=false` 预热，但这不计入从零构建的收益。
- 工作流新增手动入口，默认 `cold_build=true`，同时关闭 Actions Gradle 缓存恢复/保存和 Gradle task cache。GitHub runner 的工作目录全新，无须额外 `clean`。
- 手动运行只生成 APK 和性能报告，不执行 Release 上传。发布仍只在 `release.published` 事件发生、三个渠道均成功后执行。
- 每个渠道保留 Gradle profile 和 Kotlin build report；R8 阶段计时输出到 job 日志。签名配置通过 `ORG_GRADLE_PROJECT_*` 环境变量传入，避免密码成为 Gradle 命令行和性能报告参数。
- APK artifact 不重复压缩，报告与 APK 使用不同 artifact 名称，发布只合并 APK。

比较时记录从 workflow 创建到全部构建 job 完成的时间、每个 job 的构建步骤时间、R8/Kotlin/Lint 耗时，以及下载和排队时间。严格比较应使用相同源码、相同 runner 与缓存策略重复运行。

## 测量方法

完整 clean 构建用于评估首次打包和 CI 等待时间：

```sh
./gradlew clean :app:assembleDefaultRelease \
  --offline --no-build-cache --console=plain --profile \
  -Dcom.android.tools.r8.printtimes=true
```

分别记录总耗时及 Kotlin、KSP、native、R8、资源/打包任务耗时。`clean` 删除构建产物，但不会清空全局依赖缓存或重启 JVM；若需比较冷 JVM，应对两组配置都使用 `--no-daemon`。不要删除全局 Gradle 缓存来模拟 clean，否则测到的还有网络下载成本。

只强制重跑目标渠道的 R8，保留 Kotlin、资源等前置任务的增量结果：

```sh
./gradlew :app:minifyDefaultReleaseWithR8 --rerun \
  --offline --no-build-cache --console=plain --profile \
  -Dcom.android.tools.r8.printtimes=true
```

首次解析新依赖时去掉 `--offline`，下载完成后再离线测量。`--rerun` 是所选任务的选项；不要使用会重跑整个任务图的 `--rerun-tasks`，也不要先 `clean`。按项目约定在沙箱外运行，使用全局 Gradle home。

Gradle 的任务耗时报告位于 `build/reports/profile/`；R8 阶段计时输出到控制台。比较相同渠道、相同代码、相同优化规则下的 R8 耗时，不要将依赖下载、Kotlin 重编译或缓存命中当成 R8 提速。正式测速应预热守护进程并多次测量。

`com.android.tools.r8.printtimes` 是 R8 的内部诊断属性，只用于排查，不加入日常构建配置。

## 2026-09-14 基线

环境：32 GiB 内存、10 个逻辑 CPU，Gradle 8.13、Amazon Corretto 21.0.9；Gradle 堆上限 4 GiB，G1 GC。目标为 `defaultRelease`。

AGP 8.12.3 / R8 8.12.22 的单次测量：

| 项目 | 耗时 |
| --- | ---: |
| R8 任务 action（含诊断输出） | 96.20 秒 |
| R8 内部总时间 | 95.56 秒 |
| 首次移除无用代码 | 14.67 秒 |
| 中央优化阶段 | 46.68 秒 |
| 其中 Create IR | 39.95 秒 |
| 优化后移除无用代码 | 6.00 秒 |
| 后处理 | 6.55 秒 |
| LIR → IR → DEX | 11.51 秒 |
| 写出 DEX / mapping | 5.58 秒 |
| JVM GC 累计时间增量 | 4.93 秒 |

action 和 GC 增量由本次排查的临时 Gradle init script 采集：在任务 action 前后读取单调时钟与 `ManagementFactory.getGarbageCollectorMXBeans()`。上面的普通诊断命令不会单独打印 GC 增量。GC 数据包括并发 GC，不能全部当作停顿时间。它只约占任务时间的 5%，没有证据支持堆内存不足是该次 R8 的主要瓶颈。

同次构建中 Kotlin 编译 98.11 秒、KSP 16.49 秒，整次构建约 218 秒；这些前置耗时不能归到 minify。

### 明确发现

- Kotlin 2.3.0 与 R8 8.12.22 不匹配，单次 minify 输出 447 条 Kotlin 元数据解析警告。AGP 8.13.2 携带支持 Kotlin 2.3 的 R8 8.13.19，且兼容现有 Gradle 8.13；升级工具链是兼容性修复，性能收益另行测量。
- R8 的主要成本是全程序可达性分析、优化和 DEX 生成。Release 代码改变后，这些工作仍需执行。
- 发布工作流分别构建 default、samsung、meitu 三个渠道，各有独立 R8 任务。应用 ID、BuildConfig 等输入不同，不能直接共享另一个渠道的 DEX。
- 基线中 `RecipeParam.setValue` 是 DEX 转换最慢的方法，约 5.33 秒，其中寄存器分配约 5.31 秒。该方法有大量针对大型 `ColorRecipeParams` 的 `copy` 分支，是以后针对代码结构优化的具体观察点；单次热点不代表它占据整个 minify 的大多数时间。
- TensorFlow/LiteRT Support 的有效 Java API 输入约 100 KB；替换其空壳依赖不会明显减少 R8 工作量。MediaPipe AAR 的大体积主要不能直接归因于 Java 字节码。

保留 Release 的代码优化、资源压缩和 JNI/Protobuf/Flogger 规则；这些规则涉及 native 回调或运行时反射，不能为缩短构建时间盲目删除。

### 兼容工具链对照

在相同 4 GiB/G1 配置和优化规则下，AGP 8.13.2 / R8 8.13.19 的单次 R8 action 为 103.05 秒，内部计时 102.53 秒，GC 累计增量 4.66 秒；元数据解析警告从 447 条降为 0。DEX 从 11,095,748 字节变为 11,100,976 字节。

这组结果没有显示升级带来提速，因此将升级归类为兼容性修复。升级时包含工具链下载和依赖重新转换，总构建时间不用于和旧版本比较。新版 DEX 转换耗时 8.58 秒，最慢方法变为 `GalleryManager$saveRawStackedPhoto$2.invokeSuspend`（4.15 秒），也说明不能仅凭旧版的一次采样就重写业务逻辑。

### 构建配置

- Bugly 固定到本次实际解析的 `4.1.9.3`，统一通过版本目录引用，避免 `latest.release` 带来的在线版本检查与输入漂移。
- 开启 Gradle 本地构建缓存，让相同输入的可缓存任务有机会复用历史输出。这不能加速真正未命中的 R8，也不能消除不同渠道的输入差异。本文基准均通过 `--no-build-cache` 排除缓存收益。

### clean 复测暴露的问题

- 完整 Release 还会运行 Lint；升级后须先在线准备其依赖，否则离线构建会在 R8 之前失败。失败构建不作为完整计时结果。
- 连续加载新旧 AGP、再加载 Lint 的老 Gradle 进程触发过 1 GiB Metaspace 不足警告。这与 Java 堆是不同的内存区域，不能由此认定单版本的新进程也需要更大的 Metaspace。
- 四个 MGC 汇编文件由 `configure_file` 在配置阶段生成，又被错误标记为构建阶段的 `GENERATED` 源文件。Ninja clean 会删除这些 `.S`，随后构建却没有生成命令恢复它们。重复 clean 构建因此失败；修复应保持配置输出的正确生命周期，而不是手动复制文件或每次删除 `.cxx`。
- 未限定 native 目标时，Gradle 会构建 libjpeg 的命令行工具、测试程序以及不需要的共享库，失败轮次中 Ninja 排出了 785 个构建步骤。App 实际只加载 `my-native-lib`，所需 jpeg/turbojpeg/ultrahdr 静态库已有 CMake 链接依赖。通过 `defaultConfig.externalNativeBuild.cmake.targets` 限定 JNI 库，让 Ninja 仅沿实际依赖图构建。

生成文件修复移除四处 `GENERATED TRUE`，保留 capsule 的 `OBJECT_DEPENDS`，并将 `.S` 追加到 `CMAKE_CONFIGURE_DEPENDS`，以便输出缺失时重新配置恢复。使用同版 CMake 3.22.1/Ninja 的最小 ASM 复现验证了原配置的失败，以及修复后的 clean → build、模板修改、删除输出、capsule 修改和无改动增量构建。

### clean / 新 Gradle 进程测量

修复 native 配置后，以 `--no-daemon --offline --no-build-cache` 运行完整 `clean :app:assembleDefaultRelease`。所有测量使用相同代码、AGP 8.13.2 和 4 GiB 堆。

G1 轮次：

| 阶段 | 耗时 |
| --- | ---: |
| Kotlin 编译 | 88.76 秒 |
| KSP | 11.88 秒 |
| native 编译（仅 JNI 目标及依赖） | 25.96 秒 |
| R8 action | 132.64 秒 |
| Lint Vital 分析 | 137.92 秒 |
| R8 阶段 JVM GC 累计增量 | 7.26 秒 |

Lint 与 R8 并行，不能将两者耗时直接相加。clean 场景的 R8 比此前单独运行的 103.05 秒慢约 29%，但这同时受到新 JVM 预热和并行任务资源竞争影响，不能归因为 clean 使 R8 输入量增大。Lint 本身也是与 R8 同量级的完整 Release 构建瓶颈。

新 JVM 的 Metaspace 在 R8 前后为 302/419 MiB，没有不足警告，因此未提高 1 GiB 上限。G1 轮次的编译、R8 和 Lint 都通过，但约 282 秒后在最终打包因本地缺少 Release keystore 配置而停止；这个值不作为成功完整构建的总耗时。

随后仅将 Gradle GC 改为 `-XX:+UseParallelGC`，再次完整 clean，使用调试签名完成打包：

| 阶段 | G1 | Parallel GC |
| --- | ---: | ---: |
| R8 action | 132.64 秒 | 112.08 秒 |
| Lint Vital 分析 | 137.92 秒 | 110.43 秒 |
| Kotlin 编译 | 88.76 秒 | 79.87 秒 |
| KSP | 11.88 秒 | 12.23 秒 |
| native 编译 | 25.96 秒 | 20.55 秒 |
| R8 阶段 JVM GC 累计增量 | 7.26 秒 | 15.86 秒 |
| 完整成功构建 | 签名配置缺失，未完成打包 | 4 分 1 秒 |

两轮都是 fresh Gradle JVM、禁用构建缓存，但共享已下载依赖和系统文件缓存，Kotlin 守护进程也可能复用；这是单次对照，不是统计稳定的性能保证，不能把各阶段全部差异都归因于 GC。R8 观察到减少约 15.5%，因此保留 Parallel GC。其累计 GC 时间反而更高，结论是这次整体吞吐更好，并非 GC 停顿变少。两种 GC 使用相同 `-Xmx4g`；`Runtime.maxMemory()` 的读数受收集器分代布局影响，Parallel GC 约为 3641 MiB，不能将其误读为命令行堆上限被改小。

最终完整 clean 构建通过 Kotlin、native、R8、Lint 与 APK 打包，且再次验证修复后的重复 clean。APK 压缩数据完整性检查通过；仅包含 arm64-v8a，保留 JNI 所需 `libomp.so`。逐一检查打包 native 库的 `DT_NEEDED`，没有依赖已排除的 JPEG/TurboJPEG 共享库。未进行实机安装或运行时回归。

本地完整打包基准可以临时使用仓库调试签名，不改正式 Release 配置：

```sh
-PRELEASE_STORE_FILE=debug.keystore \
-PRELEASE_STORE_PASSWORD=android \
-PRELEASE_KEY_ALIAS=androiddebugkey \
-PRELEASE_KEY_PASSWORD=android
```

该签名只服务于本地构建验证，基准 APK 不用于正式发布，也没有安装到设备。

## 参考

- [Android Lint Release 检查配置](https://developer.android.com/reference/tools/gradle-api/8.2/com/android/build/api/dsl/Lint)
- [GitHub 标准托管 runner 的硬件规格](https://docs.github.com/en/actions/reference/runners/github-hosted-runners)
- [GitHub Actions 矩阵与任务依赖](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax)
- [GitHub Actions 缓存作用域](https://docs.github.com/en/actions/reference/workflows-and-actions/dependency-caching)
- [Gradle Daemon JVM 选择](https://docs.gradle.org/current/userguide/gradle_daemon.html#sec:daemon_jvm_criteria)
- [AGP 8.13.2 与 Kotlin 2.3 支持](https://developer.android.com/build/releases/agp-8-13-0-release-notes)
- [Android 构建性能：GC、内存与固定依赖版本](https://developer.android.com/build/optimize-your-build)
- [R8 内部计时开关源码](https://r8.googlesource.com/r8/+/master/src/main/java/com/android/tools/r8/utils/InternalOptions.java)
- [Android CMake 构建目标选择](https://developer.android.com/reference/tools/gradle-api/7.0/com/android/build/api/dsl/ExternalNativeCmakeOptions)
- [CMake GENERATED 源文件属性](https://cmake.org/cmake/help/latest/prop_sf/GENERATED.html)
- [CMake 配置依赖](https://cmake.org/cmake/help/v3.22/prop_dir/CMAKE_CONFIGURE_DEPENDS.html)
