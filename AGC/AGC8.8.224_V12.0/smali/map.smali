.class public final Lmap;
.super Ljava/lang/Object;


# instance fields
.field public final a:Loiw;

.field public final b:Loiw;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Llih;Loiw;Llgf;Lkte;Loiw;Lmqp;Lmqp;Ljava/util/concurrent/Executor;Logd;Loiw;[B[B)V
    .locals 11

    move-object v0, p0

    move-object v1, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lmap;->c:Ljava/lang/Object;

    move-object v2, p3

    iput-object v2, v0, Lmap;->e:Ljava/lang/Object;

    move-object v2, p2

    iput-object v2, v0, Lmap;->a:Loiw;

    move-object/from16 v2, p8

    iput-object v2, v0, Lmap;->f:Ljava/lang/Object;

    new-instance v2, Ldom;

    const/4 v3, 0x7

    move-object/from16 v4, p5

    invoke-direct {v2, v4, v3}, Ldom;-><init>(Loiw;I)V

    iput-object v2, v0, Lmap;->b:Loiw;

    new-instance v2, Llmy;

    iget-object v3, v1, Lkte;->a:Ljava/lang/Object;

    check-cast v3, Ldwh;

    invoke-virtual {v3}, Ldwh;->a()Landroid/content/Context;

    move-result-object v5

    iget-object v3, v1, Lkte;->c:Ljava/lang/Object;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/util/concurrent/Executor;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lkte;->b:Ljava/lang/Object;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v1, v1, Lkte;->d:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-object v7, v3

    check-cast v7, Llnb;

    const/4 v9, 0x1

    move-object v4, v2

    move-object/from16 v8, p9

    move-object/from16 v10, p10

    invoke-direct/range {v4 .. v10}, Llmy;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Llnb;Logd;ZLoiw;)V

    iput-object v2, v0, Lmap;->h:Ljava/lang/Object;

    move-object/from16 v1, p6

    iput-object v1, v0, Lmap;->d:Ljava/lang/Object;

    move-object/from16 v1, p7

    iput-object v1, v0, Lmap;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lmap;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lmap;->d:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lmap;->e:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lmap;->a:Loiw;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lmap;->b:Loiw;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p0, Lmap;->f:Ljava/lang/Object;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Lmap;->g:Ljava/lang/Object;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p8, p0, Lmap;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 8

    iget-object v0, p0, Lmap;->e:Ljava/lang/Object;

    check-cast v0, Llgf;

    iget-boolean v0, v0, Llgf;->a:Z

    const-wide/16 v1, -0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lmap;->h:Ljava/lang/Object;

    check-cast v0, Llmy;

    iget-object v3, v0, Llmy;->d:Llmx;

    iget-object v4, v3, Llmx;->b:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, v3, Llmx;->a:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v6, v3, Llmx;->d:I

    if-ge v6, v4, :cond_2

    monitor-exit v5

    goto :goto_0

    :cond_2
    iget-wide v6, v3, Llmx;->e:J

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v3, Llmx;->c:Lkrn;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v6

    const-wide/16 v5, 0x3e8

    cmp-long v7, v3, v5

    if-gtz v7, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    iget-boolean v3, v0, Llmy;->c:Z

    iget-object v0, v0, Llmy;->b:Llnc;

    if-eqz v3, :cond_4

    invoke-virtual {v0, p1}, Llnc;->a(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v1, v0

    goto :goto_1

    :cond_4
    :goto_1
    return-wide v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    return-wide v1
.end method

.method public final b(Llif;)Lnou;
    .locals 2

    iget-object v0, p0, Lmap;->e:Ljava/lang/Object;

    check-cast v0, Llgf;

    iget-boolean v0, v0, Llgf;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnsy;->z()Lnou;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Llii;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Llii;-><init>(Lmap;Llif;[B)V

    iget-object p1, p0, Lmap;->f:Ljava/lang/Object;

    invoke-static {v0, p1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lmap;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
