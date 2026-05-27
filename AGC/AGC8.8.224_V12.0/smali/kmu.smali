.class final Lkmu;
.super Ljava/lang/Object;

# interfaces
.implements Lkpa;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;II)V
    .locals 0

    iput-object p1, p0, Lkmu;->c:Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;

    iput p2, p0, Lkmu;->a:I

    iput p3, p0, Lkmu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBuffer()Ljava/nio/ByteBuffer;
    .locals 7

    iget-object v0, p0, Lkmu;->c:Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;

    iget-object v0, v0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Accessing data after close!"

    invoke-static {v0, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v0, p0, Lkmu;->c:Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;

    iget-wide v2, v0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->b:J

    iget v4, p0, Lkmu;->a:I

    iget v5, p0, Lkmu;->b:I

    iget-object v0, v0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->a:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v0

    if-eqz v4, :cond_1

    const/16 v6, 0x23

    if-eq v0, v6, :cond_1

    const/16 v6, 0x36

    if-ne v0, v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const-string v6, " Expect planes 1 and 2 to only appear in YCBCR_420_888 or YCBCR_P010 formats"

    invoke-static {v0, v6}, Lmoz;->f(ZLjava/lang/Object;)V

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    :goto_1
    invoke-static {v2, v3, v4, v5, v1}, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->nativeGetData(JIII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final getPixelStride()I
    .locals 3

    iget-object v0, p0, Lkmu;->c:Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;

    iget-wide v0, v0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->b:J

    iget v2, p0, Lkmu;->a:I

    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->nativePixelStride(JI)I

    move-result v0

    return v0
.end method

.method public final getRowStride()I
    .locals 3

    iget-object v0, p0, Lkmu;->c:Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;

    iget-wide v0, v0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->b:J

    iget v2, p0, Lkmu;->a:I

    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->nativeRowStride(JI)I

    move-result v0

    return v0
.end method
