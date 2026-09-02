# MGC 视频防抖功能整理与核心算法重建

主目标版本：完整 V25 `libgcastartup.so` / `.i64`（arm64-v8a）；V24 仅用于跨版本函数指纹和 Java 调度对照。
结论：MGC 不只有 Camera2 的 HAL 防抖开关，还包含一条应用侧 Native AEIS 链路。该链路同步消费陀螺仪、OIS 镜组偏移和逐帧 Camera2 元数据，输出多条带 3×3 变换矩阵，再在独立的视频渲染轨中完成重采样。

本文把逆向证据分成三类：

- **确认**：能由反编译 Java、JNI 导出、ARM64 反汇编或二进制字符串直接证明。
- **源码重建**：接口、数据流、profile 7 与 type 18 共用的顶层状态机和算法组件已经确认，按 V25 逐指令控制流写成可编译 C++。
- **未知**：原厂机型专属标定 protobuf 的完整数值，以及 profile 专用标志的全部消费者和视觉分支。

生产代码位于 `research/mgc_eis_reconstruction/` 下的 `mgc_type18_engine.*`、`mgc_type18_gyro.*`、`mgc_type18_lookahead.*`、`mgc_type18_projection.*` 和公共数学类型，通过 [`mgc_eis_reconstruction_jni.cpp`](../../app/src/main/cpp/mgc_eis_reconstruction_jni.cpp) 编入 Photon 自己的 `libmy-native-lib.so`。文件名保留最初逆向时的 type 18 名称，但生产 JNI 固定创建已证实的 `blueline` profile 7（12 条带、7 帧前瞻）。App 不打包、不加载原始 `libgcastartup.so`，也不使用 EIS AOT 胶囊。

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

`htd` 每次请求 `(lastGyroTimestamp + 1, frameBoundary]` 内的样本，并按前后摄与 sensor orientation 变换 XY；Z 保留为第三轴。`EisNative.processGyro` 随后还会无条件交换 Java X/Y；前摄模式在交换前额外反转 Java Y/Z。

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

已确认的 Native 入口映射（V25 `0x22809BC..0x22809DC`）：

```pseudo
if frontCameraCoordinateMode:
    engineGyro = (-javaY, javaX, -javaZ)
else:
    engineGyro = (javaY, javaX, javaZ)
```

这里的第二次换轴不能并入或省略 Java 映射。后摄 90° 传感器虽然在 `htd` 中保持 raw XY，进入 `gyro.cc` 的顺序仍然是 `(rawY, rawX, rawZ)`。

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

V24 对照库：`lib/arm64-v8a/libgcastartup.so`，ELF 已 strip。JNI 符号仍保留；V25 地址在 6.1 节单列，不能与本表混用：

| JNI | 地址 | 大小 | 反汇编结论 |
|---|---:|---:|---|
| `createHandle` | `0x227fcec` | 1496 | 分配 0x28-byte 外层 handle 和 0x410-byte 主 EIS 对象，载入设备配置/标定 |
| `processFrame` | `0x2280338` | 1632 | 组装帧结构、提交主引擎、复制多组 float vector/3×3 matrices 到 Java 数组 |
| `processGyro` | `0x2280998` | 144 | 坐标修正后写入 gyro helper 与主引擎 |
| `getTransformBetweenFrames` | `0x2280a28` | 1304 | 组装两帧元数据并输出相对分条变换 |
| `processLensOffset` | `0x2281200` | 48 | 把 XY、timestamp、camera index 转交主引擎 |
| `setStabilizationStrength` | `0x2281230` | 12 | 转入当前 filter/profile 的强度 setter；V25 的完整字段链见 5.3 |
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

## 5. 核心算法源码重建

已安装 MGC 的 `device_key=blueline` 经 `prb` 的 UTF-16LE SHA-256 设备哈希映射到 `iyk.c`，其 Native product ID 为 **7**。`motion_filtering_params` 的 `case 7` 确认选择 method 4、12 条带、7 帧 look-ahead；其常规 `mhz.n(false)` 标定字符串为空。它与 type 18 共用 Gyro 主/副姿态流、rolling-shutter 行时间、projection protrusion core、非 Ceres look-ahead 调度、顶层逐帧对象编排以及 JNI→Java/GLES 矩阵适配；type 18 仅保留为同一代码路径的对照 profile。设备标定 protobuf、ROI tracking 和没有实际调用证据的视觉分支不会以猜测值加入生产实现。

profile 7 的首个输出在提交第 8 张帧元数据时产生，故其输入图像、Native 输出和 GPU 队列均以 **7 帧**为唯一前瞻长度。不得把 type 18 的 10 帧延迟、10 帧缓存容量或 type 18 专用参数标志混入该路径。

