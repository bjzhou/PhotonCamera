.class public final Ldgz;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldhk;

.field public static final b:Ldhk;

.field public static final c:Ldhj;

.field private static final d:Lmwa;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    invoke-static {}, Lmwa;->i()Lmvw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldgy;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v3}, Ldgy;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldgy;

    const/high16 v4, 0x42a60000    # 83.0f

    const/high16 v5, 0x42820000    # 65.0f

    const/high16 v6, 0x425c0000    # 55.0f

    invoke-direct {v2, v4, v4, v5, v6}, Ldgy;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldgy;

    const/high16 v4, 0x429a0000    # 77.0f

    invoke-direct {v2, v4, v4, v5, v6}, Ldgy;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldgy;

    const v4, 0x42a1cccd    # 80.9f

    const v7, 0x4299cccd    # 76.9f

    invoke-direct {v2, v4, v7, v5, v6}, Ldgy;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldgy;

    const/high16 v4, 0x42940000    # 74.0f

    const/high16 v7, 0x42380000    # 46.0f

    invoke-direct {v2, v4, v4, v6, v7}, Ldgy;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldgy;

    const/high16 v4, 0x44070000    # 540.0f

    const/high16 v7, 0x427c0000    # 63.0f

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct {v2, v4, v7, v6, v8}, Ldgy;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldgy;

    const/high16 v4, 0x428c0000    # 70.0f

    const/high16 v7, 0x42780000    # 62.0f

    const v9, 0x44348000    # 722.0f

    const/high16 v10, 0x42920000    # 73.0f

    invoke-direct {v2, v9, v10, v4, v7}, Ldgy;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldgy;

    invoke-direct {v2, v3, v3, v5, v8}, Ldgy;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldgy;

    const/high16 v4, 0x42440000    # 49.0f

    invoke-direct {v2, v3, v3, v5, v4}, Ldgy;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldgy;

    const/high16 v7, 0x41a00000    # 20.0f

    const v9, 0x41873333    # 16.9f

    invoke-direct {v2, v3, v3, v7, v9}, Ldgy;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldgy;

    invoke-direct {v2, v3, v3, v5, v8}, Ldgy;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldgy;

    invoke-direct {v2, v3, v3, v6, v4}, Ldgy;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldgy;

    invoke-direct {v2, v3, v3, v5, v4}, Ldgy;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldgy;

    invoke-direct {v2, v3, v3, v5, v4}, Ldgy;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmvw;->b()Lmwa;

    move-result-object v0

    sput-object v0, Ldgz;->d:Lmwa;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "device_config"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldgz;->a:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.cutout_trial_size"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldgz;->b:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.front_lens_indicator"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldgz;->c:Ldhj;

    return-void
.end method

.method public static a(Ldhi;I)Ldgy;
    .locals 3

    const/16 v0, 0xd

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid device enum: %s"

    invoke-static {v0, v1, p1}, Lmoz;->r(ZLjava/lang/String;I)V

    sget-object v0, Ldgz;->d:Lmwa;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldgy;

    sget-object v0, Ldgz;->b:Ldhk;

    invoke-interface {p0, v0}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p1, :cond_2

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ldgy;

    iget v1, p1, Ldgy;->a:F

    iget p1, p1, Ldgy;->b:F

    int-to-float p0, p0

    const/high16 v2, 0x42200000    # 40.0f

    add-float/2addr p0, v2

    invoke-direct {v0, v1, p1, p0, p0}, Ldgy;-><init>(FFFF)V

    return-object v0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    new-instance p0, Ldgy;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1, p1}, Ldgy;-><init>(FFFF)V

    return-object p0
.end method

.method public static b(Ldhm;Lkog;)V
    .locals 3

    sget-object v0, Ldgz;->b:Ldhk;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, Ldgz;->c:Ldhj;

    invoke-interface {p0, v0, v1}, Ldhm;->u(Ldhj;Z)V

    iget-boolean v0, p1, Lkog;->c:Z

    if-nez v0, :cond_c

    iget-boolean v0, p1, Lkog;->e:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, Lkog;->d:Z

    if-nez v0, :cond_a

    iget-boolean v0, p1, Lkog;->f:Z

    if-nez v0, :cond_9

    iget-boolean v0, p1, Lkog;->g:Z

    if-nez v0, :cond_8

    iget-boolean v0, p1, Lkog;->h:Z

    if-nez v0, :cond_7

    iget-boolean v0, p1, Lkog;->j:Z

    if-nez v0, :cond_6

    iget-boolean v0, p1, Lkog;->m:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lkog;->l:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lkog;->n:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lkog;->o:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lkog;->q:Z

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lkog;->p:Z

    if-eqz p1, :cond_0

    sget-object p1, Ldgz;->a:Ldhk;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    return-void

    :cond_0
    sget-object p1, Ldgz;->a:Ldhk;

    invoke-interface {p0, p1, v2}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    return-void

    :cond_1
    sget-object p1, Ldgz;->a:Ldhk;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    return-void

    :cond_2
    sget-object p1, Ldgz;->a:Ldhk;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    return-void

    :cond_3
    sget-object p1, Ldgz;->a:Ldhk;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    return-void

    :cond_4
    sget-object p1, Ldgz;->a:Ldhk;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    return-void

    :cond_5
    sget-object p1, Ldgz;->a:Ldhk;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    return-void

    :cond_6
    sget-object p1, Ldgz;->a:Ldhk;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    return-void

    :cond_7
    sget-object p1, Ldgz;->a:Ldhk;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    return-void

    :cond_8
    sget-object p1, Ldgz;->a:Ldhk;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    return-void

    :cond_9
    sget-object p1, Ldgz;->a:Ldhk;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    return-void

    :cond_a
    sget-object p1, Ldgz;->a:Ldhk;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    return-void

    :cond_b
    sget-object p1, Ldgz;->a:Ldhk;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    return-void

    :cond_c
    sget-object p1, Ldgz;->a:Ldhk;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ldhm;->q(Ldhk;Ljava/lang/Integer;)V

    return-void
.end method
