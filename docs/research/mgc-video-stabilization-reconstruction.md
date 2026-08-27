# MGC 视频防抖功能整理与核心算法重建

目标版本：`MGC_9.6.080_V24_MGC.apk`（arm64-v8a）  
结论：MGC 不只有 Camera2 的 HAL 防抖开关，还包含一条应用侧 Native AEIS 链路。该链路同步消费陀螺仪、OIS 镜组偏移和逐帧 Camera2 元数据，输出多条带 3×3 变换矩阵，再在独立的视频渲染轨中完成重采样。

本文把信息分成三类：

- **确认**：能由反编译 Java、JNI 导出、ARM64 反汇编或二进制字符串直接证明。
- **高置信重建**：接口、数据流和算法组件已经确认，但原始 C++ 被 strip，只能按相机几何重建实现。
- **未知**：设备标定、滤波系数、裁切优化器参数，以及 UI 模式到 Native 配置档的完整映射。

配套代码：[`mgc_eis_reconstruction.hpp`](../../research/mgc_eis_reconstruction/mgc_eis_reconstruction.hpp) 和 [`mgc_eis_reconstruction.cpp`](../../research/mgc_eis_reconstruction/mgc_eis_reconstruction.cpp)。它们是可编译的 clean-room 结构重建，不是逐指令翻译或声称还原出的 Google 原始源码。

## 1. 功能分层

MGC 包内至少有三类防抖路径，不能混为一谈：

| 路径 | 已确认行为 | 输出/用途 |
|---|---|---|
| Camera2/HAL EIS | 设置 `CONTROL_VIDEO_STABILIZATION_MODE=1`；同时把 `LENS_OPTICAL_STABILIZATION_MODE` 设为 0 | 由相机 HAL 直接输出稳定帧 |
| 应用侧 Native AEIS | `EisNative` 消费 Gyro、OIS、帧时间/曝光/rolling-shutter/焦距/裁切信息 | 每帧返回 `numStrips × 9` 浮点数，即分条 3×3 变换 |
| Vendor tracked AEIS | 读写 `com.google.pixel.experimental2020.eisTrackRegion` 等厂商 key | ROI/跟踪区域驱动的平移缩放修正 |

HAL 开关见 `ffw.java` 约 280–281 行。应用侧接口见 `EisNative.java`、`oeq.java` 和 `htd.java`。tracked AEIS key 见 `koh.java`、`ksr.java`、`fzj.java`。

## 2. 明确启用条件

### 2.1 模式定义

`gwo.java` 中存在五个内部模式：

| 内部值 | 含义 | 当前选项菜单 |
|---|---|---|
| `OFF` | 关闭 | 由总开关表达，不在 `hay.k()` 的三个模式项中 |
| `DEFAULT` | 标准防抖 | `VIDEO_STABILIZATION_STANDARD` |
| `CINEMATIC` | 电影运镜/旧路径 | 枚举仍存在，但当前三个模式菜单未列出 |
| `LOCKED` | 锁定防抖 | `VIDEO_STABILIZATION_LOCKED` |
| `ACTIVE` | 运动防抖 | `VIDEO_STABILIZATION_ACTIVE` |

`hay.java` 构造的映射为：

```text
DEFAULT -> STANDARD
LOCKED  -> LOCKED
ACTIVE  -> ACTIVE
```

### 2.2 菜单总体启用条件

以下条件来自 `hay.n()`、`hay.o()`，是当前 APK 的确定逻辑：

```text
功能存在 = feature("camcorder.washington_l")
        OR feature("camcorder.washington_a")

设置有效 = 功能存在
        AND 全局视频防抖偏好 lyr.K == true

菜单显示 = 功能存在
        AND 当前拍摄模式 == 普通 VIDEO（nne.c）
        AND 当前镜头朝向 == BACK（pog.b）
```

因此：

- 只在**普通视频模式**显示；Video Intent、视频夜景等其他内部模式不满足 `nne.c` 的精确相等判断。
- 只在**后摄**显示。前摄日志枚举中另有 `STEADY_FACE`，那是另一条自动路径，不等于这个后摄三模式菜单。
- 全局视频防抖总开关必须打开，关闭时业务语义是 `NO_STABILIZATION`。
- 设备配置至少要开放 Locked 或 Active 中的一种能力：
  - Locked flag：`camcorder.washington_l`（`hly.Q`）
  - Active flag：`camcorder.washington_a`（`hly.R`）