### 5.1 Gyro 坐标、偏置与姿态积分

Java 先做设备/镜头方向变换。MGC 请求的是 Android type-4 校准陀螺仪，因此源码不重复估计 bias。`gyro.cc` 的 `0x33BDA1C` 用当前样本角速度与上一时间戳的差构造轴角四元数，再左乘上一姿态：

```text
Δq = AxisAngle(normalize(ωk), |ωk| × (tk - tk-1))
qk = normalize(Δq × qk-1)
```

姿态查询落在两个样本之间时用 quaternion SLERP。超过 1 秒的 Gyro 间隙视为不连续，不能直接积分成巨大旋转。

校准 Gyro 在进入上述积分器前仍经过外层静止门控。V25 `createHandle` 在 `0x22BFD38..0x22BFD78` 构造 `0x22C1A54` 对象；`processGyro` 先把 Java 坐标排成 `(JavaY, JavaX, JavaZ)`，再调用 `0x22C1A9C`。该对象维护 100 个三轴样本的 float 均值和方差；最大轴速率超过 `0.02` 时该样本先乘 `5.0`，静止判定要求每轴 `variance < 0.001` 且 `abs(mean) < 0.004`。第 100 个样本起，一旦判定静止，JNI 在把同一样本送入主/副姿态队列前将 xyz 全部置零；窗口退出静止时立即恢复原样本。常量原始位值来自 `0x6BCB90` 与 `0x6B69C8`，不是 Photon 自设阈值。

type 18 还使用一条独立的 delayed decomposed pose stream，不能把它实现成 primary pose 的普通低通副本。`0x22820F0` 从 method-4 参数取出 10 帧，并设置：

```text
decomposed_delay = 33,333,333ns × 10 = 333,333,330ns
```

`0x33BE2D4` 每次在当前主姿态入队前，把**上一条**主环记录加入约 1 秒运行均值；当 `previous_timestamp - oldest_timestamp >= 1,000,000,001ns` 时，每次调用只移除一条最旧记录。均值归一化为 dominant axis。`0x33BDA1C` 等历史样本成熟后，把历史角速度投影到该轴再左乘积分：

```text
axis = normalize(running_mean(previous gyro records))
ωdecomposed = axis × dot(axis, ωhistorical)
Δqdecomposed = AxisAngle(normalize(ωdecomposed),
                         |ωdecomposed| × Δthistorical)
qdecomposed = normalize(Δqdecomposed × qdecomposed_previous)
```

延迟模式在第二条 Gyro 样本以 identity pose 建立 secondary ring 和 cursor；该 cursor 第一次成熟时会产生同时间戳、零步长的记录，然后才逐条推进历史时间戳。`0x33BE698`/`0x33BE798`/`0x33BEA28` 分别验证主/副环覆盖范围、按查询时间计算 float SLERP 比例并返回两条姿态。该链已经在 `mgc_type18_gyro.*` 中按原顺序实现并用“恒速 pan 保持完整增量、正交 jitter 被轴投影剔除”测试覆盖。

### 5.2 Tripod 状态边界

Native ABI 的 `isTripodMode()` 直接读取上述外层静止检测对象首字节；它不是 nonlinear motion filter 另行计算的状态。Photon 复刻同一个 100 样本窗口，并且像原版一样先用该状态对 Gyro 归零，再把状态暴露为 tripod mode；二者不能拆开实现。

### 5.3 Type 18 nonlinear look-ahead

`motion_filtering_params.cc` 的 `case 0x12` 已逐字段恢复：method 为 4，look-ahead 半窗为 10，Gaussian sigma 为 6.0，历史容量为 50；`params+526` 保持默认值 0，因此 type 18 的实际逐帧路径**不进入 Ceres optimization**。`0x22BDFBC` 的有效调度固定为：

```text
22BD63C  构建当前帧和未来 10 帧的 rolling-shutter geometry
22BD844  生成三条加权 gyro pose candidate
22BDA3C  two-row grid 快速 protrusion 扫描
22BDEE0  低 protrusion 下的 motion/pose 混合
22BE240  full-grid 复核、动态未来窗口和时域释放
```

首个有效 Gyro frame 先走 `gyro_nonlinear_filter.cc` 的 `engine+2080` 初始化分支，把当前 primary pose 同时写入持久虚拟姿态 `+1168` 和当前输出姿态 `+1200`，而不是从全局 identity 开始追赶。进入 look-ahead 链之前，`0x2296470` 再生成每帧 baseline virtual-pose increment。它不是通用姿态低通。type 18 使用 secondary pose stream 判断自适应 domain 边界，同时用 primary stream 建立前后对称的运动轴；保留相邻增量的条件为：

