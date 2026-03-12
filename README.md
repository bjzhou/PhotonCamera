# Photon Camera

[简体中文](./README.md) | [English](./README_EN.md)

[![Google Play](https://img.shields.io/badge/Google%20Play-Get%20it%20on-green?logo=google-play&logoColor=white)](https://play.google.com/store/apps/details?id=com.hinnka.mycamera)

Photon Camera 是一款专注于静态摄影的开源 Android 相机应用，旨在模拟现代数码无反相机的操作手感与画质表现。

## 🌟 核心特性

### 1. 极致的 LUT 支持
* **全格式兼容**：支持 `.cube`、`.png` (Halfs/Fulls) 及 `.xmp` 配置文件的导入与应用。
* **实时预览**：高性能着色器实现实时 LUT 滤镜预览，所见即所得。
* **自定义导入**：支持用户自行导入个性化 LUT 库，打造专属色彩风格。

### 2. 深度色彩配方 (Color Recipes)
基于专业摄影逻辑的色彩调整系统，支持多维度的参数精调：
* **基础调整**：曝光、对比度、高光、阴影、饱和度、色温、色调。
* **艺术效果**：色彩效果、晕影、颗粒、褪色、留银冲洗 (Bleach Bypass)。
* **进阶滤镜**：**HDF** (高光扩散滤镜)、色散、噪点、低像素风格。

### 3. 动图 (Motion Photos)
* **全网唯一**：针对 Android 多厂商 (小米、三星、Pixel 等) 进行深度适配的开源动图方案。
* **动态瞬间**：在拍摄照片的同时记录精彩的短视频片段。

### 4. 高速连拍
* **性能爆发**：支持高速、无上限数量限制的连拍模式。
* **实时处理**：支持连拍状态下实时挂载并应用 LUT 滤镜。

### 5. 多帧合成与超分辨率 (Computational Photography)
* **画质增强**：通过多帧堆栈合成，显著提升照片的画质表现。
* **降噪技术**：具备一定的降噪效果，并在不断优化中。

### 6. 大光圈虚化
* **AI 驱动**：集成基于高通优化的 **midas-v2** 深度检测本地 AI 模型。
* **精准测距**：提供较为准确的深度信息检测，实现自然的虚化过渡效果（持续优化中）。

### 7. 幻影模式 (Phantom Mode)
* **画质飞跃**：直接调用系统相机进行采集，通过挂载 Photon Camera 的 LUT 引擎，完美绕过第三方相机 API 画面质量差、锐化过度的问题。

### 8. AI 仿色 (AI Color Simulation)
* **智能色彩提取**：利用 **Google Nano Banana 2** 技术，通过分析样张快速还原并提取色彩信息，生成专属 LUT 滤镜。

## 🛠️ 技术框架
* **UI**: Jetpack Compose
* **相机底层**: Camera2 API
* **最低版本**: Android 11+ (minSdk 30)

## 🤝 贡献与反馈
本项目欢迎各种形式的贡献！如果你有任何问题或建议，请提交 Issue。

## 💰 捐赠
如果你觉得这个项目对你有帮助，欢迎请作者打赏一杯咖啡！

<img src="./doc/alipay_qr.webp" width="300" alt="Alipay QR Code">
