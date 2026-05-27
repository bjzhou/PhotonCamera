.class public final Lgbe;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lgbe;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbe;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Lgbe;
    .locals 2

    new-instance v0, Lgbe;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lgbe;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static b(Loiw;)Lgbe;
    .locals 2

    new-instance v0, Lgbe;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lgbe;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static c(Loiw;)Lgbe;
    .locals 2

    new-instance v0, Lgbe;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lgbe;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static d(Loiw;)Lgbe;
    .locals 2

    new-instance v0, Lgbe;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lgbe;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static e(Loiw;)Lgbe;
    .locals 2

    new-instance v0, Lgbe;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lgbe;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static f(Loiw;)Lgbe;
    .locals 2

    new-instance v0, Lgbe;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lgbe;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static g(Loiw;)Lgbe;
    .locals 2

    new-instance v0, Lgbe;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lgbe;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static h(Loiw;)Lgbe;
    .locals 2

    new-instance v0, Lgbe;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lgbe;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static i(Loiw;)Lgbe;
    .locals 2

    new-instance v0, Lgbe;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lgbe;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static j(Loiw;)Lgbe;
    .locals 2

    new-instance v0, Lgbe;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lgbe;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static k(Loiw;)Lgbe;
    .locals 2

    new-instance v0, Lgbe;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lgbe;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static l(Loiw;)Lgbe;
    .locals 2

    new-instance v0, Lgbe;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lgbe;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static m(Loiw;)Lgbe;
    .locals 2

    new-instance v0, Lgbe;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Lgbe;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static n(Loiw;)Lgbe;
    .locals 2

    new-instance v0, Lgbe;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Lgbe;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static o(Loiw;)Lgbe;
    .locals 2

    new-instance v0, Lgbe;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Lgbe;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static p(Loiw;)Lgbe;
    .locals 2

    new-instance v0, Lgbe;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lgbe;-><init>(Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lgbe;->b:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgbe;->a:Loiw;

    check-cast v0, Lccs;

    invoke-virtual {v0}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Liuy;->i:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v0

    invoke-static {v0}, Lfwt;->a(Lkfa;)Lfwn;

    move-result-object v0

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto/16 :goto_6

    :pswitch_0
    iget-object v0, p0, Lgbe;->a:Loiw;

    check-cast v0, Lfwp;

    invoke-virtual {v0}, Lfwp;->a()Lkli;

    move-result-object v0

    sget-object v1, Liuz;->i:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lkli;->k()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->a:Lklv;

    invoke-virtual {v0, v1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Liuz;->i:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Lnsy;->Y(Ljava/util/Collection;)[F

    move-result-object v0

    invoke-static {v1, v0}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v0

    invoke-static {v0}, Lfwt;->a(Lkfa;)Lfwn;

    move-result-object v0

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lmza;->a:Lmza;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lgbe;->a:Loiw;

    check-cast v0, Lcrj;

    invoke-virtual {v0}, Lcrj;->a()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfwn;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lmza;->a:Lmza;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lgbe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    new-instance v1, Lkfd;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v3, v2}, Lkfd;-><init>(ILjava/util/List;)V

    return-object v1

    :pswitch_3
    iget-object v0, p0, Lgbe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v4, Ldho;->at:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Ldhv;->u:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eq v3, v0, :cond_2

    goto :goto_2

    :cond_2
    const-wide/32 v1, 0x10000

    :goto_2
    const-wide/16 v3, 0x103

    or-long/2addr v1, v3

    goto :goto_3

    :cond_3
    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lgbe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v3, Ldho;->at:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Ldhw;->z:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    :cond_4
    sget-object v3, Ldhw;->U:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    invoke-interface {v0}, Ldhi;->e()V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lgbe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;

    new-instance v1, Lgcw;

    invoke-direct {v1, v0}, Lgcw;-><init>(Lcom/google/android/apps/camera/stats/ViewfinderJankSession;)V

    return-object v1

    :pswitch_6
    iget-object v0, p0, Lgbe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;

    new-instance v1, Lgcv;

    invoke-direct {v1, v0}, Lgcv;-><init>(Lcom/google/android/apps/camera/stats/ViewfinderJankSession;)V

    return-object v1

    :pswitch_7
    iget-object v0, p0, Lgbe;->a:Loiw;

    check-cast v0, Logo;

    invoke-virtual {v0}, Logo;->a()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lgct;

    invoke-direct {v1, v0}, Lgct;-><init>(Ljava/util/Set;)V

    return-object v1

    :pswitch_8
    iget-object v0, p0, Lgbe;->a:Loiw;

    check-cast v0, Lgjd;

    invoke-virtual {v0}, Lgjd;->a()Lgjc;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lgbe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lgml;->o:Lgml;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_a
    iget-object v0, p0, Lgbe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lgml;->n:Lgml;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_b
    iget-object v0, p0, Lgbe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lgml;->l:Lgml;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lgbe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lgml;->m:Lgml;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_d
    iget-object v0, p0, Lgbe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lgml;->a:Lgml;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_e
    iget-object v0, p0, Lgbe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lgml;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v2, Lgml;->q:Lmwn;

    invoke-virtual {v2}, Lmwn;->cz()Lnac;

    move-result-object v2

    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgml;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkfj;

    if-eqz v4, :cond_5

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    return-object v1

    :pswitch_f
    iget-object v0, p0, Lgbe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lgml;->i:Lgml;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lgbe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lgml;->k:Lgml;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_11
    iget-object v0, p0, Lgbe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    invoke-static {v1}, Lmoz;->e(Z)V

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    return-object v0

    :pswitch_12
    iget-object v0, p0, Lgbe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgmr;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_13
    iget-object v0, p0, Lgbe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebu;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto :goto_5

    :cond_7
    sget-object v0, Lmza;->a:Lmza;

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_8
    sget-object v0, Lmza;->a:Lmza;

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    nop

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
