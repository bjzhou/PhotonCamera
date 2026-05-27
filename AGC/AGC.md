# AGC 逆向工程

这是 Google Camera MOD AGC的逆向项目，目标是把光子相机（[app](../app)）的一些主要功能移植到这个项目中

工作目录: [AGC8.8.224_V12.0](AGC8.8.224_V12.0)
java反编译源码参考：[AGC8.8.224_V12.0_java_source](AGC8.8.224_V12.0_java_source)

1. 新建一个模块，把 [LutSelector.kt](../app/src/main/java/com/hinnka/mycamera/ui/components/LutSelector.kt)
   [ColorRecipePanel.kt](../app/src/main/java/com/hinnka/mycamera/ui/components/ColorRecipePanel.kt)
    [LutImageProcessor.kt](../app/src/main/java/com/hinnka/mycamera/lut/LutImageProcessor.kt)
   [LutRenderer.kt](../app/src/main/java/com/hinnka/mycamera/lut/LutRenderer.kt)
   [LutManager.kt](../app/src/main/java/com/hinnka/mycamera/lut/LutManager.kt)
    以及相关代码全都原封不动的编译进这个独立模块，并打包独立 dex 文件，然后在 AGC 项目中找到插入点进行插入，尽量减少直接编辑 smali 代码
2. 现有 AGC 项目中已经包含有 LUT 处理以及 UI 选择等相关代码，找到 AGC LUT 选择入口替换为光子相机的 LUT 选择，找到拍摄后处理入口替换为光子相机的 LUT 后处理
3. 使用 apktool b编译项目
4. 编写一个一键编译，签名，运行脚本

## 实现流程

1. AGC 拍照后处理点 Globals$1$1.smali 插入 PhotonAgcBridge.postProcessJpeg(...) 调用
2. FeatureButton 的 featureType == "lut" 分支现在调用 PhotonAgcBridge.showLutSelectorBottomSheet(...)，不再打开 AGC 原来的 LutSelectedDialog