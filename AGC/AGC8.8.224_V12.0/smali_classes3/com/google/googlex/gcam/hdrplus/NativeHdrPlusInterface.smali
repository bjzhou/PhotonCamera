.class public final Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;
.super Ljava/lang/Object;

# interfaces
.implements Lnrz;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->init()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native init()V
.end method

.method private native nativeSetFinalImageRgb16Allocator(JLcom/google/googlex/gcam/clientallocator/InterleavedU16ClientAllocator;)V
.end method

.method private native nativeSetFrameRescorerCallback(JLcom/google/googlex/gcam/hdrplus/FrameRescorerCallback;)V
.end method


# virtual methods
.method public native nativeAddPayloadFrame(JIJJJLjava/lang/Runnable;JLjava/lang/Runnable;JLjava/lang/Runnable;)Z
.end method

.method public native nativeAddViewfinderFrame(JIJJJJLjava/lang/Runnable;)V
.end method

.method public native nativeGetPostZoomSharpenStrength(JF)F
.end method

.method public native nativeInitializeLancetFromOpenFile(IJJZJ)V
.end method

.method public native nativeInitializePecanFromOpenFile(IJJJ)V
.end method

.method public native nativeSetBaseFrameAeCallback(JLcom/google/googlex/gcam/hdrplus/BaseFrameAeCallback;)V
.end method

.method public native nativeSetBaseFrameCallback(JLcom/google/googlex/gcam/hdrplus/BaseFrameCallback;)V
.end method

.method public native nativeSetFinalImageCallback(JLcom/google/googlex/gcam/hdrplus/ManagedImageCallback;)V
.end method

.method public native nativeSetFinalImageRgbAllocator(JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;)V
.end method

.method public native nativeSetFinalImageYuvAllocator(JLcom/google/googlex/gcam/clientallocator/YuvClientAllocator;)V
.end method

.method public native nativeSetMergedDngCallback(JLcom/google/googlex/gcam/hdrplus/EncodedBlobCallback;)V
.end method

.method public native nativeSetMergedLumaDenoisedAllocator(JLcom/google/googlex/gcam/clientallocator/GrayS16ClientAllocator;)V
.end method

.method public native nativeSetMergedLumaDenoisedCallback(JLcom/google/googlex/gcam/hdrplus/MergedLumaDenoisedCallback;)V
.end method

.method public native nativeSetMergedPdAllocator(JLcom/google/googlex/gcam/clientallocator/InterleavedU16ClientAllocator;)V
.end method

.method public native nativeSetMergedPdCallback(JLcom/google/googlex/gcam/base/function/IntLongConsumer;)V
.end method

.method public native nativeSetMergedRawImageAllocator(JLcom/google/googlex/gcam/clientallocator/RawClientAllocator;)V
.end method

.method public native nativeSetMergedRawImageCallback(JLcom/google/googlex/gcam/hdrplus/MergedRawCallback;)V
.end method

.method public native nativeSetMutableMergedRawCallback(JLcom/google/googlex/gcam/hdrplus/MutableMergedRawCallback;)V
.end method

.method public native nativeSetPostviewCallback(JLcom/google/googlex/gcam/hdrplus/ManagedImageCallback;)V
.end method

.method public native nativeSetPostviewRgbAllocator(JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;)V
.end method

.method public native nativeSetPostviewYuvAllocator(JLcom/google/googlex/gcam/clientallocator/YuvClientAllocator;)V
.end method

.method public native nativeSetProgressCallback(JLcom/google/googlex/gcam/base/function/IntFloatConsumer;)V
.end method

.method public native nativeSetShotStatusCallbacks(JLcom/google/googlex/gcam/base/function/IntByteArrayConsumer;Lcom/google/googlex/gcam/base/function/IntStringConsumer;Lcom/google/googlex/gcam/base/function/IntConsumer;)V
.end method

.method public native nativeTemporallyBinViewfinderFrame(JIJJLjava/lang/Runnable;JLjava/lang/Runnable;JJLjava/lang/Runnable;ZI)Z
.end method
