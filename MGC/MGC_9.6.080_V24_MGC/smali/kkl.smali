.class public final Lkkl;
.super Landroid/os/CountDownTimer;
.source "PG"


# instance fields
.field a:I

.field b:J

.field public final synthetic c:Lkkm;


# direct methods
.method public constructor <init>(Lkkm;)V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/32 v0, 0x7fffffff

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_2
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    iput-wide v0, p0, Lkkl;->b:J

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    const-wide/16 v2, 0x2ee0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lkkl;->c:Lkkm;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    const-wide/16 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    iput p1, p0, Lkkl;->a:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v0, Lkkm;->b:Ljava/util/List;

    nop

    goto/32 :goto_5

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

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    :goto_4
    const v0, 0x14

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    iget-object v0, v0, Lkkm;->d:Lneh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Lolx;->bl(Lsui;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lkkm;->h:Lsui;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_c
    invoke-interface {p0}, Lfxp;->c()V

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x13

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

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    check-cast p0, Lfxp;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lkkl;->c:Lkkm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    iget-object p0, p0, Lkkl;->c:Lkkm;

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

.method public final declared-synchronized onTick(J)V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Lkkl;->b:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, -0x1

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

    if-nez v0, :cond_1

    nop

    nop

    nop

    iput-wide p1, p0, Lkkl;->b:J

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

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
    move-exception p1

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

    goto/32 :goto_9

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_8
    monitor-exit p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :cond_1
    :try_start_2
    iget-object v0, p0, Lkkl;->c:Lkkm;

    nop

    nop

    iget-object v1, v0, Lkkm;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lkkm;->d:Lneh;

    nop

    nop

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    iget-wide v0, p0, Lkkl;->b:J

    nop

    nop

    nop

    sub-long/2addr v0, p1

    nop

    nop

    nop

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    const-wide/16 v2, 0x1e

    nop

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    nop

    nop

    nop

    cmp-long p1, v0, p1

    nop

    nop

    nop

    nop

    if-ltz p1, :cond_2

    nop

    iget-object p1, p0, Lkkl;->c:Lkkm;

    nop

    nop

    nop

    nop

    iget-object p2, p1, Lkkm;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lkkm;->d:Lneh;

    nop

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lkkl;->c:Lkkm;

    nop

    iget-object p1, p1, Lkkm;->b:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    iput p1, p0, Lkkl;->a:I

    nop

    nop

    nop

    nop

    :cond_2
    iget-object p1, p0, Lkkl;->c:Lkkm;

    nop

    nop

    nop

    nop

    nop

    iget p2, p0, Lkkl;->a:I

    nop

    nop

    iget-object p1, p1, Lkkm;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Lneh;

    nop

    nop

    nop

    nop

    iget p2, p0, Lkkl;->a:I

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 p2, p2, 0x1

    nop

    iput p2, p0, Lkkl;->a:I

    nop

    iget-object v0, p0, Lkkl;->c:Lkkm;

    nop

    iget-object v0, v0, Lkkm;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    rem-int/2addr p2, v0

    nop

    nop

    nop

    iput p2, p0, Lkkl;->a:I

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lkkl;->c:Lkkm;

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Lkbu;

    nop

    nop

    nop

    nop

    const/16 v1, 0xa

    nop

    nop

    nop

    invoke-direct {v0, p0, p1, v1}, Lkbu;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, p2, Lkkm;->a:Lowu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Lowu;->execute(Ljava/lang/Runnable;)V
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

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    const v1, 0x1

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

    :goto_e
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop
.end method
