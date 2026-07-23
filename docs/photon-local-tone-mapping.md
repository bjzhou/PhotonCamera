# Photon DNG Local Tone Mapping

## 固定参考实现

实现前下载并冻结了以下公开源码，算法常量不根据单张照片调参：

| 参考 | 固定版本或归档 | 下载文件 SHA-256 | 对应生产代码 |
| --- | --- | --- | --- |
| Paris、Hasinoff、Kautz 2011 Local Laplacian 官方 MATLAB | [论文项目页及 MATLAB source](https://people.csail.mit.edu/sparis/publi/2011/siggraph/) | `32e348776cd9d5b990d9b5116d69d2c2f37a28cf9bb04eb075d539295ba3a0b4` | log 域 HDR remap、金字塔核、鲁棒动态范围归一化 |
| Aubry 等 2014 Fast Local Laplacian 官方 MATLAB | 项目页发布的 `matlab_fast_llf_and_style_transfer.zip` | `94005fd3119e055f6d3cabf6e1c3eb8f457991b209374c08c96fa39c65162186` | `llf_general.m` 的强度离散和系数插值 |
| Halide Local Laplacian / BGU | Halide commit `52c427d277d3dc44c9a4bf69e32c7b85e5b90681` | LLF `44eb2dd1dfe3adc113c455cd5ca35cd2d10a676cc9876d9b5ad44ec4834a46fa`；BGU `987d7da6e9b9aa9e905f4a3977675f7f6a9ab8b4abce81aa78a5607494a4655e` | 生产级参数交叉核对、BGU fit-and-slice |
| Google BGU | google/bgu commit `f2d6f2d1950b64790a2f712dc80b6c4bada410d5` | `2c7ee626b1ffb34c5b5c9ab71b54a2b596e06d90fa6e9731c1654dfde452a685` | 原始 affine bilateral grid 正规方程和 7-tap blur |

许可证及归属记录在
[`docs/third-party/local-tone-mapping`](third-party/local-tone-mapping/README.md)。

## 逐项实现对照

| 阶段 | 参考实现 | Photon 实现 | 差异 |
| --- | --- | --- | --- |
| 输入域 | `lapfilter.m`: `log(I + eps)` | RAW 先执行与 demosaic 相同的 Lens Shading Correction 和 WarpRectilinear 空间映射，再变换为 source-linear scene input；进入 Local Laplacian 前固定乘 `BaselineExposure × 2^1.1` | `+1.1 EV` 是 ACR3 灰点曝光，在线性 0.18 上得到 `0.18 × 2^1.1`，顺序在 LTM 之前；RAW 可以精确为 0，因此保留 `1e-6` 正值到 log 域；统计域和最终应用域使用同一 LSC/warp |
| HDR remap | `sigma_r=log(2.5)`, `alpha=1`；HDR 展示脚本手工选择 `beta=0` | `sigma_r`、`alpha` 相同；`beta=min(1, log(100)/log(input DR))` | 官方 API 把 `beta` 定义为 large-edge slope；展示脚本的 `0` 是特定 HDR 图的最强压缩参数，不是通用自动参数。Photon 直接用达到相同目标 DR 所需的全局压缩比，无需调参；输入 DR≤100 时为恒等斜率 1 |
| 强度离散 | `llf_general.m` general remap 示例 `N=20` | 20 个等距 reference levels | 无 |
| 金字塔层数 | `ceil(log(min(h,w))-log(2))+2` | 相同，并受实际可构造层数约束 | 只防止尺寸小于公式要求 |
| 金字塔核 | `[.05,.25,.4,.25,.05]`，越界样本重新归一化 | GPU pass 直接计算可分离核的二维外积 | 数学上与先横后纵相同，减少一次中间写入和 dispatch |
| Laplacian residual | 最粗层直接取输入 Gaussian residual | 相同 | 无 |
| HDR 输出范围 | 展示脚本在 LTM 后按 99.5% 分位归一化并执行显示 gamma | `beta=min(1, log(100)/log(input DR))` 已在 Local Laplacian 内完成 large-edge 压缩；重建后的线性 radiance 直接 clamp 为 SDR target | 不再执行会抵消固定预曝光的 `R/Rmax`，也不在 LTM 后增加第二条 compression/pivot 曲线；tone curve 和输出编码由后续 profile renderer 执行 |
| BGU guide | Google BGU：`x / lerp(1,x,curve_alpha)`，`curve_alpha=0.8`，`r_sigma=1/8` | 相同；guide 只选择 range plane，仍使用 source-linear input | 无 |
| BGU spatial bin | `s_sigma=16` | 每个 DNG 空间点 16×16 个 GPU RAW 样本 | DNG map origin/spacing 由实际 `statsBounds` 归一化，并平移半个 bin，使点精确位于采样 tile 中心 |
| BGU histogram | RGB 3×4 affine normal equations，输入/输出为已完成变换的图像对 | 直接使用 source-linear `I` 与 Local Laplacian 的最终 SDR target `T`，求解 `T/BaselineExposure = gain × I` | BGU 只负责把已经确定的 `(I,T)` 图像对编码成 PGTM，不再定义第二套影调；DNG PGTM 只能存 RGB 共用乘法 gain，因此去掉 affine intercept，避免写表后退化为 `b/x` |
| BGU blur | 7 taps：中心 `1`，距离 1/2/3 为 `1/8,1/27,1/64` | 相同，按 z/y/x 分离执行 | 无 |
| BGU regularization | Halide 当前 BGU：固定 `lambda=0.1`，相当于 1/10 个样本并拉向 identity；上游已移除按 `N+1` 放大并拉向 cell average gain 的旧逻辑，因为其正则强度方向相反 | 直接 gain 模型的分母 `ΣI²` 加 `lambda`，分子 `Σ((T/BaselineExposure)·I)` 加 `lambda` | identity gain 为 1；BaselineExposure 只在目标换算时除一次 |
| slice | 对空间与强度网格三线性插值 | DNG 负责空间双线性；每个表点执行强度线性 slice | 表格离散后与原三线性形式等价 |
| DNG 合法性 | 不适用 | gain 仅限制为 `[1/4096,4096]` | DNG 表只要求有限正 gain；不在 BGU 输出后增加参考实现不存在的单调投影 |

## 数据链

1. `DNG_PGTM_CELL_STATS` 在 GPU 上从最终输出坐标反向组合有效 DNG WarpRectilinear
   opcodes，再从 RAW 读取与 demosaic 完全相同的 DNG/Camera2 Lens Shading Gain，经
   ColorMatrix 和 HueSatMap 得到 scene input；每个空间 tile 保留 16×16 个有序空间样本。
2. compute pass 先执行固定线性曝光
   `Iₑ = I × BaselineExposure × 2^1.1`，再在 SSBO 中完成 log normalization、20 个强度
   reference 的 Gaussian/Laplacian pyramid 和重建；重建 radiance clamp 后就是最终 SDR
   target `T`。
3. GPU histogram 只统计预曝光输入的 0.5%/50%/99.5% 分位数；CPU 扫描一个
   32768-bin 计数表，计算 Local Laplacian large-edge slope。LTM 后不再估算曝光或生成
   全局 compression 曲线。
4. 标量 BGU 直接以 `I` 为 guide/fit input，以 `T/BaselineExposure` 为 fit target，
   经过 z/y/x 7-tap blur 后求解过原点的 gain；它只把已经完成的 LTM 结果投影到 DNG
   可表达的乘法模型。
5. GPU slice 每个空间格的 257 个 DNG gain 点；CPU 只回读最终 gain table 并封装 DNG
   metadata，DNG renderer 在空间和输入强度上插值。

`DngPhotonLocalToneMapper` 保留为可读的 CPU 方程参考，不在拍摄生产路径调用。

## 全局曲线职责

Photon `ProfileToneCurve` 只负责 profile 的全局输出风格，不接收场景统计量。RAW 默认
亮度由 Local Tone Mapping 之前的固定 `+1.1 EV` 建立。PGTM 只编码 Local Laplacian
已经产生的 SDR target；tone curve 不参与曝光估计，只提供基础的全局输出风格。

旧实现中的全局 gray pivot、global shoulder、highlight pressure、cell contrast warp 和
highlight recovery 参数均不再参与 Photon PGTM。