这些 flag 在 `hst.java` 的多个 Pixel 设备配置档中被置为 true；最终值取决于 MGC 选中的设备配置，而不是 Android 通用能力位。

### 2.3 各模式的精确条件

`hay.w()` 给出的模式条件如下：

| 模式 | 条件 |
|---|---|
| Standard | 菜单总体条件成立后恒可选 |
| Locked | `camcorder.washington_l == true` |
| Active | `camcorder.washington_a == true` 且帧率为 30 fps 且分辨率为 1080p |

代码中的精确值是：

```text
FPS_30  = kyw.E
RES_1080P = lyk.a
```

`hay.w()` 对 Locked/Active 还检查 `!this.e.cM()`。把依赖注入链继续展开后，这个 observable 来自：

```text
jip.js -> gkc(case 12) -> gvm.a -> gmi(case 17)
       -> defpackage.a.az() -> new oxv(Boolean.FALSE)
```

所以在这份 APK 中它是**固定 false**，取反后恒为 true，不会增加运行时限制。它看起来是为其他构建保留的冲突态接口，但当前包不能据此命名具体业务含义。

可以把当前 APK 的最终判断简化为：

```pseudo
function selectableModes(state, config, preference):
    deviceHasAdvancedEis = config.washingtonLocked || config.washingtonActive

    if !deviceHasAdvancedEis:
        return []
    if state.captureMode != VIDEO:
        return []
    if state.lensFacing != BACK:
        return []
    if !preference.videoStabilizationEnabled:
        return []

    modes = [STANDARD]
    if config.washingtonLocked:
        modes += LOCKED
    if config.washingtonActive && state.fps == 30 && state.resolution == 1080p:
        modes += ACTIVE
    return modes
```

### 2.4 Native AEIS 真正运行还需要的条件

模式可选不等于 Native 一定成功产出矩阵。`htd.g()` 和 `mhz` 还要求：

1. AEIS feeder 被视频管线启动，且当前没有已创建的 `EisNative` handle。
2. 设备能映射到 `iyk` 内部设备 ID，并取得对应的多摄标定文件。
3. 输出尺寸、active-array、crop-window 和镜头角色能被解析。
4. Gyro 监听会话成功创建；OIS 若可用则持续提交 lens offset。
5. 每帧 Camera2 元数据可按时间戳取回。

可见的标定文件名包括：

```text
lib_cpi/multi_cam_calibration.combined.proto.oriole
lib_cpi/multi_cam_calibration.combined.proto.raven
lib_cpi/multi_cam_calibration.combined.proto.bluejay
lib_cpi/multi_cam_calibration.combined.proto.panther
lib_cpi/multi_cam_calibration.combined.proto.cheetah
...以及若干数字后缀和可选 .obf 变体
```

`camera.obf_eis` 开启且 chunk、phrase 有效时，构造函数会走扩展配置路径。当前配置键为：

```text
camera.obf_eis
camera.obf_eis_chunk
camera.obf_eis_phrase
```

反编译配置中可见默认 chunk `4096`、phrase `AUHGNIST`，但它们属于载入/混淆配置机制，不是防抖数学参数。

### 2.5 模式对取景裁切的已知影响

`gvg(pnu)` 为每个 `gwo` 建立设备定义的 framing factor，并把 `LOCKED` 明确覆盖为 `2.0f`。这证明 Locked 会使用显著更紧的取景/更大的裁切余量。Active 的 factor 来自设备能力对象，当前 APK 没有一个可跨设备照搬的固定值。

Native handle 创建时收到 strength `0.5f`，但 feeder 启动后立即调用 `setStabilizationStrength(1.0f)`。因此当前可见 AEIS 调度链的实际 strength 是 1.0；最终有效修正仍会受裁切边界约束。

## 3. 调度伪代码

### 3.1 启动与停止

