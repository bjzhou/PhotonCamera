# Camera App

这是一个 Android 相机 App，模拟现代数码无反相机的操作手感

## 技术框架

* UI: Jetpack Compose
* 使用 Camera2 API, 不做向下兼容
* minSdk 30

## 调试编译

编译命令需允许沙箱外执行, 使用全局gradle home不要指定项目.gradle-home

* 完整编译

    ```
    ./gradlew assembleDefaultDebug
    ```

* 通过性验证（kotlin端）

    ```
    ./gradlew compileDefaultDebugKotlin
    ```

* 通过性验证（native端）

    ```
    ./gradlew buildCMakeDebug
    ```

## MGC Hook 工作流

* MGC 侧工作目录固定为：

    ```
    MGC/MGC_9.6.080_V24_MGC
    ```

* App/Hook 侧改动优先放在 `previewhook/`，尽量不要把复杂逻辑直接写进 smali

* `previewhook` 改完后，先生成独立 dex：

    ```
    ./gradlew :previewhook:assembleStandaloneDexRelease
    ```

* MGC 重打包、签名、安装流程：

    ```
    apktool b MGC/MGC_9.6.080_V24_MGC
    apksigner sign --ks ../app/release.jks --ks-pass pass:900902 MGC/MGC_9.6.080_V24_MGC/dist/MGC_9.6.080_V24_MGC.apk
    adb install -r MGC/MGC_9.6.080_V24_MGC/dist/MGC_9.6.080_V24_MGC.apk
    ```

* 预览 LUT 的有效低层插入点是 `nrj` 主预览链
* 拍摄后处理 LUT 的有效插入点是 `lwp` 处理链
* 每次改smali或classes4.dex后，默认重新完整打包，不依赖增量结果
* `MGC/jadx_decompile_src` 为可参考的 Java 反编译代码目录（如果存在）
* `MGC/MGC_9.6.080_V24_MGC.apk` 为原始 apk 文件 
* 首次 Hook 参考 git commit id: `a7d2f22d0d904be33ffbb0241a062cabfc3eb411`


## 注意

* 需要使用 python 脚本时请直接在沙箱外使用 uv 运行和管理
* 不要通过加补偿措施去弥补或掩盖错误来解决问题
* 代码修改需要确保逻辑链完美闭合
* 添加新功能/新逻辑时，事先考虑好文件/代码架构
* 文字内容不要硬编码，需考虑多语言支持
* 排查问题时先隔离变量，再判断方向，并借助日志辅助排查
* 设计技术方案时不要有“第一版”，“简化版”等词汇，需要的是完整成熟方案
* GLES驱动兼容性相关,请在需要时补充更新此文档 @docs/gles-drive-compatibility.md
* 不要在实机跑 Android Test，会导致原本安装在手机上的 apk 被自动卸载