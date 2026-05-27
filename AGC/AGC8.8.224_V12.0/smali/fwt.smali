.class public final Lfwt;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lkfa;)Lfwn;
    .locals 1

    new-instance v0, Lfwn;

    invoke-static {p0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object p0

    invoke-direct {v0, p0}, Lfwn;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lfwn;
    .locals 0

    invoke-static {p0, p1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p0

    invoke-static {p0}, Lfwt;->a(Lkfa;)Lfwn;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/util/List;)Lfwn;
    .locals 1

    new-instance v0, Lfwn;

    invoke-static {p0}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object p0

    invoke-direct {v0, p0}, Lfwn;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static varargs d([Lkfa;)Lfwn;
    .locals 0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lfwt;->c(Ljava/util/List;)Lfwn;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lfwn;
    .locals 2

    new-instance v0, Lfwn;

    sget-object v1, Lmza;->a:Lmza;

    invoke-direct {v0, v1}, Lfwn;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static f(Landroid/hardware/camera2/CaptureRequest$Key;Ljvs;)Ljvs;
    .locals 2

    new-instance v0, Leth;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Leth;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;I)V

    invoke-static {p1, v0}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object p0

    sget-object p1, Lfnq;->f:Lfnq;

    invoke-static {p0, p1}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object p0

    return-object p0
.end method

.method public static g(ZZ)I
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const p0, 0x3d09000

    return p0

    :cond_0
    const p0, 0x243d580

    return p0

    :cond_1
    const p0, 0x121eac0

    return p0
.end method

.method public static h(Lkaf;IFLjava/lang/String;ZZ)Landroid/media/MediaFormat;
    .locals 2

    iget v0, p0, Lkaf;->a:I

    iget p0, p0, Lkaf;->b:I

    invoke-static {p3, v0, p0}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    const-string v0, "bitrate"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "frame-rate"

    const/16 v0, 0x1e

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "color-format"

    const/16 v0, 0x15

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 p1, 0x1

    if-eq p1, p5, :cond_0

    const/4 p5, 0x2

    goto :goto_0

    :cond_0
    const/4 p5, 0x1

    :goto_0
    const-string v0, "color-standard"

    invoke-virtual {p0, v0, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "color-transfer"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "color-range"

    invoke-virtual {p0, v0, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p5, "i-frame-interval"

    invoke-virtual {p0, p5, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    const-string p2, "oo.muxer.drop_initial_non_keyframes"

    invoke-virtual {p0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "video/hevc"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "level"

    const-string p5, "profile"

    if-eqz p2, :cond_1

    invoke-virtual {p0, p5, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p1, 0x10000

    invoke-virtual {p0, p3, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    const/16 p1, 0x8

    invoke-virtual {p0, p5, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const p1, 0x8000

    invoke-virtual {p0, p3, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static i()Landroid/media/MediaFormat;
    .locals 3

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    const-string v2, "application/microvideo-meta-stream"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oo.muxer.drop_initial_non_keyframes"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static j(ZZZ)Lkaf;
    .locals 0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    sget-object p0, Ldxs;->f:Lkaf;

    goto :goto_0

    :cond_0
    sget-object p0, Ldxs;->e:Lkaf;

    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    sget-object p0, Ldxs;->h:Lkaf;

    goto :goto_1

    :cond_2
    sget-object p0, Ldxs;->g:Lkaf;

    :goto_1
    return-object p0

    :cond_3
    if-eqz p1, :cond_4

    sget-object p0, Ldxs;->d:Lkaf;

    goto :goto_2

    :cond_4
    sget-object p0, Ldxs;->c:Lkaf;

    :goto_2
    return-object p0
.end method

.method public static synthetic k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method
