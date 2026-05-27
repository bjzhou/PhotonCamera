.class public final synthetic Leta;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Lmqp;I[B[B[B[B)V
    .locals 0

    iput p3, p0, Leta;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leta;->b:Ljava/lang/Object;

    iput-object p2, p0, Leta;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcmd;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B[B[B[B)V
    .locals 0

    iput p3, p0, Leta;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leta;->b:Ljava/lang/Object;

    iput-object p2, p0, Leta;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgkr;Lfux;I[B[B[B)V
    .locals 0

    iput p3, p0, Leta;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leta;->a:Ljava/lang/Object;

    iput-object p2, p0, Leta;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Logd;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B[B[B[B)V
    .locals 0

    iput p3, p0, Leta;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leta;->a:Ljava/lang/Object;

    iput-object p2, p0, Leta;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Loiw;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B[B[B[B)V
    .locals 0

    iput p3, p0, Leta;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leta;->a:Ljava/lang/Object;

    iput-object p2, p0, Leta;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Leta;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Leta;->a:Ljava/lang/Object;

    iget-object v1, p0, Leta;->b:Ljava/lang/Object;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhmp;

    invoke-static {}, Lhdz;->a()Llie;

    move-result-object v2

    const-string v3, "MacroFocus"

    iput-object v3, v2, Llie;->c:Ljava/lang/Object;

    sget-object v3, Lika;->b:Lika;

    sget-object v4, Lika;->m:Lika;

    sget-object v5, Lika;->c:Lika;

    invoke-static {v3, v4, v5}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    invoke-virtual {v2, v3}, Llie;->h(Lmwn;)V

    sget-object v3, Lklv;->b:Lklv;

    invoke-static {v3}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v3

    invoke-virtual {v2, v3}, Llie;->g(Lmwn;)V

    invoke-virtual {v2}, Llie;->f()Lhdz;

    move-result-object v2

    check-cast v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v1, v0, v2}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k(Lhdy;Lhdz;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Leta;->a:Ljava/lang/Object;

    iget-object v1, p0, Leta;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhls;

    invoke-static {}, Lhdz;->a()Llie;

    move-result-object v2

    const-string v3, "StorageWarning"

    iput-object v3, v2, Llie;->c:Ljava/lang/Object;

    sget-object v3, Lika;->b:Lika;

    sget-object v4, Lika;->g:Lika;

    sget-object v5, Lika;->m:Lika;

    sget-object v6, Lika;->c:Lika;

    invoke-static {v3, v4, v5, v6}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    invoke-virtual {v2, v3}, Llie;->h(Lmwn;)V

    sget-object v3, Lklv;->b:Lklv;

    sget-object v4, Lklv;->a:Lklv;

    invoke-static {v3, v4}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    invoke-virtual {v2, v3}, Llie;->g(Lmwn;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Llie;->j(Z)V

    invoke-virtual {v2, v3}, Llie;->k(Z)V

    invoke-virtual {v2}, Llie;->f()Lhdz;

    move-result-object v2

    check-cast v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v1, v0, v2}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k(Lhdy;Lhdz;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Leta;->b:Ljava/lang/Object;

    iget-object v1, p0, Leta;->a:Ljava/lang/Object;

    check-cast v1, Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhdy;

    invoke-static {}, Lhdz;->a()Llie;

    move-result-object v3

    sget-object v4, Lika;->b:Lika;

    sget-object v5, Lika;->g:Lika;

    sget-object v6, Lika;->l:Lika;

    sget-object v7, Lika;->m:Lika;

    invoke-static {v4, v5, v6, v7}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    invoke-virtual {v3, v4}, Llie;->h(Lmwn;)V

    sget-object v4, Lklv;->b:Lklv;

    sget-object v5, Lklv;->a:Lklv;

    invoke-static {v4, v5}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    invoke-virtual {v3, v4}, Llie;->g(Lmwn;)V

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhds;

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, v3, Llie;->e:Ljava/lang/Object;

    invoke-virtual {v3}, Llie;->f()Lhdz;

    move-result-object v1

    check-cast v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v0, v2, v1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k(Lhdy;Lhdz;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Leta;->a:Ljava/lang/Object;

    iget-object v1, p0, Leta;->b:Ljava/lang/Object;

    check-cast v1, Lfux;

    check-cast v0, Lgkr;

    invoke-virtual {v0, v1}, Lgkr;->a(Lfux;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Leta;->b:Ljava/lang/Object;

    iget-object v1, p0, Leta;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcmd;

    iget-object v3, v2, Lcmd;->e:Ljuh;

    new-instance v4, Lclr;

    const/4 v5, 0x5

    invoke-direct {v4, v2, v5}, Lclr;-><init>(Lcmd;I)V

    invoke-virtual {v3, v4}, Ljuh;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lhdz;->a()Llie;

    move-result-object v2

    const-string v3, "BeholderExampleGenerator"

    iput-object v3, v2, Llie;->c:Ljava/lang/Object;

    sget-object v3, Lika;->b:Lika;

    sget-object v4, Lika;->g:Lika;

    sget-object v5, Lika;->m:Lika;

    sget-object v6, Lika;->d:Lika;

    invoke-static {v3, v4, v5, v6}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    invoke-virtual {v2, v3}, Llie;->h(Lmwn;)V

    sget-object v3, Lklv;->b:Lklv;

    sget-object v4, Lklv;->a:Lklv;

    invoke-static {v3, v4}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    invoke-virtual {v2, v3}, Llie;->g(Lmwn;)V

    invoke-virtual {v2}, Llie;->f()Lhdz;

    move-result-object v2

    check-cast v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v1, v0, v2}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k(Lhdy;Lhdz;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Leta;->a:Ljava/lang/Object;

    iget-object v1, p0, Leta;->b:Ljava/lang/Object;

    check-cast v1, Lfux;

    check-cast v0, Lgkr;

    invoke-virtual {v0, v1}, Lgkr;->a(Lfux;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
