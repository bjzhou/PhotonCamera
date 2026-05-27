.class public final Lcom/google/android/apps/camera/moments/MomentsUtils;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lkeb;)Lnou;
    .locals 2

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    new-instance v1, Lfrq;

    invoke-direct {v1, v0}, Lfrq;-><init>(Lnph;)V

    invoke-interface {p0, v1}, Lkeb;->k(Lkfg;)V

    return-object v0
.end method

.method public static native allocateHardwareBuffer(IIIIJ)Landroid/hardware/HardwareBuffer;
.end method

.method public static b(Lfpc;Lgse;Ljava/util/Collection;)Z
    .locals 4

    invoke-interface {p0}, Lfpc;->f()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lfpc;->e()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gtz v0, :cond_2

    return v2

    :cond_2
    invoke-interface {p0}, Lfpc;->f()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lfpc;->f()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgsx;

    iget-object v0, v0, Lgsx;->a:[Lgsw;

    array-length v0, v0

    :cond_3
    invoke-interface {p0}, Lfpc;->a()F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    return v1

    :cond_4
    invoke-interface {p0}, Lfpc;->d()Lgsl;

    move-result-object p0

    invoke-virtual {p1, p0, p2, v2}, Lgse;->a(Lgsl;Ljava/util/Collection;Z)Lgsk;

    move-result-object p0

    iget p0, p0, Lgsk;->a:F

    const p1, 0x3d8f5c29    # 0.07f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public static c(Lfpc;FLgse;Ljava/util/Collection;)Z
    .locals 3

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p0}, Lfpc;->f()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lfpc;->f()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgsx;

    iget-object v0, v0, Lgsx;->a:[Lgsw;

    array-length v0, v0

    :cond_1
    invoke-interface {p0}, Lfpc;->a()F

    move-result v0

    sub-float/2addr v0, p1

    const p1, -0x435c28f6    # -0.02f

    const/4 v1, 0x0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    return v1

    :cond_2
    invoke-interface {p0}, Lfpc;->d()Lgsl;

    move-result-object p0

    invoke-virtual {p2, p0, p3, v1}, Lgse;->a(Lgsl;Ljava/util/Collection;Z)Lgsk;

    move-result-object p0

    iget p0, p0, Lgsk;->a:F

    const p1, 0x3d8f5c29    # 0.07f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public static native yuv2hwyuv(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILandroid/hardware/HardwareBuffer;)J
.end method