```text
domain_distance += 2000 × acos(abs(dot(normalize(Δqi), normalize(Δqi-1))))
retain Δqi when domain_distance + frame_index < 32
```

历史侧最多查询 10 帧并前插增量，未来侧最多查询 10 帧并后插增量；完整 primary 增量积采用 `product = Δq × product`。未来增量先投影到剩余增量积的平均旋转轴，再继续做同一 domain 判断。最终对所有保留增量做左乘积，并以 `1 / (nominal_to_measured_period_ratio × retained_count)` 从单位四元数 SLERP。由此可验证：匀速平移手机时每个增量相同，输出仍是完整的一帧旋转增量，不会像之前的 generic pose low-pass 那样把画面移动拖慢。

`0x22BD844` 不是 tangent-space Gaussian average。对 `i=-10..+10` 的 gyro pose，MGC 使用以下固定乘法顺序；`Gσ(i)` 是由 `0x22BCD94` 生成、按完整对称核归一化后只保存中心到边缘一半的权重：

```text
Δqi = qi × inverse(qreference)
wide   = SLERP(I, Δqi, G6(|i|)) × wide
tight  = SLERP(I, Δqi, G1(|i|)) × tight

if i >= 0:
    future = SLERP(I, Δqi, GreversedFuture(i)) × future

wide_out   = wide   × qreference
tight_out  = tight  × qreference
future_out = future × qreference
```

其中 future 权重把 sigma-6 正半核反转，并用 `(1 + G6(0)) / 2` 再归一化。四元数 SLERP 使用二进制中的端点阈值 `1e-6`、near-parallel 阈值 `0.9999989867` 和 invalid-dot 阈值 `1.0000009537`，不能用普通线性姿态平均替代。

two-row protrusion 的逐帧标量变换也已恢复：

```text
penalty(raw) = min(pow(max(raw, 0) / 0.2, 2), 1)
two_row_pressure = mean(penalty(raw_i))
```

`0x22CF250` 的 activity 输入不是角速度插值。它先由 `0x3411340` 在 primary gyro pose ring 中按半开区间收集 48-byte 姿态记录，再以最小时间差挑选下一姿态，并把 `qselected × inverse(qprevious)` 转为轴角旋转向量后求均值、标准差和方向余弦。该函数在活动链中有两个参数不同、用途独立的调用：

```text
nonlinear top-level:
    end = frame_timestamp + 10 × 33,333,333ns（覆盖不足时逐帧回退）
    interval = [end - 700,000,000ns, end)
    minimum sample delta = 33,333,332ns
    motion = logistic(-8.3469 + 10.7854 × |mean|₁ / sum(stddev))
    if directional_alignment >= 0.01:
        motion *= directional_alignment

look-ahead full-grid:
    interval = [frame_timestamp, frame_timestamp + 10 × 33,333,333ns)
    minimum sample delta = 33,333,333ns
    只返回独立的 directional_alignment
```

后一条 directional alignment 才把有效未来索引从 10 向 3 收缩，不能复用 top-level 的 700ms activity，也不能以 11 个插值角速度样本替代姿态差。当相邻 raw score 满足 `next >= 0.06` 且 `next-current >= 0.04` 时，才对对应未来姿态执行昂贵的 full-grid 复核。空间压力为：

```text
pressure = min(max(current_full_grid,
                   cos(motion_blend × π/2) × two_row_pressure), 1)
```

压力上升立即生效；下降时用从 0.95 开始、每帧减 0.05 的系数与上一帧混合。`0x22BDEE0` 还在 protrusion 小于 0.001 且 motion blend 上升时使用 `0.925×previous + 0.075×current`。这些精确分支已放入 `mgc_type18_lookahead.*`，并由 `mgc_type18_engine.cpp` 与 full-grid/rolling-shutter 几何共同驱动生产路径。

`0x22CDB08` 的 full-grid/two-row 共用几何核心也已恢复。它不按条带中心或整帧四角直接评分。对每个启用的相邻 scanline boundary：

1. 以 `Htop = Vtop × inverse(Preal_top)` 投影输入条带的两个上角；
2. 以 `Hbottom = Vbottom × inverse(Preal_bottom)` 投影两个下角；
3. 从输入四角到这四个投影点拟合一套 3×3 单应矩阵；
4. 求逆后把对应输出条带的四角反投影回输入域；
5. 按 frame width/height 归一化，与 allowed rect 做 signed protrusion；区间分数取四点最大值；
6. 全局只记录最大区间，并且仅当最大值为正时输出一个只含该区间的 mask。

