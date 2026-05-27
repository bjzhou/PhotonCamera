.class public final Lefc;
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

    iput p3, p0, Lefc;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefc;->a:Loiw;

    iput-object p2, p0, Lefc;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[B)V
    .locals 0

    iput p3, p0, Lefc;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefc;->b:Loiw;

    iput-object p2, p0, Lefc;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[C)V
    .locals 0

    iput p3, p0, Lefc;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefc;->b:Loiw;

    iput-object p2, p0, Lefc;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[I)V
    .locals 0

    iput p3, p0, Lefc;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefc;->b:Loiw;

    iput-object p2, p0, Lefc;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[S)V
    .locals 0

    iput p3, p0, Lefc;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefc;->b:Loiw;

    iput-object p2, p0, Lefc;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[Z)V
    .locals 0

    iput p3, p0, Lefc;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefc;->b:Loiw;

    iput-object p2, p0, Lefc;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;)Lefc;
    .locals 2

    new-instance v0, Lefc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lefc;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method

.method public static b(Loiw;Loiw;)Lefc;
    .locals 2

    new-instance v0, Lefc;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lefc;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method

.method public static c(Loiw;Loiw;)Lefc;
    .locals 2

    new-instance v0, Lefc;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lefc;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method

.method public static d(Loiw;Loiw;)Lefc;
    .locals 2

    new-instance v0, Lefc;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lefc;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method

.method public static e(Loiw;Loiw;)Lefc;
    .locals 2

    new-instance v0, Lefc;

    const/4 v1, 0x7

    invoke-direct {v0, p0, p1, v1}, Lefc;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method

.method public static f(Loiw;Loiw;)Lefc;
    .locals 2

    new-instance v0, Lefc;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p1, v1}, Lefc;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method