```pseudo
function startEis():
    lock(feeder)
    lock(nativeHandle)

    assert nativeHandle == null

    deviceId = mapDeviceProfileToIyk()
    calibrationPath = chooseCalibrationFile(obfuscatedEisEnabled)

    if obfuscatedEisEnabled && obfChunk >= 2 && obfPhrase != null:
        nativeHandle = EisNative.createHandle(
            deviceId, outputWidth, outputHeight,
            initialStrength = 0.5,
            isFrontCamera,
            unknownInt = -1,
            calibrationPath,
            obfChunk,
            obfPhrase)
    else:
        nativeHandle = EisNative.createHandle(
            deviceId, outputWidth, outputHeight,
            initialStrength = 0.5,
            isFrontCamera,
            unknownInt = -1,
            calibrationPath,
            0, "")

    numStrips = nativeHandle.getNumStrips()
    nativeHandle.setStabilizationStrength(1.0)

    for each lensOffset queued before handle creation:
        nativeHandle.processLensOffset(x, y, timestamp, cameraIndex = 0)
    clear queued lens offsets

    gyroSession = gyroProvider.open("mv-eis")
    started = true
    reset processed / failed / dropped counters
```

```pseudo
function stopEis():
    lock(feeder)

    while frameQueue is not empty:
        metadata = metadataStore.find(frameQueue.popFront())
        if metadata == null:
            metadata = lastValidMetadata
        if metadata != null:
            processCameraMetadata(metadata)

    cancel every transform request still waiting for a native timestamp
    clear timestamp map
    close gyroSession

    lock(nativeHandle)
    nativeHandle.release()
    nativeHandle = null
    started = false
```

### 3.2 Gyro 输入

`htd` 每次请求 `(lastGyroTimestamp + 1, frameBoundary]` 内的样本，并按前后摄与 sensor orientation 变换 XY；Z 保留为第三轴。Native 对前摄还会再执行自身坐标系修正。

```pseudo
function feedGyroUntil(frameBoundary):
    orientation = dynamicOrientationEnabled
        ? currentDeviceOrientation
        : sensorOrientation

    samples = gyroSession.query(lastGyroTimestamp + 1, frameBoundary)
    for sample in samples:
        (x, y) = remapGyroXY(
            sample.x, sample.y,
            isFrontCamera,
            orientation)

        nativeHandle.processGyro(x, y, sample.z, sample.timestamp)
        lastGyroTimestamp = sample.timestamp
```

已确认的 Java XY 映射：

```pseudo
if (front && orientation == 90) || (!front && orientation == 270):
    (x, y) = (-rawX, -rawY)
else if front && orientation == 0:
    (x, y) = (rawY, -rawX)
else:
    (x, y) = (rawX, rawY)
```

### 3.3 OIS 输入

```pseudo
function onLensOffset(timestamp, x, y, physicalCameraId):
    cameraIndex = mapPhysicalLensToNativeIndex(physicalCameraId)

    lock(nativeHandle)
    if nativeHandle != null:
        nativeHandle.processLensOffset(x, y, timestamp, cameraIndex)
    else if queue is plausibly time-ordered within 500 ms:
        queue.push(timestamp, x, y)
    else:
        drop and log

    lastOisTimestamp = timestamp
```

已确认的 camera index：后摄广角为 0；超广角为 3；长焦根据设备代际为 3 或 4。

### 3.4 帧边界同步

这里是整个 Java 调度最关键的部分。它不是“Camera2 回调一到就处理”，而是等待 Gyro、OIS 和 Camera metadata 都越过**下一帧边界**：

```pseudo
function onVideoFrameBoundary(t):
    if !started || t < lastFrameBoundary:
        return
    lastFrameBoundary = t

    initialize lastGyro/lastOis to t - 1 if this is the first frame
    feedGyroUntil(t)

    latestMetadataTimestamp = metadataStore.latest()?.sensorTimestamp ?: 0
    frameQueue.push(t)

    gyroDead = t >= lastGyroTimestamp + 1 second
    oisDead = t >= lastOisTimestamp + 1 second
    metadataDead = t >= latestMetadataTimestamp + 1 second

    while frameQueue.size > 1:
        nextBoundary = frameQueue[1]

        if !gyroDead && lastGyroTimestamp < nextBoundary:
            break
        if !oisDead && lastOisTimestamp < nextBoundary:
            break
        if !metadataDead && latestMetadataTimestamp < nextBoundary:
            break

        frameTimestamp = frameQueue.popFront()
        metadata = metadataStore.find(frameTimestamp)
        if metadata != null:
            processCameraMetadata(metadata)
            lastValidMetadata = metadata
        else:
            cancelTransformFor(frameTimestamp)
```

