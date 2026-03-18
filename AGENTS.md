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

## 注意

* 添加新功能/新逻辑时，优先选择在新方法/函数/文件中新增，而不是在现有代码中新增，避免单个方法/文件过长
* 文字内容不要硬编码，需考虑多语言支持