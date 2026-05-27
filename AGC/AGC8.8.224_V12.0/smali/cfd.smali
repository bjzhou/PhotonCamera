.class public final Lcfd;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lcfd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfd;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Lcfd;
    .locals 2

    new-instance v0, Lcfd;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcfd;-><init>(Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcfd;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcfd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjo;

    iget-object v0, v0, Lcjo;->a:Lnph;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcfd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnou;

    new-instance v1, Ljuh;

    new-instance v2, Lcjs;

    sget-object v3, Ljuh;->a:Ljui;

    invoke-direct {v2, v3, v0}, Lcjs;-><init>(Ljava/util/concurrent/Executor;Lnou;)V

    invoke-direct {v1, v2}, Ljuh;-><init>(Ljui;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lcfd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjo;

    iget-object v0, v0, Lcjo;->b:Lnph;

    new-instance v1, Lcjw;

    invoke-direct {v1, v0}, Lcjw;-><init>(Lnph;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lcfd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjo;

    iget-object v0, v0, Lcjo;->c:Lnou;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcfd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbc;

    new-instance v1, Ljvj;

    invoke-direct {v1, v0}, Ljvj;-><init>(Lkbc;)V

    return-object v1

    :pswitch_4
    iget-object v0, p0, Lcfd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    new-instance v1, Limc;

    invoke-direct {v1, v0}, Limc;-><init>(Landroid/os/HandlerThread;)V

    return-object v1

    :pswitch_5
    iget-object v0, p0, Lcfd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0}, Lnsy;->r(Ljava/util/concurrent/ScheduledExecutorService;)Lnox;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lcfd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lnsy;->s(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lcfd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuh;

    new-instance v1, Ljuj;

    invoke-static {v0}, Ljvd;->m(Ljuh;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljuj;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v1

    :pswitch_8
    iget-object v0, p0, Lcfd;->a:Loiw;

    check-cast v0, Lcix;

    invoke-virtual {v0}, Lcix;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sget-object v1, Lcis;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lcfd;->a:Loiw;

    check-cast v0, Lcix;

    invoke-virtual {v0}, Lcix;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sget-object v1, Lcis;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ljul;

    invoke-direct {v1, v0}, Ljul;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v1

    :pswitch_a
    iget-object v0, p0, Lcfd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0}, Lnsy;->r(Ljava/util/concurrent/ScheduledExecutorService;)Lnox;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_b
    iget-object v0, p0, Lcfd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcis;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ljul;

    invoke-direct {v1, v0}, Ljul;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v1

    :pswitch_c
    iget-object v0, p0, Lcfd;->a:Loiw;

    new-instance v1, Lflp;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-direct {v1, v0}, Lflp;-><init>(Landroid/view/View;)V

    return-object v1

    :pswitch_d
    iget-object v0, p0, Lcfd;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcgt;

    invoke-direct {v1, v0}, Lcgt;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_e
    iget-object v0, p0, Lcfd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkc;

    new-instance v1, Lcgc;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2, v2}, Lcgc;-><init>(Lbkc;[B[B[B)V

    return-object v1

    :pswitch_f
    iget-object v0, p0, Lcfd;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcfy;

    invoke-direct {v1, v0}, Lcfy;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_10
    iget-object v0, p0, Lcfd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v2, Liuy;->e:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v2, :cond_1

    sget-object v2, Ldho;->bX:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    sget-object v1, Liuy;->e:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1, v0}, Lfwt;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lfwn;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lfwt;->e()Lfwn;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_11
    iget-object v0, p0, Lcfd;->a:Loiw;

    check-cast v0, Lcft;

    invoke-virtual {v0}, Lcft;->a()Lcgi;

    move-result-object v0

    new-instance v1, Lcfs;

    invoke-direct {v1, v0}, Lcfs;-><init>(Lcgi;)V

    return-object v1

    :pswitch_12
    iget-object v0, p0, Lcfd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvk;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v3, Lcej;

    invoke-direct {v3, v1}, Lcej;-><init>(I)V

    invoke-static {v0, v3}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    invoke-static {v2, v0}, Lfwt;->f(Landroid/hardware/camera2/CaptureRequest$Key;Ljvs;)Ljvs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_13
    iget-object v0, p0, Lcfd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnou;

    new-instance v1, Lcfc;

    invoke-direct {v1, v0}, Lcfc;-><init>(Lnou;)V

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