这个设计有三个作用：

1. 保证当前帧的曝光中心和 rolling-shutter 尾部有足够的 Gyro/OIS 覆盖。
2. 为 Native look-ahead 留出未来样本；Native 可以返回早于本次输入的帧时间戳。
3. 单个传感器流超过 1 秒不更新时进入 dead-source 降级，避免队列永久阻塞。

### 3.5 Camera2 元数据预处理

`htd` 对每帧做出的时间与几何换算是可以精确还原的。设：

```text
T_sensor   = Camera2 sensor timestamp
T_exp      = exposure time
T_skew     = full active-array rolling-shutter skew
H_active   = active-array height
crop       = 当前 crop rect
```

对于特殊 half-resolution/binning 镜头，crop 坐标先全部除以 2，物理 sensor size 再乘以 2。随后：

```text
T_crop_skew  = crop.height × T_skew / H_active
T_crop_top   = T_sensor + crop.top × T_skew / H_active
T_center     = T_crop_top + T_exp / 2

field_scale  = crop.width / active.width
             × physical_sensor_width / focal_length
```

调用链把 `T_center` 作为两个帧时间参数，把 `T_exp`、`T_crop_skew`、`field_scale`、camera index 和 half-resolution 标记交给 `processFrame()`：

```pseudo
function processCameraMetadata(m):
    derived = deriveCropTimingAndFieldScale(m)

    nativeHandle.setActiveArraySize(m.active.width, m.active.height)
    nativeHandle.setCropWindowSize(derived.crop.width, derived.crop.height)

    matrices = float[numStrips * 9]
    returnedTimestamp = nativeHandle.processFrame(
        imageBytes = null,
        outputWidth,
        outputHeight,
        timestampA = derived.centerTimestamp,
        timestampB = derived.centerTimestamp,
        exposureTime = derived.exposureTime,
        rollingShutterSkew = derived.cropSkew,
        fieldScaleA = derived.fieldScale,
        constant1 = 1.0,
        fieldScaleB = derived.fieldScale,
        enabled = true,
        optionalTimestamp = 0,
        optionalArrays = null,
        outputMatrices = matrices,
        cameraIndex,
        halfResolutionMode)

    if returnedTimestamp == -1:
        count initialization/no-output
        return
    if returnedTimestamp < -1:
        failedTimestamp = -returnedTimestamp
        cancelTransformFor(originalFrameOf(failedTimestamp))
        return

    originalFrame = mapNativeTimestampToVideoTimestamp(returnedTimestamp)
    transforms = split matrices into numStrips row-major 3x3 matrices
    completeTransformFuture(originalFrame, transforms)
```

返回时间戳而不是简单返回当前帧，说明 Native 内部确实允许缓存、look-ahead 和延迟输出。

### 3.6 渲染输出

```pseudo
function onEncoderInputFrame(frame):
    transformFuture = transformFor(frame.timestamp)
    transforms = waitAtMost(15 ms, transformFuture)

    if transforms available:
        renderer.setRollingShutterStripTransforms(transforms)
        renderer.composeOptionalExtraTransform()
        renderer.drawTo("stabilized-vid-track")
    else:
        apply pipeline's identity / cancel / drop policy
```

`jxm` 创建名为 `stabilized-vid-track` 的独立轨道，消费矩阵后再把稳定帧交给编码器。`hsz`/`iid` 把 Native feeder 串行化到 `trk-aeis` 或 `me-aeis` 执行线程。

## 4. Native 入口还原

目标库：`lib/arm64-v8a/libgcastartup.so`，ELF 已 strip。JNI 符号仍保留：

