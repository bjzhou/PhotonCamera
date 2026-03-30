.class public Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:Landroid/hardware/HardwareBuffer;

.field public final b:J

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/hardware/HardwareBuffer;)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    iput-wide v0, p0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->nativeLockPlanes(Landroid/hardware/HardwareBuffer;J)J

    move-result-wide v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->a:Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_e
    iput-object v0, p0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    :goto_10
    invoke-static {p1}, Lcom/google/android/libraries/camera/jni/graphics/HardwareBuffers;->fork(Landroid/hardware/HardwareBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_e

    nop

    nop

    :goto_12
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    const-wide/16 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static native nativeGetData(JIII)Ljava/nio/ByteBuffer;
.end method

.method private static native nativeLockPlanes(Landroid/hardware/HardwareBuffer;J)J
.end method

.method public static native nativePixelStride(JI)I
.end method

.method public static native nativePlaneCount(J)I
.end method

.method public static native nativeRowStride(JI)I
.end method

.method private static native nativeUnlockBuffer(Landroid/hardware/HardwareBuffer;)V
.end method


# virtual methods
.method public final close()V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    :goto_2
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->a:Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->a:Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->nativeUnlockBuffer(Landroid/hardware/HardwareBuffer;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method
