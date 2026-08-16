# Photon DNG Local Tone Mapping

## 固定参考实现

实现前下载并冻结了以下公开源码。Photon HDR 运行时不会根据单张照片切换公式或参数：

| 参考 | 固定版本或归档 | 下载文件 SHA-256 | 对应生产代码 |
| --- | --- | --- | --- |
| Paris、Hasinoff、Kautz 2011 Local Laplacian 官方 MATLAB | [论文项目页及 MATLAB source](https://people.csail.mit.edu/sparis/publi/2011/siggraph/) | `32e348776cd9d5b990d9b5116d69d2c2f37a28cf9bb04eb075d539295ba3a0b4` | log 域 HDR remap、金字塔核、鲁棒动态范围归一化 |
| Aubry 等 2014 Fast Local Laplacian 官方 MATLAB | 项目页发布的 `matlab_fast_llf_and_style_transfer.zip` | `94005fd3119e055f6d3cabf6e1c3eb8f457991b209374c08c96fa39c65162186` | `llf_general.m` 的强度离散和系数插值 |
| Halide Local Laplacian / BGU | Halide commit `52c427d277d3dc44c9a4bf69e32c7b85e5b90681` | LLF `44eb2dd1dfe3adc113c455cd5ca35cd2d10a676cc9876d9b5ad44ec4834a46fa`；BGU `987d7da6e9b9aa9e905f4a3977675f7f6a9ab8b4abce81aa78a5607494a4655e` | 生产级参数交叉核对、BGU fit-and-slice |
| Google BGU | google/bgu commit `f2d6f2d1950b64790a2f712dc80b6c4bada410d5` | `2c7ee626b1ffb34c5b5c9ab71b54a2b596e06d90fa6e9731c1654dfde452a685` | 原始 affine bilateral grid 正规方程和 7-tap blur |

许可证及归属记录在
[`docs/third-party/local-tone-mapping`](third-party/local-tone-mapping/README.md)。

## 固定参数

| 参数 | Photon HDR |
| --- | ---: |
| `localLaplacianRangeSigma` | `ln(1.5)` |
| `localLaplacianDetailExponent` | `1.0` |
| `localLaplacianIntensityLevels` | `64` |
| `localLaplacianEdgeSlope` | `0.5` |
| `percentileClip` | `0.005` |
| `targetDynamicRange` | `100` |
| `preToneMapExposureBoostEv` | `0 EV` |
| `bilateralSpatialBinSize` | `16` |
| `bilateralRangeSigma` | `1/12` |
| `bilateralGuideCurveAlpha` | `0.8` |
| `bilateralRegularization` | `10` |

## 逐项实现对照

| 阶段 | 参考实现 | Photon 实现 | 差异 |
| --- | --- | --- | --- |
| 输入域 | `lapfilter.m`: `log(I + eps)` | RAW 先执行与 demosaic 相同的 Lens Shading Correction 和 WarpRectilinear 空间映射，再变换为 profile RGB；强度固定为 `clamp((20R+40G+B)/61,0,1)`，进入 Local Laplacian 前乘 `BaselineExposure` | LL、BGU 与 DNG 查表使用相同的有限输入域；RAW 黑位用 paper epsilon 保持 log 有限 |
| HDR remap | `sigma_r=log(2.5)`, `alpha=1` | `sigma_r=log(1.5)`, `alpha=1`, `beta=0.5` | beta 只控制 LL large-edge remap；`targetDynamicRange` 只控制输出 percentile 曲线 |
| 强度离散 | `llf_general.m` 的强度离散和系数插值 | 64 个等距 reference levels | 与当前 LL 一致 |
| 金字塔层数 | `ceil(log(min(h,w))-log(2))+2` | 相同，并受实际可构造层数约束 | 只防止尺寸小于公式要求 |
| 金字塔核 | `[.05,.25,.4,.25,.05]`，越界样本重新归一化 | GPU pass 直接计算可分离核的二维外积 | 数学上与先横后纵相同，减少一次中间写入和 dispatch |
| Laplacian residual | 最粗层直接取输入 Gaussian residual | 相同 | 无 |
| HDR 输出范围 | 展示脚本在 LTM 后按鲁棒分位归一化并执行显示 gamma | 得到 `R=max(exp(filteredLog)-eps,0)` 后，以输出 P0.5/P99.5 计算 `γ=min(1,log(targetDR)/log(P99.5/P0.5))`。P99.5≥1 时目标上分位为 1；低于 1 时，在 `P99.5^γ` 与 1 之间按 `smoothstep(1-γ)` 插值得到目标上分位，再执行以上分位为锚点的幂曲线 | 只压缩、不扩张动态范围；欠范围场景随实际压缩强度平滑调整亮度，不跳过 LL 也不强制归一化 |
| BGU guide | Google BGU：`x / lerp(1,x,curve_alpha)` | 相同，固定 `curve_alpha=0.8`、`r_sigma=1/12`；`x` 为 source-linear paper intensity | DNG `MapInputWeights=(20,40,1,0,0)/(61×TotalBaselineExposureGain)`；按 dng_sdk 在 exposure ramp 前查表时，将五项点积乘回 total baseline gain，仍精确得到生成器的 source-linear guide |
| BGU spatial bin | `s_sigma=16` | 每个 DNG 空间点 16×16 个 GPU RAW 样本 | DNG map origin/spacing 由实际 `statsBounds` 归一化，并平移半个 bin，使点精确位于采样 tile 中心 |
| BGU histogram | RGB 3×4 affine normal equations，输入/输出为已完成变换的图像对 | 直接使用 source-linear `I` 与当前 Local Laplacian target `T`，求解 `T = gain × I` | BGU 只编码已经确定的 `(I,T)` 图像对；DNG PGTM 只能存 RGB 共用乘法 gain，因此去掉 affine intercept，避免退化为 `b/x` |
| BGU blur | 7 taps：中心 `1`，距离 1/2/3 为 `1/8,1/27,1/64` | 相同，按 z/y/x 分离执行 | 无 |
| BGU regularization | Halide/Google BGU 的固定 identity prior | 将 identity 先验按 cell 的 `mean(I²)=ΣI²/Σw` 缩放，再求解 `(Σ(T·I)+priorXX)/(ΣI²+priorXX)`；无可观测输入能量的 cell 回退到 gain 1 | 避免未缩放正则项在暗部等价于加入全尺度 `I=1` 样本 |
| slice | 对空间与强度网格三线性插值 | DNG 负责空间双线性；每个表点执行强度线性 slice | 表格离散后与原三线性形式等价 |
| DNG 合法性 | 不适用 | gain 仅限制为 `[1/4096,4096]` | DNG 表只要求有限正 gain；不在 BGU 输出后增加参考实现不存在的单调投影 |

## 数据链

1. `DNG_PGTM_CELL_SAMPLES` 在 GPU 上从最终输出坐标反向组合有效 DNG WarpRectilinear
   opcodes，再从 RAW 读取与 demosaic 相同的 Lens Shading Gain，经 ColorMatrix 和
   HueSatMap 得到 profile RGB，并以 `clamp((20R+40G+B)/61,0,1)` 作为 scene input；每个空间 tile
   保留 16×16 个有序空间样本。
2. compute pass 执行 `Iₑ = I × BaselineExposure`，随后在 SSBO 中完成 log normalization、
   64 个 reference 的 Gaussian/Laplacian pyramid 和重建。重建结果执行
   `R=max(exp(filteredLog)-eps,0)`，再用输出 P0.5/P99.5 幂曲线压缩动态范围。指数上限为 1；
   输出 P99.5 低于 1 时，其目标值在 `P99.5^γ` 与 1 之间按压缩强度平滑插值，高于等于 1
   时目标值为 1。最后除去预曝光得到 scene-linear target `T`。
3. GPU histogram 对过滤结果使用 0.5%/50%/99.5% 分位数，秩定义与 MATLAB `prctile`
   一致，并据此求输出动态范围幂指数。精确零仅在对数动态范围计算中使用 `1e-6`
   scene-linear black floor，原分位值、LL 样本和零输出不变。
4. 标量 BGU 以 paper intensity `I` 为 guide/fit input，以 `T` 为 fit target，经过 z/y/x
   7-tap blur 后求解过原点的 gain。DNG 查表权重预除 TotalBaselineExposure；渲染器在
   PGTM 表坐标计算中乘回相同 gain，应用单一 RGB gain 后才进入各引擎的 exposure ramp。
5. GPU slice 每个空间格的 257 个 DNG gain 点；CPU 只回读最终 gain table 并封装 DNG
   metadata，DNG renderer 在空间和输入强度上插值。

`DngPhotonLocalToneMapper` 保留为可读的 CPU 方程参考，不在拍摄生产路径调用。

## 全局曲线职责

`ProfileToneCurve` 只负责 profile 的全局输出风格，不接收场景统计量。PGTM 只编码
Local Laplacian 已经产生的局部映射；tone curve 不参与曝光估计。运行时顺序固定为：
PGTM（表坐标乘 `2^TotalBaselineExposure`）→ 引擎 exposure ramp → tone curve/filmic 映射。

旧的解析曲线、空间统计模型，以及全局 gray pivot、global shoulder、highlight
pressure、cell contrast warp 和 highlight recovery 参数均已删除。
