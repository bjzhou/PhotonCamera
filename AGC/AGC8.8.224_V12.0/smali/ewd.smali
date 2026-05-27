.class public final Lewd;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lbne;

.field public c:Z

.field public d:Z

.field public e:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private f:Lbob;

.field private final g:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Lbne;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lewd;->g:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lewd;->d:Z

    iput-object p1, p0, Lewd;->b:Lbne;

    iput-object p2, p0, Lewd;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/view/WindowManager;Ldhi;Landroidx/wear/ambient/AmbientMode$AmbientController;Z)Lbob;
    .locals 11

    monitor-enter p0

    :try_start_0
    iput-object p3, p0, Lewd;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lewd;->c:Z

    iget-object v0, p0, Lewd;->b:Lbne;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lbne;->g()Lbnx;

    move-result-object v0

    invoke-virtual {v0}, Lbnx;->a()I

    move-result v0

    if-ne v0, p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lewd;->b:Lbne;

    invoke-virtual {v0}, Lbne;->e()Lbnp;

    move-result-object v0

    iget-object v2, p0, Lewd;->b:Lbne;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbne;->k(Z)V

    const/4 v2, 0x3

    if-eqz p4, :cond_e

    iget-object p4, p0, Lewd;->b:Lbne;

    invoke-virtual {p4}, Lbne;->f()Lbnw;

    move-result-object p4

    invoke-static {p2, v0}, Lewf;->a(Ldhi;Lbnp;)Lbnm;

    move-result-object v4

    sget-object v5, Lbnm;->a:Lbnm;

    if-ne v4, v5, :cond_2

    iput-boolean p3, p0, Lewd;->d:Z

    :cond_2
    invoke-static {p2, v0}, Lewf;->a(Ldhi;Lbnp;)Lbnm;

    move-result-object p2

    iput-object p2, p4, Lbnw;->s:Lbnm;

    sget-object p2, Lbnl;->c:Lbnl;

    invoke-virtual {v0, p2}, Lbnp;->e(Lbnl;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lbnl;->c:Lbnl;

    goto :goto_1

    :cond_3
    sget-object p2, Lbnl;->b:Lbnl;

    invoke-virtual {v0, p2}, Lbnp;->e(Lbnl;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lbnl;->b:Lbnl;

    goto :goto_1

    :cond_4
    sget-object p2, Lbnl;->a:Lbnl;

    invoke-virtual {v0, p2}, Lbnp;->e(Lbnl;)Z

    move-result p2

    if-eqz p2, :cond_d

    sget-object p2, Lbnl;->a:Lbnl;

    :goto_1
    iput-object p2, p4, Lbnw;->r:Lbnl;

    sget-object p2, Lbnn;->b:Lbnn;

    if-eqz p2, :cond_5

    iget-object v4, v0, Lbnp;->h:Ljava/util/EnumSet;

    invoke-virtual {v4, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Lbnn;->b:Lbnn;

    goto :goto_2

    :cond_5
    sget-object p2, Lbnn;->a:Lbnn;

    :goto_2
    iput-object p2, p4, Lbnw;->t:Lbnn;

    invoke-virtual {p4}, Lbnw;->d()V

    invoke-static {v0}, Lewe;->a(Lbnp;)Lgxb;

    move-result-object p2

    iget-object v4, p2, Lgxb;->b:Ljava/lang/Object;

    check-cast v4, Lbob;

    iput-object v4, p0, Lewd;->f:Lbob;

    invoke-virtual {p4, v4}, Lbnw;->l(Lbob;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lbnp;->b:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v4, Lewf;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    const-string v5, "No suppoted frame rates returned!"

    const/16 v6, 0x7e0

    invoke-static {v4, v5, v6}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    move-object v4, v1

    goto :goto_5

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const v6, 0x61a80

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v8, v7, v3

    aget v7, v7, p3

    const/16 v9, 0x7530

    if-lt v7, v9, :cond_7

    if-gt v8, v9, :cond_7

    if-ge v8, v6, :cond_7

    move v6, v8

    goto :goto_3

    :cond_8
    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_a

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    aget v10, v9, v3

    aget v9, v9, p3

    if-ne v10, v6, :cond_9

    if-ge v8, v9, :cond_9

    move v5, v7

    move v8, v9

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    if-ltz v5, :cond_b

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    goto :goto_5

    :cond_b
    sget-object v4, Lewf;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    const-string v5, "Can\'t find an appropriate frame rate range!"

    const/16 v6, 0x7df

    invoke-static {v4, v5, v6}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    move-object v4, v1

    :goto_5
    if-eqz v4, :cond_c

    array-length v5, v4

    if-lez v5, :cond_c

    aget v5, v4, v3

    aget p3, v4, p3

    invoke-virtual {p4, v5, p3}, Lbnw;->j(II)V

    goto :goto_6

    :cond_c
    sget-object p3, Lewf;->a:Lnak;

    invoke-virtual {p3}, Lnaf;->b()Lnaz;

    move-result-object p3

    const-string v4, "No supported frame rates returned!"

    const/16 v5, 0x7de

    invoke-static {p3, v4, v5}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :goto_6
    new-instance p3, Lbob;

    invoke-direct {p3, v3, v3}, Lbob;-><init>(II)V

    iput-object p3, p4, Lbnw;->z:Lbob;

    const/16 p3, 0x64

    invoke-virtual {p4, p3}, Lbnw;->i(I)V

    iget-object p2, p2, Lgxb;->a:Ljava/lang/Object;

    check-cast p2, Lbob;

    invoke-virtual {p4, p2}, Lbnw;->k(Lbob;)V

    invoke-static {p1}, Lgfp;->c(Landroid/view/WindowManager;)I

    move-result p1

    iget-object p2, p0, Lewd;->b:Lbne;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Lbne;->h()Lbny;

    move-result-object p3

    new-instance v4, Lbbh;

    invoke-direct {v4, p2, p1, v2}, Lbbh;-><init>(Lbne;II)V

    invoke-virtual {p3, v4}, Lbny;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p2}, Lbne;->d()Lbni;

    move-result-object p2

    invoke-virtual {p2}, Lbni;->c()Lbnv;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbnv;->c(Ljava/lang/RuntimeException;)V

    :goto_7
    iget-object p1, p0, Lewd;->b:Lbne;

    invoke-virtual {p1, p4}, Lbne;->m(Lbnw;)V

    iget p1, v0, Lbnp;->u:F

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Field of view reported = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_d
    sget-object p1, Lewf;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string p2, "no supported flash mode found, need OFF, AUTO or NO_FLASH!"

    const/16 p3, 0x7db

    invoke-static {p1, p2, p3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no supported flash mode found!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_8
    iget-object p1, p0, Lewd;->b:Lbne;

    iget-object p2, p0, Lewd;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p2}, Lbne;->l(Landroid/graphics/SurfaceTexture;)V

    iget-boolean p1, p0, Lewd;->c:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lewd;->b:Lbne;

    iget-object p2, p0, Lewd;->f:Lbob;

    iget-object p3, p0, Lewd;->a:Landroid/os/Handler;

    iget-object p4, p0, Lewd;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {p1, p3, v1}, Lbne;->p(Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    invoke-virtual {p1}, Lbne;->f()Lbnw;

    move-result-object v0

    iget v0, v0, Lbnw;->l:I

    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    if-lez v1, :cond_10

    int-to-float v0, v1

    invoke-virtual {p2}, Lbob;->b()I

    move-result v1

    invoke-virtual {p2}, Lbob;->a()I

    move-result p2

    mul-int v1, v1, p2

    int-to-float p2, v1

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    mul-float p2, p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    :goto_9
    if-ge v3, v2, :cond_f

    new-array v0, p2, [B

    invoke-virtual {p1, v0}, Lbne;->i([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_f
    invoke-virtual {p1, p3, p4}, Lbne;->p(Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    goto :goto_a

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown image format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    iget-object p1, p0, Lewd;->b:Lbne;

    iget-object p2, p0, Lewd;->a:Landroid/os/Handler;

    iget-object p3, p0, Lewd;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {p1, p2, p3}, Lbne;->o(Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    :goto_a
    iget-object p1, p0, Lewd;->f:Lbob;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b
.end method
