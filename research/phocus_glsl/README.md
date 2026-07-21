# Phocus GLSL 研究提取集

本目录从 Android Phocus 的 `libcrosssdk.so` 中静态恢复 GLSL，仅用于个人学习和互操作研究。

## 提取结果

- 二进制中的 GLSL 文本实例：177
- 按源代码内容去重后：177
- 可解析的导出 Shader 源符号：150
- 有符号归属的文本实例：150
- 暂时无法绑定导出符号的文本实例：27

完全相同的源码只保存一份；`manifest.json` 和 `manifest.csv` 保留了所有 ELF 偏移、符号别名及重复实例。

## 目录

| 目录 | 内容 | 文件数 |
|---|---|---:|
| `00_common_io` | 公共顶点、格式转换、填充及输入输出 | 9 |
| `01_raw_sensor` | Bayer、黑电平、坏点、中和、场景校准 | 15 |
| `02_demosaic` | 多阶段 Demosaic 与色噪处理 | 19 |
| `03_denoise` | CMOS/CCD、RGB 与灰度降噪 | 28 |
| `04_color_tone` | 色彩变换、曲线、Gamma、选择性色彩 | 25 |
| `05_lens_geometry` | 镜头、色差、暗角、缩放、方向和透视 | 38 |
| `06_detail_texture` | Clarity、锐化和胶片颗粒 | 31 |
| `07_hdr_ultrahdr` | HDR 传递函数、Gain Map 生成与应用 | 5 |
| `99_unattributed` | 可恢复但不能可靠绑定模块名的源码 | 7 |

## 阅读顺序

建议先看：

1. `01_raw_sensor`：黑电平、Bayer 中和和高光重建。
2. `02_demosaic`：按 `pass_0a1 → 0a2 → 0b → 0c → 1 → 2 → 3` 阅读。
3. `03_denoise`：结合 Demosaic 的 color-noise pass 理解。
4. [`04_color_tone`](./04_color_tone/README.md)：Hasselblad Gamma、Film Curve、Gradation、
   二维色度 LUT 与输出色彩管理的完整调用链分析。
5. `07_hdr_ultrahdr`：SDR/HDR 映射以及 UltraHDR Gain Map。

## 注意

- 文件头注释是提取器添加的，不属于原始 Shader。
- 部分 Shader 依赖宿主端创建的纹理格式、UBO、LUT 和调度尺寸，不能脱离 C++ 管线直接运行。
- 分类根据导出符号及源码特征完成，`manifest.json` 才是精确来源索引。
- 原始程序属于其权利人；请勿把这些文件当作开源代码复制进产品或公开再分发。