`0x22CEB9C` 实际返回的不是“full-grid score”，而是从请求虚拟姿态向兜底姿态 SLERP 的裁切修正比例：请求姿态已经可行时返回 `0`；否则先用全部区间验证兜底姿态，再只针对初始最差区间二分，直到 `high-low <= 0.01`；若兜底仍越界或最终可行比例 `>0.99`，返回哨兵 `1.1`。`0x22BE240` 把当前帧该修正比例作为空间压力下限，并在检测到 future raw score 的 `0.06/0.04` 跳变时以同一函数替换相应 future pressure。该几何核心与二分返回语义已放入 `mgc_type18_projection.*` 并由确定性测试覆盖。

V25 的构造参数和 frame-state 打包链必须一起解释，不能只读取参数源中的相邻浮点数。`createHandle(..., cropFactor=0.5)` 后，`0x22D55C4..0x22D5608` 构造出 `0.025 / 0.05 / 0.05` 三个活动 margin；`0x22DE1F8` 再把它们分别写入 frame state 的 allowed、input 和 output 矩形。当前 `oeq.m()` 固定传 `zoom=1.0` 且提供非空的 12 行输出数组，因此 fallback type-18 的常用分支为：

```text
two-row score:
    input   = inset(frame, 0.05)
    output  = inset(frame, 0.05)
    allowed = inset(frame, 0.025)

full-grid correction:
    input   = full frame
    output  = inset(frame, 0.05)
    allowed = full frame
```

只有 frame scale 大于 `1.0` 且满足相应动态裁切条件时，frame state `+324` 的有效 output rect 才会被更新；普通 fallback 调用不进入该更新。二分阶段 `maximum_allowed_protrusion=0.0`。逐行虚拟投影开关 `params+415=0`，所以真实投影按 12 个 rolling-shutter 时间分别构造，虚拟投影则在所有行共享最终姿态。

`0x229DCC8` 的裁切状态也已拆开恢复。当前最大 margin 为：

```text
base = 0.5 × (1 - (1 - 2 × configured_crop_ratio) / max(frame_scale, 1))
if filtering_method == 4: base /= method4_scale
current_margin = min(maximum_margin, base)
```

`engine+3168` 是返回给 frame state `+320` 的 filtering margin；`engine+3172` 是经过 secondary-margin mix 后的 optimization margin，两者不能共用一个状态。mode 1 只平滑 margin 的上升，mode 5 两个状态都立即使用 current margin。优化状态的历史权重通常为 `engine+640`；只有 filtering method 4 且 `engine+74 != 0` 时归零。

V25 的 strength 链已在完整 `.i64` 中从 JNI 写入一直追到两个代码消费点，并进一步按 filtering method 区分是否活动。`0x22C11D4 -> 0x22C4510 -> 0x22E2144` 选择 handle `+0x18` 下 filter `+0x70` 的对象，并按下式写入外层对象 `+0x21c8`（非线性子对象 `+0x1840` 后的 `+0x988`）：

```text
strength_state = strength_state × alpha + input × (1 - alpha)
```

type-18 的 `alpha` 来自参数块 `+640`，构造值为 `0.0`，因此对当前活动配置这是立即写入，不是额外的经验平滑。`0x22D7D24` 的 `0x22D8098` 确实存在下面的 full-grid strength 公式：

```text
effective_correction = 1 - (1 - c) × strength
```

但该函数入口先检查 filtering method 字段为 `1`，不是 fallback type-18 的 method `4` 活动分支。method 4 在 `0x22DB9F4` 中把 outer full-grid correction 直接用于请求姿态到实测姿态的 SLERP。type-18 的实际 strength 消费点在组装 look-ahead frame state 时：`+0x84 = min(filter+0x98c, strength)`；`+0x98c` 初值为 `1.0`，在合法 `strength <= 1` 的路径中等于 strength，`0x22FE9BC` 再把它与最终 look-ahead pressure 合成。因此 fallback type-18 的用户强度只控制 look-ahead tight-pose 最终回退；外层 full-grid 是不可绕过的可行性约束，不再乘一次 strength，也不存在 Photon 自造的 zoom/crop 强度链。

### 5.4 Rolling-shutter 分条

`0x22CE380` 对 `N` 个输出行矩阵覆盖 rolling-shutter 的两个端点。第 `s` 行的查询时间为：

```text
Ts = Tframe + s × Tcrop_skew / (N - 1),  s = 0..N-1
Tcenter = Tframe + Tcrop_skew / 2
```

