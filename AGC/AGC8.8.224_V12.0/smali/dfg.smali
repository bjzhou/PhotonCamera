.class public final synthetic Ldfg;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Logd;Ljvs;I[B[B[B[B)V
    .locals 0

    iput p4, p0, Ldfg;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfg;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldfg;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldfg;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Logd;Llie;I[B[B[B[B[B)V
    .locals 0

    iput p4, p0, Ldfg;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfg;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldfg;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldfg;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Loiw;Ljuh;I[B[B[B[B)V
    .locals 0

    iput p4, p0, Ldfg;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfg;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldfg;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldfg;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcdi;Lbkb;Loiw;I[B[B[B[B)V
    .locals 0

    iput p4, p0, Ldfg;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfg;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldfg;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldfg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgzm;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Logd;I[B[B[B[B)V
    .locals 0

    iput p4, p0, Ldfg;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfg;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldfg;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldfg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljuh;Lezx;Logd;I)V
    .locals 0

    iput p4, p0, Ldfg;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfg;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldfg;->c:Ljava/lang/Object;

    iput-object p3, p0, Ldfg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljuh;Lfak;Logd;I)V
    .locals 0

    iput p4, p0, Ldfg;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfg;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldfg;->c:Ljava/lang/Object;

    iput-object p3, p0, Ldfg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkbc;Ljava/lang/String;Loiw;I)V
    .locals 0

    iput p4, p0, Ldfg;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfg;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldfg;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldfg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Loiw;Lgxi;Lcdi;I)V
    .locals 0

    iput p4, p0, Ldfg;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfg;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldfg;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldfg;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Loiw;Ljuh;Loiw;I)V
    .locals 0

    iput p4, p0, Ldfg;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfg;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldfg;->c:Ljava/lang/Object;

    iput-object p3, p0, Ldfg;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Ldfg;->d:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldfg;->b:Ljava/lang/Object;

    iget-object v1, p0, Ldfg;->c:Ljava/lang/Object;

    iget-object v2, p0, Ldfg;->a:Ljava/lang/Object;

    invoke-interface {v2}, Logd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfaz;

    check-cast v1, Lfak;

    check-cast v0, Ljuh;

    invoke-static {v0, v1, v2}, Lfcr;->e(Ljuh;Lfak;Lfaz;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ldfg;->c:Ljava/lang/Object;

    iget-object v1, p0, Ldfg;->b:Ljava/lang/Object;

    iget-object v2, p0, Ldfg;->a:Ljava/lang/Object;

    invoke-static {}, Lhdz;->a()Llie;

    move-result-object v3

    const-string v4, "SelfieAngleAdvice"

    iput-object v4, v3, Llie;->c:Ljava/lang/Object;

    sget-object v4, Lika;->b:Lika;

    invoke-static {v4}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v4

    invoke-virtual {v3, v4}, Llie;->h(Lmwn;)V

    sget-object v4, Lklv;->b:Lklv;

    invoke-static {v4}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v4

    invoke-virtual {v3, v4}, Llie;->g(Lmwn;)V

    sget-object v4, Lgzd;->q:Lgzr;

    invoke-interface {v0, v4}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Ljwa;->a(Ljava/lang/Object;)Ljwb;

    move-result-object v0

    invoke-virtual {v3, v0}, Llie;->i(Ljvs;)V

    invoke-virtual {v3}, Llie;->f()Lhdz;

    move-result-object v0

    invoke-interface {v2}, Logd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhdy;

    check-cast v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v1, v2, v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k(Lhdy;Lhdz;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Ldfg;->c:Ljava/lang/Object;

    iget-object v1, p0, Ldfg;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "get:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ldfg;->a:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    const-string v3, "run:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :pswitch_2
    iget-object v0, p0, Ldfg;->a:Ljava/lang/Object;

    iget-object v2, p0, Ldfg;->b:Ljava/lang/Object;

    iget-object v3, p0, Ldfg;->c:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfeq;

    check-cast v2, Lgxi;

    invoke-virtual {v2, v0}, Lgxi;->a(Lgxm;)V

    iget-object v4, v0, Lfeq;->c:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lfeq;->c:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhfu;

    iget-object v5, v0, Lfeq;->e:Lhfv;

    invoke-interface {v4, v5}, Lhfu;->a(Lhfv;)V

    iget-object v4, v0, Lfeq;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    check-cast v3, Lcdi;

    invoke-virtual {v3}, Lcdi;->i()Ljuf;

    move-result-object v1

    new-instance v3, Leid;

    const/16 v4, 0xb

    invoke-direct {v3, v2, v0, v4}, Leid;-><init>(Lgxi;Lfeq;I)V

    invoke-virtual {v1, v3}, Ljuf;->d(Lkad;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Ldfg;->c:Ljava/lang/Object;

    iget-object v1, p0, Ldfg;->b:Ljava/lang/Object;

    iget-object v2, p0, Ldfg;->a:Ljava/lang/Object;

    check-cast v0, Lcdi;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    check-cast v2, Lfei;

    invoke-virtual {v2}, Lfei;->a()Lbkb;

    move-result-object v2

    check-cast v1, Lbkb;

    invoke-virtual {v1, v2}, Lbkb;->Z(Lbkb;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Ldfg;->b:Ljava/lang/Object;

    iget-object v1, p0, Ldfg;->c:Ljava/lang/Object;

    iget-object v2, p0, Ldfg;->a:Ljava/lang/Object;

    new-instance v3, Lekf;

    check-cast v1, Lezx;

    const/4 v4, 0x7

    invoke-direct {v3, v1, v2, v4}, Lekf;-><init>(Lezx;Logd;I)V

    check-cast v0, Ljuh;

    invoke-virtual {v0, v3}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Ldfg;->c:Ljava/lang/Object;

    iget-object v1, p0, Ldfg;->a:Ljava/lang/Object;

    iget-object v2, p0, Ldfg;->b:Ljava/lang/Object;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhdy;

    check-cast v2, Llie;

    invoke-virtual {v2}, Llie;->f()Lhdz;

    move-result-object v2

    check-cast v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v0, v1, v2}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k(Lhdy;Lhdz;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Ldfg;->b:Ljava/lang/Object;

    iget-object v1, p0, Ldfg;->c:Ljava/lang/Object;

    iget-object v2, p0, Ldfg;->a:Ljava/lang/Object;

    check-cast v0, Ldqo;

    invoke-virtual {v0}, Ldqo;->a()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ldgd;

    const/4 v4, 0x6

    invoke-direct {v3, v2, v0, v4}, Ldgd;-><init>(Loiw;Lmqp;I)V

    check-cast v1, Ljuh;

    invoke-virtual {v1, v3}, Ljuh;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :pswitch_7
    iget-object v0, p0, Ldfg;->c:Ljava/lang/Object;

    iget-object v1, p0, Ldfg;->a:Ljava/lang/Object;

    iget-object v2, p0, Ldfg;->b:Ljava/lang/Object;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhdy;

    invoke-static {}, Lhdz;->a()Llie;

    move-result-object v4

    const-string v5, "CameraLockIndicator"

    iput-object v5, v4, Llie;->c:Ljava/lang/Object;

    sget-object v5, Lika;->b:Lika;

    sget-object v6, Lika;->m:Lika;

    sget-object v7, Lika;->l:Lika;

    invoke-static {v5, v6, v7}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v5

    invoke-virtual {v4, v5}, Llie;->h(Lmwn;)V

    sget-object v5, Lklv;->b:Lklv;

    invoke-static {v5}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v5

    invoke-virtual {v4, v5}, Llie;->g(Lmwn;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Llie;->j(Z)V

    invoke-virtual {v4, v2}, Llie;->i(Ljvs;)V

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhds;

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, v4, Llie;->e:Ljava/lang/Object;

    invoke-virtual {v4}, Llie;->f()Lhdz;

    move-result-object v1

    check-cast v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v0, v3, v1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k(Lhdy;Lhdz;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Ldfg;->c:Ljava/lang/Object;

    iget-object v1, p0, Ldfg;->a:Ljava/lang/Object;

    iget-object v2, p0, Ldfg;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhdy;

    invoke-static {}, Lhdz;->a()Llie;

    move-result-object v3

    const-string v4, "CameraVisionKit"

    iput-object v4, v3, Llie;->c:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, v3, Llie;->a:I

    sget-object v4, Lklv;->b:Lklv;

    invoke-static {v4}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v4

    invoke-virtual {v3, v4}, Llie;->g(Lmwn;)V

    sget-object v4, Lika;->b:Lika;

    invoke-static {v4}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v4

    invoke-virtual {v3, v4}, Llie;->h(Lmwn;)V

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    iput-object v2, v3, Llie;->f:Ljava/lang/Object;

    invoke-virtual {v3}, Llie;->f()Lhdz;

    move-result-object v2

    check-cast v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v0, v1, v2}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k(Lhdy;Lhdz;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Ldfg;->c:Ljava/lang/Object;

    iget-object v2, p0, Ldfg;->a:Ljava/lang/Object;

    iget-object v3, p0, Ldfg;->b:Ljava/lang/Object;

    invoke-interface {v2}, Logd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhdy;

    invoke-static {}, Lhdz;->a()Llie;

    move-result-object v4

    const-string v5, "SelfieAngleAdvice"

    iput-object v5, v4, Llie;->c:Ljava/lang/Object;

    sget-object v5, Lika;->b:Lika;

    invoke-static {v5}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v5

    invoke-virtual {v4, v5}, Llie;->h(Lmwn;)V

    sget-object v5, Lklv;->a:Lklv;

    invoke-static {v5}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v5

    invoke-virtual {v4, v5}, Llie;->g(Lmwn;)V

    invoke-virtual {v4, v1}, Llie;->j(Z)V

    invoke-virtual {v4, v3}, Llie;->i(Ljvs;)V

    invoke-virtual {v4}, Llie;->f()Lhdz;

    move-result-object v1

    check-cast v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v0, v2, v1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k(Lhdy;Lhdz;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
