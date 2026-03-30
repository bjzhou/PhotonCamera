.class public final Lhjl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lhjk;

.field private final b:Lhjk;

.field private final c:J

.field private d:Lrss;

.field private e:Z


# direct methods
.method public constructor <init>(Lhjk;Lhjk;J)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lhjl;->a:Lhjk;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-boolean v0, p0, Lhjl;->e:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lhjl;->d:Lrss;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-wide p3, p0, Lhjl;->c:J

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lhjl;->b:Lhjk;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    goto/32 :goto_4

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

    :catchall_0
    move-exception v0

    nop

    nop

    nop

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

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    :try_start_1
    iput-boolean v0, p0, Lhjl;->e:Z

    nop

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lhjl;->d:Lrss;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(J)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    :goto_1
    :try_start_0
    iget-object v0, p0, Lhjl;->a:Lhjk;

    nop

    nop

    invoke-interface {v0}, Lhjk;->a()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    iget-object v0, p0, Lhjl;->d:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    iput-object p1, p0, Lhjl;->d:Lrss;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_1
    iget-object v0, p0, Lhjl;->a:Lhjk;

    nop

    nop

    invoke-interface {v0}, Lhjk;->a()Z

    move-result v0

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhjl;->d:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    iget-boolean v0, p0, Lhjl;->e:Z

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    :cond_3
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lhjl;->d:Lrss;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lhjl;->b:Lhjk;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lhjk;->a()Z

    move-result v0

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lhjl;->d:Lrss;

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lhjl;->e:Z

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :cond_4
    :goto_6
    :try_start_3
    iget-object v0, p0, Lhjl;->d:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    iget-object v0, p0, Lhjl;->d:Lrss;

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    sub-long/2addr p1, v2

    nop

    nop

    nop

    iget-wide v2, p0, Lhjl;->c:J

    nop

    nop

    nop

    cmp-long p1, p1, v2

    nop

    nop

    if-lez p1, :cond_5

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    :cond_5
    iput-boolean v1, p0, Lhjl;->e:Z

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_b

    nop

    :goto_8
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

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
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    goto/32 :goto_c

    nop

    nop

    :goto_11
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_4
    monitor-exit p0

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_13

    nop

    nop

    :goto_13
    throw p1

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    monitor-exit p0

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

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lhjl;->e:Z

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop
.end method