因此原版不是 `(s+0.5)/N` 的条带中心采样。非逐行的 bounding-box 分支只取两个显式 source row，并先以 float 计算 `row × skew`、截断成 int64 后再除以整数 frame height。在 `Ts` 查询真实相机姿态 `qactual(Ts)`；当请求时间仅略晚于最新 Gyro 且正间隔小于容差时，`0x33BF394` 才把它钳回最新样本时间。每行先构造 `Preal = Kintrinsics × Ractual(Ts)`，OIS 存在时先修正该行 `Kintrinsics`。

### 5.5 Gyro 单应矩阵

Native 返回矩阵的方向可由 `iha.b()` 明确确定：矩阵直接乘在条带顶点位置上，
因此它是 input-frame 到 stabilized-output 的正向顶点变换。fallback type 18 的活动 `oeq` 调用没有 injected projection，逐行像素域矩阵为：

```text
Preal(Ts) = K × Ractual(Ts)
Pvirtual  = K × Rvirtual
Hpixel(Ts) = Pvirtual × inverse(Preal(Ts))
```

`K` 的 `fx=fy=outputWidth/inverseFocalLength`，主点为 `(0.5×width, 0.5×height)`。`0x5667084` 随后执行精确坐标适配：

```text
Hclip = pixelToClip × Hpixel × clipToPixel
normalize Hclip by Hclip[2,2]
```

坐标适配之后还有一个不可省略的输出安全画幅步骤。构造器验证 `cropping_ratio == inner_margin == 0.05`，在 `filter+0x428` 保存：

```text
cropZoom = 1 / (1 - 2 × 0.05) = 1 / 0.9
```

`0x22DD5AC -> 0x5666FA0` 对每条最终返回给 Java 的 `Hclip` 执行 `h20,h21,h22 /= cropZoom`。这是绕 clip-space 原点的齐次投影放大；`iha` 用变换后的 `w` 做透视除法，因而输入图像边缘落到 viewport 外侧，5% 安全区成为实际输出画幅。它不是只供 protrusion 评分的 margin，也不是修改纹理 crop rect。漏掉该步骤会在网格补偿移动时直接露出 framebuffer 黑边。

`0x33BF57C` 把 Java 已映射的 xyzw 四元数直接转换为标准 3×3 旋转矩阵；Native 路径中不存在额外的 `diag(1,1,-1)` 共轭。Photon 与 `iha` 一样在 CPU 上把 `Hclip` 直接作用于 26 个 mesh 顶点，不在 fragment shader 中求逆。用户 strength 按 5.3 恢复的 method-4 look-ahead 回退点生效，不改变上述矩阵方向与坐标链。

### 5.6 OIS lens offset

`processLensOffset(x, y, timestamp, cameraIndex)` 的存在和时间同步是确认事实。V25 的 `apply_lens_offset_to_intrinsics` 只有在 camera metadata 指示存在 camera model 时才查询私有标定并修改 K；`oeq` 对未知设备创建的 type-18 空配置没有该模型。

Photon 的生产路径不复原或猜测该私有模型，而使用 Camera2 已定义单位的公开数据：API 35 的 `STATISTICS_LENS_INTRINSICS_SAMPLES` 优先，包含 OIS、对焦和光学变焦造成的完整逐时刻 K；否则使用 `STATISTICS_OIS_SAMPLES` 给出的 pre-correction active-array 像素位移。两类数据互斥，按每条 rolling-shutter 行的曝光时间插值，只修改 `Preal` 的 K，`Pvirtual` 保持标称 K。pre-correction 到处理输出的尺度由 active/pre-correction active array、实际 crop 和输出尺寸共同换算。即使静态能力列表没有 OIS，EIS+也保持 legacy OIS telemetry 请求开启，以覆盖“OFF 请求被 HAL 忽略”的设备。若 HAL OIS 已开启但连续五帧仍没有可接受的校正样本，EIS+在七帧前瞻产生首个输出前退出，而不是继续把机身 Gyro 错配到已经光学补偿的画面。

### 5.7 裁切约束与动态姿态修正

防抖修正会暴露黑边。MGC 先用 5.3 所述 scanline quadrilateral 反投影与姿态 SLERP 二分限制可行姿态，再用 5.5 的固定齐次 crop zoom 把保留的安全区落实为最终输出画幅；两步缺一不可。type-18 只在 look-ahead tight-pose 阶段把原始 pressure `x` 变成 `1-(1-x)×strength`，不再追加第三次姿态插值或经验 `safeStrength`。

### 5.8 视觉运动分支边界

库中包含 KLT/RegionFlow/IRLS 组件，但当前 `oeq.m()` 对 `processFrame()` 明确传 `imageBytes = null`。生产源码因此不加入没有调用证据的视觉运动估计，避免把另一配置档的组件猜进 type 18 传感器路径。

