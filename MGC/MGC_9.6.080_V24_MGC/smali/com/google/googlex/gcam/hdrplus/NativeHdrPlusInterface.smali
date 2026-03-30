.class public Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    :try_start_0
    sget-object v0, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    return-void

    nop

    :cond_0
    invoke-static {}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->init()V

    const/4 v1, 0x1

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit p0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    const v1, 0x9

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p0, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method private static native init()V
.end method

.method private native nativeInitializeAlmondFromOpenFile(IJJJ)V
.end method

.method private native nativeSetFinalImageRgb16Allocator(JLcom/google/googlex/gcam/clientallocator/InterleavedU16ClientAllocator;)V
.end method


# virtual methods
.method public native nativeAddPayloadFrame(JIJJJLjava/lang/Runnable;JLjava/lang/Runnable;Lcom/google/googlex/gcam/base/OwningNativePointer;Ljava/lang/Runnable;)Z
.end method

.method public native nativeAddViewfinderFrame(JIJJJJLjava/lang/Runnable;)V
.end method

.method public native nativeAddViewfinderMetadataOnly(JIJJ)V
.end method

.method public native nativeGetPostZoomSharpenStrength(JF)F
.end method

.method public native nativeInitializeKeplerV1FromOpenFile(JJ)V
.end method

.method public native nativeInitializeLancetFromOpenFile(IJJZJ)V
.end method

.method public native nativeInitializePecanFromOpenFile(JJJJ)V
.end method

.method public native nativeInitializeWalnutFromOpenFile(IJJJ)V
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

.method public native nativeSetFrameRescorerCallback(JLcom/google/googlex/gcam/hdrplus/FrameRescorerCallback;)V
.end method

.method public native nativeSetMergedChromaDenoisedAllocator(JLcom/google/googlex/gcam/clientallocator/InterleavedS16ClientAllocator;)V
.end method

.method public native nativeSetMergedChromaDenoisedCallback(JLcom/google/googlex/gcam/hdrplus/MergedChromaDenoisedCallback;)V
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

.method public native nativeSetPlanarMergedRawCallback(JLcom/google/googlex/gcam/hdrplus/PlanarMergedRawCallback;)V
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
