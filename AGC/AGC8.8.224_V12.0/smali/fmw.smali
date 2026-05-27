.class public final Lfmw;
.super Ljava/lang/Object;

# interfaces
.implements Lbnf;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lewu;I)V
    .locals 0

    iput p2, p0, Lfmw;->b:I

    iput-object p1, p0, Lfmw;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfng;I)V
    .locals 0

    iput p2, p0, Lfmw;->b:I

    iput-object p1, p0, Lfmw;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget v0, p0, Lfmw;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfmw;->a:Ljava/lang/Object;

    check-cast v0, Lewu;

    iget-object v0, v0, Lewu;->a:Leww;

    iput-boolean v1, v0, Leww;->s:Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lfmw;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    iget-object v2, v0, Lfng;->r:Leww;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iput-boolean v1, v0, Lfng;->k:Z

    iput-boolean v1, v2, Leww;->s:Z

    iget-object v2, v2, Leww;->b:Lewz;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lewz;->D:Z

    iget-object v0, v0, Lfng;->h:Lewp;

    invoke-virtual {v0}, Lewp;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lfmw;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    iget-object v0, v0, Lfng;->h:Lewp;

    invoke-virtual {v0}, Lewp;->start()V

    goto :goto_0

    :cond_1
    sget-object v2, Lfng;->b:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    const-string v4, "aligner has already been started! State=%s"

    const/16 v5, 0x944

    invoke-static {v2, v4, v0, v5}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :goto_0
    iget-object v0, p0, Lfmw;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    invoke-virtual {v0}, Lfng;->w()V

    iget-object v0, v0, Lfng;->n:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->h()V

    :try_start_0
    iget-object v0, p0, Lfmw;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lfng;

    iget-object v2, v2, Lfng;->r:Leww;

    invoke-virtual {v2}, Leww;->b()F

    move-result v2

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    :goto_1
    check-cast v0, Lfng;

    iput-boolean v3, v0, Lfng;->G:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lfmw;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    iget-object v2, v0, Lfng;->H:Landroid/os/Handler;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iget-object v2, v0, Lfng;->H:Landroid/os/Handler;

    iget v3, v0, Lfng;->w:I

    iget v0, v0, Lfng;->x:I

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lfmw;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    iget-object v2, v0, Lfng;->r:Leww;

    iget-object v0, v0, Lfng;->I:Ldzx;

    iput-object v0, v2, Leww;->t:Ldzx;

    :cond_3
    iget-object v0, p0, Lfmw;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    invoke-virtual {v0, v1}, Lfng;->F(Z)V

    iget-object v0, p0, Lfmw;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    iget-object v0, v0, Lfng;->f:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setSideButtonsClickable(Z)V

    return-void

    :catch_0
    move-exception v0

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
