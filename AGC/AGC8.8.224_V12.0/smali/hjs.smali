.class public final Lhjs;
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

    iput p3, p0, Lhjs;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhjs;->a:Loiw;

    iput-object p2, p0, Lhjs;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[B)V
    .locals 0

    iput p3, p0, Lhjs;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhjs;->b:Loiw;

    iput-object p2, p0, Lhjs;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[C)V
    .locals 0

    iput p3, p0, Lhjs;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhjs;->b:Loiw;

    iput-object p2, p0, Lhjs;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[F)V
    .locals 0

    iput p3, p0, Lhjs;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhjs;->b:Loiw;

    iput-object p2, p0, Lhjs;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[I)V
    .locals 0

    iput p3, p0, Lhjs;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhjs;->b:Loiw;

    iput-object p2, p0, Lhjs;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[S)V
    .locals 0

    iput p3, p0, Lhjs;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhjs;->b:Loiw;

    iput-object p2, p0, Lhjs;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[Z)V
    .locals 0

    iput p3, p0, Lhjs;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhjs;->b:Loiw;

    iput-object p2, p0, Lhjs;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[[B)V
    .locals 0

    iput p3, p0, Lhjs;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhjs;->b:Loiw;

    iput-object p2, p0, Lhjs;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;)Lhjs;
    .locals 2

    new-instance v0, Lhjs;

    const/16 v1, 0xa

    invoke-direct {v0, p0, p1, v1}, Lhjs;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method

.method public static b(Loiw;Loiw;)Lhjs;
    .locals 2

    new-instance v0, Lhjs;

    const/16 v1, 0xb

    invoke-direct {v0, p0, p1, v1}, Lhjs;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method

