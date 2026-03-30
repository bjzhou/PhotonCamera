.class final Ljfq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lppc;


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:I


# direct methods
.method private final declared-synchronized 33f5b80483094659737b73d90f80a8a4m(Lppf;)V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

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

    :try_start_0
    iget-wide v0, p0, Ljfq;->a:D

    nop

    nop

    nop

    iget v2, p1, Lppf;->f:F

    nop

    nop

    nop

    nop

    float-to-double v2, v2

    nop

    nop

    nop

    nop

    nop

    add-double/2addr v0, v2

    nop

    nop

    nop

    iput-wide v0, p0, Ljfq;->a:D

    nop

    nop

    nop

    nop

    nop

    iget-wide v0, p0, Ljfq;->b:D

    nop

    iget v2, p1, Lppf;->g:F

    nop

    nop

    float-to-double v2, v2

    nop

    nop

    nop

    add-double/2addr v0, v2

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Ljfq;->b:D

    nop

    nop

    iget-wide v0, p0, Ljfq;->c:D

    nop

    iget p1, p1, Lppf;->h:F

    nop

    nop

    nop

    nop

    nop

    float-to-double v2, p1

    nop

    add-double/2addr v0, v2

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Ljfq;->c:D

    nop

    nop

    nop

    iget p1, p0, Ljfq;->d:I

    nop

    nop

    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    iput p1, p0, Ljfq;->d:I

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    throw p1

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

    :goto_8
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

    :goto_9
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide v0, p0, Ljfq;->a:D

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xb

    nop

    nop

    goto/32 :goto_f

    nop

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
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    iput-wide v0, p0, Ljfq;->b:D

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

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Ljfq;->d:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    const v0, 0x6

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-wide v0, p0, Ljfq;->c:D

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_2

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    :goto_6
    invoke-direct {p0, v0}, Ljfq;->33f5b80483094659737b73d90f80a8a4m(Lppf;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    :goto_9
    check-cast v0, Lppf;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method final declared-synchronized b()Lrss;
    .locals 9

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x6

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget v0, p0, Ljfq;->d:I

    nop

    if-nez v0, :cond_1

    nop

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    :cond_1
    :try_start_2
    iget-wide v1, p0, Ljfq;->a:D

    nop

    int-to-double v3, v0

    nop

    nop

    nop

    nop

    nop

    div-double/2addr v1, v3

    nop

    nop

    nop

    nop

    iget-wide v5, p0, Ljfq;->b:D

    nop

    nop

    nop

    nop

    div-double/2addr v5, v3

    nop

    nop

    nop

    nop

    nop

    iget-wide v7, p0, Ljfq;->c:D

    nop

    nop

    nop

    nop

    div-double/2addr v7, v3

    nop

    nop

    nop

    nop

    nop

    mul-double/2addr v1, v1

    nop

    nop

    nop

    nop

    mul-double/2addr v5, v5

    nop

    nop

    nop

    nop

    add-double/2addr v1, v5

    nop

    nop

    nop

    nop

    mul-double/2addr v7, v7

    nop

    nop

    nop

    add-double/2addr v1, v7

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    double-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

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

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    goto/32 :goto_8

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
