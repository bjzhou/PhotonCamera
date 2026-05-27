.class final Lghw;
.super Lkfg;


# instance fields
.field final synthetic a:Lgxl;


# direct methods
.method public constructor <init>(Lgxl;)V
    .locals 0

    iput-object p1, p0, Lghw;->a:Lgxl;

    invoke-direct {p0}, Lkfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 2

    iget-object v0, p0, Lghw;->a:Lgxl;

    invoke-interface {v0}, Lgxl;->h()Lgxy;

    move-result-object v0

    iget v0, v0, Lgxy;->a:I

    invoke-interface {p1}, Lkou;->b()J

    sget-object v0, Liuw;->h:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    sget-object v0, Liuw;->i:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    sget-object v0, Liuw;->j:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    iget-object v0, p0, Lghw;->a:Lgxl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lgxl;->N(Lkou;Z)V

    return-void
.end method