## 6. 未能唯一恢复的部分

1. `iyk` 每个 Pixel 设备 ID 对应的完整 protobuf tuning 内容。
2. `.obf` 标定文件的解析后参数和值域。
3. type 18 不启用 Ceres optimizer、ROI tracking 和图像运动估计；这些非活动分支未移植。
4. 其他设备 profile 的 `numStrips`、look-ahead 与 tuning；fallback type 18 已确认是 12 strips、10 frames。
5. Standard、Active、Locked 各自最终选择哪一个 Native filter/profile 对象。UI 和 framing 已确认，但 createHandle ABI 没有直接携带 `gwo` 枚举。
6. KLT/RegionFlow 在其他视频管线中的精确启用条件。
7. Native 输出矩阵由 `iha.b()` 作为正向顶点变换使用；重建渲染器已采用相同的 13 行/26 顶点正向 mesh 约定。

### 6.1 IDA 分片索引

为避免继续按字符串零散追踪，现已建立专用副本 `MGC/reverse/eis_index/ida/libgcastartup_eis_indexed.i64`。索引首先以源码文件字符串交叉引用定位断言函数，再用 ELF `.eh_frame` 的精确 FDE 边界补齐同编译单元的静默函数，并加入局部直接调用邻居。原始 `libgcastartup.i64` 不修改。

当前源码分片包含 404 个函数：JNI/engine 69、gyro core 18、gyro nonlinear 81、gyro look-ahead/optimization 83、motion filtering 50、rolling-shutter/geometry 76、crop/ROI 7、lens offset 4、visual motion 16。另建立 `modules/type18_active` 语义分片，将 type 18 实际调用链的 74 个入口、数学原语和 geometry helper 重新命名；其中 73 个已导出 Hex-Rays 伪代码，JNI `processFrame` 因函数过大保留逐指令汇编。V25 对应分片为 `modules/v25_type18_active`；strength 的 JNI、setter、状态字段和两个消费点另收敛到 `modules/v25_type18_strength`。IDA 脚本先完成全量命名，再设置 AArch64 原型、清理 Hex-Rays cache 并导出；每次导出前重建 assembly/pseudocode 目录，避免调用点或重命名文件残留旧的 `sub_xxx` 结果。确认的关键入口如下：

| 地址 | 已确认语义 |
|---:|---|
| `0x22820F0` | engine state 构造；12 strips，并为 method 4 设置 `33,333,333ns × half_window` 的副姿态延迟 |
| `0x22A1D18` | motion filtering 按 method 分发；3/4 进入 nonlinear gyro |
| `0x2295014` | nonlinear gyro filter 构造与参数/历史缓冲初始化 |
| `0x2296470` | method-4 adaptive-domain baseline virtual-pose increment |
| `0x2299AB8` | nonlinear gyro 逐帧主路径 |
| `0x229D234` | 构造 `H = Pvirtual × inverse(Preal)` |
| `0x229DCC8` | filtering/optimization 两套裁切 margin 状态更新 |
| `0x22BC790` | nonlinear look-ahead filter 构造 |
| `0x22BDFBC` | look-ahead 逐帧入口；type 18 固定进入非 Ceres 自适应 protrusion 路径 |
| `0x22BD844` | 三条 gyro pose candidate 的顺序 SLERP/左乘累积 |
| `0x22BDA3C` | two-row-grid protrusion penalty、均值与 wide pose blend |
| `0x22BDEE0` | 低 protrusion motion-rise 状态与中间姿态的两次 SLERP |
| `0x22BE240` | full-grid 未来窗口、空间/时域压力和最终 tight pose blend |
| `0x22CE380` | 首行到末行的 real-camera RS 时间采样与 `Preal=K×R` |
| `0x22CE778` | 按 camera model 把 OIS lens offset 写入每行 intrinsics |
| `0x22CDB08` | 对每个 scanline 区间拟合四点单应、反投影输出边界并返回最坏 protrusion |
| `0x22CEB9C` | 返回请求姿态向兜底姿态的 crop correction fraction；`0`/二分比例/`1.1` 哨兵 |
| `0x33BDA1C` | 当前样本右端点、`Δq × previous` 主姿态积分，以及延迟副姿态成熟调度 |
| `0x33BE2D4` | 从上一条主环记录更新 1 秒运行 Gyro 均值 |
| `0x33BE698` | 验证查询时间是否同时被主姿态环和可选副姿态环覆盖 |
| `0x33BE798` | 计算查询时间比例并对主/副姿态环做 SLERP |
| `0x33BF394` | 只对略超出最新 Gyro 的查询时间做有限钳位 |
| `0x33BF600` | 四元数 half-angle：`acos(abs(dot(normalize(a), normalize(b))))` |
| `0x33BF804` | xyzw 四元数乘法 |
| `0x33BF8C0` | 归一化 shortest-path SLERP |
| `0x22C11D4` | V25 `setStabilizationStrength` JNI 入口 |
| `0x22E2144` | V25 type-18 strength 状态 setter；该配置 `alpha=0` |
| `0x22D8098` | V25 filtering-method-1 的 full-grid strength 消费点；fallback type-18 method 4 不进入 |
| `0x22FE9BC` | V25 look-ahead frame strength 消费点 |
| `0x3411340` | V25 gyro pose 半开区间收集器；lower-bound helper 为 `0x2313CBC` |
| `0x230F094` | V25 两处共用的 horizon/activity 统计原语 |

