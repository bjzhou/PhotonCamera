.class public final Lhrw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Runnable;I)V
    .locals 0

    iput p3, p0, Lhrw;->c:I

    iput-object p1, p0, Lhrw;->a:Landroid/view/View;

    iput-object p2, p0, Lhrw;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldaj;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, Lhrw;->c:I

    iput-object p1, p0, Lhrw;->b:Ljava/lang/Object;

    iput-object p2, p0, Lhrw;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Libv;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, Lhrw;->c:I

    iput-object p1, p0, Lhrw;->b:Ljava/lang/Object;

    iput-object p2, p0, Lhrw;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 8

    iget v0, p0, Lhrw;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhrw;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iget-object v3, p0, Lhrw;->a:Landroid/view/View;

    new-instance v7, Lgwr;

    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lgwr;-><init>(Lhrw;Landroid/view/View;Ljuf;I[B)V

    invoke-static {}, Ljvd;->n()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v2, Lgss;

    const/16 v3, 0x13

    invoke-direct {v2, v1, v7, v3}, Lgss;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lhrw;->b:Ljava/lang/Object;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    check-cast v1, Libv;

    iput-object v0, v1, Libv;->n:Lmqp;

    return-void

    :pswitch_0
    iget-object v0, p0, Lhrw;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v0, Lifx;

    iget-object v1, p0, Lhrw;->b:Ljava/lang/Object;

    check-cast v1, Ldaj;

    iget-object v1, v1, Ldaj;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140567

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lifx;-><init>(Ljava/lang/String;)V

    sget-object v1, Liko;->a:Liko;

    iget-object v1, p0, Lhrw;->b:Ljava/lang/Object;

    check-cast v1, Ldaj;

    iget-object v1, v1, Ldaj;->m:Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;

    iget-object v1, v1, Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;->d:Liko;

    invoke-virtual {v1}, Liko;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_1

    iget-object v1, p0, Lhrw;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lifx;->q(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lhrw;->a:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lifx;->h(Landroid/view/View;I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lhrw;->a:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lifx;->j(Landroid/view/View;I)V

    :goto_0
    iget-object v1, p0, Lhrw;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lify;->i()V

    invoke-interface {v0}, Lifz;->k()V

    new-instance v3, Lczl;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lczl;-><init>(Lhrw;I[B)V

    iget-object v4, p0, Lhrw;->b:Ljava/lang/Object;

    check-cast v4, Ldaj;

    iget-object v4, v4, Ldaj;->e:Ljuh;

    invoke-interface {v0, v3, v4}, Liga;->g(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v3, Lczl;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4, v5}, Lczl;-><init>(Lhrw;I[B)V

    iget-object v4, p0, Lhrw;->b:Ljava/lang/Object;

    check-cast v4, Ldaj;

    iget-object v4, v4, Ldaj;->e:Ljuh;

    invoke-interface {v0, v3, v4}, Liga;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/16 v3, 0x3e8

    iput v3, v0, Lifx;->d:I

    const/16 v3, 0x1388

    iput v3, v0, Lifx;->e:I

    const/16 v3, 0xb

    iput v3, v0, Lifx;->m:I

    iget-object v3, p0, Lhrw;->b:Ljava/lang/Object;

    check-cast v3, Ldaj;

    iget-object v3, v3, Ldaj;->c:Lell;

    iput-object v3, v0, Lifx;->i:Lell;

    iput-boolean v2, v0, Lifx;->f:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lifx;->g:Z

    invoke-interface {v0}, Liga;->l()V

    invoke-interface {v0}, Liga;->o()V

    invoke-interface {v0}, Liga;->a()Lkad;

    move-result-object v0

    check-cast v1, Ldaj;

    iput-object v0, v1, Ldaj;->u:Lkad;

    return-void

    :pswitch_3
    iget-object v0, p0, Lhrw;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lhrw;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
