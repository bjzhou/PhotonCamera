.class public final Lgah;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lmjv;

.field private b:Z

.field private c:Z

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Lmjv;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    const-wide/16 v0, -0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    iput-object p1, p0, Lgah;->a:Lmjv;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_6
    const v1, 0x1f

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x19

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    :goto_a
    iput-wide v0, p0, Lgah;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    iput-wide v0, p0, Lgah;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()Lsjw;
    .locals 5

    goto/32 :goto_c

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v0, Lsed;->a:Lsdr;

    nop

    sget-object v0, Lsjw;->a:Lsjw;

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    iget-boolean v1, p0, Lgah;->b:Z

    nop

    nop

    nop

    nop

    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_1
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    move-object v3, v2

    nop

    nop

    nop

    check-cast v3, Lsjw;

    nop

    iget v4, v3, Lsjw;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v4, v4, 0x1

    nop

    iput v4, v3, Lsjw;->b:I

    nop

    iput-boolean v1, v3, Lsjw;->c:Z

    nop

    iget-boolean v1, p0, Lgah;->c:Z

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_2
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    move-object v3, v2

    nop

    nop

    nop

    check-cast v3, Lsjw;

    nop

    nop

    nop

    iget v4, v3, Lsjw;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v4, v4, 0x2

    nop

    nop

    nop

    nop

    iput v4, v3, Lsjw;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, v3, Lsjw;->d:Z

    nop

    nop

    iget-boolean v1, p0, Lgah;->c:Z

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    const-wide/16 v3, 0x0

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    :cond_3
    iget-wide v3, p0, Lgah;->e:J

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_4

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_4
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v1, Lsjw;

    nop

    nop

    nop

    nop

    nop

    iget v2, v1, Lsjw;->b:I

    nop

    or-int/lit8 v2, v2, 0x4

    nop

    nop

    nop

    iput v2, v1, Lsjw;->b:I

    nop

    nop

    nop

    nop

    iput-wide v3, v1, Lsjw;->e:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    check-cast v0, Lsjw;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iput-boolean v0, p0, Lgah;->b:Z

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    nop

    nop

    iput-wide v0, p0, Lgah;->d:J

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    throw v0

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 12

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lgah;->b:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lgah;->b:Z

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lgah;->a:Lmjv;

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    iget-wide v3, p0, Lgah;->d:J

    nop

    nop

    sub-long v5, v1, v3

    nop

    sget-object v7, Lskd;->a:Lskd;

    nop

    invoke-virtual {v7}, Ltkg;->m()Ltkb;

    move-result-object v7

    nop

    nop

    sget-object v8, Lskc;->aB:Lskc;

    nop

    nop

    iget-object v9, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    nop

    nop

    if-nez v9, :cond_0

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_0
    iget-object v9, v7, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v9, Lskd;

    nop

    nop

    nop

    nop

    iget v8, v8, Lskc;->aG:I

    nop

    nop

    nop

    iput v8, v9, Lskd;->f:I

    nop

    nop

    nop

    nop

    nop

    iget v8, v9, Lskd;->b:I

    nop

    nop

    or-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v8, v9, Lskd;->b:I

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Lsjv;->a:Lsjv;

    nop

    nop

    invoke-virtual {v8}, Ltkg;->m()Ltkb;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v8, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    if-nez v9, :cond_1

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkb;->o()V

    :cond_1
    iget-object v9, v8, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v10, v9

    nop

    nop

    check-cast v10, Lsjv;

    nop

    nop

    nop

    nop

    nop

    iget v11, v10, Lsjv;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    iput v11, v10, Lsjv;->b:I

    nop

    nop

    nop

    iput-wide v3, v10, Lsjv;->c:J

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v3

    nop

    if-nez v3, :cond_2

    nop

    invoke-virtual {v8}, Ltkb;->o()V

    :cond_2
    iget-object v3, v8, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    move-object v4, v3

    nop

    nop

    nop

    nop

    check-cast v4, Lsjv;

    nop

    nop

    iget v9, v4, Lsjv;->b:I

    nop

    nop

    nop

    or-int/lit8 v9, v9, 0x2

    nop

    nop

    nop

    iput v9, v4, Lsjv;->b:I

    nop

    nop

    nop

    nop

    iput-wide v1, v4, Lsjv;->d:J

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    if-nez v3, :cond_3

    nop

    invoke-virtual {v8}, Ltkb;->o()V

    :cond_3
    iget-object v3, v8, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v3, Lsjv;

    nop

    nop

    nop

    nop

    iget v4, v3, Lsjv;->b:I

    nop

    nop

    or-int/lit8 v4, v4, 0x4

    nop

    nop

    nop

    nop

    nop

    iput v4, v3, Lsjv;->b:I

    nop

    nop

    nop

    nop

    iput-wide v5, v3, Lsjv;->e:J

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lsjv;

    nop

    nop

    iget-object v4, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_4

    nop

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_4
    iget-object v4, v7, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v4, Lskd;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v4, Lskd;->aC:Lsjv;

    nop

    nop

    nop

    nop

    iget v3, v4, Lskd;->d:I

    nop

    nop

    nop

    const/high16 v5, 0x20000000

    nop

    nop

    nop

    nop

    or-int/2addr v3, v5

    nop

    nop

    iput v3, v4, Lskd;->d:I

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v7}, Lmjv;->J(Ltkb;)V

    iput-wide v1, p0, Lgah;->d:J

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x9

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x13

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_6
    goto/32 :goto_4

    nop
