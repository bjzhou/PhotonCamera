.class public Liwn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Liwh;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Landroid/os/Bundle;

.field public c:Landroid/media/MediaCodec;

.field public final d:Liwm;

.field public e:I

.field public f:Z

.field public g:Lrqs;

.field public h:Lfdn;

.field private final i:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "iwn"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Liwn;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Liwm;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v1, p0, Liwn;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    :goto_6
    new-instance v0, Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Liwn;->b:Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/32 :goto_4

    nop

    nop

    :goto_d
    new-instance v0, Ljava/util/concurrent/Semaphore;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    iput-object p2, p0, Liwn;->d:Liwm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v1, p0, Liwn;->e:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Liwn;->c:Landroid/media/MediaCodec;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    const-string p0, "request-sync"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Liwn;->i:Ljava/util/concurrent/Semaphore;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop
.end method


# virtual methods
.method public final a()Landroid/media/MediaCodec;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Liwn;->c:Landroid/media/MediaCodec;

    nop

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

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iget-object p0, p0, Liwn;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Liwn;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrqs;->a()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v2, "Illegal state when stopping MediaCodec"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v1, Liwn;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Liwn;->f:Z

    nop

    nop

    :try_start_0
    iget-object v0, p0, Liwn;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_17

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v3, 0x7c5

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_a
    const/4 v0, 0x0

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

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

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

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    iget-object p0, p0, Liwn;->g:Lrqs;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Liwn;->c:Landroid/media/MediaCodec;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    const v1, 0x19

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    iget-boolean v0, p0, Liwn;->f:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_19

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop
.end method

.method public final d()Z
    .locals 6

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "frame-rate"

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v3, p0, Liwn;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_6
    invoke-static {v2, v1, v0}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    return v1

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    iget v1, v0, Liwm;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    const-string v3, "bitrate"

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v2, "video/avc"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2}, Lrqs;->b()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Landroid/opengl/EGLDisplay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    const-string v4, "i-frame-interval"

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_12
    iput-object v2, p0, Liwn;->g:Lrqs;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v3}, Lscs;->b()Lsdo;

    move-result-object v3

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x12

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    iget-object v0, v0, Liwm;->e:Landroid/opengl/EGLContext;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_17
    const-string v1, "color-format"

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-array v0, v0, [F

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0, v2, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    :try_start_0
    iget-object v0, p0, Liwn;->c:Landroid/media/MediaCodec;

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v4, v0, Liwm;->f:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Liwn;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1e
    const/16 v5, 0x7c6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_1f
    const-string v2, "Cannot start encoder"

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/16 v0, 0x10

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2, v0}, Lfdn;->t([F)V

    goto/32 :goto_31

    nop

    nop

    :goto_22
    new-instance v2, Lfdn;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v0, v0, Liwm;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_25
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_21

    nop

    nop

    :goto_26
    invoke-direct {v2, v0, v4}, Lrqs;-><init>(Landroid/opengl/EGLContext;Landroid/view/Surface;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v2, v3, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_32

    nop

    nop

    :goto_28
    iget-object v0, v0, Lrqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_29
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v2, v4, v0}, Lfdn;-><init>(Lcom/google/android/libraries/vision/opengl/Texture;I)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Liwn;->d:Liwm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2c
    invoke-virtual {v4}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v2, p0, Liwn;->h:Lfdn;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v3, Liwn;->a:Lsdb;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_31
    iget-object v0, p0, Liwn;->g:Lrqs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_32
    return v1

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v4, p0, Liwn;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget v1, v1, Liwm;->a:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_36
    sget-object v0, Liwn;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_37
    iget-object v0, p0, Liwn;->d:Liwm;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_38
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_39
    const/16 v3, 0x7c7

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return v3

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :try_start_1
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    nop

    iput-object v0, p0, Liwn;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/32 :goto_3e

    nop

    nop

    :goto_3c
    iget-object v0, p0, Liwn;->d:Liwm;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3d
    const/16 v1, 0xa

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget v0, v0, Liwm;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const v3, 0x7f000789

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const-string v4, "Exception when configuring MediaCodec"

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v1, 0x0

    nop

    nop

    nop

    :try_start_2
    iget-object v4, p0, Liwn;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    invoke-virtual {v4, v0, v5, v5, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_3c

    nop

    nop

    :goto_45
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v2, Lrqs;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_47
    invoke-static {v4, v5, v3, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v1, p0, Liwn;->d:Liwm;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/16 v3, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    :try_start_0
    iget-object p0, p0, Liwn;->i:Ljava/util/concurrent/Semaphore;

    nop

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_6

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x18

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    const-string v1, "Unable to lock frame data"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Liwn;->i:Ljava/util/concurrent/Semaphore;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
