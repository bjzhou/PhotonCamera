.class final Lkpn;
.super Ljava/lang/Object;

# interfaces
.implements Lkpl;


# instance fields
.field private final a:Lkqt;

.field private final b:Lkqa;

.field private final c:Lkpv;

.field private final d:Lkrh;

.field private final e:Lkaq;

.field private final f:Lkbc;

.field private final g:Ljava/lang/String;

.field private final h:Lkqo;

.field private final i:Ljava/util/Set;

.field private final j:Ljava/util/Set;

.field private final k:Ljava/util/Set;

.field private final l:Lmvq;

.field private final m:Lkpq;

.field private final n:Lkpm;

.field private final o:J

.field private final p:J

.field private q:Lkph;

.field private r:Z

.field private final s:Llhe;


# direct methods
.method public constructor <init>(Lkqt;Lkqa;Llhe;Lkrh;Lkaq;Lkbc;Lkpo;Lkqo;Lkpv;Ljava/lang/String;JJ[B[B[B)V
    .locals 12

    move-object v1, p0

    move-object/from16 v0, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p10

    move-wide/from16 v4, p11

    move-wide/from16 v6, p13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, v1, Lkpn;->i:Ljava/util/Set;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, v1, Lkpn;->j:Ljava/util/Set;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, v1, Lkpn;->k:Ljava/util/Set;

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v8

    iput-object v8, v1, Lkpn;->l:Lmvq;

    new-instance v8, Lkpq;

    invoke-direct {v8}, Lkpq;-><init>()V

    const-string v9, ""

    iput-object v9, v8, Lkpq;->d:Ljava/lang/String;

    sget-object v9, Lmyu;->a:Lmvv;

    invoke-virtual {v8, v9}, Lkpq;->a(Lmvv;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lkpq;->b(I)V

    iput-object v8, v1, Lkpn;->m:Lkpq;

    move-object v9, p1

    iput-object v9, v1, Lkpn;->a:Lkqt;

    move-object v9, p2

    iput-object v9, v1, Lkpn;->b:Lkqa;

    move-object v9, p3

    iput-object v9, v1, Lkpn;->s:Llhe;

    move-object/from16 v9, p4

    iput-object v9, v1, Lkpn;->d:Lkrh;

    const-string v9, "MediaGroup"

    move-object/from16 v10, p5

    invoke-interface {v10, v9}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object v9

    iput-object v9, v1, Lkpn;->e:Lkaq;

    move-object/from16 v9, p6

    iput-object v9, v1, Lkpn;->f:Lkbc;

    iput-object v3, v1, Lkpn;->g:Ljava/lang/String;

    iput-object v2, v1, Lkpn;->h:Lkqo;

    move-object/from16 v9, p9

    iput-object v9, v1, Lkpn;->c:Lkpv;

    iput-wide v4, v1, Lkpn;->o:J

    iput-wide v6, v1, Lkpn;->p:J

    new-instance v9, Lkpm;

    sget-object v10, Lkpm;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v10

    invoke-direct {v9, v10}, Lkpm;-><init>(I)V

    iput-object v9, v1, Lkpn;->n:Lkpm;

    iget-object v10, v0, Lkpo;->e:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v0, v0, Lkpo;->a:Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v9, v8, Lkpq;->a:Lkpm;

    iput-object v3, v8, Lkpq;->d:Ljava/lang/String;

    iput-wide v4, v8, Lkpq;->b:J

    iput-object v2, v8, Lkpq;->j:Lkqo;

    iput-wide v6, v8, Lkpq;->c:J

    const/4 v0, 0x3

    iput-byte v0, v8, Lkpq;->k:B

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lkph;
    .locals 4

    invoke-static {p1}, Lkwp;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lkqr;->a:Lkqr;

    invoke-virtual {v1, v0}, Lkqr;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    sget-object v0, Lkqr;->a:Lkqr;

    goto :goto_1

    :cond_1
    sget-object v0, Lkqr;->d:Lkqr;

    :goto_1
    if-eqz v3, :cond_2

    iget-object v1, p0, Lkpn;->b:Lkqa;

    iget-object v1, v1, Lkqa;->o:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lkpn;->b:Lkqa;

    iget-object v1, v1, Lkqa;->n:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v2, v0, v1, p1}, Lkpn;->f(ILkqr;Ljava/lang/String;Ljava/lang/String;)Lkph;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkpn;->r:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Cannot modify the group after publish() or abandon(): %s"

    iget-object v3, p0, Lkpn;->n:Lkpm;

    invoke-static {v0, v2, v3}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-boolean v1, p0, Lkpn;->r:Z

    iget-object v0, p0, Lkpn;->e:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " Abandoned"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lkpn;->f:Lkbc;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#abandon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lkpn;->c:Lkpv;

    invoke-static {}, Lkpu;->a()Lkpt;

    move-result-object v1

    iget-object v2, p0, Lkpn;->m:Lkpq;

    iput-object v2, v1, Lkpt;->e:Lkpq;

    iget-object v2, p0, Lkpn;->i:Ljava/util/Set;

    iput-object v2, v1, Lkpt;->b:Ljava/util/Set;

    iget-object v2, p0, Lkpn;->j:Ljava/util/Set;

    iput-object v2, v1, Lkpt;->c:Ljava/util/Set;

    iget-object v2, p0, Lkpn;->k:Ljava/util/Set;

    iput-object v2, v1, Lkpt;->d:Ljava/util/Set;

    iget-object v2, p0, Lkpn;->l:Lmvq;

    invoke-virtual {v2}, Lmvq;->f()Lmvv;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkpt;->b(Lmvv;)V

    invoke-virtual {v1}, Lkpt;->a()Lkpu;

    move-result-object v1

    invoke-interface {v0, v1}, Lkpv;->a(Lkpu;)V

    iget-object v0, p0, Lkpn;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Lkpk;)V
    .locals 2

    iget-boolean v0, p0, Lkpn;->r:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot modify the listener list after publish() or abandon()"

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lkpn;->l:Lmvq;

    invoke-virtual {v0, p1}, Lmvq;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkpn;->r:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Cannot modify the group after publish() or abandon(): %s"

    iget-object v3, p0, Lkpn;->n:Lkpm;

    invoke-static {v0, v2, v3}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-boolean v1, p0, Lkpn;->r:Z

    iget-object v0, p0, Lkpn;->e:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " Closed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lkpn;->f:Lkbc;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {}, Lkpu;->a()Lkpt;

    move-result-object v0

    iget-object v1, p0, Lkpn;->m:Lkpq;

    iput-object v1, v0, Lkpt;->e:Lkpq;

    iget-object v1, p0, Lkpn;->i:Ljava/util/Set;

    iput-object v1, v0, Lkpt;->b:Ljava/util/Set;

    iget-object v1, p0, Lkpn;->j:Ljava/util/Set;

    iput-object v1, v0, Lkpt;->c:Ljava/util/Set;

    iget-object v1, p0, Lkpn;->k:Ljava/util/Set;

    iput-object v1, v0, Lkpt;->d:Ljava/util/Set;

    iget-object v1, p0, Lkpn;->l:Lmvq;

    invoke-virtual {v1}, Lmvq;->f()Lmvv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkpt;->b(Lmvv;)V

    iget-object v1, p0, Lkpn;->q:Lkph;

    if-eqz v1, :cond_0

    iput-object v1, v0, Lkpt;->a:Lkph;

    :cond_0
    iget-object v1, p0, Lkpn;->c:Lkpv;

    invoke-virtual {v0}, Lkpt;->a()Lkpu;

    move-result-object v0

    invoke-interface {v1, v0}, Lkpv;->b(Lkpu;)V

    iget-object v0, p0, Lkpn;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(Lkph;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkpn;->r:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot modify the group after publish() or abandon(): %s"

    iget-object v2, p0, Lkpn;->n:Lkpm;

    invoke-static {v0, v1, v2}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lkpn;->e:Lkaq;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as the primary item for "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    iput-object p1, p0, Lkpn;->q:Lkph;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f(ILkqr;Ljava/lang/String;Ljava/lang/String;)Lkph;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    iget-boolean v1, v0, Lkpn;->r:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Cannot create files after publish() or abandon()"

    invoke-static {v1, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v1, v0, Lkpn;->f:Lkbc;

    const-string v2, "MediaGroup#create"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    new-instance v12, Lkqh;

    move-object v1, v12

    iget-object v2, v0, Lkpn;->a:Lkqt;

    iget-object v3, v0, Lkpn;->s:Llhe;

    iget-object v4, v0, Lkpn;->h:Lkqo;

    iget-object v5, v0, Lkpn;->c:Lkpv;

    iget-wide v6, v0, Lkpn;->o:J

    iget-wide v8, v0, Lkpn;->p:J

    move-object/from16 p2, v12

    iget-object v12, v0, Lkpn;->g:Ljava/lang/String;

    move-object/from16 p3, p2

    move-object/from16 p2, v1

    iget-object v1, v0, Lkpn;->f:Lkbc;

    move-object/from16 v17, v1

    iget-object v1, v0, Lkpn;->e:Lkaq;

    move-object/from16 v18, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p2

    invoke-direct/range {v1 .. v21}, Lkqh;-><init>(Lkqt;Llhe;Lkqo;Lkqg;JJJLjava/lang/String;ILkqr;Ljava/lang/String;Ljava/lang/String;Lkbc;Lkaq;[B[B[B)V

    add-int/lit8 v1, p1, -0x1

    const-string v2, " from "

    const-string v3, "Created "

    packed-switch v1, :pswitch_data_0

    move-object/from16 v4, p3

    iget-object v1, v0, Lkpn;->e:Lkaq;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lkpn;->i:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Lkpn;->e:Lkaq;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lkpn;->k:Ljava/util/Set;

    move-object/from16 v4, p3

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    move-object/from16 v4, p3

    iget-object v1, v0, Lkpn;->e:Lkaq;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lkpn;->j:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, v0, Lkpn;->f:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Lkph;
    .locals 4

    sget-object v0, Lkqr;->e:Lkqr;

    iget-object v1, p0, Lkpn;->b:Lkqa;

    iget-object v1, v1, Lkqa;->m:Ljava/lang/String;

    const-string v2, "mp4"

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v0, v1, v2}, Lkpn;->f(ILkqr;Ljava/lang/String;Ljava/lang/String;)Lkph;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkpn;->n:Lkpm;

    invoke-virtual {v0}, Lkpm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
