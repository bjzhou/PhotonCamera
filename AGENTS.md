# Camera App

这是一个 Android 相机 App，专注于静态摄影，模拟现代数码无反相机的操作手感

## 技术框架

* UI: Jetpack Compose
* 使用 Camera2 API, 不做向下兼容
* minSdk 30

## 调试编译

编译命令需允许沙箱外执行

* 完整编译

    ```
    ./gradlew assembleChinaDebug
    ```

* 通过性验证（kotlin端）

    ```
    ./gradlew compileChinaDebugKotlin
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

* 添加新功能/新逻辑时，优先选择在新方法/函数/文件中新增，而不是在现有代码中新增，避免单个方法/文件过长
* 文字内容不要硬编码，需考虑多语言支持
* 排查问题时需要借助日志辅助排查