| JNI | 地址 | 大小 | 反汇编结论 |
|---|---:|---:|---|
| `createHandle` | `0x227fcec` | 1496 | 分配 0x28-byte 外层 handle 和 0x410-byte 主 EIS 对象，载入设备配置/标定 |
| `processFrame` | `0x2280338` | 1632 | 组装帧结构、提交主引擎、复制多组 float vector/3×3 matrices 到 Java 数组 |
| `processGyro` | `0x2280998` | 144 | 坐标修正后写入 gyro helper 与主引擎 |
| `getTransformBetweenFrames` | `0x2280a28` | 1304 | 组装两帧元数据并输出相对分条变换 |
| `processLensOffset` | `0x2281200` | 48 | 把 XY、timestamp、camera index 转交主引擎 |
| `setStabilizationStrength` | `0x2281230` | 12 | 写入当前 filter/profile |
| `getNumOfFramesToLookAhead` | `0x228123c` | 16 | 读取主 filter `+0x110` |
| `isTripodMode` | `0x228124c` | 12 | 读取 gyro helper 首字节 |
| `setActiveArraySize` | `0x2281258` | 16 | 保存浮点 width/height 并更新引擎 |
| `setCropWindowSize` | `0x2281268` | 16 | 保存浮点 width/height 并更新引擎 |
| `getNumStrips` | `0x2281278` | 68 | 读取主 filter `+0xe0` |

外层 handle 的高置信布局：

```cpp
struct NativeHandleObserved {
    bool front_camera_coordinate_mode; // +0x00
    void* gyro_helper;                  // +0x08; 首字节也是 tripod 状态
    void* auxiliary_state;              // +0x10
    void* eis_engine;                    // +0x18
    int32_t submitted_frame_counter;     // +0x20
};
```

二进制还保留了原始组件/文件名字符串：

```text
lib_eis/eis.cc
lib_eis/gyro.cc
lib_eis/gyro_nonlinear_filter.cc
lib_eis/gyro_nonlinear_lookahead_filter.cc
lib_eis/gyro_lookahead_optimization.cc
lib_eis/lens_offset.cc
lib_eis/fast_klt_motion_estimation.cc
lib_eis/stabilization_motion_filtering_IIR.cc
lib_eis/motion_filtering.cc
lib_eis/roi_tracking_optimization.cc
region_flow*
motion_estimation
motion_analysis
motion_models
temporal_irls_smoothing
rolling_shutter_model
```

同时存在如下错误/状态文本：

```text
The stabilization strength must be between 0 and 1!
Lookahead filter is null!
Error while computing region flow.
Cannot obtain metadata for Lookahead filtering.
ShotParams indicates that device is on a tripod. Gyro speed = ...
```

因此可以确认 Native 具备：非线性 Gyro 滤波、look-ahead 优化、IIR motion filtering、OIS lens offset、rolling-shutter、tripod 检测，以及可选 KLT/RegionFlow/IRLS 视觉运动估计。

但当前 `oeq.m()` 调 `processFrame()` 时明确传入 `imageBytes = null`，三个可选数组中的前两个也为 null。结论必须限定为：

- **当前可见 MGC 视频 AEIS 调用主要走 Gyro/OIS/元数据/标定路径。**
- 库内的 KLT/RegionFlow 可能供另一个配置或调用方使用；仅凭二进制包含这些组件，不能断言它们是当前链路的逐帧必经步骤。

## 5. 核心算法高置信重建

原始滤波器和裁切优化器的精确系数无法从 stripped library 唯一恢复。配套 C++ 因此按已确认 ABI 和相机几何重建完整可运行的传感器路径。

### 5.1 Gyro 坐标、偏置与姿态积分

Java 先做设备/镜头方向变换。Native 维护时间有序样本，低速时估计 bias，并以中点角速度积分：

```text
ω'k = ωk - bias
ωmid = (ω'k-1 + ω'k) / 2
Δq = Exp(ωmid × Δt)
qk = normalize(qk-1 × Δq)
```

姿态查询落在两个样本之间时用 quaternion SLERP。超过 1 秒的 Gyro 间隙视为不连续，不能直接积分成巨大旋转。

### 5.2 Tripod 检测

Native 明确暴露 `isTripodMode()`，二进制文本也显示根据 Gyro speed 判定 tripod。重建逻辑是：

```pseudo
if norm(gyro - bias) <= stillThreshold continuously for holdDuration:
    tripodMode = true
else:
    tripodMode = false
```

