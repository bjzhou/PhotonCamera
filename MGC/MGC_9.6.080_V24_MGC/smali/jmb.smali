.class public final Ljmb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lfgv;

.field public c:Z

.field public d:Z

.field public e:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private f:Lfhs;

.field private final g:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Lfgv;Landroid/os/Handler;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Ljmb;->g:Landroid/graphics/SurfaceTexture;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_a

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

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0x64

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Landroid/graphics/SurfaceTexture;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Ljmb;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p2, p0, Ljmb;->a:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_10
    iput-object p1, p0, Ljmb;->b:Lfgv;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/view/WindowManager;Lhoh;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Z)Lfhs;
    .locals 10

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return-object p1

    nop

    nop

    :cond_0
    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_c
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iput-object p3, p0, Ljmb;->e:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    const/4 p3, 0x1

    nop

    nop

    nop

    nop

    iput-boolean p3, p0, Ljmb;->c:Z

    nop

    nop

    nop

    iget-object v0, p0, Ljmb;->b:Lfgv;

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    invoke-virtual {v0}, Lfgv;->g()Lfho;

    move-result-object v0

    nop

    invoke-virtual {v0}, Lfho;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eq v0, p3, :cond_0

    nop

    iget-object v0, p0, Ljmb;->b:Lfgv;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lfgv;->e()Lfhg;

    move-result-object v2

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    invoke-virtual {v0, v3}, Lfgv;->k(Z)V

    if-eqz p4, :cond_f

    nop

    iget-object p4, p0, Ljmb;->b:Lfgv;

    nop

    nop

    nop

    nop

    invoke-virtual {p4}, Lfgv;->f()Lfhn;

    move-result-object p4

    nop

    invoke-static {p2, v2}, Ljmd;->a(Lhoh;Lfhg;)Lfhd;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lfhd;->a:Lfhd;

    nop

    nop

    nop

    nop

    if-ne v0, v4, :cond_3

    nop

    iput-boolean p3, p0, Ljmb;->d:Z

    nop

    nop

    nop

    nop

    nop

    :cond_3
    invoke-static {p2, v2}, Ljmd;->a(Lhoh;Lfhg;)Lfhd;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    iput-object p2, p4, Lfhn;->s:Lfhd;

    nop

    nop

    nop

    nop

    sget-object p2, Lfhc;->c:Lfhc;

    nop

    nop

    nop

    invoke-virtual {v2, p2}, Lfhg;->e(Lfhc;)Z

    move-result p2

    nop

    nop

    if-eqz p2, :cond_4

    nop

    nop

    nop

    nop

    sget-object p2, Lfhc;->c:Lfhc;

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    sget-object p2, Lfhc;->b:Lfhc;

    nop

    nop

    nop

    invoke-virtual {v2, p2}, Lfhg;->e(Lfhc;)Z

    move-result p2

    nop

    nop

    nop

    if-eqz p2, :cond_5

    nop

    sget-object p2, Lfhc;->b:Lfhc;

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    :cond_5
    sget-object p2, Lfhc;->a:Lfhc;

    nop

    nop

    nop

    invoke-virtual {v2, p2}, Lfhg;->e(Lfhc;)Z

    move-result p2

    nop

    if-eqz p2, :cond_e

    nop

    nop

    sget-object p2, Lfhc;->a:Lfhc;

    nop

    :goto_f
    iput-object p2, p4, Lfhn;->r:Lfhc;

    nop

    nop

    nop

    nop

    nop

    sget-object p2, Lfhe;->b:Lfhe;

    nop

    if-eqz p2, :cond_6

    nop

    iget-object v0, v2, Lfhg;->h:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    nop

    if-eqz p2, :cond_6

    nop

    sget-object p2, Lfhe;->b:Lfhe;

    nop

    nop

    nop

    nop

    nop

    goto :goto_10

    nop

    :cond_6
    sget-object p2, Lfhe;->a:Lfhe;

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p2, p4, Lfhn;->t:Lfhe;

    nop

    nop

    nop

    nop

    invoke-virtual {p4}, Lfhn;->d()V

    invoke-static {v2}, Ljmc;->a(Lfhg;)Lmhz;

    move-result-object p2

    nop

    nop

    nop

    iget-object v0, p2, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lfhs;

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Ljmb;->f:Lfhs;

    nop

    nop

    invoke-virtual {p4, v0}, Lfhn;->l(Lfhs;)V

    iget-object v0, v2, Lfhg;->b:Ljava/util/ArrayList;

    nop

    nop

    new-instance v4, Ljava/util/ArrayList;

    nop

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    if-eqz v0, :cond_7

    nop

    nop

    sget-object v0, Ljmd;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v4, 0x9b9

    nop

    nop

    invoke-interface {v0, v4}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "No suppoted frame rates returned!"

    nop

    nop

    nop

    invoke-interface {v0, v4}, Lscz;->s(Ljava/lang/String;)V

    :goto_11
    move-object v0, v1

    nop

    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    const v5, 0x61a80

    nop

    nop

    :cond_8
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_9

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    check-cast v6, [I

    nop

    nop

    nop

    nop

    aget v7, v6, v3

    nop

    nop

    nop

    aget v6, v6, p3

    nop

    nop

    nop

    nop

    nop

    const/16 v8, 0x7530

    nop

    nop

    nop

    nop

    if-lt v6, v8, :cond_8

    nop

    if-gt v7, v8, :cond_8

    nop

    if-ge v7, v5, :cond_8

    nop

    nop

    move v5, v7

    nop

    nop

    nop

    goto :goto_12

    nop

    :cond_9
    const/4 v0, -0x1

    nop

    nop

    nop

    move v6, v3

    nop

    nop

    nop

    move v7, v6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    nop

    nop

    nop

    nop

    if-ge v6, v8, :cond_b

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    check-cast v8, [I

    nop

    nop

    nop

    nop

    nop

    aget v9, v8, v3

    nop

    aget v8, v8, p3

    nop

    if-ne v9, v5, :cond_a

    nop

    nop

    nop

    nop

    nop

    if-ge v7, v8, :cond_a

    nop

    move v0, v6

    nop

    nop

    move v7, v8

    nop

    nop

    nop

    nop

    :cond_a
    add-int/lit8 v6, v6, 0x1

    nop

    goto :goto_13

    nop

    nop

    nop

    nop

    :cond_b
    if-ltz v0, :cond_c

    nop

    nop

    nop

    nop

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, [I

    nop

    nop

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    :cond_c
    sget-object v0, Ljmd;->a:Lsdb;

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v4, 0x9b8

    nop

    invoke-interface {v0, v4}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v4, "Can\'t find an appropriate frame rate range!"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/16 :goto_11

    nop

    nop

    :goto_14
    if-eqz v0, :cond_d

    nop

    nop

    nop

    nop

    array-length v4, v0

    nop

    nop

    if-lez v4, :cond_d

    nop

    nop

    nop

    nop

    aget v4, v0, v3

    nop

    nop

    nop

    nop

    nop

    aget p3, v0, p3

    nop

    nop

    invoke-virtual {p4, v4, p3}, Lfhn;->j(II)V

    goto :goto_15

    nop

    nop

    nop

    nop

    :cond_d
    sget-object p3, Ljmd;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p3}, Lscs;->b()Lsdo;

    move-result-object p3

    nop

    const/16 v0, 0x9b7

    nop

    nop

    nop

    invoke-interface {p3, v0}, Lscz;->M(I)Lsdo;

    move-result-object p3

    nop

    nop

    nop

    check-cast p3, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v0, "No supported frame rates returned!"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p3, v0}, Lscz;->s(Ljava/lang/String;)V

    :goto_15
    new-instance p3, Lfhs;

    nop

    invoke-direct {p3, v3, v3}, Lfhs;-><init>(II)V

    iput-object p3, p4, Lfhn;->z:Lfhs;

    nop

    nop

    nop

    nop

    nop

    const/16 p3, 0x64

    nop

    nop

    nop

    nop

    invoke-virtual {p4, p3}, Lfhn;->i(I)V

    iget-object p2, p2, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p2, Lfhs;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p4, p2}, Lfhn;->k(Lfhs;)V

    invoke-static {p1}, Ljmo;->O(Landroid/view/WindowManager;)I

    move-result p1

    nop

    nop

    nop

    iget-object p2, p0, Ljmb;->b:Lfgv;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Lfgv;->h()Lfhp;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Ldtv;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    invoke-direct {v0, p2, p1, v4, v1}, Ldtv;-><init>(Ljava/lang/Object;II[B)V

    invoke-virtual {p3, v0}, Lfhp;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x1d

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    goto :goto_18

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {p2}, Lfgv;->d()Lfgz;

    move-result-object p2

    nop

    nop

    nop

    invoke-virtual {p2}, Lfgz;->c()Lfhm;

    move-result-object p2

    nop

    nop

    nop

    invoke-virtual {p2, p1}, Lfhm;->c(Ljava/lang/RuntimeException;)V

    :goto_18
    iget-object p1, p0, Ljmb;->b:Lfgv;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p4}, Lfgv;->m(Lfhn;)V

    iget p1, v2, Lfhg;->u:F

    nop

    nop

    nop

    nop

    goto :goto_19

    nop

    nop

    nop

    :cond_e
    sget-object p1, Ljmd;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    const/16 p2, 0x9b4

    nop

    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    check-cast p1, Lscz;

    nop

    nop

    const-string p2, "no supported flash mode found, need OFF, AUTO or NO_FLASH!"

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->s(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string p2, "no supported flash mode found!"

    nop

    nop

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :cond_f
    :goto_19
    iget-object p1, p0, Ljmb;->b:Lfgv;

    nop

    nop

    iget-object p2, p0, Ljmb;->g:Landroid/graphics/SurfaceTexture;

    nop

    invoke-virtual {p1, p2}, Lfgv;->l(Landroid/graphics/SurfaceTexture;)V

    iget-boolean p1, p0, Ljmb;->c:Z

    nop

    nop

    nop

    if-eqz p1, :cond_12

    nop

    iget-object p1, p0, Ljmb;->b:Lfgv;

    nop

    nop

    iget-object p2, p0, Ljmb;->f:Lfhs;

    nop

    nop

    nop

    nop

    iget-object p3, p0, Ljmb;->a:Landroid/os/Handler;

    nop

    nop

    nop

    iget-object p4, p0, Ljmb;->e:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p3, v1}, Lfgv;->q(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    invoke-virtual {p1}, Lfgv;->f()Lfhn;

    move-result-object v0

    nop

    nop

    iget v0, v0, Lfhn;->l:I

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    nop

    nop

    nop

    if-lez v1, :cond_11

    nop

    nop

    int-to-float v0, v1

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lfhs;->b()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lfhs;->a()I

    move-result p2

    nop

    nop

    mul-int/2addr v1, p2

    nop

    nop

    int-to-float p2, v1

    nop

    nop

    nop

    const/high16 v1, 0x41000000    # 8.0f

    nop

    div-float/2addr v0, v1

    nop

    nop

    mul-float/2addr p2, v0

    nop

    nop

    float-to-double v0, p2

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    double-to-int p2, v0

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x3

    nop

    nop

    if-ge v3, v0, :cond_10

    nop

    nop

    nop

    nop

    new-array v0, p2, [B

    nop

    invoke-virtual {p1, v0}, Lfgv;->i([B)V

    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_10
    invoke-virtual {p1, p3, p4}, Lfgv;->q(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    goto :goto_1b

    nop

    nop

    nop

    nop

    :cond_11
    const-string p1, "Unknown image format: "

    nop

    nop

    new-instance p2, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    invoke-static {v0, p1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    nop

    nop

    :cond_12
    iget-object p1, p0, Ljmb;->b:Lfgv;

    nop

    nop

    nop

    iget-object p2, p0, Ljmb;->a:Landroid/os/Handler;

    nop

    nop

    iget-object p3, p0, Ljmb;->e:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    invoke-virtual {p1, p2, p3}, Lfgv;->p(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    :goto_1b
    iget-object p1, p0, Ljmb;->f:Lfhs;

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop
.end method
