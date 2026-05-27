.class public final Lbmp;
.super Lbne;


# instance fields
.field public final synthetic a:Lbmv;

.field private final b:Lbni;

.field private final c:I

.field private final d:Landroid/hardware/Camera;

.field private final e:Lbmw;


# direct methods
.method public constructor <init>(Lbmv;Lbni;ILandroid/hardware/Camera;Lbmw;)V
    .locals 0

    iput-object p1, p0, Lbmp;->a:Lbmv;

    invoke-direct {p0}, Lbne;-><init>()V

    iput-object p2, p0, Lbmp;->b:Lbni;

    iput-object p4, p0, Lbmp;->d:Landroid/hardware/Camera;

    iput p3, p0, Lbmp;->c:I

    iput-object p5, p0, Lbmp;->e:Lbmw;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lbmp;->c:I

    return v0
.end method

.method public final b()Landroid/hardware/Camera$Parameters;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lbnh;

    invoke-direct {v0}, Lbnh;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/hardware/Camera$Parameters;

    :try_start_0
    iget-object v2, p0, Lbmp;->a:Lbmv;

    iget-object v2, v2, Lbmv;->f:Lbny;

    new-instance v3, Lblx;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v1, v0, v4}, Lblx;-><init>(Lbmp;[Landroid/hardware/Camera$Parameters;Lbnh;I)V

    iget-object v0, v0, Lbnh;->b:Ljava/lang/Object;

    const-string v4, "get parameters"

    invoke-virtual {v2, v3, v0, v4}, Lbny;->b(Ljava/lang/Runnable;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lbmp;->b:Lbni;

    check-cast v2, Lbmv;

    iget-object v2, v2, Lbmv;->g:Lbnv;

    invoke-virtual {v2, v0}, Lbnv;->c(Ljava/lang/RuntimeException;)V

    :goto_0
    const/4 v0, 0x0

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final c()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->a:Lbmv;

    iget-object v0, v0, Lbmv;->d:Lbmq;

    return-object v0
.end method

.method public final d()Lbni;
    .locals 1

    iget-object v0, p0, Lbmp;->b:Lbni;

    return-object v0
.end method

.method public final e()Lbnp;
    .locals 2

    new-instance v0, Lbmw;

    iget-object v1, p0, Lbmp;->e:Lbmw;

    invoke-direct {v0, v1}, Lbmw;-><init>(Lbmw;)V

    return-object v0
.end method

.method public final f()Lbnw;
    .locals 3

    new-instance v0, Lbmx;

    iget-object v1, p0, Lbmp;->e:Lbmw;

    invoke-virtual {p0}, Lbmp;->b()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbmx;-><init>(Lbnp;Landroid/hardware/Camera$Parameters;)V

    return-object v0
.end method

.method public final g()Lbnx;
    .locals 1

    iget-object v0, p0, Lbmp;->a:Lbmv;

    iget-object v0, v0, Lbmv;->e:Lbnx;

    return-object v0
.end method

.method public final h()Lbny;
    .locals 1

    iget-object v0, p0, Lbmp;->a:Lbmv;

    iget-object v0, v0, Lbmv;->f:Lbny;

    return-object v0
.end method

.method public final j(Landroid/os/Handler;Lbmy;)V
    .locals 2

    new-instance v0, Lbmn;

    invoke-direct {v0, p0, p1, p2}, Lbmn;-><init>(Lbmp;Landroid/os/Handler;Lbmy;)V

    iget-object p1, p0, Lbmp;->a:Lbmv;

    iget-object p1, p1, Lbmv;->f:Lbny;

    new-instance p2, Lbem;

    const/4 v1, 0x4

    invoke-direct {p2, p0, v0, v1}, Lbem;-><init>(Lbmp;Landroid/hardware/Camera$AutoFocusCallback;I)V

    invoke-virtual {p1, p2}, Lbny;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m(Lbnw;)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lbne;->s(Lbnw;I)Z

    return-void
.end method

.method public final o(Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 8

    iget-object v0, p0, Lbmp;->a:Lbmv;

    iget-object v0, v0, Lbmv;->f:Lbny;

    new-instance v7, Lblx;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lblx;-><init>(Lbmp;Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;I[B)V

    invoke-virtual {v0, v7}, Lbny;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p(Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 8

    iget-object v0, p0, Lbmp;->a:Lbmv;

    iget-object v0, v0, Lbmv;->f:Lbny;

    new-instance v7, Lblx;

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lblx;-><init>(Lbmp;Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;I[B)V

    invoke-virtual {v0, v7}, Lbny;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final q(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Lbnc;Lbnc;)V
    .locals 15

    move-object v12, p0

    new-instance v6, Lbmo;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-direct {v6, p0, v0, v1}, Lbmo;-><init>(Lbmp;Landroid/os/Handler;Lbnc;)V

    :try_start_0
    iget-object v1, v12, Lbmp;->a:Lbmv;

    iget-object v13, v1, Lbmv;->f:Lbny;

    new-instance v14, Lcfu;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v11}, Lcfu;-><init>(Lbmp;Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Lbnc;Landroid/hardware/Camera$PictureCallback;I[B[B[B[B)V

    invoke-virtual {v13, v14}, Lbny;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, v12, Lbmp;->b:Lbni;

    check-cast v1, Lbmv;

    iget-object v1, v1, Lbmv;->g:Lbnv;

    invoke-virtual {v1, v0}, Lbnv;->c(Ljava/lang/RuntimeException;)V

    return-void
.end method