Locked profile 在 tripod 状态下冻结虚拟相机姿态；运动恢复后再以较长时间常数跟随。

### 5.3 Look-ahead 姿态平滑

Native 明确包含 nonlinear look-ahead filter，并能报告 `getNumOfFramesToLookAhead()`。重建实现把未来帧姿态映射到目标帧 quaternion tangent space 后做高斯加权，再用 profile 对应的时间常数更新虚拟相机：

```text
δi = Log(qtarget^-1 × qi)
δsmooth = Σ wi δi / Σ wi
qlookahead = qtarget × Exp(δsmooth)

α = 1 - exp(-Δt / τprofile)
qvirtual = SLERP(qvirtual_previous, qlookahead, α)
```

这比直接平均 quaternion 分量稳定，也避免符号翻转。原库实际使用的 nonlinear cost、look-ahead window 和 IIR 系数属于未知设备 tuning。

### 5.4 Rolling-shutter 分条

对于 `N = numStrips`，第 `s` 条的曝光中心近似为：

```text
u = (s + 0.5) / N
Ts = Tcenter - Tcrop_skew / 2 + u × Tcrop_skew
```

在 `Ts` 查询真实相机姿态 `qactual(Ts)`；虚拟相机姿态在整帧保持平滑目标 `qvirtual`。这样每个条带得到不同修正，直接对应 JNI 的 `N × 9` 输出。

### 5.5 Gyro 单应矩阵

配套代码约定矩阵执行 output-to-input 采样。对纯旋转：

```text
Rcorrection = Ractual(Ts) × inverse(Rvirtual)
Hs = Kin × Rcorrection × inverse(Kout)
```

其中 `Kout` 以输出中心为主点，`Kin` 以 crop-window 中心为主点。strength 不直接线性混矩阵，而是在姿态空间内插：

```text
qvirtual_applied = SLERP(qactual, qvirtual, strength)
```

所以 strength 0 对应无旋转修正，strength 1 对应完整稳定目标。

### 5.6 OIS lens offset

`processLensOffset(x, y, timestamp, cameraIndex)` 的存在和时间同步是确认事实。offset 到像素位移的比例依赖设备标定，重建代码显式保留：

```text
ois_pixels_per_unit_x
ois_pixels_per_unit_y
```

经时间插值后，OIS 平移与 Gyro homography 合成。不能把某台 Pixel 的比例硬编码成所有 MGC 设备通用值。

### 5.7 裁切约束与动态有效 strength

防抖修正会暴露黑边。重建实现用输出四角和四边中点测试每条 warp 是否仍落入 crop-window；若越界，对 strength 做二分搜索：

```pseudo
safeStrength = requestedStrength
for each rollingShutterStrip:
    safeStrength = min(
        safeStrength,
        maximum strength whose warped boundary stays inside crop)
```

这与 MGC “更强防抖需要更大裁切余量”、Locked 使用更紧 framing 的行为闭合，但原始 Native crop optimizer 可能使用更复杂的时域约束。

### 5.8 可选视觉运动融合

重建接口保留 `VisualMotion`。只有调用者提供视觉估计时，才按 robust confidence 把它与 Gyro prior 合成。当前 MGC Java 路径传 null image，因此默认不会进入这一支。

若要进一步实现库内可见的视觉链，合理结构为：

```pseudo
pyramid = buildImagePyramid(frame)
tracks = fastKlt(previousPyramid, pyramid, gyroPredictedFlow)
regionFlow = rejectForwardBackwardAndPhotometricOutliers(tracks)
model = robustFit(similarity / homography / mixtureHomography, regionFlow)
confidence = analyzeInliersAndMotionSaliency(model, regionFlow)
visualMotion = temporalIrlsSmooth(model)
fusedMotion = fuse(gyroPrior, visualMotion, confidence)
```

这个组件顺序有二进制文件名与日志支撑；阈值、金字塔层数、RANSAC/IRLS 参数及 model selector 没有足够证据，故未伪造为“原始代码”。

## 6. 未能唯一恢复的部分