.end method

.method public final declared-synchronized d()V
    .locals 12

    goto/32 :goto_3

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    const v1, 0x16

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lgah;->c:Z

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    iput-boolean v0, p0, Lgah;->c:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lgah;->a:Lmjv;

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    nop

    nop

    nop

    iget-wide v3, p0, Lgah;->e:J

    nop

    nop

    nop

    sub-long v5, v1, v3

    nop

    nop

    nop

    nop

    sget-object v7, Lskd;->a:Lskd;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkg;->m()Ltkb;

    move-result-object v7

    nop

    nop

    nop

    nop

    sget-object v8, Lskc;->aC:Lskc;

    nop

    nop

    nop

    nop

    iget-object v9, v7, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    nop

    nop

    if-nez v9, :cond_2

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_2
    iget-object v9, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v9, Lskd;

    nop

    nop

    iget v8, v8, Lskc;->aG:I

    nop

    nop

    nop

    nop

    iput v8, v9, Lskd;->f:I

    nop

    nop

    nop

    iget v8, v9, Lskd;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    iput v8, v9, Lskd;->b:I

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Lsjx;->a:Lsjx;

    nop

    nop

    invoke-virtual {v8}, Ltkg;->m()Ltkb;

    move-result-object v8

    nop

    nop

    nop

    iget-object v9, v8, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    if-nez v9, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkb;->o()V

    :cond_3
    iget-object v9, v8, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v10, v9

    nop

    nop

    nop

    check-cast v10, Lsjx;

    nop

    iget v11, v10, Lsjx;->b:I

    nop

    nop

    or-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    iput v11, v10, Lsjx;->b:I

    nop

    nop

    nop

    iput-wide v3, v10, Lsjx;->c:J

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v3

    nop

    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkb;->o()V

    :cond_4
    iget-object v3, v8, Ltkb;->b:Ltkg;

    nop

    move-object v4, v3

    nop

    nop

    nop

    check-cast v4, Lsjx;

    nop

    nop

    iget v9, v4, Lsjx;->b:I

    nop

    or-int/lit8 v9, v9, 0x2

    nop

    iput v9, v4, Lsjx;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-wide v1, v4, Lsjx;->d:J

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    if-nez v3, :cond_5

    nop

    invoke-virtual {v8}, Ltkb;->o()V

    :cond_5
    iget-object v3, v8, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v3, Lsjx;

    nop

    nop

    nop

    iget v4, v3, Lsjx;->b:I

    nop

    nop

    nop

    or-int/lit8 v4, v4, 0x4

    nop

    nop

    nop

    nop

    iput v4, v3, Lsjx;->b:I

    nop

    iput-wide v5, v3, Lsjx;->e:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    check-cast v3, Lsjx;

    nop

    nop

    iget-object v4, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_6

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_6
    iget-object v4, v7, Ltkb;->b:Ltkg;

    nop

    check-cast v4, Lskd;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v4, Lskd;->aD:Lsjx;

    nop

    iget v3, v4, Lskd;->d:I

    nop

    nop

    nop

    nop

    nop

    const/high16 v5, 0x40000000    # 2.0f

    nop

    nop

    nop

    or-int/2addr v3, v5

    nop

    nop

    nop

    iput v3, v4, Lskd;->d:I

    nop

    nop

    invoke-virtual {v0, v7}, Lmjv;->J(Ltkb;)V

    iput-wide v1, p0, Lgah;->e:J

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_d
    throw v0

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized e()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    :try_start_0
    iput-boolean v0, p0, Lgah;->c:Z

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Lgah;->e:J

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1c

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    const v1, 0x16

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method
