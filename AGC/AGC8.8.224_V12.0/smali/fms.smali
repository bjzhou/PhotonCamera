.class final Lfms;
.super Lcom/google/android/apps/camera/bottombar/BottomBarListener;


# instance fields
.field final synthetic a:Lfng;


# direct methods
.method public constructor <init>(Lfng;)V
    .locals 0

    iput-object p1, p0, Lfms;->a:Lfng;

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelButtonPressed()V
    .locals 1

    iget-object v0, p0, Lfms;->a:Lfng;

    invoke-virtual {v0}, Lfng;->A()V

    return-void
.end method

.method public final onRetakeButtonPressed()V
    .locals 3

    iget-object v0, p0, Lfms;->a:Lfng;

    iget v1, v0, Lfng;->N:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lfng;->N:I

    iget v0, v0, Lfng;->p:I

    if-nez v0, :cond_0

    sget-object v0, Lfng;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Can\'t undo capture, no images captured."

    const/16 v2, 0x942

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    sget-object v0, Lewr;->a:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->CanUndo()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfms;->a:Lfng;

    iget-object v0, v0, Lfng;->i:Lewd;

    iget-object v0, v0, Lewd;->b:Lbne;

    invoke-virtual {v0}, Lbne;->g()Lbnx;

    move-result-object v0

    invoke-virtual {v0}, Lbnx;->a()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lfms;->a:Lfng;

    iget v1, v0, Lfng;->p:I

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lfng;->p:I

    iget-object v0, v0, Lfng;->q:Lewz;

    invoke-virtual {v0}, Lewz;->d()V

    iget-object v0, p0, Lfms;->a:Lfng;

    iget-object v0, v0, Lfng;->B:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v0, p0, Lfms;->a:Lfng;

    iget v1, v0, Lfng;->p:I

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lfng;->x()V

    :cond_2
    return-void

    :cond_3
    sget-object v0, Lfng;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Can\'t undo capture, LightCycle not ready to undo."

    const/16 v2, 0x941

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void
.end method
