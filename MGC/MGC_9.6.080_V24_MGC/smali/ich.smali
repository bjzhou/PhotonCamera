.class public final Lich;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lice;


# instance fields
.field private final a:Lhzk;

.field private final b:Ljava/lang/Object;

.field private final c:[Lsvr;


# direct methods
.method public constructor <init>()V
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-wide/16 v1, 0x7530

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

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

    :goto_4
    goto/32 :goto_13

    nop

    nop

    :goto_5
    new-instance v2, Lhzk;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    mul-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    const-wide/16 v2, 0x1e

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

    :goto_9
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_c
    iput-object v2, p0, Lich;->a:Lhzk;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v2, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    new-array v0, v0, [Lsvr;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v2, p0, Lich;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    long-to-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    iput-object v0, p0, Lich;->c:[Lsvr;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    invoke-direct {v2, v0}, Lhzk;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(J)Lsvr;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1c

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lich;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lich;->a:Lhzk;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, p2}, Lhzk;->f(J)I

    move-result p1

    nop

    nop

    if-ltz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lich;->c:[Lsvr;

    nop

    nop

    nop

    aget-object p0, p0, p1

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    :cond_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit v0

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(J)Lsvr;
    .locals 7

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lich;->a:Lhzk;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lhzk;->d()I

    move-result v1

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    if-gtz v1, :cond_0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-object v2

    nop

    nop

    :cond_0
    iget-object v1, p0, Lich;->a:Lhzk;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, p2}, Lhzk;->b(J)I

    move-result v3

    nop

    invoke-virtual {v1, v3}, Lhzk;->e(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lich;->a:Lhzk;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, p1, p2}, Lhzk;->c(J)I

    move-result v4

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lhzk;->e(I)I

    move-result v3

    nop

    nop

    nop

    nop

    if-ltz v1, :cond_1

    nop

    nop

    nop

    iget-object v4, p0, Lich;->c:[Lsvr;

    nop

    nop

    nop

    aget-object v1, v4, v1

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    move-object v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ltz v3, :cond_2

    nop

    iget-object p0, p0, Lich;->c:[Lsvr;

    nop

    aget-object v2, p0, v3

    nop

    nop

    :cond_2
    if-nez v1, :cond_3

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-object v2

    nop

    nop

    :cond_3
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-object v1

    nop

    nop

    nop

    nop

    :cond_4
    iget-wide v3, v1, Lsvr;->a:J

    nop

    nop

    nop

    sub-long v3, p1, v3

    nop

    nop

    iget-wide v5, v2, Lsvr;->a:J

    nop

    nop

    sub-long/2addr v5, p1

    nop

    nop

    nop

    cmp-long p0, v3, v5

    nop

    nop

    nop

    if-ltz p0, :cond_5

    nop

    nop

    nop

    nop

    move-object v1, v2

    nop

    nop

    nop

    nop

    :cond_5
    monitor-exit v0

    nop

    nop

    return-object v1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lich;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    const v0, 0x2

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

    :goto_a
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public final c(Lsvr;)V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    :goto_3
    :try_start_0
    iget-object v0, p0, Lich;->b:Ljava/lang/Object;

    nop

    nop

    monitor-enter v0

    nop
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lich;->c:[Lsvr;

    nop

    nop

    nop

    iget-object p0, p0, Lich;->a:Lhzk;

    nop

    nop

    nop

    nop

    iget-wide v2, p1, Lsvr;->a:J

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v2, v3}, Lhzk;->a(J)I

    move-result p0

    nop

    nop

    aput-object p1, v1, p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method
