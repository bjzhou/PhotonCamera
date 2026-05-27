.class public final Loxk;
.super Ljava/lang/Thread;


# instance fields
.field public final a:Loon;

.field public b:Z

.field final synthetic c:Loxl;

.field public d:I

.field public final e:Ldqx;

.field private f:J

.field private g:J

.field private h:I

.field public volatile indexInArray:I

.field public volatile nextParkedWorker:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Loxl;I)V
    .locals 1

    iput-object p1, p0, Loxk;->c:Loxl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Loxk;->setDaemon(Z)V

    new-instance p1, Ldqx;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ldqx;-><init>([B)V

    iput-object p1, p0, Loxk;->e:Ldqx;

    const/4 p1, 0x4

    iput p1, p0, Loxk;->d:I

    const/4 p1, 0x0

    invoke-static {p1}, Lolp;->i(I)Loon;

    move-result-object p1

    iput-object p1, p0, Loxk;->a:Loon;

    sget-object p1, Loxl;->a:Loxb;

    iput-object p1, p0, Loxk;->nextParkedWorker:Ljava/lang/Object;

    sget-object p1, Lons;->a:Lonr;

    sget-object p1, Lons;->b:Lons;

    invoke-virtual {p1}, Lons;->a()I

    move-result p1

    iput p1, p0, Loxk;->h:I

    invoke-virtual {p0, p2}, Loxk;->c(I)V

    return-void
.end method

.method private final e()Loxp;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Loxk;->a(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Loxk;->c:Loxl;

    iget-object v0, v0, Loxl;->i:Llhz;

    invoke-virtual {v0}, Llhz;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loxp;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Loxk;->c:Loxl;

    iget-object v0, v0, Loxl;->j:Llhz;

    invoke-virtual {v0}, Llhz;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loxp;

    return-object v0

    :cond_1
    iget-object v0, p0, Loxk;->c:Loxl;

    iget-object v0, v0, Loxl;->j:Llhz;

    invoke-virtual {v0}, Llhz;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loxp;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Loxk;->c:Loxl;

    iget-object v0, v0, Loxl;->i:Llhz;

    invoke-virtual {v0}, Llhz;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loxp;

    return-object v0
.end method

.method private final f(Z)Loxp;
    .locals 18

    move-object/from16 v0, p0

    sget-boolean v1, Lopw;->a:Z

    iget-object v1, v0, Loxk;->c:Loxl;

    iget-object v1, v1, Loxl;->h:Looo;

    iget-wide v1, v1, Looo;->b:J

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v2, v1

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0, v2}, Loxk;->a(I)I

    move-result v1

    iget-object v4, v0, Loxk;->c:Loxl;

    const/4 v8, 0x0

    const-wide v9, 0x7fffffffffffffffL

    :goto_0
    if-ge v8, v2, :cond_c

    const/4 v13, 0x1

    add-int/2addr v1, v13

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v14, v4, Loxl;->g:Lowx;

    invoke-virtual {v14, v1}, Lowx;->a(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Loxk;

    if-eqz v14, :cond_b

    if-eq v14, v0, :cond_b

    if-eqz p1, :cond_7

    iget-object v6, v0, Loxk;->e:Ldqx;

    iget-object v7, v14, Loxk;->e:Ldqx;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v7, Ldqx;->b:Ljava/lang/Object;

    check-cast v14, Loon;

    iget v14, v14, Loon;->b:I

    iget-object v11, v7, Ldqx;->e:Ljava/lang/Object;

    check-cast v11, Loon;

    iget v11, v11, Loon;->b:I

    iget-object v12, v7, Ldqx;->c:Ljava/lang/Object;

    :goto_1
    if-eq v14, v11, :cond_6

    and-int/lit8 v15, v14, 0x7f

    iget-object v5, v7, Ldqx;->d:Ljava/lang/Object;

    check-cast v5, Loon;

    iget v5, v5, Loon;->b:I

    if-eqz v5, :cond_6

    move-object v5, v12

    check-cast v5, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v5, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Loxp;

    if-eqz v3, :cond_4

    move/from16 v16, v1

    iget-object v1, v3, Loxp;->h:Loxq;

    iget v1, v1, Loxq;->a:I

    if-ne v1, v13, :cond_5

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v5, v15, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    iget-object v1, v7, Ldqx;->d:Ljava/lang/Object;

    check-cast v1, Loon;

    invoke-virtual {v1}, Loon;->d()V

    invoke-virtual {v6, v3}, Ldqx;->l(Loxp;)Loxp;

    const-wide/16 v5, -0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v5, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v3, :cond_2

    goto :goto_2

    :cond_4
    move/from16 v16, v1

    :cond_5
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v16

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    move/from16 v16, v1

    invoke-virtual {v6, v7, v13}, Ldqx;->t(Ldqx;Z)J

    move-result-wide v5

    :goto_3
    move-wide v6, v5

    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    move/from16 v16, v1

    iget-object v1, v0, Loxk;->e:Ldqx;

    iget-object v3, v14, Loxk;->e:Ldqx;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ldqx;->k()Loxp;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v1, v5}, Ldqx;->l(Loxp;)Loxp;

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Ldqx;->t(Ldqx;Z)J

    move-result-wide v6

    :goto_4
    const-wide/16 v11, -0x1

    cmp-long v1, v6, v11

    if-nez v1, :cond_9

    iget-object v1, v0, Loxk;->e:Ldqx;

    invoke-virtual {v1}, Ldqx;->j()Loxp;

    move-result-object v1

    return-object v1

    :cond_9
    const-wide/16 v11, 0x0

    cmp-long v1, v6, v11

    if-lez v1, :cond_a

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    goto :goto_5

    :cond_a
    goto :goto_5

    :cond_b
    move/from16 v16, v1

    const/4 v5, 0x0

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v16

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_c
    const-wide/16 v11, 0x0

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v3, v9, v1

    if-eqz v3, :cond_d

    goto :goto_6

    :cond_d
    move-wide v9, v11

    :goto_6
    iput-wide v9, v0, Loxk;->g:J

    const/4 v1, 0x0

    return-object v1
.end method

.method private final g()Z
    .locals 2

    iget-object v0, p0, Loxk;->nextParkedWorker:Ljava/lang/Object;

    sget-object v1, Loxl;->a:Loxb;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    iget v0, p0, Loxk;->h:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Loxk;->h:I

    add-int/lit8 v1, p1, -0x1

    and-int v2, v1, p1

    if-nez v2, :cond_0

    and-int p1, v0, v1

    return p1

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/2addr v0, p1

    return v0
.end method

.method public final b(Z)Loxp;
    .locals 8

    iget v0, p0, Loxk;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Loxk;->c:Loxl;

    iget-object v2, v0, Loxl;->h:Looo;

    :cond_1
    iget-wide v3, v2, Looo;->b:J

    const-wide v5, 0x7ffffc0000000000L

    and-long/2addr v5, v3

    const/16 v7, 0x2a

    shr-long/2addr v5, v7

    long-to-int v6, v5

    if-nez v6, :cond_5

    if-eqz p1, :cond_2

    iget-object p1, p0, Loxk;->e:Ldqx;

    invoke-virtual {p1}, Ldqx;->j()Loxp;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Loxk;->c:Loxl;

    iget-object p1, p1, Loxl;->j:Llhz;

    invoke-virtual {p1}, Llhz;->l()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loxp;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Loxk;->c:Loxl;

    iget-object p1, p1, Loxl;->j:Llhz;

    invoke-virtual {p1}, Llhz;->l()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loxp;

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    invoke-direct {p0, v1}, Loxk;->f(Z)Loxp;

    move-result-object p1

    :cond_4
    return-object p1

    :cond_5
    const-wide v5, -0x40000000000L

    add-long/2addr v5, v3

    iget-object v7, v0, Loxl;->h:Looo;

    invoke-virtual {v7, v3, v4, v5, v6}, Looo;->d(JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v1, p0, Loxk;->d:I

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget-object p1, p0, Loxk;->c:Loxl;

    iget p1, p1, Loxl;->b:I

    add-int/2addr p1, p1

    invoke-virtual {p0, p1}, Loxk;->a(I)I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_7

    invoke-direct {p0}, Loxk;->e()Loxp;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    iget-object p1, p0, Loxk;->e:Ldqx;

    invoke-virtual {p1}, Ldqx;->j()Loxp;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    if-nez v1, :cond_a

    invoke-direct {p0}, Loxk;->e()Loxp;

    move-result-object p1

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_9
    invoke-direct {p0}, Loxk;->e()Loxp;

    move-result-object p1

    if-eqz p1, :cond_a

    :goto_3
    return-object p1

    :cond_a
    invoke-direct {p0, v0}, Loxk;->f(Z)Loxp;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)V
    .locals 3

    iget-object v0, p0, Loxk;->c:Loxl;

    iget-object v0, v0, Loxl;->e:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-worker-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Loxk;->setName(Ljava/lang/String;)V

    iput p1, p0, Loxk;->indexInArray:I

    return-void
.end method

.method public final d(I)Z
    .locals 5

    iget v0, p0, Loxk;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Loxk;->c:Loxl;

    iget-object v2, v2, Loxl;->h:Looo;

    const-wide v3, 0x40000000000L

    invoke-virtual {v2, v3, v4}, Looo;->a(J)J

    :cond_1
    if-eq v0, p1, :cond_2

    iput p1, p0, Loxk;->d:I

    :cond_2
    return v1
.end method

.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v1, Loxk;->c:Loxl;

    invoke-virtual {v3}, Loxl;->c()Z

    move-result v3

    const/4 v4, 0x5

    if-nez v3, :cond_13

    iget v3, v1, Loxk;->d:I

    if-eq v3, v4, :cond_13

    iget-boolean v3, v1, Loxk;->b:Z

    invoke-virtual {v1, v3}, Loxk;->b(Z)Loxp;

    move-result-object v3

    const-wide/32 v5, -0x200000

    const/4 v7, 0x3

    const-wide/16 v8, 0x0

    if-eqz v3, :cond_5

    iput-wide v8, v1, Loxk;->g:J

    iget-object v2, v3, Loxp;->h:Loxq;

    iget v2, v2, Loxq;->a:I

    iput-wide v8, v1, Loxk;->f:J

    iget v8, v1, Loxk;->d:I

    const/4 v9, 0x2

    if-ne v8, v7, :cond_0

    sget-boolean v7, Lopw;->a:Z

    iput v9, v1, Loxk;->d:I

    :cond_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v9}, Loxk;->d(I)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v1, Loxk;->c:Loxl;

    invoke-virtual {v7}, Loxl;->b()V

    :cond_2
    :goto_1
    invoke-static {v3}, Loxl;->f(Loxp;)V

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, v1, Loxk;->c:Loxl;

    iget-object v2, v2, Loxl;->h:Looo;

    invoke-virtual {v2, v5, v6}, Looo;->a(J)J

    iget v2, v1, Loxk;->d:I

    if-eq v2, v4, :cond_4

    sget-boolean v2, Lopw;->a:Z

    const/4 v2, 0x4

    iput v2, v1, Loxk;->d:I

    goto :goto_2

    :cond_4
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    iput-boolean v0, v1, Loxk;->b:Z

    iget-wide v10, v1, Loxk;->g:J

    cmp-long v12, v10, v8

    if-eqz v12, :cond_7

    if-nez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v7}, Loxk;->d(I)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v2, v1, Loxk;->g:J

    invoke-static {v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v8, v1, Loxk;->g:J

    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    invoke-direct/range {p0 .. p0}, Loxk;->g()Z

    move-result v10

    const-wide/32 v11, 0x1fffff

    if-nez v10, :cond_a

    iget-object v3, v1, Loxk;->c:Loxl;

    iget-object v4, v1, Loxk;->nextParkedWorker:Ljava/lang/Object;

    sget-object v7, Loxl;->a:Loxb;

    if-ne v4, v7, :cond_9

    iget-object v4, v3, Loxl;->f:Looo;

    :goto_3
    iget-wide v7, v4, Looo;->b:J

    and-long v9, v7, v11

    const-wide/32 v13, 0x200000

    add-long/2addr v13, v7

    iget v15, v1, Loxk;->indexInArray:I

    sget-boolean v16, Lopw;->a:Z

    iget-object v0, v3, Loxl;->g:Lowx;

    long-to-int v10, v9

    invoke-virtual {v0, v10}, Lowx;->a(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Loxk;->nextParkedWorker:Ljava/lang/Object;

    iget-object v0, v3, Loxl;->f:Looo;

    and-long v9, v13, v5

    int-to-long v13, v15

    or-long/2addr v9, v13

    invoke-virtual {v0, v7, v8, v9, v10}, Looo;->d(JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_a
    sget-boolean v0, Lopw;->a:Z

    iget-object v0, v1, Loxk;->a:Loon;

    const/4 v5, -0x1

    iput v5, v0, Loon;->b:I

    :goto_4
    invoke-direct/range {p0 .. p0}, Loxk;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Loxk;->a:Loon;

    iget v0, v0, Loon;->b:I

    if-ne v0, v5, :cond_12

    iget-object v0, v1, Loxk;->c:Loxl;

    invoke-virtual {v0}, Loxl;->c()Z

    move-result v0

    if-nez v0, :cond_11

    iget v0, v1, Loxk;->d:I

    if-eq v0, v4, :cond_11

    invoke-virtual {v1, v7}, Loxk;->d(I)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v13, v1, Loxk;->f:J

    cmp-long v0, v13, v8

    if-nez v0, :cond_b

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    iget-object v0, v1, Loxk;->c:Loxl;

    iget-wide v3, v0, Loxl;->d:J

    add-long/2addr v13, v3

    iput-wide v13, v1, Loxk;->f:J

    :cond_b
    iget-object v0, v1, Loxk;->c:Loxl;

    iget-wide v3, v0, Loxl;->d:J

    invoke-static {v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-wide v13, v1, Loxk;->f:J

    sub-long/2addr v3, v13

    cmp-long v0, v3, v8

    if-ltz v0, :cond_10

    iput-wide v8, v1, Loxk;->f:J

    iget-object v0, v1, Loxk;->c:Loxl;

    iget-object v3, v0, Loxl;->g:Lowx;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v0}, Loxl;->c()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_c

    monitor-exit v3

    const/4 v4, 0x5

    goto :goto_4

    :cond_c
    :try_start_1
    iget-object v4, v0, Loxl;->h:Looo;

    iget-wide v13, v4, Looo;->b:J

    and-long/2addr v13, v11

    iget v4, v0, Loxl;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v14, v13

    if-gt v14, v4, :cond_d

    monitor-exit v3

    const/4 v4, 0x5

    goto :goto_4

    :cond_d
    :try_start_2
    iget-object v4, v1, Loxk;->a:Loon;

    const/4 v10, 0x1

    invoke-virtual {v4, v5, v10}, Loon;->c(II)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_e

    monitor-exit v3

    const/4 v4, 0x5

    goto :goto_4

    :cond_e
    :try_start_3
    iget v4, v1, Loxk;->indexInArray:I

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Loxk;->c(I)V

    invoke-virtual {v0, v1, v4, v13}, Loxl;->a(Loxk;II)V

    iget-object v14, v0, Loxl;->h:Looo;

    sget-object v15, Looo;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v15, v14}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v14

    and-long/2addr v14, v11

    long-to-int v15, v14

    if-eq v15, v4, :cond_f

    iget-object v14, v0, Loxl;->g:Lowx;

    invoke-virtual {v14, v15}, Lowx;->a(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v14, Loxk;

    iget-object v5, v0, Loxl;->g:Lowx;

    invoke-virtual {v5, v4, v14}, Lowx;->b(ILjava/lang/Object;)V

    invoke-virtual {v14, v4}, Loxk;->c(I)V

    invoke-virtual {v0, v14, v15, v4}, Loxl;->a(Loxk;II)V

    :cond_f
    iget-object v0, v0, Loxl;->g:Lowx;

    const/4 v4, 0x0

    invoke-virtual {v0, v15, v4}, Lowx;->b(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    const/4 v0, 0x5

    iput v0, v1, Loxk;->d:I

    const/4 v4, 0x5

    const/4 v5, -0x1

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_10
    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v4, 0x5

    const/4 v5, -0x1

    goto/16 :goto_4

    :cond_11
    const/4 v13, 0x0

    goto :goto_5

    :cond_12
    const/4 v13, 0x0

    :goto_5
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Loxk;->d(I)Z

    return-void
.end method
