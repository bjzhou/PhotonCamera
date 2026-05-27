.class public final Lfjt;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lfjt;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfjt;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Lfjt;
    .locals 2

    new-instance v0, Lfjt;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lfjt;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static b(Loiw;)Lfjt;
    .locals 2

    new-instance v0, Lfjt;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lfjt;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static c(Loiw;)Lfjt;
    .locals 2

    new-instance v0, Lfjt;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lfjt;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static d(Loiw;)Lfjt;
    .locals 2

    new-instance v0, Lfjt;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lfjt;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static e(Loiw;)Lfjt;
    .locals 2

    new-instance v0, Lfjt;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lfjt;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static f(Loiw;)Lfjt;
    .locals 2

    new-instance v0, Lfjt;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lfjt;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static g(Loiw;)Lfjt;
    .locals 2

    new-instance v0, Lfjt;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lfjt;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static h(Loiw;)Lfjt;
    .locals 2

    new-instance v0, Lfjt;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lfjt;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static i(Loiw;)Lfjt;
    .locals 2

    new-instance v0, Lfjt;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lfjt;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static j(Loiw;)Lfjt;
    .locals 2

    new-instance v0, Lfjt;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Lfjt;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static k(Loiw;)Lfjt;
    .locals 2

    new-instance v0, Lfjt;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Lfjt;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static l(Loiw;)Lfjt;
    .locals 2

    new-instance v0, Lfjt;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Lfjt;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static m(Loiw;)Lfjt;
    .locals 2

    new-instance v0, Lfjt;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lfjt;-><init>(Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lfjt;->b:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const-wide/16 v3, 0x5

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfjt;->a:Loiw;

    check-cast v0, Lfwp;

    invoke-virtual {v0}, Lfwp;->a()Lkli;

    move-result-object v0

    invoke-static {v0}, Lgky;->a(Lkli;)Lmvv;

    move-result-object v0

    invoke-static {v0}, Lfwt;->c(Ljava/util/List;)Lfwn;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lfjt;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1, v0}, Lfwt;->f(Landroid/hardware/camera2/CaptureRequest$Key;Ljvs;)Ljvs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lfjt;->a:Loiw;

    check-cast v0, Lfvv;

    invoke-virtual {v0}, Lfvv;->b()Lbkb;

    move-result-object v0

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    invoke-static {v0}, Lfwt;->c(Ljava/util/List;)Lfwn;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lfjt;->a:Loiw;

    check-cast v0, Lfvq;

    invoke-virtual {v0}, Lfvq;->b()Lbkb;

    move-result-object v0

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    invoke-static {v0}, Lfwt;->c(Ljava/util/List;)Lfwn;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lfjt;->a:Loiw;

    check-cast v0, Lfvp;

    invoke-virtual {v0}, Lfvp;->a()Lfvo;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1, v0}, Lfwt;->f(Landroid/hardware/camera2/CaptureRequest$Key;Ljvs;)Ljvs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lfjt;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgxb;

    iget-object v0, v0, Lgxb;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lfjt;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqx;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, v0, Ldqx;->d:Ljava/lang/Object;

    invoke-static {v1, v0}, Lfwt;->f(Landroid/hardware/camera2/CaptureRequest$Key;Ljvs;)Ljvs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lfjt;->a:Loiw;

    check-cast v0, Lftn;

    invoke-virtual {v0}, Lftn;->a()Lftm;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1, v0}, Lfwt;->f(Landroid/hardware/camera2/CaptureRequest$Key;Ljvs;)Ljvs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lfjt;->a:Loiw;

    check-cast v0, Lccs;

    invoke-virtual {v0}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Lftu;

    invoke-direct {v1, v0}, Lftu;-><init>(Z)V

    return-object v1

    :pswitch_8
    iget-object v0, p0, Lfjt;->a:Loiw;

    check-cast v0, Lfwp;

    invoke-virtual {v0}, Lfwp;->a()Lkli;

    move-result-object v0

    new-instance v1, Loxq;

    invoke-interface {v0}, Lkli;->f()I

    move-result v0

    invoke-direct {v1, v0}, Loxq;-><init>(I)V

    return-object v1

    :pswitch_9
    iget-object v0, p0, Lfjt;->a:Loiw;

    check-cast v0, Ljzo;

    invoke-virtual {v0}, Ljzo;->a()Lklj;

    move-result-object v0

    new-instance v1, Lklx;

    invoke-direct {v1, v0}, Lklx;-><init>(Lklj;)V

    return-object v1

    :pswitch_a
    iget-object v0, p0, Lfjt;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfqj;

    new-instance v1, Lgtz;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lgtz;-><init>(Lfqj;I)V

    return-object v1

    :pswitch_b
    iget-object v0, p0, Lfjt;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfrc;

    new-instance v1, Lfqv;

    invoke-direct {v1, v0}, Lfqv;-><init>(Lfrc;)V

    return-object v1

    :pswitch_c
    iget-object v0, p0, Lfjt;->a:Loiw;

    check-cast v0, Lcrj;

    invoke-virtual {v0}, Lcrj;->a()Lmqp;

    move-result-object v0

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Lchk;

    return-object v0

    :pswitch_d
    iget-object v0, p0, Lfjt;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhkc;

    invoke-interface {v0}, Lhkc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhkl;

    return-object v0

    :pswitch_e
    iget-object v0, p0, Lfjt;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhkc;

    invoke-interface {v0}, Lhkc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhkn;

    return-object v0

    :pswitch_f
    iget-object v0, p0, Lfjt;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhkc;

    invoke-interface {v0}, Lhkc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhkj;

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lfjt;->a:Loiw;

    check-cast v0, Lcki;

    invoke-virtual {v0}, Lcki;->a()Ldqx;

    move-result-object v0

    return-object v0

    :pswitch_11
    iget-object v0, p0, Lfjt;->a:Loiw;

    check-cast v0, Lkao;

    invoke-virtual {v0}, Lkao;->a()Lkaq;

    move-result-object v0

    new-instance v1, Lgxb;

    invoke-direct {v1, v0}, Lgxb;-><init>(Lkaq;)V

    return-object v1

    :pswitch_12
    iget-object v0, p0, Lfjt;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    invoke-static {v0}, Ldnf;->f(Ldsx;)Ldva;

    move-result-object v0

    iput v2, v0, Ldva;->a:I

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v2}, Ldva;->c(JLjava/util/concurrent/TimeUnit;)V

    const/16 v2, 0x1e

    iput v2, v0, Ldva;->b:I

    invoke-virtual {v0}, Ldva;->b()V

    iput v1, v0, Ldva;->c:I

    invoke-virtual {v0}, Ldva;->a()Lduv;

    move-result-object v0

    return-object v0

    :pswitch_13
    iget-object v0, p0, Lfjt;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsx;

    invoke-static {v0}, Ldnf;->f(Ldsx;)Ldva;

    move-result-object v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ldva;->c(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0}, Ldva;->b()V

    iput v2, v0, Ldva;->a:I

    iput v1, v0, Ldva;->c:I

    invoke-virtual {v0}, Ldva;->a()Lduv;

    move-result-object v0

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