.method public static c(Loiw;Loiw;)Lhjs;
    .locals 2

    new-instance v0, Lhjs;

    const/16 v1, 0x10

    invoke-direct {v0, p0, p1, v1}, Lhjs;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lhjs;->c:I

    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhjs;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lhjs;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkbc;

    new-instance v2, Lkbi;

    invoke-static {v0}, Lnsy;->s(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v3, "IndicatorUpdate"

    invoke-direct {v2, v0, v1, v3}, Lkbi;-><init>(Ljava/util/concurrent/Executor;Lkbc;Ljava/lang/String;)V

    return-object v2

    :pswitch_0
    iget-object v0, p0, Lhjs;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlb;

    iget-object v2, p0, Lhjs;->b:Loiw;

    check-cast v2, Ldjw;

    invoke-virtual {v2}, Ldjw;->a()Lkap;

    move-result-object v2

    const-string v3, "CptrIndDskCsh"

    invoke-interface {v2, v3}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object v2

    new-instance v3, Lhqn;

    invoke-direct {v3, v2, v0, v1}, Lhqn;-><init>(Lkaq;Lhlb;I)V

    invoke-static {v3}, Linb;->z(Ljava/lang/Runnable;)Lhip;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lhjs;->b:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lhjs;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v2

    new-instance v3, Lhsp;

    invoke-direct {v3, v0, v2}, Lhsp;-><init>(Landroid/content/Context;Lnph;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v2

    :pswitch_2
    iget-object v0, p0, Lhjs;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lhjs;->a:Loiw;

    invoke-static {v1}, Logj;->a(Loiw;)Logd;

    move-result-object v1

    sget-object v2, Ldgv;->b:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ldgv;->f:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ldil;->a:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldga;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lmza;->a:Lmza;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lhjs;->a:Loiw;

    iget-object v1, p0, Lhjs;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldhq;->ao:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnd;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_1
    return-object v0

    :pswitch_4
    iget-object v0, p0, Lhjs;->a:Loiw;

    check-cast v0, Lemg;

    invoke-virtual {v0}, Lemg;->a()Landroid/os/PowerManager;

    move-result-object v0

    iget-object v1, p0, Lhjs;->b:Loiw;

    check-cast v1, Lcjz;

    invoke-virtual {v1}, Lcjz;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lhmx;

    invoke-direct {v2, v0, v1}, Lhmx;-><init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;)V

    return-object v2

    :pswitch_5
    iget-object v0, p0, Lhjs;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzm;

    iget-object v1, p0, Lhjs;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldho;->O:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    new-instance v1, Ljvk;

    sget-object v2, Lgzd;->n:Lgzr;

    invoke-interface {v0, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lhmu;->a(Z)Lhmu;

    move-result-object v0

    invoke-direct {v1, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_2

    :pswitch_6
    new-instance v0, Ljvk;

    sget-object v1, Lhmu;->c:Lhmu;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_7
    new-instance v0, Ljvk;

    sget-object v1, Lhmu;->b:Lhmu;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_8
    new-instance v0, Ljvk;

    sget-object v1, Lhmu;->a:Lhmu;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    :goto_2
    return-object v0

    :pswitch_9
    iget-object v0, p0, Lhjs;->b:Loiw;

    iget-object v1, p0, Lhjs;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldho;->cc:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_3

    :cond_2
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_3
    return-object v0

    :pswitch_a
    iget-object v0, p0, Lhjs;->a:Loiw;

    iget-object v1, p0, Lhjs;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldho;->cc:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_4

    :cond_3
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_4
    return-object v0

    :pswitch_b
    iget-object v0, p0, Lhjs;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    iget-object v1, p0, Lhjs;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Lhmo;->a:Lnak;

    sget-object v2, Ldho;->cc:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Liva;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v1, :cond_4

    sget-object v0, Lhmo;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Camera framework flag for Macro Focus was not found."

    const/16 v2, 0xe9f

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-static {}, Lfwt;->e()Lfwn;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    goto :goto_5

    :cond_4
    sget-object v1, Liva;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lfnq;->s:Lfnq;

    invoke-static {v0, v2}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    invoke-static {v1, v0}, Lfwt;->f(Landroid/hardware/camera2/CaptureRequest$Key;Ljvs;)Ljvs;

    move-result-object v0

    goto :goto_5

    :cond_5
    sget-object v0, Liva;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_6

    sget-object v0, Liva;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lhmo;->b:Ljava/lang/Byte;

    invoke-static {v0, v1}, Lfwt;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lfwn;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    goto :goto_5

    :cond_6
    invoke-static {}, Lfwt;->e()Lfwn;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lhjs;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lhjs;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrz;

    new-instance v2, Ligo;

    invoke-direct {v2, v0, v1}, Ligo;-><init>(Landroid/content/Context;Lhrz;)V

    return-object v2

    :pswitch_d
    iget-object v0, p0, Lhjs;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lhjs;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhlw;

    new-instance v2, Lhlu;

    invoke-direct {v2, v1, v0}, Lhlu;-><init>(Lhlw;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v2

    :pswitch_e
    iget-object v0, p0, Lhjs;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object v2, p0, Lhjs;->a:Loiw;

    new-instance v0, Leta;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Leta;-><init>(Loiw;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B[B[B[B)V

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    return-object v0

    :pswitch_f
    iget-object v0, p0, Lhjs;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkoe;

    iget-object v1, p0, Lhjs;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    new-instance v2, Llpg;

    invoke-direct {v2, v0, v1}, Llpg;-><init>(Lkoe;Ldhi;)V

    return-object v2

    :pswitch_10
    iget-object v0, p0, Lhjs;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/stats/Instrumentation;

    iget-object v1, p0, Lhjs;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkrf;

    new-instance v2, Lhjp;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3}, Lhjp;-><init>(Lcom/google/android/apps/camera/stats/Instrumentation;Lkrf;I)V

    return-object v2

    :pswitch_11
    iget-object v0, p0, Lhjs;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/stats/Instrumentation;

    iget-object v1, p0, Lhjs;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkrf;

    new-instance v2, Lhjp;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lhjp;-><init>(Lcom/google/android/apps/camera/stats/Instrumentation;Lkrf;I)V

    return-object v2

    :pswitch_12
    iget-object v0, p0, Lhjs;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/stats/Instrumentation;

    iget-object v1, p0, Lhjs;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkrf;

    new-instance v2, Lhjp;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v1, v3}, Lhjp;-><init>(Lcom/google/android/apps/camera/stats/Instrumentation;Lkrf;I)V

    return-object v2

    :pswitch_13
    iget-object v0, p0, Lhjs;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/stats/Instrumentation;

    iget-object v1, p0, Lhjs;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkrf;

    new-instance v2, Lhjp;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lhjp;-><init>(Lcom/google/android/apps/camera/stats/Instrumentation;Lkrf;I)V

    return-object v2

    :pswitch_14
    iget-object v0, p0, Lhjs;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/stats/Instrumentation;

    iget-object v2, p0, Lhjs;->b:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkrf;

    new-instance v3, Lhjp;

    invoke-direct {v3, v0, v2, v1}, Lhjp;-><init>(Lcom/google/android/apps/camera/stats/Instrumentation;Lkrf;I)V

    return-object v3

    :pswitch_15
    iget-object v0, p0, Lhjs;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/stats/Instrumentation;

    iget-object v1, p0, Lhjs;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkrf;

    new-instance v1, Lhja;

    invoke-direct {v1, v0}, Lhja;-><init>(Lcom/google/android/apps/camera/stats/Instrumentation;)V

    return-object v1

    :pswitch_16
    iget-object v0, p0, Lhjs;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/stats/Instrumentation;

    iget-object v1, p0, Lhjs;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkrf;

    new-instance v2, Lhjp;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v1, v3}, Lhjp;-><init>(Lcom/google/android/apps/camera/stats/Instrumentation;Lkrf;I)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
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
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
