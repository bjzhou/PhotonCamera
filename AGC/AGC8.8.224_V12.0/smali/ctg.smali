.class public final synthetic Lctg;
.super Ljava/lang/Object;

# interfaces
.implements Lkex;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lctl;Lkfj;I)V
    .locals 0

    iput p3, p0, Lctg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctg;->a:Ljava/lang/Object;

    iput-object p2, p0, Lctg;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lczc;Lkfj;I)V
    .locals 0

    iput p3, p0, Lctg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctg;->a:Ljava/lang/Object;

    iput-object p2, p0, Lctg;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgcj;Lkeg;I)V
    .locals 0

    iput p3, p0, Lctg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctg;->a:Ljava/lang/Object;

    iput-object p2, p0, Lctg;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhcq;Lkfj;I)V
    .locals 0

    iput p3, p0, Lctg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctg;->a:Ljava/lang/Object;

    iput-object p2, p0, Lctg;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhcv;Lkfj;I)V
    .locals 0

    iput p3, p0, Lctg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctg;->a:Ljava/lang/Object;

    iput-object p2, p0, Lctg;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lmqp;Lmqp;I)V
    .locals 0

    iput p3, p0, Lctg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctg;->a:Ljava/lang/Object;

    iput-object p2, p0, Lctg;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lkeb;)V
    .locals 6

    iget v0, p0, Lctg;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lctg;->a:Ljava/lang/Object;

    iget-object v1, p0, Lctg;->b:Ljava/lang/Object;

    invoke-interface {p1, v1}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v0, Lhcv;

    iget-object v2, v0, Lhcv;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Lgps;

    const/16 v4, 0x14

    invoke-direct {v3, v0, v1, v4}, Lgps;-><init>(Lhcv;Lkpb;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lctg;->a:Ljava/lang/Object;

    iget-object v1, p0, Lctg;->b:Ljava/lang/Object;

    invoke-interface {p1, v1}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v0, Lhcq;

    iget-object v2, v0, Lhcq;->b:Ljuh;

    new-instance v3, Lgps;

    const/16 v4, 0x13

    invoke-direct {v3, v0, v1, v4}, Lgps;-><init>(Lhcq;Lkpb;I)V

    invoke-virtual {v2, v3}, Ljuh;->c(Ljava/lang/Runnable;)V

    :cond_0
    invoke-interface {p1}, Lkeb;->close()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lctg;->a:Ljava/lang/Object;

    iget-object v1, p0, Lctg;->b:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    invoke-interface {p1, v0}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v1, Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrd;

    invoke-interface {v1, v0}, Lhrd;->f(Lkpb;)V

    :cond_1
    invoke-interface {p1}, Lkeb;->close()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lctg;->a:Ljava/lang/Object;

    iget-object v1, p0, Lctg;->b:Ljava/lang/Object;

    check-cast v0, Lgcj;

    iget-object v2, v0, Lgcj;->c:Lgcl;

    iget-object v2, v2, Lgcl;->e:Ljava/util/concurrent/Executor;

    new-instance v3, Leow;

    check-cast v1, Lkeg;

    const/16 v4, 0x12

    invoke-direct {v3, v0, v1, p1, v4}, Leow;-><init>(Lgcj;Lkeg;Lkeb;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lctg;->a:Ljava/lang/Object;

    iget-object v1, p0, Lctg;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lczc;

    iget-object v2, v2, Lczc;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    move-object v3, v0

    check-cast v3, Lczc;

    iget-object v3, v3, Lczc;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v3, :cond_2

    monitor-exit v2

    return-void

    :cond_2
    new-instance v4, Lblx;

    check-cast v0, Lczc;

    const/16 v5, 0xa

    invoke-direct {v4, v0, p1, v1, v5}, Lblx;-><init>(Lczc;Lkeb;Lkfj;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_4
    iget-object v0, p0, Lctg;->a:Ljava/lang/Object;

    iget-object v1, p0, Lctg;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lctl;

    iget-object v2, v2, Lctl;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-interface {p1, v1}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v0, Lctl;

    iget-object v0, v0, Lctl;->g:Lcqx;

    invoke-interface {p1}, Lkeb;->c()Lkou;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcqx;->c(Lkpb;Lkou;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lctl;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x26b

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "No image available from %s."

    invoke-interface {v0, v1, p1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-interface {p1}, Lkeb;->close()V

    monitor-exit v2

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :pswitch_5
    iget-object v0, p0, Lctg;->a:Ljava/lang/Object;

    iget-object v1, p0, Lctg;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lctl;

    iget-object v2, v2, Lctl;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    invoke-interface {p1, v1}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v0, Lctl;

    iget-object v0, v0, Lctl;->f:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrd;

    invoke-interface {v0, v1}, Lhrd;->f(Lkpb;)V

    :cond_4
    invoke-interface {p1}, Lkeb;->close()V

    monitor-exit v2

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Lkeb;->close()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
