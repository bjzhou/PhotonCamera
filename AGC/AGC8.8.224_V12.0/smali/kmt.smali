.class public final Lkmt;
.super Ljava/lang/Object;

# interfaces
.implements Lkpb;


# static fields
.field private static final b:Lmwa;


# instance fields
.field public final a:J

.field private final c:Landroid/hardware/HardwareBuffer;

.field private final d:Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;

.field private volatile e:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x25

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v1, v4

    move-object v2, v4

    move-object v5, v6

    move-object v7, v8

    invoke-static/range {v1 .. v8}, Lmwa;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwa;

    move-result-object v0

    sput-object v0, Lkmt;->b:Lmwa;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/HardwareBuffer;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lkmt;->c:Landroid/hardware/HardwareBuffer;

    invoke-static {}, Lcom/google/android/libraries/camera/jni/graphics/HardwareBuffers;->lockingIsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/libraries/camera/jni/graphics/HardwareBuffers;->lockingIsSupported()Z

    move-result v0

    const-string v1, "Locking is not supported on this build!"

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;-><init>(Landroid/hardware/HardwareBuffer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lkmt;->d:Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;

    iput-wide p2, p0, Lkmt;->a:J

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lkmt;->e:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    sget-object v0, Lkmt;->b:Lmwa;

    iget-object v1, p0, Lkmt;->c:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmwa;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lkmt;->c:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lkmt;->c:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lkmt;->d:Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->close()V

    :cond_0
    iget-object v0, p0, Lkmt;->c:Landroid/hardware/HardwareBuffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkmt;->c:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lkmt;->a:J

    return-wide v0
.end method

.method public final e()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lkmt;->e:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final f()Landroid/hardware/HardwareBuffer;
    .locals 2

    iget-object v0, p0, Lkmt;->c:Landroid/hardware/HardwareBuffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkmt;->c:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lkmt;->c:Landroid/hardware/HardwareBuffer;

    invoke-static {v1}, Lcom/google/android/libraries/camera/jni/graphics/HardwareBuffers;->fork(Landroid/hardware/HardwareBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lkmt;->d:Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;

    if-eqz v0, :cond_2

    iget-wide v1, v0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->b:J

    invoke-static {v1, v2}, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->nativePlaneCount(J)I

    move-result v1

    if-ltz v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, v0, Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;->a:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v4}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v4

    new-instance v5, Lkmu;

    invoke-direct {v5, v0, v3, v4}, Lkmu;-><init>(Lcom/google/android/libraries/camera/jni/graphics/HardwarePixels;II)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This Android version does not support image plane access!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget v0, Lmvv;->d:I

    sget-object v2, Lmyu;->a:Lmvv;

    :goto_1
    return-object v2
.end method

.method public final h(Landroid/graphics/Rect;)V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lkmt;->e:Landroid/graphics/Rect;

    return-void
.end method

.method public final synthetic i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Lkgd;
    .locals 1

    invoke-static {}, Lkgd;->x()Lkgd;

    move-result-object v0

    return-object v0
.end method
