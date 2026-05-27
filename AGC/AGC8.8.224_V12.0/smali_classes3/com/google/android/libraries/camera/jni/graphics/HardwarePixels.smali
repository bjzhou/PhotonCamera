.class public Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Landroid/hardware/HardwareBuffer;

.field public final b:J

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/hardware/HardwareBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1}, Lcom/google/android/libraries/camera/jni/graphics/HardwareBuffers;->fork(Landroid/hardware/HardwareBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->a:Landroid/hardware/HardwareBuffer;

    const-wide/16 v0, 0x3

    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->nativeLockPlanes(Landroid/hardware/HardwareBuffer;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->b:J

    return-void
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

    iget-object v0, p0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->a:Landroid/hardware/HardwareBuffer;

    invoke-static {v0}, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->nativeUnlockBuffer(Landroid/hardware/HardwareBuffer;)V

    iget-object v0, p0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->a:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_0
    return-void
.end method
