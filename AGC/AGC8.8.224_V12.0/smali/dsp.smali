.class public final synthetic Ldsp;
.super Ljava/lang/Object;

# interfaces
.implements Lkee;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lckv;I)V
    .locals 0

    iput p2, p0, Ldsp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsp;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldsq;I)V
    .locals 0

    iput p2, p0, Ldsp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsp;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Leop;I)V
    .locals 0

    iput p2, p0, Ldsp;->b:I

    iput-object p1, p0, Ldsp;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lgjb;I)V
    .locals 0

    iput p2, p0, Ldsp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsp;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgkm;I)V
    .locals 0

    iput p2, p0, Ldsp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsp;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgkq;I)V
    .locals 0

    iput p2, p0, Ldsp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsp;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhol;I)V
    .locals 0

    iput p2, p0, Ldsp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsp;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Lkhr;)V
    .locals 6

    iget v0, p0, Ldsp;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldsp;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Lkhr;->a()Lkeb;

    move-result-object p1

    if-eqz p1, :cond_9

    new-instance v1, Lhoj;

    check-cast v0, Lhol;

    invoke-direct {v1, v0, p1}, Lhoj;-><init>(Lhol;Lkeb;)V

    invoke-interface {p1, v1}, Lkeb;->k(Lkfg;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ldsp;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Lkhr;->a()Lkeb;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lhok;

    check-cast v0, Lhol;

    invoke-direct {v1, v0, p1}, Lhok;-><init>(Lhol;Lkeb;)V

    invoke-interface {p1, v1}, Lkeb;->k(Lkfg;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Ldsp;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lgkq;

    iget-boolean v2, v2, Lgkq;->g:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    monitor-enter v0

    :try_start_0
    move-object v2, v0

    check-cast v2, Lgkq;

    iget-object v2, v2, Lgkq;->c:Ljava/util/List;

    invoke-static {v2}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkee;

    invoke-interface {v3, p1}, Lkee;->c(Lkhr;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_2
    iget-object v0, p0, Ldsp;->a:Ljava/lang/Object;

    check-cast v0, Lgkm;

    iget-boolean v1, v0, Lgkm;->e:Z

    if-eqz v1, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    iget-object v1, v0, Lgkm;->c:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_3

    new-instance v2, Lfqt;

    const/16 v3, 0x11

    invoke-direct {v2, v0, p1, v3}, Lfqt;-><init>(Lgkm;Lkhr;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_2
    return-void

    :pswitch_3
    iget-object v0, p0, Ldsp;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Lkhr;->b()Lkeg;

    move-result-object v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    new-instance v1, Lgja;

    check-cast v0, Lgjb;

    invoke-direct {v1, v0}, Lgja;-><init>(Lgjb;)V

    invoke-static {p1, v1}, Lkfg;->B(Lkhr;Lkex;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Ldsp;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Leop;

    iget-boolean v2, v2, Leop;->g:Z

    if-eqz v2, :cond_6

    sget-object p1, Leop;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Already closed, cannot process analysis frame."

    const/16 v1, 0x693

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_6
    monitor-enter v0

    :try_start_2
    iget-object v2, p0, Ldsp;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Leop;

    iget-object v3, v3, Leop;->f:Lept;

    if-nez v3, :cond_7

    check-cast v2, Leop;

    invoke-virtual {v2, p1, v1}, Leop;->f(Lkhr;Z)V

    :cond_7
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :pswitch_5
    iget-object v0, p0, Ldsp;->a:Ljava/lang/Object;

    new-instance v2, Lckt;

    check-cast v0, Lckv;

    invoke-direct {v2, v0, v1}, Lckt;-><init>(Lckv;I)V

    invoke-static {p1, v2}, Lkfg;->B(Lkhr;Lkex;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Ldsp;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Lkhr;->a()Lkeb;

    move-result-object p1

    if-eqz p1, :cond_8

    check-cast v0, Ldsq;

    iget-object v1, v0, Ldsq;->d:Ljvb;

    new-instance v2, Ldrh;

    const/4 v3, 0x5

    invoke-direct {v2, p1, v3}, Ldrh;-><init>(Lkeb;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    new-instance v4, Ljva;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v2, v3, v5}, Ljva;-><init>(Ljvb;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;I)V

    new-instance v1, Ldgd;

    const/16 v2, 0x8

    invoke-direct {v1, v0, p1, v2}, Ldgd;-><init>(Ldsq;Lkeb;I)V

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_8
    return-void

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
