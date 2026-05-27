.class public final Lgkj;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lgkj;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lghp;
    .locals 1

    new-instance v0, Lghp;

    invoke-direct {v0}, Lghp;-><init>()V

    return-object v0
.end method

.method public static b()Lgqv;
    .locals 1

    new-instance v0, Lgqv;

    invoke-direct {v0}, Lgqv;-><init>()V

    return-object v0
.end method

.method public static c()Lgkj;
    .locals 2

    new-instance v0, Lgkj;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lgkj;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lgkj;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lgsj;

    invoke-direct {v0}, Lgsj;-><init>()V

    return-object v0

    :pswitch_0
    new-instance v0, Lgsd;

    invoke-direct {v0}, Lgsd;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Lgsd;

    invoke-direct {v0}, Lgsd;-><init>()V

    return-object v0

    :pswitch_2
    invoke-static {}, Lgkj;->b()Lgqv;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {}, Lgkj;->b()Lgqv;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {}, Llmf;->c()Llme;

    move-result-object v0

    sget-object v1, Logx;->a:Logx;

    invoke-virtual {v1}, Logx;->b()Logy;

    move-result-object v1

    invoke-interface {v1}, Logy;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Llme;->b(Z)V

    invoke-virtual {v0}, Llme;->a()Llmf;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static {}, Llma;->c()Lllz;

    move-result-object v0

    sget-object v1, Logx;->a:Logx;

    invoke-virtual {v1}, Logx;->b()Logy;

    move-result-object v1

    invoke-interface {v1}, Logy;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lllz;->b(Z)V

    sget v1, Lmvv;->d:I

    sget-object v1, Lmyu;->a:Lmvv;

    new-instance v2, Lllv;

    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v1}, Lllv;-><init>(IILmvv;)V

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, v0, Lllz;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lllz;->a()Llma;

    move-result-object v0

    return-object v0

    :pswitch_6
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-static {}, Llhn;->c()Llhm;

    move-result-object v0

    sget-object v1, Logx;->a:Logx;

    invoke-virtual {v1}, Logx;->b()Logy;

    move-result-object v1

    invoke-interface {v1}, Logy;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Llhm;->b(Z)V

    invoke-virtual {v0}, Llhm;->a()Llhn;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-static {}, Llkn;->c()Llkm;

    move-result-object v0

    sget-object v1, Logx;->a:Logx;

    invoke-virtual {v1}, Logx;->b()Logy;

    move-result-object v1

    invoke-interface {v1}, Logy;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Llkm;->b(Z)V

    invoke-virtual {v0}, Llkm;->a()Llkn;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-static {}, Lliv;->c()Llme;

    move-result-object v0

    sget-object v1, Logx;->a:Logx;

    invoke-virtual {v1}, Logx;->b()Logy;

    move-result-object v1

    invoke-interface {v1}, Logy;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Llme;->d(Z)V

    invoke-virtual {v0}, Llme;->c()Lliv;

    move-result-object v0

    return-object v0

    :pswitch_a
    invoke-static {}, Lewq;->d()Lfwx;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-static {}, Lewq;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0

    :pswitch_c
    new-instance v0, Lewq;

    invoke-direct {v0}, Lewq;-><init>()V

    return-object v0

    :pswitch_d
    sget-object v0, Liuu;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_0

    sget-object v0, Liuu;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v0

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lmza;->a:Lmza;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_e
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_f
    new-instance v0, Lglj;

    invoke-direct {v0}, Lglj;-><init>()V

    return-object v0

    :pswitch_10
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_11
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_12
    invoke-static {}, Lgkj;->a()Lghp;

    move-result-object v0

    return-object v0

    :pswitch_13
    sget-object v0, Lgkh;->a:Lgkh;

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
