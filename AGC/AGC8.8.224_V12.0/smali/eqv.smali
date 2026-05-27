.class public final Leqv;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcvr;I[B[B)V
    .locals 0

    iput p2, p0, Leqv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leqv;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcvr;I[C[B)V
    .locals 0

    iput p2, p0, Leqv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leqv;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Leqv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leqv;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Loiw;)Leqv;
    .locals 2

    new-instance v0, Leqv;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Leqv;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static b(Loiw;)Leqv;
    .locals 2

    new-instance v0, Leqv;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Leqv;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static c(Loiw;)Leqv;
    .locals 2

    new-instance v0, Leqv;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Leqv;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static d(Loiw;)Leqv;
    .locals 2

    new-instance v0, Leqv;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Leqv;-><init>(Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Leqv;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    check-cast v0, Ldmf;

    invoke-virtual {v0}, Ldmf;->a()Ldne;

    move-result-object v0

    invoke-virtual {v0}, Ldne;->k()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldle;

    const-string v0, "mv-ctrl-exec"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldle;

    const-string v0, "mv-writer"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljvd;->e(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    check-cast v0, Ldmf;

    invoke-virtual {v0}, Ldmf;->a()Ldne;

    move-result-object v0

    invoke-virtual {v0}, Ldne;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldle;

    const-string v0, "mv-gyro-exec"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    check-cast v0, Ldmf;

    invoke-virtual {v0}, Ldmf;->a()Ldne;

    move-result-object v0

    iget-object v1, v0, Ldne;->b:Ljava/lang/Object;

    sget-object v3, Ldhv;->k:Ldhj;

    invoke-interface {v1, v3}, Ldhi;->l(Ldhj;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v0, v0, Ldne;->b:Ljava/lang/Object;

    sget-object v1, Ldhv;->r:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lmza;->a:Lmza;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfgy;

    new-instance v1, Lfja;

    invoke-direct {v1, v0, v2}, Lfja;-><init>(Lfgy;I)V

    invoke-static {v1}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_6
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    check-cast v0, Lcrj;

    invoke-virtual {v0}, Lcrj;->a()Lmqp;

    move-result-object v0

    new-instance v2, Lbkb;

    invoke-direct {v2, v0, v1}, Lbkb;-><init>(Lmqp;[B)V

    return-object v2

    :pswitch_7
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llas;

    new-instance v2, Ljuh;

    invoke-direct {v2}, Ljuh;-><init>()V

    new-instance v3, Lfdz;

    invoke-direct {v3, v0, v2, v1}, Lfdz;-><init>(Llas;Ljava/util/concurrent/Executor;[B)V

    return-object v3

    :pswitch_8
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lfbs;

    invoke-direct {v1, v0}, Lfbs;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_9
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgkr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_a
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    check-cast v0, Lcvr;

    iget-object v0, v0, Lcvr;->a:Ljava/lang/Object;

    instance-of v1, v0, Leqw;

    if-eqz v1, :cond_3

    check-cast v0, Leqw;

    iget-object v0, v0, Lfbc;->x:Lezx;

    goto :goto_2

    :cond_3
    new-instance v0, Lfak;

    invoke-direct {v0}, Lfak;-><init>()V

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_b
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    check-cast v0, Lcvr;

    iget-object v0, v0, Lcvr;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_c
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    check-cast v0, Lcvr;

    iget-object v0, v0, Lcvr;->a:Ljava/lang/Object;

    instance-of v1, v0, Leqw;

    if-eqz v1, :cond_4

    check-cast v0, Leqw;

    iget-object v0, v0, Lfbc;->x:Lezx;

    goto :goto_3

    :cond_4
    new-instance v0, Lfak;

    invoke-direct {v0}, Lfak;-><init>()V

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_d
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    check-cast v0, Lcvr;

    iget-object v0, v0, Lcvr;->a:Ljava/lang/Object;

    return-object v0

    :pswitch_e
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    check-cast v0, Lfix;

    invoke-virtual {v0}, Lfix;->b()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchk;

    return-object v0

    :pswitch_f
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgow;

    new-instance v1, Leva;

    invoke-direct {v1, v0}, Leva;-><init>(Lgow;)V

    return-object v1

    :pswitch_10
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lert;

    iget-object v0, v0, Lert;->s:Lhjz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_11
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    invoke-static {v0}, Logj;->a(Loiw;)Logd;

    move-result-object v0

    new-instance v1, Lcvr;

    invoke-direct {v1, v0}, Lcvr;-><init>(Logd;)V

    return-object v1

    :pswitch_12
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Ljvk;

    sget-object v2, Ldhx;->d:Ldhk;

    invoke-interface {v0, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Leqg;->a(I)Leqg;

    move-result-object v0

    invoke-direct {v1, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v1

    :pswitch_13
    iget-object v0, p0, Leqv;->b:Ljava/lang/Object;

    new-instance v1, Lequ;

    invoke-direct {v1, v0, v2}, Lequ;-><init>(Loiw;I)V

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
