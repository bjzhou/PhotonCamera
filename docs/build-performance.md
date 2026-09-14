# 构建性能排查

## CI 从零构建

最终衡量目标是 GitHub Actions 三个渠道全部完成的墙钟时间，不能用本机单渠道 R8 的局部变化替代。

### 历史 CI 基线

[2026-09-11 的成功运行](https://github.com/bjzhou/PhotonCamera/actions/runs/34569986349)（提交 `389fb82c`）：整个 build job 约 17 分 7 秒，Gradle 构建 16 分 43 秒。日志明确记录 Gradle 缓存未命中。

原流程在一台 runner 中执行 `assembleDefaultRelease assembleSamsungRelease assembleMeituRelease`。日志中三个 Kotlin 编译在相近时间启动，R8 则按 default → samsung → meitu 先后执行；任务标题时间不是严格的 task-duration 数据，不能将其差值直接当作精确 R8 时间。

本公开仓库的标准 Ubuntu runner 是 4 vCPU/16 GB。三个渠道既重复编译，又争用同一台 runner 的 CPU/内存。新流程将它们拆成三个独立 matrix job，每个 job 只构建自己的 Release 变体；全部成功后，publish job 汇总三个 APK 并上传同一个 Release。任一渠道失败不会发布不完整产物。

这会增加 native 配置/编译等公共步骤的总计算量，但减少三个渠道对同一机器的资源竞争与串行等待。实际收益要用新 CI 结果验证，不能直接承诺三倍速度，也不能用不同提交的历史时间宣称严格 A/B 结果。

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

- [AGP 8.13.2 与 Kotlin 2.3 支持](https://developer.android.com/build/releases/agp-8-13-0-release-notes)
- [Android 构建性能：GC、内存与固定依赖版本](https://developer.android.com/build/optimize-your-build)
- [R8 内部计时开关源码](https://r8.googlesource.com/r8/+/master/src/main/java/com/android/tools/r8/utils/InternalOptions.java)
- [Android CMake 构建目标选择](https://developer.android.com/reference/tools/gradle-api/7.0/com/android/build/api/dsl/ExternalNativeCmakeOptions)
- [CMake GENERATED 源文件属性](https://cmake.org/cmake/help/latest/prop_sf/GENERATED.html)
- [CMake 配置依赖](https://cmake.org/cmake/help/v3.22/prop_dir/CMAKE_CONFIGURE_DEPENDS.html)
