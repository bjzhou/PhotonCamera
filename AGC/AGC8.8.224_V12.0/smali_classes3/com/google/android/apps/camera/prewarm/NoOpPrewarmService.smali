.class public Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;
.super Landroid/service/media/CameraPrewarmService;


# static fields
.field public static final a:Lnak;


# instance fields
.field public b:Lfbz;

.field public c:Ljux;

.field public d:Lhjm;

.field public e:Lgxb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/prewarm/NoOpPrewarmService"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->a:Lnak;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/media/CameraPrewarmService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCooldown(Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->c:Ljux;

    invoke-virtual {p1}, Ljux;->a()V

    iget-object p1, p0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->b:Lfbz;

    invoke-interface {p1}, Lfbz;->Q()V

    return-void
.end method

.method public final onCreate()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lemj;

    const-class v1, Lgpe;

    invoke-interface {v0, v1}, Lemj;->e(Ljava/lang/Class;)Leml;

    move-result-object v0

    check-cast v0, Lgpe;

    invoke-interface {v0, p0}, Lgpe;->o(Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;)V

    invoke-super {p0}, Landroid/service/media/CameraPrewarmService;->onCreate()V

    iget-object v0, p0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->d:Lhjm;

    invoke-virtual {v0}, Lhjm;->a()V

    return-void
.end method

.method public final onPrewarm()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->c:Ljux;

    new-instance v1, Lgot;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lgot;-><init>(Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;I)V

    invoke-virtual {v0, v1}, Ljux;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->b:Lfbz;

    invoke-interface {v0}, Lfbz;->H()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lchv;

    invoke-interface {p1}, Lchv;->b()Ldfa;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ldfa;->j(I)V

    iget-object p1, p0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->e:Lgxb;

    invoke-virtual {p1}, Lgxb;->n()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string p3, "KeepAlive is off. Prewarm ran, but the service won\'t stick."

    const/16 v0, 0xc5c

    invoke-static {p1, p3, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return p2

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
