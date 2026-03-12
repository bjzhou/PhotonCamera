# Photon Camera

[简体中文](./README.md) | [English](./README_EN.md)

[![Google Play](https://img.shields.io/badge/Google%20Play-Get%20it%20on-green?logo=google-play&logoColor=white)](https://play.google.com/store/apps/details?id=com.hinnka.mycamera)

Photon Camera is an open-source Android camera application focused on static photography, designed to simulate the handling and image quality of modern mirrorless digital cameras.

## 🌟 Key Features

### 1. Advanced LUT Support
* **Multi-format Compatibility**: Supports importing and applying `.cube`, `.png` (Halfs/Fulls), and `.xmp` profile files.
* **Real-time Preview**: High-performance shaders enable real-time LUT filtering with "What You See Is What You Get" (WYSIWYG).
* **Custom Imports**: Easily import your own LUT libraries to create a unique color signature.

### 2. Deep Color Recipes
A professional-grade color adjustment system allowing fine-tuning across multiple dimensions:
* **Basic Adjustments**: Exposure, Contrast, Highlights, Shadows, Saturation, Temperature, Tint.
* **Artistic Effects**: Color effects, Vignette, Grain, Fade, Bleach Bypass.
* **Pro Filters**: **HDF** (Highlight Diffusion Filter), Dispersion, Noise, Low-pixel aesthetics.

### 3. Motion Photos
* **Industry Unique**: The only open-source project providing multi-vendor adaptation (Xiaomi, Samsung, Pixel, etc.) for Motion Photos on Android.
* **Dynamic Moments**: Capture short video clips alongside your still images.

### 4. High-Speed Burst
* **Performance Peak**: High-speed burst mode with no limit on the number of frames.
* **LUT Integration**: Supports applying LUT filters in real-time during burst sequences.

### 5. Multi-frame Synthesis & Super Resolution
* **Quality Enhancement**: Enhances image quality through advanced multi-frame stacking.
* **Noise Reduction**: Provides effective noise reduction while focusing on preserving natural details.

### 6. Large Aperture Bokeh
* **AI-Driven**: Integrates the **midas-v2** depth detection local AI model, optimized for Qualcomm chips.
* **Precise Depth**: Offers accurate depth sensing for natural background blur transitions (ongoing refinements).

### 7. Phantom Mode
* **Raw Quality**: Directly bridges with the system camera for image capture while applying Photon Camera's LUT engine. This bypasses the typical "bad image quality" and "over-sharpening" issues found in standard third-party camera APIs.

### 8. AI Color Simulation
* **Smart Stylization**: Utilizes **Google Nano Banana 2** technology to analyze reference photos, restore original colors, and extract color profiles to generate custom LUTs.

## 🛠️ Technology Stack
* **UI**: Jetpack Compose
* **Camera API**: Camera2 API
* **Min SDK**: Android 11+ (minSdk 30)

## 🤝 Contribution & Feedback
Contributions of any kind are welcome! If you have questions or suggestions, please open an Issue.

## 💰 Donation
If you find this project helpful, feel free to buy the author a coffee!

<img src="./doc/alipay_qr.webp" width="300" alt="Alipay QR Code">
