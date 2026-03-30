.class public final Lhzk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field private final b:[J

.field private c:I

.field private d:I


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(J)I
    .locals 6

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iget-object v0, p0, Lhzk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lhzk;->d()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v1, v1, -0x1

    nop

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

    :goto_4
    if-gt v2, v1, :cond_3

    nop

    nop

    nop

    add-int v3, v2, v1

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lhzk;->b:[J

    nop

    nop

    nop

    nop

    ushr-int/lit8 v3, v3, 0x1

    nop

    nop

    invoke-virtual {p0, v3}, Lhzk;->e(I)I

    move-result v5

    nop

    nop

    aget-wide v4, v4, v5

    nop

    nop

    nop

    cmp-long v4, v4, p1

    nop

    nop

    nop

    nop

    nop

    if-gez v4, :cond_1

    nop

    nop

    add-int/lit8 v2, v3, 0x1

    nop

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    :cond_1
    if-lez v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v1, v3, -0x1

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    monitor-exit v0

    nop

    nop

    nop

    return v3

    nop

    nop

    :cond_3
    monitor-exit v0

    nop

    nop

    return v2

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_5
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    nop
.end method

.method public constructor <init>(I)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhzk;->b:[J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lhzk;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    iput-object v0, p0, Lhzk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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
    new-array p1, p1, [J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    iput p1, p0, Lhzk;->c:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(J)I
    .locals 6

    goto/32 :goto_d

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lhzk;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lhzk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lhzk;->h()Z

    move-result v3

    nop

    xor-int/2addr v3, v2

    nop

    nop

    nop

    nop

    const-string v4, "Attempting to get latest timestamp on empty buffer!"

    nop

    nop

    nop

    nop

    invoke-static {v3, v4}, Lrrf;->y(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lhzk;->d()I

    move-result v3

    nop

    nop

    nop

    nop

    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v3}, Lhzk;->g(I)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    cmp-long v1, p1, v3

    nop

    if-lez v1, :cond_0

    nop

    nop

    goto :goto_3

    nop

    :cond_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto :goto_4

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

    monitor-exit v1

    nop

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

    :cond_1
    :goto_3
    move v1, v2

    nop

    :goto_4
    const-string v3, "Attempting to insert earlier timestamp into buffer!"

    nop

    nop

    nop

    invoke-static {v1, v3}, Lrrf;->m(ZLjava/lang/Object;)V

    iget v1, p0, Lhzk;->c:I

    nop

    nop

    add-int/lit8 v3, v1, 0x1

    nop

    iget-object v4, p0, Lhzk;->b:[J

    nop

    array-length v5, v4

    nop

    nop

    nop

    nop

    rem-int/2addr v3, v5

    nop

    nop

    iput v3, p0, Lhzk;->c:I

    nop

    nop

    nop

    nop

    aput-wide p1, v4, v1

    nop

    nop

    nop

    iget p1, p0, Lhzk;->d:I

    nop

    add-int/2addr p1, v2

    nop

    nop

    nop

    nop

    iput p1, p0, Lhzk;->d:I

    nop

    nop

    monitor-exit v0

    nop

    return v1

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lhzk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x9

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(J)I
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lhzk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xb

    nop

    goto/32 :goto_2

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lhzk;->h()Z

    move-result v1

    nop

    nop

    nop

    const/4 v2, -0x1

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1, p2}, Lhzk;->1478a1c7833aac5e360e0ba4b0c0c568m(J)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-ltz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lhzk;->d()I

    move-result v3

    nop

    nop

    if-ge v1, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Lhzk;->g(I)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    cmp-long p0, v3, p1

    nop

    nop

    if-nez p0, :cond_1

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return v1

    nop

    nop

    nop

    nop

    :cond_1
    if-eqz v1, :cond_2

    nop

    nop

    add-int/2addr v1, v2

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return v1

    nop

    nop

    nop

    nop

    :cond_2
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return v2

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop
.end method

.method public final c(J)I
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lhzk;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    const v0, 0x7

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

    :goto_2
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lhzk;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, -0x1

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1, p2}, Lhzk;->1478a1c7833aac5e360e0ba4b0c0c568m(J)I

    move-result p1

    nop

    nop

    nop

    nop

    if-ltz p1, :cond_0

    nop

    nop

    invoke-virtual {p0}, Lhzk;->d()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    if-ge p1, p0, :cond_0

    nop

    move v2, p1

    nop

    :cond_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    return v2

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    nop

    return v2

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_4

    nop
.end method

.method public final d()I
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lhzk;->d:I

    nop

    nop

    nop

    iget-object p0, p0, Lhzk;->b:[J

    nop

    nop

    nop

    nop

    array-length p0, p0

    nop

    nop

    nop

    nop

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return p0

    nop

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

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const v1, 0x16

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lhzk;->a:Ljava/lang/Object;

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

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    throw p0

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final e(I)I
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

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
    const v1, 0xd

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

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int/2addr v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lhzk;->d()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    return v1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    monitor-exit v0

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

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_b
    add-int/2addr v1, p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lhzk;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0}, Lhzk;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget v1, p0, Lhzk;->d:I

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lhzk;->b:[J

    nop

    nop

    array-length v2, v2

    nop

    nop

    nop

    nop

    if-lt v1, v2, :cond_2

    nop

    iget v1, p0, Lhzk;->c:I

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    :cond_2
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_10
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final f(J)I
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    if-gez v1, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-direct {p0, p1, p2}, Lhzk;->1478a1c7833aac5e360e0ba4b0c0c568m(J)I

    move-result v1

    nop

    nop

    nop

    nop

    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    if-ltz v1, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lhzk;->d()I

    move-result v3

    nop

    nop

    nop

    if-ge v1, v3, :cond_2

    nop

    nop

    invoke-virtual {p0, v1}, Lhzk;->g(I)J

    move-result-wide v3

    nop

    cmp-long p1, v3, p1

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    :cond_2
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :cond_3
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v2

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    :goto_b
    iget-object v0, p0, Lhzk;->a:Ljava/lang/Object;

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

    :goto_c
    invoke-virtual {p0, v1}, Lhzk;->e(I)I

    move-result p0

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

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xe

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(I)J
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    const v1, 0x4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    if-gez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lhzk;->d()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-ge p1, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lhzk;->b:[J

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Lhzk;->e(I)I

    move-result p0

    nop

    nop

    nop

    nop

    aget-wide p0, v1, p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-wide p0

    nop

    nop

    :cond_2
    :goto_8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Attempting to access illegal index "

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lhzk;->a:Ljava/lang/Object;

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

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final h()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    iget-object v0, p0, Lhzk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget p0, p0, Lhzk;->d:I

    nop

    nop

    nop

    if-nez p0, :cond_0

    nop

    nop

    const/4 p0, 0x1

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    const/4 p0, 0x0

    nop

    nop

    :goto_3
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return p0

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop
.end method
