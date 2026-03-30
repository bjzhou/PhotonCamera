.class public final Llss;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llsp;


# instance fields
.field public final a:Lhzk;

.field private final b:[Llso;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Llss;->b:[Llso;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-wide/16 v1, 0x7530

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xf

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-array v0, v0, [Llso;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v2, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_d
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v2, p0, Llss;->a:Lhzk;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    iput-object v2, p0, Llss;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    const-wide/16 v2, 0x1e

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

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

    :goto_16
    long-to-int v0, v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v2, v0}, Lhzk;-><init>(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v2, Lhzk;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    mul-long/2addr v0, v2

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
.method public final a(J)Llso;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Llss;->a:Lhzk;

    nop

    invoke-virtual {v1, p1, p2}, Lhzk;->f(J)I

    move-result p1

    nop

    if-ltz p1, :cond_0

    nop

    nop

    nop

    nop

    iget-object p0, p0, Llss;->b:[Llso;

    nop

    aget-object p0, p0, p1

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    const/4 p0, 0x0

    nop

    nop

    :goto_2
    monitor-exit v0

    nop

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

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x3

    nop

    nop

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

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    if-lez v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_7
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Llss;->c:Ljava/lang/Object;

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

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final b(J)Llso;
    .locals 7

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

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

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    :goto_6
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Llss;->a:Lhzk;

    nop

    nop

    nop

    invoke-virtual {v1}, Lhzk;->d()I

    move-result v1

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    if-gtz v1, :cond_1

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-object v2

    nop

    :cond_1
    iget-object v1, p0, Llss;->a:Lhzk;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, p2}, Lhzk;->b(J)I

    move-result v3

    nop

    nop

    invoke-virtual {v1, v3}, Lhzk;->e(I)I

    move-result v1

    nop

    nop

    iget-object v3, p0, Llss;->a:Lhzk;

    nop

    nop

    nop

    invoke-virtual {v3, p1, p2}, Lhzk;->c(J)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lhzk;->e(I)I

    move-result v3

    nop

    if-ltz v1, :cond_2

    nop

    iget-object v4, p0, Llss;->b:[Llso;

    nop

    nop

    nop

    aget-object v1, v4, v1

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    move-object v1, v2

    nop

    nop

    nop

    nop

    :goto_7
    if-ltz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Llss;->b:[Llso;

    nop

    nop

    nop

    nop

    nop

    aget-object v2, p0, v3

    nop

    nop

    nop

    nop

    :cond_3
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-object v2

    nop

    nop

    :cond_4
    if-nez v2, :cond_5

    nop

    monitor-exit v0

    nop

    nop

    return-object v1

    nop

    nop

    :cond_5
    iget-wide v3, v1, Llso;->a:J

    nop

    nop

    nop

    nop

    sub-long v3, p1, v3

    nop

    nop

    nop

    nop

    nop

    iget-wide v5, v2, Llso;->a:J

    nop

    nop

    nop

    nop

    sub-long/2addr v5, p1

    nop

    nop

    cmp-long p0, v3, v5

    nop

    nop

    nop

    nop

    nop

    if-ltz p0, :cond_6

    nop

    move-object v1, v2

    nop

    nop

    nop

    nop

    nop

    :cond_6
    monitor-exit v0

    nop

    nop

    nop

    nop

    return-object v1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Llss;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final d(Llso;)V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    :goto_1
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x2

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
    goto/32 :goto_3

    nop

    :goto_7
    :try_start_0
    iget-object v0, p0, Llss;->c:Ljava/lang/Object;

    nop

    nop

    monitor-enter v0

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Llss;->b:[Llso;

    nop

    nop

    nop

    iget-object p0, p0, Llss;->a:Lhzk;

    nop

    nop

    iget-wide v2, p1, Llso;->a:J

    nop

    nop

    invoke-virtual {p0, v2, v3}, Lhzk;->a(J)I

    move-result p0

    nop

    nop

    nop

    nop

    aput-object p1, v1, p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

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
    goto/32 :goto_2

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method