`0x22BD23C` 和 `0x22C5BBC` 属于 `params+526 != 0` 才启用的 Ceres 支路；type 18 的参数工厂没有设置该位，不能把它们纳入 type 18 的运行时还原。

用户提供的完整 V25 母库位于 `../PhotonCamera/.codex-tmp/ida/mgc_v25/libgcastartup_v25_arm64.i64`，对应二进制 SHA-256 `76966e7c150dfcb2795ea5b2119827a7e90b13d8c03035dbc4de583d9d12eaa6`；V24 目标二进制为 `2103c54ebba1627733b79e3646105595ed1ccefa2b1629f63fb7e1785a48d6a0`，两者地址不能直接互换。完整母库以 clonefile 复制为 `MGC/reverse/eis_index/ida/libgcastartup_v25_full_indexed.i64`，原文件不修改；`modules/v25_type18_active` 已收敛为 74 个活动语义入口并全部成功反编译，strength 和 horizon 两条易混淆状态链分别拆入 `modules/v25_type18_strength` 与 `modules/v25_type18_horizon`。除唯一/放宽指纹映射外，关键入口由源码字符串、严格锚点之间的连续函数布局、调用顺序和函数角色共同审计确认，包括 Gyro 积分、full-grid 调度、RS projection、OIS intrinsics、crop-correction fraction 和 future-horizon signal。`ida_discover_full_eis.py` 从完整库找出 12 个 EisNative JNI 导出、64 个源码字符串 seed 和 512 个两层调用闭包；Gyro 主链的运行均值、查询验证、范围 SLERP、查询函数、range lower-bound 与半开区间收集均已在 V25 完整库中直接导出。

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
- V25 Native 二进制：`../PhotonCamera/.codex-tmp/mgc_v25/apk/lib/arm64-v8a/libgcastartup.so`
- V25 完整 IDA 母库：`../PhotonCamera/.codex-tmp/ida/mgc_v25/libgcastartup_v25_arm64.i64`

## 8. 重建代码验证

核心代码不依赖 Android 或第三方数学库，可单独编译并运行确定性测试：

```bash
clang++ -std=c++17 -Wall -Wextra -Werror \
  research/mgc_eis_reconstruction/mgc_eis_reconstruction.cpp \
  research/mgc_eis_reconstruction/mgc_type18_lookahead.cpp \
  research/mgc_eis_reconstruction/mgc_type18_lookahead_test.cpp \
  -o /tmp/mgc_type18_lookahead_test
/tmp/mgc_type18_lookahead_test

clang++ -std=c++17 -Wall -Wextra -Werror \
  research/mgc_eis_reconstruction/mgc_eis_reconstruction.cpp \
  research/mgc_eis_reconstruction/mgc_type18_lookahead.cpp \
  research/mgc_eis_reconstruction/mgc_type18_projection.cpp \
  research/mgc_eis_reconstruction/mgc_type18_projection_test.cpp \
  -o /tmp/mgc_type18_projection_test
/tmp/mgc_type18_projection_test

clang++ -std=c++17 -Wall -Wextra -Werror \
  research/mgc_eis_reconstruction/mgc_eis_reconstruction.cpp \
  research/mgc_eis_reconstruction/mgc_type18_gyro.cpp \
  research/mgc_eis_reconstruction/mgc_type18_gyro_test.cpp \
  -o /tmp/mgc_type18_gyro_test
/tmp/mgc_type18_gyro_test

clang++ -std=c++17 -Wall -Wextra -Werror \
  research/mgc_eis_reconstruction/mgc_eis_reconstruction.cpp \
  research/mgc_eis_reconstruction/mgc_type18_gyro.cpp \
  research/mgc_eis_reconstruction/mgc_type18_lookahead.cpp \
  research/mgc_eis_reconstruction/mgc_type18_projection.cpp \
  research/mgc_eis_reconstruction/mgc_type18_engine.cpp \
  research/mgc_eis_reconstruction/mgc_eis_reconstruction_test.cpp \
  -o /tmp/mgc_eis_reconstruction_test
/tmp/mgc_eis_reconstruction_test
```