1. `iyk` 每个设备 ID 对应的完整 protobuf tuning 内容。
2. `.obf` 标定文件的解析后参数和值域。
3. Native nonlinear/look-ahead/IIR filter 的精确系数与 cost function。
4. `numStrips` 和 look-ahead 帧数的各设备实际值；它们是运行时从 Native profile 读取，不是 Java 常量。
5. Standard、Active、Locked 各自最终选择哪一个 Native filter/profile 对象。UI 和 framing 已确认，但 createHandle ABI 没有直接携带 `gwo` 枚举。
6. KLT/RegionFlow 在其他视频管线中的精确启用条件。
7. Native 输出矩阵在原 renderer 内部使用的归一化坐标约定。重建代码明确采用 output-pixel 到 crop-pixel 的约定，便于验证，不声称与原库内存表示逐位一致。

## 7. 主要证据索引

- 模式和 UI 条件：`MGC/jadx_decompile_src/sources/defpackage/hay.java`
- 模式枚举：`MGC/jadx_decompile_src/sources/defpackage/gwo.java`
- 30 fps / 1080p 枚举：`kyw.java`、`lyk.java`
- feature keys：`hly.java`
- 全局防抖偏好：`hif.java` 的 `l()`
- telemetry 模式映射：`hcf.java`、`sqc.java`
- HAL EIS/OIS request：`ffw.java`
- Native Java ABI：`com/google/android/apps/camera/jni/eis/EisNative.java`
- Native wrapper：`oeq.java`
- Gyro/OIS/帧同步和矩阵拆分：`htd.java`
- 设备 ID、camera index、标定路径：`mhz.java`、`iyk.java`、`lsb.java`
- 稳定视频渲染轨：`jxm.java`、`iid.java`、`hsz.java`
- tracked AEIS vendor keys：`koh.java`、`ksr.java`、`fzj.java`
- Native 二进制：`MGC/MGC_9.6.080_V24_MGC/lib/arm64-v8a/libgcastartup.so`

## 8. 重建代码验证

代码不依赖 Android 或第三方数学库，可单独做 C++17 静态编译检查：

```bash
xcrun clang++ -std=c++17 -Wall -Wextra -Werror -fsyntax-only \
  research/mgc_eis_reconstruction/mgc_eis_reconstruction.cpp
```

`EngineConfig` 的默认数值只是让重建实现可运行的工程占位值。除 ABI 明确约束（例如 strength 必须在 `[0, 1]`）外，不应把默认值当作 MGC 原 tuning。接入真实相机前必须用目标设备的焦距、crop 余量、OIS 比例、strip 数和 look-ahead 长度替换。

## 9. Photon App 接入

Photon 已将传感器驱动路径接入正式 GLES 预览和录像链路，生产实现位于
`app/src/main/java/com/hinnka/mycamera/stabilization/RealtimeStabilizationCoordinator.kt`。
研究目录中的 C++ 保持为独立 clean-room 参考，不参与 APK 构建。

启用条件分成两个互不依赖的开关：

- **视频增强防抖**：视频防抖模式选择 `EIS+`、普通视频录制、后置相机、1080p、30 fps、存在 Gyro，且 Camera2 时间戳源为 `REALTIME`。`EIS+` 与顶栏的 `OFF/EIS/OIS` 共用同一模式状态，设置页用于选择默认模式；选择 `EIS+` 会同步切换到 1080p/30 fps。该模式关闭 HAL EIS/OIS，避免对已经稳定过的图像再次按 Gyro 修正。
- **照片预览防抖**：开关开启、照片模式、后置相机、存在 Gyro，且 Camera2 时间戳源为 `REALTIME`。它只进入 `LutRenderer` 的首个 OES pass，不参与静态照片请求或照片编码。

两个路径共享 Camera2 元数据和 Gyro 姿态缓冲，各自维护因果平滑状态。当前生产实现使用 16 个滚动快门行节点、四角安全约束和动态 strength；录像保留 10% 单边裁切余量，照片预览保留 7%。片元 shader 在相邻行节点间插值单应矩阵，然后再应用 `SurfaceTexture` 变换和现有色彩链。

生产路径刻意没有硬编码未知的 MGC 设备 tuning，也没有在缺少标定时伪造 OIS lens-offset 比例。照片预览继续保留既有 Camera2 OIS 行为；视频增强路径关闭 OIS，以保证 Gyro 与输入图像运动模型一致。
