.class public final Lieb;
.super Ljava/lang/Object;

# interfaces
.implements Lfaz;
.implements Lfax;
.implements Lfay;


# instance fields
.field public final a:Landroid/content/Context;

.field final b:Landroid/os/Handler;

.field public c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

.field public d:Landroid/view/ViewStub;

.field public e:Lell;

.field public f:Lidy;

.field public g:Landroid/content/Intent;

.field public h:Z

.field public i:Z

.field public final j:Landroid/content/BroadcastReceiver;

.field private final k:Lgto;

.field private final l:Lgtn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgto;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lieb;->h:Z

    iput-boolean v0, p0, Lieb;->i:Z

    new-instance v0, Lidz;

    invoke-direct {v0, p0}, Lidz;-><init>(Lieb;)V

    iput-object v0, p0, Lieb;->l:Lgtn;

    new-instance v0, Liea;

    invoke-direct {v0, p0}, Liea;-><init>(Lieb;)V

    iput-object v0, p0, Lieb;->j:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lieb;->a:Landroid/content/Context;

    iput-object p2, p0, Lieb;->k:Lgto;

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lieb;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "level"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x64

    mul-int/lit8 v0, v0, 0x64

    const-string v3, "scale"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lieb;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    if-eqz v1, :cond_1

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int p1, v0

    if-ltz p1, :cond_0

    if-gt p1, v2, :cond_0

    iget-object v0, v1, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object p1, v1, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->b:Landroid/widget/TextView;

    const-string v0, "--"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Lieb;->b:Landroid/os/Handler;

    new-instance v1, Lgcm;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lgcm;-><init>(Lieb;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final bO()V
    .locals 2

    iget-object v0, p0, Lieb;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->a()V

    :cond_0
    iget-object v0, p0, Lieb;->k:Lgto;

    iget-object v1, p0, Lieb;->l:Lgtn;

    invoke-virtual {v0, v1}, Lgto;->a(Lgtn;)V

    iget-object v0, p0, Lieb;->k:Lgto;

    iget-boolean v1, v0, Lgto;->a:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lgto;->b:Z

    iput-boolean v1, p0, Lieb;->i:Z

    iget v0, v0, Lgto;->c:I

    invoke-virtual {p0, v0}, Lieb;->b(I)V

    iget-object v0, p0, Lieb;->k:Lgto;

    invoke-virtual {v0}, Lgto;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lieb;->k:Lgto;

    iget v0, v0, Lgto;->d:F

    invoke-virtual {p0, v0}, Lieb;->c(F)V

    :cond_1
    iget-object v0, p0, Lieb;->k:Lgto;

    invoke-virtual {v0}, Lgto;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lieb;->k:Lgto;

    iget v0, v0, Lgto;->f:F

    invoke-virtual {p0, v0}, Lieb;->f(F)V

    :cond_2
    return-void
.end method

.method public final c(F)V
    .locals 3

    iget-object v0, p0, Lieb;->b:Landroid/os/Handler;

    new-instance v1, Leug;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, v2}, Leug;-><init>(Lieb;FI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lieb;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lieb;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lieb;->e:Lell;

    iget-object v1, p0, Lieb;->f:Lidy;

    invoke-interface {v0, v1}, Lell;->g(Lelk;)V

    iget-object v0, p0, Lieb;->a:Landroid/content/Context;

    iget-object v1, p0, Lieb;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lieb;->h:Z

    :cond_0
    iget-object v0, p0, Lieb;->k:Lgto;

    iget-object v1, p0, Lieb;->l:Lgtn;

    invoke-virtual {v0, v1}, Lgto;->b(Lgtn;)V

    iget-object v0, p0, Lieb;->e:Lell;

    sget-object v1, Lelm;->c:Lelm;

    invoke-interface {v0, v1}, Lell;->k(Lelm;)V

    return-void
.end method

.method public final f(F)V
    .locals 3

    iget-object v0, p0, Lieb;->b:Landroid/os/Handler;

    new-instance v1, Leug;

    const/4 v2, 0x6

    invoke-direct {v1, p0, p1, v2}, Leug;-><init>(Lieb;FI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
