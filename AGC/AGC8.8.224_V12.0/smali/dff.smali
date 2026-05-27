.class public final synthetic Ldff;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field private final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Logd;Ljava/util/Set;Ldhi;Ljvs;I[B[B[B[B)V
    .locals 0

    iput p6, p0, Ldff;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldff;->e:Ljava/lang/Object;

    iput-object p2, p0, Ldff;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldff;->b:Ljava/lang/Object;

    iput-object p4, p0, Ldff;->c:Ljava/lang/Object;

    iput-object p5, p0, Ldff;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkbc;Ljuh;Lfak;Loiw;Loiw;I)V
    .locals 0

    iput p6, p0, Ldff;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldff;->d:Ljava/lang/Object;

    iput-object p2, p0, Ldff;->e:Ljava/lang/Object;

    iput-object p3, p0, Ldff;->c:Ljava/lang/Object;

    iput-object p4, p0, Ldff;->a:Ljava/lang/Object;

    iput-object p5, p0, Ldff;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Ldff;->f:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldff;->d:Ljava/lang/Object;

    iget-object v1, p0, Ldff;->e:Ljava/lang/Object;

    iget-object v2, p0, Ldff;->c:Ljava/lang/Object;

    iget-object v3, p0, Ldff;->a:Ljava/lang/Object;

    iget-object v4, p0, Ldff;->b:Ljava/lang/Object;

    const-string v5, "jankmon"

    invoke-interface {v0, v5}, Lkbc;->e(Ljava/lang/String;)V

    sget-object v5, Logr;->a:Logr;

    invoke-virtual {v5}, Logr;->d()Logs;

    move-result-object v5

    invoke-interface {v5}, Logs;->c()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfaz;

    move-object v5, v2

    check-cast v5, Lfak;

    move-object v6, v1

    check-cast v6, Ljuh;

    invoke-static {v6, v5, v3}, Lfcr;->e(Ljuh;Lfak;Lfaz;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Ldff;->e:Ljava/lang/Object;

    iget-object v1, p0, Ldff;->a:Ljava/lang/Object;

    iget-object v2, p0, Ldff;->b:Ljava/lang/Object;

    iget-object v3, p0, Ldff;->c:Ljava/lang/Object;

    iget-object v4, p0, Ldff;->d:Ljava/lang/Object;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhdy;

    invoke-static {}, Lhdz;->a()Llie;

    move-result-object v6

    const-string v7, "PitchRollIndicatorHUD"

    iput-object v7, v6, Llie;->c:Ljava/lang/Object;

    invoke-static {v2}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v2

    invoke-virtual {v6, v2}, Llie;->h(Lmwn;)V

    sget-object v2, Lklv;->b:Lklv;

    invoke-static {v2}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v2

    invoke-virtual {v6, v2}, Llie;->g(Lmwn;)V

    sget-object v2, Ldgv;->m:Ldhj;

    invoke-interface {v3, v2}, Ldhi;->l(Ldhj;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Llie;->j(Z)V

    invoke-virtual {v6, v4}, Llie;->i(Ljvs;)V

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhds;

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, v6, Llie;->e:Ljava/lang/Object;

    invoke-virtual {v6}, Llie;->f()Lhdz;

    move-result-object v1

    check-cast v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v0, v5, v1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k(Lhdy;Lhdz;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Ldff;->e:Ljava/lang/Object;

    iget-object v1, p0, Ldff;->a:Ljava/lang/Object;

    iget-object v2, p0, Ldff;->b:Ljava/lang/Object;

    iget-object v3, p0, Ldff;->c:Ljava/lang/Object;

    iget-object v4, p0, Ldff;->d:Ljava/lang/Object;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhdy;

    invoke-static {}, Lhdz;->a()Llie;

    move-result-object v6

    const-string v7, "UpDownIndicatorHUD"

    iput-object v7, v6, Llie;->c:Ljava/lang/Object;

    invoke-static {v2}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v2

    invoke-virtual {v6, v2}, Llie;->h(Lmwn;)V

    sget-object v2, Lklv;->b:Lklv;

    invoke-static {v2}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v2

    invoke-virtual {v6, v2}, Llie;->g(Lmwn;)V

    sget-object v2, Ldgv;->m:Ldhj;

    invoke-interface {v3, v2}, Ldhi;->l(Ldhj;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Llie;->j(Z)V

    invoke-virtual {v6, v4}, Llie;->i(Ljvs;)V

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhds;

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, v6, Llie;->e:Ljava/lang/Object;

    invoke-virtual {v6}, Llie;->f()Lhdz;

    move-result-object v1

    check-cast v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v0, v5, v1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k(Lhdy;Lhdz;)V

    return-void

    :cond_0
    :goto_0
    invoke-static {}, Logr;->b()J

    move-result-wide v5

    cmp-long v3, v5, v7

    if-lez v3, :cond_1

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfaz;

    check-cast v2, Lfak;

    check-cast v1, Ljuh;

    invoke-static {v1, v2, v3}, Lfcr;->e(Ljuh;Lfak;Lfaz;)V

    :cond_1
    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
