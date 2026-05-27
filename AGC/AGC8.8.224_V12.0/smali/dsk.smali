.class public final synthetic Ldsk;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lebl;I)V
    .locals 0

    iput p2, p0, Ldsk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lecb;I)V
    .locals 0

    iput p2, p0, Ldsk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leio;I)V
    .locals 0

    iput p2, p0, Ldsk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lenq;I[B)V
    .locals 0

    iput p2, p0, Ldsk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lenq;I[C)V
    .locals 0

    iput p2, p0, Ldsk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lepb;I)V
    .locals 0

    iput p2, p0, Ldsk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lepg;I)V
    .locals 0

    iput p2, p0, Ldsk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lepi;I)V
    .locals 0

    iput p2, p0, Ldsk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lepx;I)V
    .locals 0

    iput p2, p0, Ldsk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lert;I)V
    .locals 0

    iput p2, p0, Ldsk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Letp;I)V
    .locals 0

    iput p2, p0, Ldsk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leuc;I)V
    .locals 0

    iput p2, p0, Ldsk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leuj;I)V
    .locals 0

    iput p2, p0, Ldsk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgkr;I[B[B[B[B[B)V
    .locals 0

    iput p2, p0, Ldsk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    iput p2, p0, Ldsk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljvk;I)V
    .locals 0

    iput p2, p0, Ldsk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljvs;I)V
    .locals 0

    iput p2, p0, Ldsk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsk;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Ldsk;->b:I

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Lenq;

    iget-object v0, v0, Lenq;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast v0, Leuj;

    invoke-virtual {v0, p1}, Leuj;->w(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Leqg;

    check-cast v0, Leuj;

    iget-object v1, v0, Leuj;->l:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Leuj;->y:Lgto;

    iget-boolean v1, v1, Lgto;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Leqg;->a:Leqg;

    invoke-virtual {p1}, Leqg;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    packed-switch v1, :pswitch_data_1

    sget-object v0, Leuj;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "No education for option %s"

    const/16 v2, 0x7a7

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :pswitch_1
    iget-object v1, v0, Leuj;->O:Ljew;

    const-string v3, "lasagna_edu_action"

    invoke-virtual {v1, v3}, Ljew;->X(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Leuj;->l:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepz;

    invoke-interface {v0, p1, v2}, Lepz;->b(Leqg;I)V

    return-void

    :pswitch_2
    iget-object v1, v0, Leuj;->O:Ljew;

    const-string v3, "lasagna_edu_landscape"

    invoke-virtual {v1, v3}, Ljew;->X(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Leuj;->l:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepz;

    invoke-interface {v0, p1, v2}, Lepz;->b(Leqg;I)V

    return-void

    :cond_1
    :goto_0
    return-void

    :pswitch_3
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Lenq;

    iget-object v0, v0, Lenq;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast v0, Leuc;

    invoke-virtual {v0, p1}, Leuc;->y(Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Lgyu;

    sget-object v1, Lgyu;->a:Lgyu;

    invoke-virtual {v1, p1}, Lgyu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Leuc;

    iget-object v2, v1, Leuc;->s:Liff;

    invoke-interface {v2, p1}, Liff;->ai(Lgyu;)V

    iget-boolean v2, v1, Leuc;->H:Z

    if-eqz v2, :cond_4

    iget-object v1, v1, Leuc;->s:Liff;

    invoke-interface {v1}, Liff;->g()V

    goto :goto_1

    :cond_2
    move-object v1, v0

    check-cast v1, Leuc;

    iget-boolean v2, v1, Leuc;->H:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Leuc;->s:Liff;

    invoke-interface {v2}, Liff;->j()V

    :cond_3
    iget-object v1, v1, Leuc;->s:Liff;

    invoke-interface {v1, p1}, Liff;->ai(Lgyu;)V

    :cond_4
    :goto_1
    check-cast v0, Leuc;

    iget-object v1, v0, Leuc;->q:Ldhi;

    sget-object v2, Ldho;->ci:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Leuc;->D:Lhxx;

    invoke-virtual {v1}, Lhxx;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Leuc;->b:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Switch Hotshot due to timer changed to %s"

    const/16 v3, 0x794

    invoke-static {v1, v2, p1, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    sget-object v1, Lgyu;->a:Lgyu;

    invoke-virtual {p1, v1}, Lgyu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v0, Leuc;->D:Lhxx;

    invoke-virtual {p1}, Lhxx;->e()V

    return-void

    :cond_5
    iget-object p1, v0, Leuc;->D:Lhxx;

    invoke-virtual {p1}, Lhxx;->f()V

    :cond_6
    return-void

    :pswitch_5
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    check-cast v0, Letp;

    iget-object p1, v0, Letp;->aq:Lgrm;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lgrm;->b:J

    iget-object v0, p1, Lgrm;->a:Lgrr;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lgrn;->a()V

    invoke-virtual {p1}, Lgrm;->e()V

    invoke-virtual {p1}, Lgrm;->f()V

    return-void

    :cond_7
    check-cast v0, Letp;

    iget-object p1, v0, Letp;->aq:Lgrm;

    invoke-virtual {p1}, Lgrm;->c()V

    return-void

    :pswitch_6
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast v0, Letp;

    invoke-virtual {v0, p1}, Letp;->B(Z)V

    return-void

    :pswitch_7
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Lgyu;

    check-cast v0, Letp;

    iget-object v2, v0, Letp;->i:Liff;

    invoke-interface {v2, p1}, Liff;->ai(Lgyu;)V

    iget-object v2, v0, Letp;->ac:Ldhi;

    sget-object v3, Ldho;->ci:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Letp;->G:Lhxx;

    invoke-virtual {v2}, Lhxx;->h()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Letp;->b:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    const-string v3, "Switch Hotshot due to timer changed to %s"

    const/16 v4, 0x777

    invoke-static {v2, v3, p1, v4}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    sget-object v2, Lgyu;->a:Lgyu;

    invoke-virtual {p1, v2}, Lgyu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, v0, Letp;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Lerm;

    invoke-direct {v2, v0, v1}, Lerm;-><init>(Letp;I)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    iget-object p1, v0, Letp;->G:Lhxx;

    invoke-virtual {p1}, Lhxx;->f()V

    :cond_9
    return-void

    :pswitch_8
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Lhxi;

    check-cast v0, Lert;

    iget-object p1, v0, Lert;->m:Ldhi;

    sget-object v0, Ldho;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->e()V

    return-void

    :pswitch_9
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Ldbw;

    iget-object p1, p1, Ldbw;->c:Lfuz;

    invoke-virtual {p1}, Lklw;->k()Lklv;

    move-result-object v1

    sget-object v4, Lklv;->b:Lklv;

    if-ne v1, v4, :cond_a

    move-object v1, v0

    check-cast v1, Lert;

    iget-object v1, v1, Lert;->b:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->resetCameraSwitch(Z)V

    goto :goto_2

    :cond_a
    move-object v1, v0

    check-cast v1, Lert;

    iget-object v1, v1, Lert;->b:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->resetCameraSwitch(Z)V

    :goto_2
    check-cast v0, Lert;

    iget-object v1, v0, Lert;->u:Lgeh;

    invoke-interface {v1, p1}, Lgeh;->J(Lfuz;)V

    iget-object v1, v0, Lert;->O:Litm;

    check-cast v1, Lisi;

    iget-object v4, v1, Lisi;->F:Lklv;

    invoke-interface {p1}, Lkli;->k()Lklv;

    move-result-object v5

    if-ne v4, v5, :cond_d

    iget v4, v1, Lisi;->aa:F

    invoke-interface {p1}, Lkli;->b()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_d

    iget-boolean v4, v1, Lisi;->R:Z

    invoke-interface {p1}, Lkli;->M()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p1}, Lkli;->D()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    goto :goto_3

    :cond_b
    const/4 v5, 0x0

    :goto_3
    if-eq v4, v5, :cond_c

    const/4 v4, 0x1

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    goto :goto_4

    :cond_d
    const/4 v4, 0x1

    :goto_4
    iget-object v5, v1, Lisi;->F:Lklv;

    invoke-interface {p1}, Lkli;->k()Lklv;

    move-result-object v6

    if-eq v5, v6, :cond_e

    iget-object v5, v1, Lisi;->P:Lirs;

    iput-boolean v3, v5, Lirs;->e:Z

    :cond_e
    invoke-interface {p1}, Lkli;->k()Lklv;

    move-result-object v5

    iput-object v5, v1, Lisi;->F:Lklv;

    invoke-interface {p1}, Lkli;->M()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {p1}, Lkli;->D()Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    goto :goto_5

    :cond_f
    const/4 v5, 0x0

    :goto_5
    iput-boolean v5, v1, Lisi;->R:Z

    if-eqz v4, :cond_13

    iget-object v4, v1, Lisi;->d:Ldhi;

    sget-object v5, Ldho;->aj:Ldhj;

    invoke-interface {v4, v5}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v1, Lisi;->P:Lirs;

    invoke-virtual {v4}, Lirs;->f()V

    invoke-virtual {v1}, Lisi;->n()V

    :cond_10
    iget-object v4, v1, Lisi;->o:Ljvs;

    invoke-interface {v4}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lika;->g:Lika;

    if-eq v4, v5, :cond_11

    invoke-interface {p1}, Lkli;->c()F

    move-result v4

    invoke-virtual {v1, v4}, Lisi;->F(F)V

    :cond_11
    iget-object v4, v1, Lisi;->d:Ldhi;

    sget-object v5, Ldho;->as:Ldhj;

    invoke-interface {v4, v5}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v1, v1, Lisi;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6

    :cond_12
    invoke-virtual {v1}, Lisi;->y()V

    invoke-virtual {v1, v3}, Lisi;->B(Z)V

    :cond_13
    :goto_6
    iget-object v1, v0, Lert;->S:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v0, v0, Lert;->S:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckq;

    invoke-interface {v0, p1}, Lckq;->F(Lfuz;)V

    :cond_14
    return-void

    :pswitch_a
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Lfmg;

    iget-boolean p1, p1, Lfmg;->c:Z

    if-eqz p1, :cond_15

    check-cast v0, Lert;

    iget-object p1, v0, Lert;->o:Lcha;

    invoke-static {p1}, Llkj;->C(Ljava/lang/Object;)V

    sget-object v0, Lika;->a:Lika;

    invoke-interface {p1}, Lcha;->n()V

    :cond_15
    return-void

    :pswitch_b
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    monitor-enter v0

    :try_start_0
    move-object v1, v0

    check-cast v1, Lepx;

    iput-object p1, v1, Lepx;->d:Ljava/lang/Float;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_c
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgyv;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    check-cast v0, Lepi;

    iget-object v2, v0, Lepi;->i:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/googlex/gcam/StaticMetadata;

    iget v2, v3, Lgyv;->d:I

    if-nez p1, :cond_16

    new-instance p1, Lcom/google/googlex/gcam/StaticMetadata;

    invoke-direct {p1}, Lcom/google/googlex/gcam/StaticMetadata;-><init>()V

    :cond_16
    iget-object v3, v0, Lepi;->c:Lepl;

    new-instance v4, Lpi;

    invoke-direct {v4, v0, p1, v2, v1}, Lpi;-><init>(Lepi;Lcom/google/googlex/gcam/StaticMetadata;II)V

    invoke-virtual {v3, v4}, Lepl;->f(Ljava/lang/Runnable;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Leqg;

    check-cast v0, Lepg;

    iget-object v1, v0, Lepg;->c:Liab;

    iget-object v1, v1, Liab;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liac;

    iget-object v3, v2, Liac;->a:Ljava/lang/Object;

    check-cast v3, Leqg;

    invoke-virtual {v3, p1}, Leqg;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_7

    :cond_18
    const/4 v2, 0x0

    :goto_7
    if-nez v2, :cond_19

    invoke-virtual {v0}, Lepg;->d()V

    return-void

    :cond_19
    iget-object p1, v0, Lepg;->b:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->b()Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b(Liac;)I

    move-result p1

    iget-object v0, v0, Lepg;->b:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->b()Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->k(I)V

    return-void

    :pswitch_e
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Leqg;

    check-cast v0, Lepb;

    iput-object p1, v0, Lepb;->q:Leqg;

    return-void

    :pswitch_f
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    return-void

    :pswitch_10
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    check-cast v0, Ljvk;

    invoke-virtual {v0, v4}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_11
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1b

    check-cast v0, Leio;

    iget-object p1, v0, Leio;->K:Lbkc;

    invoke-static {p1}, Lcdg;->q(Lbkc;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_8

    :cond_1a
    invoke-virtual {v0}, Leio;->f()V

    iget-object p1, v0, Leio;->K:Lbkc;

    invoke-virtual {p1}, Lbkc;->e()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, v0, Leio;->K:Lbkc;

    invoke-virtual {p1}, Lbkc;->e()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcdg;->f(Landroid/content/Intent;)V

    return-void

    :cond_1b
    :goto_8
    return-void

    :pswitch_12
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Lift;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p1, Lift;->c:Ljava/lang/Object;

    check-cast v2, [Landroid/hardware/camera2/params/Face;

    array-length v4, v2

    :goto_9
    if-ge v3, v4, :cond_1d

    aget-object v5, v2, v3

    move-object v6, v0

    check-cast v6, Lecb;

    iget-object v6, v6, Lecb;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_1c

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_a

    :cond_1c
    const-wide/16 v6, 0x0

    :goto_a
    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v8, p1, Lift;->a:J

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1d
    check-cast v0, Lecb;

    iput-object v1, v0, Lecb;->b:Ljava/util/HashMap;

    return-void

    :pswitch_13
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Lebl;

    iget-object v1, v0, Lebl;->c:Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lebl;->a:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-boolean v1, v0, Lebl;->d:Z

    if-nez v1, :cond_1e

    iget-object v0, v0, Lebl;->a:Ljwb;

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_1e
    return-void

    :cond_1f
    iget-object p1, v0, Lebl;->a:Ljwb;

    invoke-interface {p1, v4}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_14
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Lika;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :pswitch_15
    iget-object v0, p0, Ldsk;->a:Ljava/lang/Object;

    check-cast p1, Ldbw;

    check-cast v0, Lgkr;

    iget-object v0, v0, Lgkr;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ldbw;->a()Lklv;

    move-result-object p1

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
