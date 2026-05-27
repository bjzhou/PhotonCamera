.class public final synthetic Lctw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcsm;I)V
    .locals 0

    iput p2, p0, Lctw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lctx;I)V
    .locals 0

    iput p2, p0, Lctw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcty;I)V
    .locals 0

    iput p2, p0, Lctw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcuf;I)V
    .locals 0

    iput p2, p0, Lctw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcwm;I)V
    .locals 0

    iput p2, p0, Lctw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lczg;I)V
    .locals 0

    iput p2, p0, Lctw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lczh;I)V
    .locals 0

    iput p2, p0, Lctw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lczj;I)V
    .locals 0

    iput p2, p0, Lctw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lczk;I)V
    .locals 0

    iput p2, p0, Lctw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lczm;I)V
    .locals 0

    iput p2, p0, Lctw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldfa;I[B)V
    .locals 0

    iput p2, p0, Lctw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctw;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lico;I)V
    .locals 0

    iput p2, p0, Lctw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctw;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lctw;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    check-cast v0, Lczm;

    iget-object v2, v0, Lczm;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Lczl;

    invoke-direct {v3, v0, v1}, Lczl;-><init>(Lczm;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    check-cast v0, Lczm;

    iput-boolean v2, v0, Lczm;->d:Z

    iget-boolean v1, v0, Lczm;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lczm;->c:Lczj;

    invoke-virtual {v1}, Lczj;->d()V

    invoke-virtual {v0}, Lczm;->b()V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    check-cast v0, Lczk;

    iget-object v0, v0, Lczk;->b:Lgzn;

    sget-object v1, Lgzd;->O:Lgzr;

    invoke-interface {v0, v1}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v0

    invoke-interface {v0, v3}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    check-cast v0, Lczj;

    invoke-virtual {v0}, Lczj;->c()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    check-cast v0, Lczh;

    iget-object v1, v0, Lczh;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Lctw;

    const/16 v3, 0xe

    invoke-direct {v2, v0, v3}, Lctw;-><init>(Lczh;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    check-cast v0, Lczh;

    iget-object v1, v0, Lczh;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Lctw;

    const/16 v3, 0xd

    invoke-direct {v2, v0, v3}, Lctw;-><init>(Lczh;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    check-cast v0, Lczh;

    iput-boolean v2, v0, Lczh;->l:Z

    iget-boolean v1, v0, Lczh;->m:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lczh;->j:Lczj;

    invoke-virtual {v1}, Lczj;->d()V

    invoke-virtual {v0}, Lczh;->a()V

    :cond_1
    return-void

    :pswitch_6
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    check-cast v0, Lczh;

    iput-boolean v2, v0, Lczh;->m:Z

    iget-boolean v1, v0, Lczh;->l:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lczh;->h:Lczj;

    invoke-virtual {v1}, Lczj;->d()V

    invoke-virtual {v0}, Lczh;->a()V

    :cond_2
    return-void

    :pswitch_7
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    check-cast v0, Lczg;

    invoke-virtual {v0}, Lczg;->b()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    check-cast v0, Ldfa;

    iget-object v0, v0, Ldfa;->d:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    check-cast v0, Ldfa;

    iget-object v0, v0, Ldfa;->d:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    check-cast v0, Lcwm;

    invoke-virtual {v0}, Lcwm;->c()V

    return-void

    :pswitch_b
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    check-cast v0, Lcwm;

    invoke-virtual {v0}, Lcwm;->c()V

    return-void

    :pswitch_c
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    sget-object v1, Licn;->b:Licn;

    check-cast v0, Lico;

    invoke-virtual {v0, v1}, Lico;->a(Licn;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    sget-object v1, Licn;->b:Licn;

    check-cast v0, Lico;

    invoke-virtual {v0, v1}, Lico;->d(Licn;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcsm;->c(Z)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcsm;->c(Z)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    sget-object v1, Licn;->c:Licn;

    check-cast v0, Lico;

    invoke-virtual {v0, v1}, Lico;->a(Licn;)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    check-cast v0, Lcuf;

    invoke-virtual {v0}, Lcuf;->a()Lhna;

    move-result-object v1

    sget-object v2, Lhna;->e:Lhna;

    invoke-virtual {v1, v2}, Lhna;->a(Lhna;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcuf;->h:Lico;

    sget-object v1, Licn;->c:Licn;

    invoke-virtual {v0, v1}, Lico;->d(Licn;)V

    :cond_3
    return-void

    :pswitch_12
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    check-cast v0, Lcty;

    iget-object v0, v0, Lcty;->a:Lhxb;

    invoke-interface {v0}, Lhxb;->c()V

    return-void

    :pswitch_13
    iget-object v0, p0, Lctw;->a:Ljava/lang/Object;

    check-cast v0, Lctx;

    iget-object v1, v0, Lctx;->a:Lcty;

    iget-object v1, v1, Lcty;->d:Lmrg;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3}, Lmrg;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    const-wide/16 v5, 0xa

    add-long/2addr v3, v5

    iget-object v1, v0, Lctx;->a:Lcty;

    iget-object v1, v1, Lcty;->a:Lhxb;

    invoke-interface {v1, v3, v4}, Lhxb;->h(J)V

    iget-object v1, v0, Lctx;->a:Lcty;

    iget-object v1, v1, Lcty;->b:Lipk;

    const-string v5, "/video_state_recording"

    invoke-interface {v1, v5, v3, v4}, Lipk;->l(Ljava/lang/String;J)V

    iget-object v1, v0, Lctx;->a:Lcty;

    iget-object v1, v1, Lcty;->e:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lctx;->a:Lcty;

    iget-object v1, v1, Lcty;->e:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljws;

    invoke-virtual {v1}, Ljws;->a()I

    move-result v1

    int-to-long v5, v1

    mul-long v5, v5, v3

    iget-object v3, v0, Lctx;->a:Lcty;

    iget-object v3, v3, Lcty;->a:Lhxb;

    invoke-interface {v3, v5, v6}, Lhxb;->g(J)V

    if-eq v1, v2, :cond_4

    iget-object v0, v0, Lctx;->a:Lcty;

    iget-object v0, v0, Lcty;->b:Lipk;

    const-string v1, "/video_state_recording_output"

    invoke-interface {v0, v1, v5, v6}, Lipk;->l(Ljava/lang/String;J)V

    :cond_4
    return-void

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
