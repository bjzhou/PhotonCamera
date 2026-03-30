.class public final Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    const v1, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    sget-object p0, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->init()V

    :goto_b
    goto/32 :goto_6

    nop

    nop

    :goto_c
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method private static native init()V
.end method


# virtual methods
.method public native setCompleteCallback(JLcom/google/googlex/gcam/base/function/LongConsumer;)V
.end method

.method public native setDebugImageCallback(JLcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;)V
.end method

.method public native setDebugRgbAllocator(JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;)V
.end method

.method public native setImageCallback(JLcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;)V
.end method

.method public native setLogCallback(JLcom/google/googlex/gcam/base/function/LongStringConsumer;)V
.end method

.method public native setProgressCallback(JLcom/google/googlex/gcam/base/function/LongFloatConsumer;)V
.end method

.method public native setRgbAllocator(JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;)V
.end method

.method public native setSecondaryImageCallback(JLcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;)V
.end method

.method public native setUpsampledInputImageCallback(JLcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;)V
.end method
