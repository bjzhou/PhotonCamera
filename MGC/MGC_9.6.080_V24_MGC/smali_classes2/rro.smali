.class public final Lrro;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lj$/time/Duration;

.field private final b:Ljava/util/ArrayList;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lj$/time/Duration;)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    :goto_2
    iget-object v1, p0, Lrro;->b:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lrro;->c:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_8

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v1, p0, Lrro;->d:Z

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

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
    sget-object v2, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v0, 0x3e8

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lrro;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    if-lt p1, v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Lrro;->a:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_19
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()D
    .locals 9

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    div-double/2addr v2, v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const-wide v4, 0x408f400000000000L    # 1000.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

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

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    return-wide v0

    nop

    nop

    :cond_0
    :goto_9
    :try_start_0
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v0

    nop

    nop

    nop

    sget-object v1, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    nop

    iget v2, p0, Lrro;->c:I

    nop

    nop

    nop

    nop

    nop

    iget-boolean v3, p0, Lrro;->d:Z

    nop

    nop

    nop

    nop

    const/16 v4, 0x3e7

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v5, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    move v3, v2

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    move v3, v4

    nop

    nop

    nop

    :goto_a
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v6, p0, Lrro;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Lj$/time/Instant;

    nop

    nop

    nop

    invoke-static {v6, v0}, Lj$/time/Duration;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)Lj$/time/Duration;

    move-result-object v7

    nop

    nop

    iget-object v8, p0, Lrro;->a:Lj$/time/Duration;

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Lj$/time/Duration;->compareTo(Lj$/time/Duration;)I

    move-result v8

    nop

    nop

    nop

    nop

    if-gtz v8, :cond_6

    nop

    nop

    nop

    sget-object v8, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    nop

    invoke-virtual {v6, v8}, Lj$/time/Instant;->isAfter(Lj$/time/Instant;)Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-gez v6, :cond_3

    nop

    nop

    nop

    nop

    move-object v1, v7

    nop

    nop

    nop

    :cond_3
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    :cond_4
    if-gtz v2, :cond_5

    nop

    nop

    move v2, v4

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    :cond_5
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    :goto_b
    if-ne v2, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    :cond_6
    int-to-double v2, v5

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

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

    nop

    :goto_c
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    const-wide/16 v0, 0x0

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

    :goto_f
    long-to-double v0, v0

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

    :goto_10
    mul-double/2addr v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_8

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_8
    goto/32 :goto_18

    nop

    :goto_12
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-wide v2

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    iget-boolean v0, p0, Lrro;->d:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    iget v0, p0, Lrro;->c:I

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    const v1, 0x13

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    throw v0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lrro;->c(Lj$/time/Instant;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Lj$/time/Instant;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    monitor-exit p0

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

    :goto_1
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

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

    goto/32 :goto_b

    nop

    nop

    :goto_2
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    goto/32 :goto_9

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

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget v0, p0, Lrro;->c:I

    nop

    nop

    nop

    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    iput v0, p0, Lrro;->c:I

    nop

    const/16 v1, 0x3e8

    nop

    nop

    nop

    nop

    nop

    if-lt v0, v1, :cond_1

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    iput v0, p0, Lrro;->c:I

    nop

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lrro;->d:Z

    nop

    nop

    nop

    :cond_1
    iget-object v1, p0, Lrro;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw p1

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
.end method