测试覆盖 Gyro 右端点积分和延迟副姿态、100 样本静止门控、horizon pose range 的 lower-bound/最小采样时间差、method-4 baseline/candidate/crop 状态、两个 strength 回退公式、rolling-shutter 端点时间、投影矩阵乘法顺序、最终齐次 crop zoom、scanline 四点单应、最差区间 mask 以及 `0`/二分比例/`1.1` crop correction 返回语义。Android 端由 `buildCMakeDebug`、`compileDefaultDebugKotlin` 验证编译与链接；新构建仍需在设备上完成 JNI、Camera2 时间同步和 GL 延迟帧队列的实时预览/录像验证。

## 9. Photon App 接入

Photon 正式路径只编译 clean-room 重建源码，构建产物中不存在 `libgcastartup.so`。`MgcEisNativeEngine.kt`、`RealtimeStabilizationCoordinator.kt`、JNI 和 GL mesh 已接到本节恢复的 profile 7 非线性链；JNI 固定 12 条带和 7 帧前瞻，不能由 UI 或调用方改成 type 18。旧的 tangent-space 平滑、经验 `safeStrength` 裁切、假 OIS 主点平移和 synthetic framing matrix 已从编译路径删除。

启用条件分成两个互不依赖的开关：

- **视频增强防抖**：视频防抖模式选择 `EIS+`、普通视频录制、后置相机、1080p、30 fps、存在 Gyro，且 Camera2 时间戳源为 `REALTIME`。`EIS+` 与顶栏的 `OFF/EIS/OIS` 共用同一模式状态，设置页用于选择默认模式；选择 `EIS+` 会同步切换到 1080p/30 fps。HAL EIS 和 OIS 始终先请求关闭；只有 HAL 忽略 OIS OFF 时才融合逐时刻镜头内参或 OIS 位移。OIS 无法关闭且又没有连续校正数据时，EIS+退出并提示不可用。独立 `OIS` 模式仍由 HAL 控制。
- **强度与裁切**：默认值按 `oeq.l()` 恢复为 `1.0`。profile 7 同样走 method-4 look-ahead 与 outer full-grid 可行性约束；用户强度只进入该已恢复的滤波状态，不改 Camera2 zoom、焦距矩阵，也不另造 `safeStrength`。
- **照片预览防抖**：开关开启、照片模式、后置相机、存在 Gyro，且 Camera2 时间戳源为 `REALTIME`。它只进入 `LutRenderer` 的首个 OES pass，不参与静态照片请求或照片编码。

两个路径共享 `htd` 调度器：按 SurfaceTexture 时间戳建立帧边界队列，只有 Gyro、OIS 和 Camera metadata 越过下一帧边界后才把旧帧交给 Native；数据源超过一秒不更新时走原逻辑的 dead-source escape。当前生产目标只实现已验证的 `blueline` profile 7、空 camera config、空 extended config，并固定返回 12 strips 和 7-frame look-ahead；其他 device profile 不能静默回退到本路径。

每个 GL 路径的 GPU 帧队列容量由 7 帧 Native look-ahead 加上调度余量得出，而不是沿用 type 18 的 10 帧容量。生产者到帧时立即 `updateTexImage()`，不会为等矩阵占住 OES。陀螺仪首包到达前只推进 htd 边界而不缓存无姿态图像；Native 返回 EIS 时间戳后，渲染器只取相同时间戳的源图像，过期结果会被丢弃，避免在“当前 OES”与“历史稳定帧”之间切换。Camera2 录像会话起停造成相邻输入时间戳超过 250ms 时才建立新的图像 epoch；删除了此前每 500ms 按队列总跨度周期清空的 Photon 自加逻辑。

坐标与 `iha` 保持一致：12 个 row-major 3×3 矩阵不转置、不求逆、不上传片元 shader。CPU 构建 13 行、每行左右两个点，共 26 个齐次顶点；第 0 行使用矩阵 0，第 `i>0` 行使用矩阵 `i-1`，生成 72 个索引后由顶点 shader 绘制。Gyro 轴映射、首行中心时间、裁切后 rolling-shutter skew、inverse focal length、active array、crop window 和 OIS camera type 都按 `htd`/`oeq` 调用约定传入重建引擎。
