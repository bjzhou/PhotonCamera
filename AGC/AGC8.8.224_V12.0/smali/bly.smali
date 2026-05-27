.class public final Lbly;
.super Lbne;


# instance fields
.field public final a:Lbnq;

.field public b:Z

.field public final synthetic c:Lbmh;

.field private final d:Lbmh;

.field private final e:I

.field private final f:Lbmi;

.field private g:Lbnw;


# direct methods
.method public constructor <init>(Lbmh;Lbmh;ILbnq;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0

    iput-object p1, p0, Lbly;->c:Lbmh;

    invoke-direct {p0}, Lbne;-><init>()V

    iput-object p2, p0, Lbly;->d:Lbmh;

    iput p3, p0, Lbly;->e:I

    iput-object p4, p0, Lbly;->a:Lbnq;

    new-instance p1, Lbmi;

    invoke-direct {p1, p5}, Lbmi;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object p1, p0, Lbly;->f:Lbmi;

    const/4 p1, 0x0

    iput-object p1, p0, Lbly;->g:Lbnw;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbly;->b:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lbly;->e:I

    return v0
.end method

.method public final b()Landroid/hardware/Camera$Parameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbly;->c:Lbmh;

    iget-object v0, v0, Lbmh;->b:Lbmf;

    return-object v0
.end method

.method public final d()Lbni;
    .locals 1

    iget-object v0, p0, Lbly;->d:Lbmh;

    return-object v0
.end method

.method public final e()Lbnp;
    .locals 1

    iget-object v0, p0, Lbly;->f:Lbmi;

    return-object v0
.end method

.method public final f()Lbnw;
    .locals 1

    iget-object v0, p0, Lbly;->g:Lbnw;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbly;->c:Lbmh;

    iget-object v0, v0, Lbmh;->b:Lbmf;

    invoke-virtual {v0}, Lbmf;->b()Lbnw;

    move-result-object v0

    iput-object v0, p0, Lbly;->g:Lbnw;

    :cond_0
    iget-object v0, p0, Lbly;->g:Lbnw;

    return-object v0
.end method

.method public final g()Lbnx;
    .locals 1

    iget-object v0, p0, Lbly;->c:Lbmh;

    iget-object v0, v0, Lbmh;->c:Lbnx;

    return-object v0
.end method

.method public final h()Lbny;
    .locals 1

    iget-object v0, p0, Lbly;->c:Lbmh;

    iget-object v0, v0, Lbmh;->d:Lbny;

    return-object v0
.end method

.method public final i([B)V
    .locals 0

    return-void
.end method

.method public final j(Landroid/os/Handler;Lbmy;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbly;->c:Lbmh;

    iget-object v0, v0, Lbmh;->d:Lbny;

    new-instance v1, Lblx;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lblx;-><init>(Lbly;Lbmy;Landroid/os/Handler;I)V

    invoke-virtual {v0, v1}, Lbny;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lbly;->d:Lbmh;

    iget-object p2, p2, Lbmh;->g:Lbnv;

    invoke-virtual {p2, p1}, Lbnv;->c(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final k(Z)V
    .locals 0

    iput-boolean p1, p0, Lbly;->b:Z

    return-void
.end method

.method public final l(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    invoke-virtual {p0}, Lbly;->f()Lbnw;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbnw;->g:Z

    invoke-super {p0, p1}, Lbne;->l(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public final m(Lbnw;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lbmh;->a:Lboc;

    const-string v0, "null parameters in applySettings()"

    invoke-static {p1, v0}, Lbod;->c(Lboc;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v0, p1, Lbmj;

    if-nez v0, :cond_1

    sget-object p1, Lbmh;->a:Lboc;

    const-string v0, "Provided settings not compatible with the backing framework API"

    invoke-static {p1, v0}, Lbod;->a(Lboc;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lbne;->s(Lbnw;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lbly;->g:Lbnw;

    :cond_2
    return-void
.end method

.method public final n()V
    .locals 2

    invoke-virtual {p0}, Lbly;->f()Lbnw;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbnw;->g:Z

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lbne;->l(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public final o(Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 0

    return-void
.end method

.method public final p(Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 0

    return-void
.end method

.method public final q(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Lbnc;Lbnc;)V
    .locals 9

    new-instance p3, Lbmg;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lbmg;-><init>(Lbly;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Landroid/os/Handler;Lbnc;[B[B[B[B)V

    :try_start_0
    iget-object p1, p0, Lbly;->c:Lbmh;

    iget-object p1, p1, Lbmh;->d:Lbny;

    new-instance p2, Lbem;

    const/4 p4, 0x3

    invoke-direct {p2, p0, p3, p4}, Lbem;-><init>(Lbly;Lbmg;I)V

    invoke-virtual {p1, p2}, Lbny;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lbly;->d:Lbmh;

    iget-object p2, p2, Lbmh;->g:Lbnv;

    invoke-virtual {p2, p1}, Lbnv;->c(Ljava/lang/RuntimeException;)V

    return-void
.end method
