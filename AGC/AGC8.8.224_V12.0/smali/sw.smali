.class public final Lsw;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Looz;

.field private final c:Loom;


# direct methods
.method public constructor <init>(Ljava/lang/String;Looz;)V
    .locals 0

    iput-object p1, p0, Lsw;->a:Ljava/lang/String;

    iput-object p2, p0, Lsw;->b:Looz;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    const/4 p1, 0x0

    invoke-static {p1}, Lolp;->h(Z)Loom;

    move-result-object p1

    iput-object p1, p0, Lsw;->c:Loom;

    return-void
.end method


# virtual methods
.method public final onCameraAccessPrioritiesChanged()V
    .locals 2

    iget-object v0, p0, Lsw;->c:Loom;

    invoke-virtual {v0}, Loom;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsw;->b:Looz;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Loku;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onCameraAvailable(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lsw;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsw;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lrc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is now available."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lsw;->c:Loom;

    invoke-virtual {p1}, Loom;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsw;->b:Looz;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Loku;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
