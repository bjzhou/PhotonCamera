.class public abstract Lbne;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Landroid/hardware/Camera$Parameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract c()Landroid/os/Handler;
.end method

.method public abstract d()Lbni;
.end method

.method public abstract e()Lbnp;
.end method

.method public abstract f()Lbnw;
.end method

.method public abstract g()Lbnx;
.end method

.method public abstract h()Lbny;
.end method

.method public i([B)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lbne;->h()Lbny;

    move-result-object v0

    new-instance v1, Lbem;

    const/16 v2, 0xa

    invoke-direct {v1, p0, p1, v2}, Lbem;-><init>(Lbne;[BI)V

    invoke-virtual {v0, v1}, Lbny;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lbne;->d()Lbni;

    move-result-object v0

    invoke-virtual {v0}, Lbni;->c()Lbnv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbnv;->c(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public abstract j(Landroid/os/Handler;Lbmy;)V
.end method

.method public k(Z)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lbne;->h()Lbny;

    move-result-object v0

    new-instance v1, Lbnd;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lbnd;-><init>(Lbne;ZI)V

    invoke-virtual {v0, v1}, Lbny;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lbne;->d()Lbni;

    move-result-object v0

    invoke-virtual {v0}, Lbni;->c()Lbnv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbnv;->c(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public l(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lbne;->h()Lbny;

    move-result-object v0

    new-instance v1, Lbem;

    const/16 v2, 0xb

    invoke-direct {v1, p0, p1, v2}, Lbem;-><init>(Lbne;Landroid/graphics/SurfaceTexture;I)V

    invoke-virtual {v0, v1}, Lbny;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lbne;->d()Lbni;

    move-result-object v0

    invoke-virtual {v0}, Lbni;->c()Lbnv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbnv;->c(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public abstract m(Lbnw;)V
.end method

.method public n()V
    .locals 4

    invoke-virtual {p0}, Lbne;->g()Lbnx;

    move-result-object v0

    invoke-virtual {v0}, Lbnx;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lbnh;

    invoke-direct {v0}, Lbnh;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lbne;->h()Lbny;

    move-result-object v1

    new-instance v2, Lbem;

    const/16 v3, 0xc

    invoke-direct {v2, p0, v0, v3}, Lbem;-><init>(Lbne;Lbnh;I)V

    iget-object v0, v0, Lbnh;->b:Ljava/lang/Object;

    const-string v3, "set preview texture"

    invoke-virtual {v1, v2, v0, v3}, Lbny;->b(Ljava/lang/Runnable;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lbne;->d()Lbni;

    move-result-object v1

    invoke-virtual {v1}, Lbni;->c()Lbnv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbnv;->c(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public abstract o(Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;)V
.end method

.method public abstract p(Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;)V
.end method

.method public abstract q(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Lbnc;Lbnc;)V
.end method

.method public final r(Landroid/os/Handler;Lbnf;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lbne;->h()Lbny;

    move-result-object v0

    new-instance v1, Lblx;

    const/4 v2, 0x6

    invoke-direct {v1, p0, p1, p2, v2}, Lblx;-><init>(Lbne;Landroid/os/Handler;Lbnf;I)V

    invoke-virtual {v0, v1}, Lbny;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lbne;->d()Lbni;

    move-result-object p2

    invoke-virtual {p2}, Lbni;->c()Lbnv;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbnv;->c(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method protected final s(Lbnw;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lbni;->i:Lboc;

    invoke-static {p1}, Lbod;->g(Lboc;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Lbne;->e()Lbnp;

    move-result-object v1

    iget v2, p1, Lbnw;->p:F

    sget-object v3, Lbnk;->a:Lbnk;

    invoke-virtual {v1, v3}, Lbnp;->d(Lbnk;)Z

    move-result v3

    if-nez v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    sget-object p1, Lbnp;->a:Lboc;

    invoke-static {p1}, Lbod;->g(Lboc;)V

    goto/16 :goto_4

    :cond_1
    iget v2, p1, Lbnw;->p:F

    iget v3, v1, Lbnp;->t:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    sget-object p2, Lbnp;->a:Lboc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zoom ratio is not supported: ratio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lbnw;->p:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lbod;->g(Lboc;)V

    goto/16 :goto_4

    :cond_2
    iget v2, p1, Lbnw;->q:I

    iget v3, v1, Lbnp;->o:I

    if-gt v2, v3, :cond_d

    iget v3, v1, Lbnp;->n:I

    if-ge v2, v3, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v2, p1, Lbnw;->s:Lbnm;

    invoke-virtual {v1, v2}, Lbnp;->f(Lbnm;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lbnm;->e:Lbnm;

    invoke-virtual {v1, v3}, Lbnp;->f(Lbnm;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v2, Lbnp;->a:Lboc;

    const-string v3, "Focus mode not supported... trying FIXED"

    invoke-static {v2, v3}, Lbod;->c(Lboc;Ljava/lang/String;)V

    sget-object v2, Lbnm;->e:Lbnm;

    iput-object v2, p1, Lbnw;->s:Lbnm;

    goto :goto_0

    :cond_4
    sget-object p1, Lbnp;->a:Lboc;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lbnm;->name()Ljava/lang/String;

    :cond_5
    invoke-static {p1}, Lbod;->g(Lboc;)V

    goto/16 :goto_4

    :cond_6
    :goto_0
    iget-object v2, p1, Lbnw;->r:Lbnl;

    invoke-virtual {v1, v2}, Lbnp;->e(Lbnl;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object p1, Lbnp;->a:Lboc;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lbnl;->name()Ljava/lang/String;

    :cond_7
    invoke-static {p1}, Lbod;->g(Lboc;)V

    goto/16 :goto_4

    :cond_8
    invoke-virtual {p1}, Lbnw;->e()Lbob;

    move-result-object v2

    iget-object v3, v1, Lbnp;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p1}, Lbnw;->f()Lbob;

    move-result-object v2

    iget-object v3, v1, Lbnp;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-boolean v2, p1, Lbnw;->v:Z

    if-eqz v2, :cond_a

    sget-object v2, Lbnk;->g:Lbnk;

    invoke-virtual {v1, v2}, Lbnp;->d(Lbnk;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    sget-object p1, Lbnp;->a:Lboc;

    invoke-static {p1}, Lbod;->g(Lboc;)V

    goto :goto_4

    :cond_a
    :goto_1
    invoke-virtual {p1}, Lbnw;->a()Lbnw;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lbne;->h()Lbny;

    move-result-object v0

    new-instance v1, Lpi;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p2, p1, v2}, Lpi;-><init>(Lbne;ILbnw;I)V

    invoke-virtual {v0, v1}, Lbny;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lbne;->d()Lbni;

    move-result-object p2

    invoke-virtual {p2}, Lbni;->c()Lbnv;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbnv;->c(Ljava/lang/RuntimeException;)V

    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_b
    sget-object p1, Lbnp;->a:Lboc;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported preview size:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {p1}, Lbod;->g(Lboc;)V

    goto :goto_4

    :cond_c
    sget-object p1, Lbnp;->a:Lboc;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported photo size:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {p1}, Lbod;->g(Lboc;)V

    goto :goto_4

    :cond_d
    :goto_3
    sget-object p1, Lbnp;->a:Lboc;

    invoke-static {p1}, Lbod;->g(Lboc;)V

    :goto_4
    sget-object p1, Lbni;->i:Lboc;

    const-string p2, "Unsupported settings in applySettings()"

    invoke-static {p1, p2}, Lbod;->c(Lboc;Ljava/lang/String;)V

    return v0
.end method
