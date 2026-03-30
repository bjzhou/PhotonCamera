.class public final Llue;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Landroid/util/Range;

.field private final b:Lj$/time/Duration;

.field private final c:Lj$/time/Duration;

.field private final d:Lj$/time/Duration;

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/util/Range;Lj$/time/Duration;Lj$/time/Duration;Lj$/time/Duration;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_2
    iput v0, p0, Llue;->g:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    iput-object p2, p0, Llue;->b:Lj$/time/Duration;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    iput-wide v0, p0, Llue;->f:J

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Llue;->h:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const-wide/16 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Llue;->i:Z

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p3, p0, Llue;->c:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p4, p0, Llue;->d:Lj$/time/Duration;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    :goto_12
    iput-wide v0, p0, Llue;->e:J

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    iput-object p1, p0, Llue;->a:Landroid/util/Range;

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
.end method


# virtual methods
.method public final declared-synchronized a(FJ)V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    throw p1

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :cond_1
    :goto_a
    :try_start_1
    iput-wide p2, p0, Llue;->e:J

    nop

    nop

    nop

    nop

    nop

    iput v2, p0, Llue;->g:I

    nop

    iget p1, p0, Llue;->h:I

    nop

    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    iput p1, p0, Llue;->h:I

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    :try_start_2
    iget-wide v0, p0, Llue;->e:J

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    if-ltz v0, :cond_1

    nop

    nop

    iget-object v0, p0, Llue;->a:Landroid/util/Range;

    nop

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    nop

    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    :cond_2
    iget p1, p0, Llue;->g:I

    nop

    nop

    nop

    add-int/lit8 p1, p1, 0x1

    nop

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    iput p1, p0, Llue;->g:I

    nop

    nop

    iput v2, p0, Llue;->h:I

    nop

    nop

    iput-wide p2, p0, Llue;->f:J

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final declared-synchronized a(J)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iput-wide p1, p0, Llue;->e:J

    nop

    const/4 p1, 0x5

    nop

    nop

    nop

    iput p1, p0, Llue;->h:I

    nop

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

    nop

    :goto_4
    throw p1

    nop
.end method

.method public final declared-synchronized b(J)Z
    .locals 8

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    return v0

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    sget v0, Lcom/a;->f:I

    nop

    nop

    if-ltz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget v0, p0, Llue;->g:I

    nop

    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    if-lt v0, v1, :cond_2

    nop

    nop

    iget-wide v4, p0, Llue;->e:J

    nop

    nop

    nop

    nop

    nop

    sub-long v4, p1, v4

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Llue;->b:Lj$/time/Duration;

    nop

    invoke-virtual {v0}, Lj$/time/Duration;->toNanos()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    cmp-long v0, v4, v6

    nop

    nop

    if-ltz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-wide v4, p0, Llue;->f:J

    nop

    nop

    nop

    nop

    const-wide/16 v6, -0x1

    nop

    nop

    cmp-long v0, v4, v6

    nop

    nop

    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    sub-long v4, p1, v4

    nop

    nop

    nop

    iget-object v0, p0, Llue;->d:Lj$/time/Duration;

    nop

    invoke-virtual {v0}, Lj$/time/Duration;->toNanos()J

    move-result-wide v6

    nop

    nop

    cmp-long v0, v4, v6

    nop

    nop

    nop

    nop

    nop

    if-gtz v0, :cond_2

    nop

    nop

    nop

    nop

    move v0, v2

    nop

    nop

    nop

    goto :goto_9

    nop

    :cond_2
    move v0, v3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_4

    nop

    nop

    nop

    iget-boolean v4, p0, Llue;->i:Z

    nop

    nop

    nop

    if-eqz v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget v0, p0, Llue;->h:I

    nop

    nop

    nop

    if-lt v0, v1, :cond_3

    nop

    nop

    nop

    nop

    iget-wide v0, p0, Llue;->f:J

    nop

    nop

    nop

    nop

    sub-long v0, p1, v0

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Llue;->c:Lj$/time/Duration;

    nop

    nop

    invoke-virtual {v4}, Lj$/time/Duration;->toNanos()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    cmp-long v0, v0, v4

    nop

    nop

    if-ltz v0, :cond_3

    nop

    nop

    iget-wide v0, p0, Llue;->e:J

    nop

    sub-long/2addr p1, v0

    nop

    nop

    nop

    iget-object v0, p0, Llue;->d:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lj$/time/Duration;->toNanos()J

    move-result-wide v0

    nop

    nop

    nop

    cmp-long p1, p1, v0

    nop

    nop

    nop

    nop

    if-gtz p1, :cond_3

    nop

    nop

    move v3, v2

    nop

    nop

    nop

    nop

    nop

    :cond_3
    xor-int/lit8 v0, v3, 0x1

    nop

    :cond_4
    iput-boolean v0, p0, Llue;->i:Z

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    return v0

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    const/4 v0, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop
.end method
