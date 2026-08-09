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


## 注意

* 需要使用 python 脚本时请直接在沙箱外使用 uv 运行和管理
* 不要通过加补偿措施去弥补或掩盖错误来解决问题
* 代码修改需要确保逻辑链完美闭合
* 添加新功能/新逻辑时，事先考虑好文件/代码架构
* 文字内容不要硬编码，需考虑多语言支持
* 排查问题时先隔离变量，再判断方向，并借助日志辅助排查
* 设计技术方案时不要有“第一版”，“简化版”等词汇，需要的是完整成熟方案
* 编写GLES代码时需先阅读GLES驱动兼容性相关文档, 并仅在需要时补充更新此文档，仅包含明确是兼容性问题的内容 @docs/gles-driver-compatibility.md
* 不要在实机跑 Android Test，会导致原本安装在手机上的 apk 被自动卸载
* 不要任意增加无意义的单元测试，仅新增有明确意义的单元测试门控
* 对推理强度要求相对较低的子任务交给5.6 Luna subagent执行