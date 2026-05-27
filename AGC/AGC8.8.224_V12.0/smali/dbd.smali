.class public final Ldbd;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Loiw;Loiw;I)V
    .locals 0

    iput p3, p0, Ldbd;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbd;->a:Loiw;

    iput-object p2, p0, Ldbd;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[B)V
    .locals 0

    iput p3, p0, Ldbd;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbd;->b:Loiw;

    iput-object p2, p0, Ldbd;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[C)V
    .locals 0

    iput p3, p0, Ldbd;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbd;->b:Loiw;

    iput-object p2, p0, Ldbd;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[F)V
    .locals 0

    iput p3, p0, Ldbd;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbd;->b:Loiw;

    iput-object p2, p0, Ldbd;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[I)V
    .locals 0

    iput p3, p0, Ldbd;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbd;->b:Loiw;

    iput-object p2, p0, Ldbd;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[S)V
    .locals 0

    iput p3, p0, Ldbd;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbd;->b:Loiw;

    iput-object p2, p0, Ldbd;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[Z)V
    .locals 0

    iput p3, p0, Ldbd;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbd;->b:Loiw;

    iput-object p2, p0, Ldbd;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[[B)V
    .locals 0

    iput p3, p0, Ldbd;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbd;->b:Loiw;

    iput-object p2, p0, Ldbd;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[[C)V
    .locals 0

    iput p3, p0, Ldbd;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbd;->b:Loiw;

    iput-object p2, p0, Ldbd;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;)Ldbd;
    .locals 2

    new-instance v0, Ldbd;

    const/16 v1, 0x11

    invoke-direct {v0, p0, p1, v1}, Ldbd;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method

.method public static b(Loiw;Loiw;)Ldbd;
    .locals 3

    new-instance v0, Ldbd;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Ldbd;-><init>(Loiw;Loiw;I[[B)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Ldbd;->c:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldbd;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldrl;

    new-instance v1, Ldrm;

    invoke-direct {v1}, Ldrm;-><init>()V

    iget-object v2, p0, Ldbd;->a:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldrn;

    sget-object v3, Ldrl;->b:Ldrl;

    if-eq v0, v3, :cond_4

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Ldbd;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Ldbd;->a:Loiw;

    check-cast v1, Lest;

    invoke-virtual {v1}, Lest;->a()Lmqp;

    move-result-object v1

    sget-object v2, Ldhd;->a:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ldhd;->g:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->j(Ldhj;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast v1, Lmqt;

    iget-object v0, v1, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqy;

    goto :goto_0

    :cond_0
    new-instance v0, Ldqw;

    invoke-direct {v0}, Ldqw;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Ldbd;->a:Loiw;

    iget-object v1, p0, Ldbd;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkbc;

    const-string v2, "fb"

    invoke-static {v0, v1, v2}, Linb;->A(Loiw;Lkbc;Ljava/lang/String;)Lhip;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Ldbd;->a:Loiw;

    iget-object v1, p0, Ldbd;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ldnf;

    invoke-direct {v0}, Ldnf;-><init>()V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_1

    :cond_1
    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    :goto_1
    return-object v0

    :pswitch_3
    iget-object v0, p0, Ldbd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Ldbd;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkha;

    new-instance v1, Ldms;

    invoke-direct {v1, v0}, Ldms;-><init>(Ldhi;)V

    return-object v1

    :pswitch_4
    iget-object v0, p0, Ldbd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lbkc;

    iget-object v0, p0, Ldbd;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lgxi;

    new-instance v0, Ldmo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldmo;-><init>(Lbkc;Lgxi;[B[B[B)V

    return-object v0

    :pswitch_5
    iget-object v0, p0, Ldbd;->b:Loiw;

    iget-object v1, p0, Ldbd;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldho;->aY:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Ldlc;

    invoke-virtual {v0}, Ldlc;->a()Ldlb;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v0, Ldlh;

    invoke-direct {v0}, Ldlh;-><init>()V

    :goto_2
    return-object v0

    :pswitch_6
    iget-object v0, p0, Ldbd;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Ldbd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v2, Lbkc;

    invoke-direct {v2, v0, v1}, Lbkc;-><init>(Ldhi;[B)V

    return-object v2

    :pswitch_7
    iget-object v0, p0, Ldbd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Ldbd;->b:Loiw;

    check-cast v1, Logl;

    iget-object v1, v1, Logl;->a:Ljava/lang/Object;

    check-cast v1, Lmqp;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    new-instance v0, Ldle;

    invoke-direct {v0}, Ldle;-><init>()V

    return-object v0

    :pswitch_8
    iget-object v0, p0, Ldbd;->b:Loiw;

    invoke-static {v0}, Logj;->a(Loiw;)Logd;

    iget-object v0, p0, Ldbd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Ldle;

    invoke-direct {v1, v0}, Ldle;-><init>(Ldhi;)V

    return-object v1

    :pswitch_9
    iget-object v0, p0, Ldbd;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldbd;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    new-instance v2, Ldjm;

    invoke-direct {v2, v0, v1}, Ldjm;-><init>(Landroid/content/Context;Ldhi;)V

    return-object v2

    :pswitch_a
    iget-object v0, p0, Ldbd;->b:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldbd;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrz;

    new-instance v2, Ldne;

    invoke-direct {v2, v0, v1}, Ldne;-><init>(Landroid/content/Context;Lhrz;)V

    return-object v2

    :pswitch_b
    iget-object v0, p0, Ldbd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldfr;

    iget-object v1, p0, Ldbd;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    new-instance v2, Ldfy;

    invoke-direct {v2, v0, v1}, Ldfy;-><init>(Ldfr;Ldhi;)V

    return-object v2

    :pswitch_c
    iget-object v0, p0, Ldbd;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldbd;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljuh;

    new-instance v2, Ldne;

    invoke-direct {v2, v0, v1}, Ldne;-><init>(Landroid/content/Context;Ljuh;)V

    return-object v2

    :pswitch_d
    iget-object v0, p0, Ldbd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbc;

    iget-object v1, p0, Ldbd;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Lkbi;

    invoke-static {v1}, Lnsy;->s(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v1

    const-string v3, "cvkTracingExecutor"

    invoke-direct {v2, v1, v0, v3}, Lkbi;-><init>(Ljava/util/concurrent/Executor;Lkbc;Ljava/lang/String;)V

    return-object v2

    :pswitch_e
    iget-object v0, p0, Ldbd;->b:Loiw;

    check-cast v0, Lhcw;

    invoke-virtual {v0}, Lhcw;->a()Ljew;

    move-result-object v0

    iget-object v2, p0, Ldbd;->a:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Lhcv;

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v0, v2, v1}, Lhcv;-><init>(Lhsh;Ljava/util/concurrent/Executor;[B)V

    return-object v3

    :pswitch_f
    iget-object v0, p0, Ldbd;->a:Loiw;

    iget-object v1, p0, Ldbd;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkbc;

    const-string v2, "cvk"

    invoke-static {v0, v1, v2}, Linb;->A(Loiw;Lkbc;Ljava/lang/String;)Lhip;

    move-result-object v0

    return-object v0

    :pswitch_10
    iget-object v0, p0, Ldbd;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Ldbd;->b:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldne;

    new-instance v3, Llpu;

    invoke-direct {v3, v0, v2, v1}, Llpu;-><init>(Landroid/content/Context;Ldne;[B)V

    return-object v3

    :pswitch_11
    iget-object v0, p0, Ldbd;->b:Loiw;

    iget-object v1, p0, Ldbd;->a:Loiw;

    new-instance v2, Lhsr;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, Lhsr;-><init>(Loiw;Loiw;I)V

    return-object v2

    :pswitch_12
    iget-object v0, p0, Ldbd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Ldbd;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgzn;

    new-instance v2, Ldac;

    sget-object v3, Lgzd;->w:Lgzu;

    invoke-interface {v1, v3}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v1

    invoke-direct {v2, v1}, Ldac;-><init>(Ljwb;)V

    sget-object v1, Lcdm;->f:Lcdm;

    invoke-static {}, Lger;->o()Lgeq;

    move-result-object v3

    sget-object v4, Lgec;->j:Lgec;

    invoke-virtual {v3, v4}, Lgeq;->r(Lgec;)V

    iput-object v2, v3, Lgeq;->a:Ljwb;

    invoke-virtual {v3, v1}, Lgeq;->s(Ljava/util/function/Predicate;)V

    sget-object v1, Ldhz;->c:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->k(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ldab;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Ldab;-><init>(Ljwb;I)V

    invoke-virtual {v3, v0}, Lgeq;->q(Ljava/util/function/BiConsumer;)V

    const v0, 0x7f1401aa

    invoke-virtual {v3, v0}, Lgeq;->h(I)V

    const v0, 0x7f1401b0

    invoke-virtual {v3, v0}, Lgeq;->c(I)V

    sget-object v0, Lgej;->q:Lgej;

    const v1, 0x7f080348

    const v2, 0x7f1400d2

    const v4, 0x7f1401ad

    invoke-virtual {v3, v0, v1, v2, v4}, Lgeq;->b(Lgej;III)V

    sget-object v0, Lgej;->p:Lgej;

    const v1, 0x7f080349

    const v2, 0x7f1400d4

    const v4, 0x7f1401af

    invoke-virtual {v3, v0, v1, v2, v4}, Lgeq;->b(Lgej;III)V

    goto :goto_3

    :cond_3
    const v0, 0x7f14021f

    invoke-virtual {v3, v0}, Lgeq;->h(I)V

    const v0, 0x7f140225

    invoke-virtual {v3, v0}, Lgeq;->c(I)V

    sget-object v0, Lgej;->q:Lgej;

    const v1, 0x7f080217

    const v2, 0x7f140221

    const v4, 0x7f140220

    invoke-virtual {v3, v0, v1, v2, v4}, Lgeq;->b(Lgej;III)V

    sget-object v0, Lgej;->p:Lgej;

    const v1, 0x7f080218

    const v2, 0x7f140224

    const v4, 0x7f140223

    invoke-virtual {v3, v0, v1, v2, v4}, Lgeq;->b(Lgej;III)V

    :goto_3
    invoke-virtual {v3}, Lgeq;->a()Lger;

    move-result-object v0

    return-object v0

    :pswitch_13
    invoke-static {}, Lims;->a()Limx;

    move-result-object v2

    iget-object v0, p0, Ldbd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkpo;

    iget-object v0, p0, Ldbd;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkbc;

    new-instance v0, Lcvm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcvm;-><init>(Limx;Lkpo;Lkbc;[B[B)V

    return-object v0

    :cond_4
    move-object v1, v2

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
