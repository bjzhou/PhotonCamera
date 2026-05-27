.class public final Leke;
.super Ljava/lang/Object;

# interfaces
.implements Lekd;


# static fields
.field public static final a:Lnak;


# instance fields
.field public b:Lekz;

.field public c:Lekw;

.field public d:Leka;

.field public e:Z

.field public f:I

.field public g:Lehu;

.field private h:Lekc;

.field private i:Lcom/google/android/libraries/vision/opengl/Texture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/imax/cyclops/capture/CameraRecorder"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leke;->a:Lnak;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leke;->h:Lekc;

    iput-object v0, p0, Leke;->i:Lcom/google/android/libraries/vision/opengl/Texture;

    iput-object v0, p0, Leke;->b:Lekz;

    iput-object v0, p0, Leke;->c:Lekw;

    iput-object v0, p0, Leke;->d:Leka;

    iput-object v0, p0, Leke;->g:Lehu;

    const/4 v0, 0x0

    iput-boolean v0, p0, Leke;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Leke;->f:I

    return-void
.end method


# virtual methods
.method public final a([FJ)V
    .locals 8

    iget-boolean v0, p0, Leke;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Leke;->d:Leka;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x3e8

    div-long v4, p2, v2

    iget-object v0, v0, Leka;->b:Lekb;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long/2addr v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lekb;->c:J

    iput-boolean v1, p0, Leke;->e:Z

    :cond_0
    iget-object v0, p0, Leke;->b:Lekz;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v2, v0, Lekz;->f:Z

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v2, v0, Lekz;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v2, v0, Lekz;->b:Lekw;

    invoke-virtual {v2}, Lekw;->e()V

    iget-object v0, v0, Lekz;->e:Leky;

    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int p3, p2

    long-to-int p2, v2

    invoke-virtual {v0, v1, p2, p3, p1}, Leky;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Leky;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b(II)V
    .locals 0

    return-void
.end method

.method public final c(Lcom/google/android/libraries/vision/opengl/Texture;Lekc;)V
    .locals 0

    iput-object p1, p0, Leke;->i:Lcom/google/android/libraries/vision/opengl/Texture;

    iput-object p2, p0, Leke;->h:Lekc;

    invoke-virtual {p0}, Leke;->f()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Leke;->b:Lekz;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lekz;->b:Lekw;

    invoke-virtual {v0}, Lekw;->e()V

    invoke-virtual {v0}, Lekw;->f()V

    return-void
.end method

.method public final e(Lehu;)V
    .locals 0

    iput-object p1, p0, Leke;->g:Lehu;

    return-void
.end method

.method public final f()V
    .locals 9

    :try_start_0
    iget v0, p0, Leke;->f:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Leke;->h:Lekc;

    iget v0, v0, Lekc;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x44870000    # 1080.0f

    div-float/2addr v0, v1

    mul-float v1, v0, v0

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    const v1, 0x4b371b00    # 1.2E7f

    mul-float v0, v0, v1

    float-to-int v0, v0

    :cond_0
    move v7, v0

    new-instance v0, Lekw;

    iget-object v1, p0, Leke;->h:Lekc;

    iget v2, v1, Lekc;->a:I

    iget v3, v1, Lekc;->b:I

    iget v4, v1, Lekc;->c:I

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v5

    iget-object v6, p0, Leke;->i:Lcom/google/android/libraries/vision/opengl/Texture;

    new-instance v8, Lekv;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lekv;-><init>(IIILandroid/opengl/EGLContext;Lcom/google/android/libraries/vision/opengl/Texture;I)V

    const-string v1, "video/avc"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lekw;-><init>(Landroid/media/MediaCodec;Lekv;)V

    iput-object v0, p0, Leke;->c:Lekw;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v0, Leke;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Could not instantiate a video recorder!"

    const/16 v2, 0x60b

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const/4 v0, 0x0

    iput-object v0, p0, Leke;->c:Lekw;

    return-void
.end method
