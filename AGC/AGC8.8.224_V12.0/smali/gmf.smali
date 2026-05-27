.class public final synthetic Lgmf;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Lfwn;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lfwn;->a:Ljava/util/Set;

    invoke-static {p0}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lken;Ljava/util/Set;)V
    .locals 8

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v0

    invoke-interface {p0}, Lken;->b()Lkdz;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkfa;

    iget-object v4, v3, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lkfa;->b:Ljava/lang/Object;

    iget-object v5, v3, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    check-cast v4, Ljava/lang/Integer;

    move-object v2, v1

    check-cast v2, Lkfr;

    iput-object v4, v2, Lkfr;->e:Ljava/lang/Integer;

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    check-cast v4, Ljava/lang/Integer;

    move-object v2, v1

    check-cast v2, Lkfr;

    iput-object v4, v2, Lkfr;->d:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    check-cast v4, Ljava/lang/Integer;

    move-object v2, v1

    check-cast v2, Lkfr;

    iput-object v4, v2, Lkfr;->f:Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    check-cast v4, Ljava/lang/Integer;

    move-object v2, v1

    check-cast v2, Lkfr;

    iput-object v4, v2, Lkfr;->c:Ljava/lang/Integer;

    goto :goto_1

    :cond_4
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    check-cast v4, Ljava/lang/Integer;

    move-object v2, v1

    check-cast v2, Lkfr;

    iput-object v4, v2, Lkfr;->g:Ljava/lang/Integer;

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v3}, Lmwl;->g(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v1}, Lkdz;->a()Lkea;

    move-result-object p1

    invoke-interface {p0, p1}, Lken;->o(Lkea;)V

    :cond_7
    invoke-virtual {v0}, Lmwl;->f()Lmwn;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p0, p1}, Lken;->j(Ljava/util/Set;)V

    :cond_8
    return-void
.end method

.method public static d(Lken;Ljava/util/Set;Lmqp;Lmqp;Lmqp;Ljava/util/Set;)Lmqp;
    .locals 1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lmpx;->a:Lmpx;

    return-object p0

    :cond_0
    new-instance v0, Lmwl;

    invoke-direct {v0}, Lmwl;-><init>()V

    invoke-virtual {v0, p1}, Lmwl;->h(Ljava/lang/Iterable;)V

    invoke-virtual {p2}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkfj;

    invoke-virtual {v0, p1}, Lmwl;->g(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p4}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkfj;

    invoke-virtual {v0, p1}, Lmwl;->g(Ljava/lang/Object;)V

    :cond_2
    new-instance p1, Lmwl;

    invoke-direct {p1}, Lmwl;-><init>()V

    invoke-virtual {p1, p5}, Lmwl;->h(Ljava/lang/Iterable;)V

    invoke-virtual {p3}, Lmqp;->g()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkfj;

    invoke-virtual {v0, p2}, Lmwl;->g(Ljava/lang/Object;)V

    sget-object p2, Liuv;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz p2, :cond_3

    sget-object p2, Liuv;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-static {p2, p3}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmwl;->g(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v0}, Lmwl;->f()Lmwn;

    move-result-object p2

    invoke-virtual {p1}, Lmwl;->f()Lmwn;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lken;->v(Ljava/util/Set;Ljava/util/Set;)Lkgq;

    move-result-object p0

    invoke-static {p0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lika;Ldhi;)V
    .locals 1

    sget-object v0, Lika;->b:Lika;

    if-ne p0, v0, :cond_0

    sget-object p0, Ldij;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->g()V

    :cond_0
    return-void
.end method

.method public static final f(Lmqp;IFZ)J
    .locals 1

    invoke-virtual {p0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlex/gcam/BurstSpec;

    invoke-virtual {p0, p2, p3}, Lcom/google/googlex/gcam/BurstSpec;->a(FZ)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static final g(Lkli;Lcom/google/googlex/gcam/BurstSpec;Lmqp;IIZLkou;)J
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0}, Lnsc;->c(Lkli;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-float p0, v0

    invoke-static {p2, p4, p0, p5}, Lgmf;->f(Lmqp;IFZ)J

    move-result-wide v0

    if-lez p3, :cond_0

    invoke-virtual {p1, p0, p5}, Lcom/google/googlex/gcam/BurstSpec;->a(FZ)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v0, p0

    goto :goto_0

    :cond_0
    :goto_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p6, p1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    return-wide v0
.end method

.method public static h(Ldhi;)V
    .locals 1

    sget-object v0, Ldgv;->b:Ldhj;

    invoke-interface {p0, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ldhx;->e:Ldhj;

    invoke-interface {p0, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ldhi;->e()V

    :cond_0
    return-void
.end method

.method public static synthetic i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
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

.method public static final j(IILkpa;)Ljava/nio/ByteBuffer;
    .locals 12

    mul-int v0, p0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p2}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v1, Llfa;->a:Llez;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {p2}, Lkpa;->getPixelStride()I

    move-result v8

    const/4 v9, 0x1

    invoke-interface {p2}, Lkpa;->getRowStride()I

    move-result v10

    move-object v3, v0

    move v4, p0

    move v5, p1

    move v11, p0

    invoke-interface/range {v1 .. v11}, Llez;->copyBytes2D(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIII)V

    return-object v0
.end method
