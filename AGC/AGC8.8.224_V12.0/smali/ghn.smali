.class public final Lghn;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lghn;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lghn;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Lghn;
    .locals 2

    new-instance v0, Lghn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lghn;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static b(Loiw;)Lghn;
    .locals 2

    new-instance v0, Lghn;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lghn;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static c(Loiw;)Lghn;
    .locals 2

    new-instance v0, Lghn;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lghn;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static d(Loiw;)Lghn;
    .locals 2

    new-instance v0, Lghn;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lghn;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static e(Loiw;)Lghn;
    .locals 2

    new-instance v0, Lghn;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lghn;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static f(Loiw;)Lghn;
    .locals 2

    new-instance v0, Lghn;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lghn;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static g(Loiw;)Lghn;
    .locals 2

    new-instance v0, Lghn;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lghn;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static h(Loiw;)Lghn;
    .locals 2

    new-instance v0, Lghn;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lghn;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static i(Loiw;)Lghn;
    .locals 2

    new-instance v0, Lghn;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lghn;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static j(Loiw;)Lghn;
    .locals 2

    new-instance v0, Lghn;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lghn;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static k(Loiw;)Lghn;
    .locals 2

    new-instance v0, Lghn;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lghn;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static l(Loiw;)Lghn;
    .locals 2

    new-instance v0, Lghn;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lghn;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static m(Loiw;)Lghn;
    .locals 2

    new-instance v0, Lghn;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lghn;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static n(Loiw;)Lghn;
    .locals 2

    new-instance v0, Lghn;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Lghn;-><init>(Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lghn;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lghn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnf;

    new-instance v2, Lkkz;

    invoke-direct {v2, v0, v1}, Lkkz;-><init>(Lgnf;I)V

    return-object v2

    :pswitch_0
    iget-object v0, p0, Lghn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Leaa;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Leaa;-><init>(Ljvq;I[B)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lghn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvq;

    new-instance v2, Ljuf;

    invoke-direct {v2}, Ljuf;-><init>()V

    new-instance v3, Lgmk;

    invoke-direct {v3, v2, v1}, Lgmk;-><init>(Ljuf;I)V

    invoke-virtual {v0, v3}, Ljvq;->b(Lgxu;)V

    return-object v2

    :pswitch_2
    iget-object v0, p0, Lghn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvq;

    new-instance v1, Ljvk;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v3}, Ljvk;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lgmk;

    invoke-direct {v3, v1, v2}, Lgmk;-><init>(Ljvk;I)V

    invoke-virtual {v0, v3}, Ljvq;->b(Lgxu;)V

    return-object v1

    :pswitch_3
    iget-object v0, p0, Lghn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1

    :pswitch_4
    iget-object v0, p0, Lghn;->a:Loiw;

    check-cast v0, Logo;

    invoke-virtual {v0}, Logo;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfwn;

    invoke-static {v2}, Lgmf;->b(Lfwn;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmwl;->h(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lmwl;->f()Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lghn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    invoke-static {v1}, Lmoz;->e(Z)V

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lghn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;

    goto :goto_1

    :cond_1
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_1
    return-object v0

    :pswitch_7
    iget-object v0, p0, Lghn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lgue;

    invoke-direct {v1, v0}, Lgue;-><init>(Ljava/util/Map;)V

    return-object v1

    :pswitch_8
    iget-object v0, p0, Lghn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebi;

    new-instance v0, Lgmf;

    invoke-direct {v0}, Lgmf;-><init>()V

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lghn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sget-object v0, Lgml;->i:Lgml;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lgue;

    invoke-direct {v0, v1}, Lgue;-><init>(Ljava/util/Map;)V

    return-object v0

    :pswitch_a
    iget-object v0, p0, Lghn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    new-instance v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v1, v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Ljvs;)V

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_b
    iget-object v0, p0, Lghn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lghn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuf;

    new-instance v2, Lfwx;

    invoke-direct {v2, v1}, Lfwx;-><init>(I)V

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    const-string v0, "ActiveCamera"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v3, Lkxf;

    invoke-direct {v3, v2, v0, v1}, Lkxf;-><init>(Lfwx;Ljava/util/concurrent/Executor;I)V

    return-object v3

    :pswitch_d
    iget-object v0, p0, Lghn;->a:Loiw;

    check-cast v0, Lfwp;

    invoke-virtual {v0}, Lfwp;->a()Lkli;

    move-result-object v0

    invoke-interface {v0}, Lkli;->A()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lfva;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lfva;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lfwt;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lfwn;

    move-result-object v0

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto :goto_2

    :cond_3
    sget-object v0, Lmza;->a:Lmza;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_e
    iget-object v0, p0, Lghn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Lbkb;

    invoke-direct {v1, v0}, Lbkb;-><init>(Ldhi;)V

    return-object v1

    :pswitch_f
    iget-object v0, p0, Lghn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lghn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldms;

    invoke-virtual {v0}, Ldms;->b()V

    sget-object v0, Lmza;->a:Lmza;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_11
    iget-object v0, p0, Lghn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfz;

    new-instance v1, Lbkb;

    invoke-direct {v1, v0}, Lbkb;-><init>(Lgfz;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
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