.method public static g(Loiw;Loiw;)Lefc;
    .locals 3

    new-instance v0, Lefc;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lefc;-><init>(Loiw;Loiw;I[B)V

    return-object v0
.end method

.method public static h(Loiw;Loiw;)Lefc;
    .locals 3

    new-instance v0, Lefc;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lefc;-><init>(Loiw;Loiw;I[C)V

    return-object v0
.end method

.method public static i(Loiw;Loiw;)Lefc;
    .locals 2

    new-instance v0, Lefc;

    const/16 v1, 0xb

    invoke-direct {v0, p0, p1, v1}, Lefc;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lefc;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lefc;->b:Loiw;

    iget-object v1, p0, Lefc;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldhx;->e:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebu;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto/16 :goto_10

    :pswitch_0
    iget-object v0, p0, Lefc;->b:Loiw;

    check-cast v0, Lelw;

    invoke-virtual {v0}, Lelw;->a()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lefc;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lend;

    new-instance v3, Lhiq;

    invoke-direct {v3, v0, v1, v2}, Lhiq;-><init>(Landroid/app/Application;Lend;I)V

    return-object v3

    :pswitch_1
    iget-object v0, p0, Lefc;->b:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lefc;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lgxb;

    new-instance v0, Lgxb;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lgxb;-><init>(Landroid/content/Context;Lgxb;[B[B[B)V

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lefc;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lefc;->b:Loiw;

    check-cast v1, Lemi;

    invoke-virtual {v1}, Lemi;->a()Landroid/os/UserManager;

    move-result-object v1

    new-instance v2, Lgxb;

    invoke-direct {v2, v0, v1}, Lgxb;-><init>(Ldhi;Landroid/os/UserManager;)V

    return-object v2

    :pswitch_3
    iget-object v0, p0, Lefc;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lefc;->b:Loiw;

    invoke-static {v1}, Logj;->a(Loiw;)Logd;

    move-result-object v1

    sget-object v2, Ldho;->aH:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ldho;->aI:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhip;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcdk;->f:Lcdk;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lefc;->a:Loiw;

    check-cast v0, Lelo;

    invoke-virtual {v0}, Lelo;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lgxb;->q()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lefc;->b:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldhi;

    new-instance v3, Lenc;

    sget-object v4, Ldho;->l:Ldhk;

    invoke-interface {v2, v4}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-direct {v3, v0, v1, v4, v5}, Lenc;-><init>(Landroid/app/Activity;Landroid/os/Handler;J)V

    return-object v3

    :pswitch_5
    iget-object v0, p0, Lefc;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lefc;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lejr;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    new-instance v2, Lekh;

    iget-object v1, v1, Lejr;->b:Lkli;

    invoke-interface {v1}, Lkli;->f()I

    move-result v1

    invoke-direct {v2, v0, v1}, Lekh;-><init>(Landroid/hardware/SensorManager;I)V

    return-object v2

    :pswitch_6
    iget-object v0, p0, Lefc;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekg;

    iget-object v1, p0, Lefc;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leik;

    new-instance v2, Lehp;

    invoke-static {v0, v1}, Lmvv;->m(Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v0

    invoke-direct {v2, v0}, Lehp;-><init>(Lmvv;)V

    return-object v2

    :pswitch_7
    iget-object v0, p0, Lefc;->a:Loiw;

    check-cast v0, Ljzo;

    invoke-virtual {v0}, Ljzo;->a()Lklj;

    move-result-object v0

    iget-object v1, p0, Lefc;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    new-instance v2, Lejr;

    invoke-direct {v2, v0, v1}, Lejr;-><init>(Lklj;Ldhi;)V

    return-object v2

    :pswitch_8
    iget-object v0, p0, Lefc;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebe;

    iget-object v1, p0, Lefc;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lecy;

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v2

    invoke-virtual {v0, v1}, Lebe;->f(Lecy;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Liuw;->s:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_2

    invoke-static {v0, v3}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmwl;->g(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v2}, Lmwl;->f()Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lefc;->b:Loiw;

    iget-object v1, p0, Lefc;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Liuz;->h:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v2, :cond_4

    sget-object v2, Ldhq;->R:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Ldhi;->c()V

    const v1, 0x3f99999a    # 1.2f

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ldhi;->c()V

    const/high16 v1, 0x3fc00000    # 1.5f

    :goto_2
    sget-object v2, Liuz;->h:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    new-instance v3, Legs;

    invoke-direct {v3, v1}, Legs;-><init>(F)V

    invoke-static {v0, v3}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    invoke-static {v2, v0}, Lfwt;->f(Landroid/hardware/camera2/CaptureRequest$Key;Ljvs;)Ljvs;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-static {}, Lfwt;->e()Lfwn;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_a
    iget-object v0, p0, Lefc;->b:Loiw;

    iget-object v3, p0, Lefc;->a:Loiw;

    check-cast v3, Lfwp;

    invoke-virtual {v3}, Lfwp;->a()Lkli;

    move-result-object v3

    sget-object v4, Liux;->d:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    :try_start_0
    sget-object v4, Liux;->d:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v3, v4}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-object v3, v5

    :goto_4
    if-eqz v3, :cond_6

    :goto_5
    array-length v4, v3

    if-ge v1, v4, :cond_6

    aget v4, v3, v1

    if-ne v4, v2, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    if-eqz v5, :cond_7

    sget-object v1, Liux;->e:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    invoke-static {v1, v0}, Lfwt;->f(Landroid/hardware/camera2/CaptureRequest$Key;Ljvs;)Ljvs;

    move-result-object v0

    goto :goto_7

    :cond_7
    invoke-static {}, Lfwt;->e()Lfwn;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_b
    iget-object v0, p0, Lefc;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lefc;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljvs;

    sget-object v2, Ldhq;->Y:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Liux;->j:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_8

    sget-object v0, Liux;->j:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Lfwt;->f(Landroid/hardware/camera2/CaptureRequest$Key;Ljvs;)Ljvs;

    move-result-object v0

    goto :goto_8

    :cond_8
    invoke-static {}, Lfwt;->e()Lfwn;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lefc;->a:Loiw;

    iget-object v1, p0, Lefc;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    check-cast v0, Lfxo;

    invoke-virtual {v0}, Lfxo;->a()Lfxn;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_9

    :cond_9
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_9
    return-object v0

    :pswitch_d
    iget-object v0, p0, Lefc;->a:Loiw;

    iget-object v1, p0, Lefc;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldhg;->n:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefy;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_a

    :cond_a
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_a
    return-object v0

    :pswitch_e
    iget-object v0, p0, Lefc;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lefc;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkbc;

    new-instance v2, Lkbi;

    invoke-static {v0}, Lnsy;->s(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v3, "FusionZoomProcess"

    invoke-direct {v2, v0, v1, v3}, Lkbi;-><init>(Ljava/util/concurrent/Executor;Lkbc;Ljava/lang/String;)V

    return-object v2

    :pswitch_f
    iget-object v0, p0, Lefc;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    iget-object v3, p0, Lefc;->b:Loiw;

    check-cast v3, Legk;

    invoke-virtual {v3}, Legk;->b()Ljvs;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljvs;

    aput-object v0, v4, v1

    aput-object v3, v4, v2

    invoke-static {v4}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v0

    sget-object v1, Ldeo;->j:Ldeo;

    invoke-static {v0, v1}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lefc;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lefc;->b:Loiw;

    check-cast v1, Ldmn;

    invoke-virtual {v1}, Ldmn;->a()Ldne;

    :try_start_1
    sget-object v1, Ldhq;->a:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    sget-object v2, Lcpy;->q:Lcpy;

    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->orElseThrow()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhp;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move-exception v1

    sget-object v2, Lefo;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    const-string v3, "In getFlagValue caught %s"

    const/16 v4, 0x58c

    invoke-static {v2, v3, v1, v4}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    sget-object v1, Ldhp;->a:Ldhp;

    :goto_b
    sget-object v2, Ldhp;->a:Ldhp;

    if-eq v1, v2, :cond_b

    invoke-static {}, Lemq;->g()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lefn;

    invoke-direct {v1, v0}, Lefn;-><init>(Ldhi;)V

    goto :goto_c

    :cond_b
    new-instance v1, Lefp;

    invoke-direct {v1}, Lefp;-><init>()V

    :goto_c
    return-object v1

    :pswitch_11
    iget-object v0, p0, Lefc;->a:Loiw;

    iget-object v1, p0, Lefc;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldhq;->a:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebu;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto :goto_d

    :cond_c
    sget-object v0, Lmza;->a:Lmza;

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_12
    iget-object v0, p0, Lefc;->a:Loiw;

    check-cast v0, Legl;

    invoke-virtual {v0}, Legl;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lefc;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    if-eqz v0, :cond_d

    sget-object v0, Liuz;->n:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_d

    sget-object v0, Ldhg;->k:Ldhj;

    invoke-interface {v1, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Liuz;->n:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v3}, Lfwt;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lfwn;

    move-result-object v0

    goto :goto_e

    :cond_d
    invoke-static {}, Lfwt;->e()Lfwn;

    move-result-object v0

    :goto_e
    return-object v0

    :pswitch_13
    iget-object v0, p0, Lefc;->a:Loiw;

    check-cast v0, Legl;

    invoke-virtual {v0}, Legl;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lefc;->b:Loiw;

    if-eqz v0, :cond_e

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfg;

    goto :goto_f

    :cond_e
    sget-object v0, Lkel;->a:Lkfg;

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_f
    sget-object v0, Lmza;->a:Lmza;

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

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
