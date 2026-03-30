.class public Lppt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:J

.field public final c:Ljava/util/LinkedList;

.field public d:J

.field public e:Z


# direct methods
.method private final 7ecc92917e9c4556cc19f457ddc41af8m(J)Lppr;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput-wide v0, p0, Lppt;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const v1, 0xd

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lppt;->d()V

    goto/32 :goto_7

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    :goto_5
    invoke-direct {v0, p0, p1, p2}, Lppr;-><init>(Lppt;J)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x15

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lppr;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    add-long/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    :goto_b
    goto/32 :goto_e

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_e
    iget-wide v0, p0, Lppt;->d:J

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop
.end method

.method public constructor <init>(J)V
    .locals 0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lppt;->c:Ljava/util/LinkedList;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lppt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-wide p1, p0, Lppt;->d:J

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    const-wide/16 p1, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    iput-wide p1, p0, Lppt;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    new-instance p1, Ljava/util/LinkedList;

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

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    iput-boolean p1, p0, Lppt;->e:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(J)Lppr;
    .locals 8

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v6, p0, Lppt;->b:J

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lppt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-gtz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lppt;->e:Z

    nop

    nop

    nop

    nop

    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1, p2}, Lppt;->7ecc92917e9c4556cc19f457ddc41af8m(J)Lppr;

    move-result-object p0

    nop

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    :cond_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object p0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_e
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    invoke-static/range {v2 .. v7}, Lrrf;->s(ZLjava/lang/String;JJ)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    const-string v3, "%s is an illegal block size (Must be > 0 and <= %s"

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-wide v4, p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-wide v2, p0, Lppt;->b:J

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_17
    move v2, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    cmp-long v0, p1, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    cmp-long v0, p1, v2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final b(J)Lppr;
    .locals 8

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    add-int v0, v0, v1

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

    nop

    :goto_2
    sget-object v3, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->hxDQsdDvHMK:Ljava/lang/String;

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

    :goto_3
    move-wide v4, p1

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

    nop

    :goto_4
    invoke-static/range {v2 .. v7}, Lrrf;->s(ZLjava/lang/String;JJ)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    move v2, v1

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
    iget-object v1, p0, Lppt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    iget-wide v6, p0, Lppt;->b:J

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

    :goto_a
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    iget-wide v2, p0, Lppt;->b:J

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    :goto_f
    if-lez v2, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    cmp-long v2, p1, v2

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    if-gtz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    cmp-long v0, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v2, p0, Lppt;->e:Z

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_3

    nop

    nop

    nop

    iget-object v2, p0, Lppt;->c:Ljava/util/LinkedList;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    iget-wide v4, p0, Lppt;->d:J

    nop

    nop

    nop

    nop

    add-long/2addr v4, p1

    nop

    nop

    nop

    nop

    iget-wide v6, p0, Lppt;->b:J

    nop

    nop

    nop

    nop

    cmp-long v0, v4, v6

    nop

    if-gtz v0, :cond_3

    nop

    invoke-direct {p0, p1, p2}, Lppt;->7ecc92917e9c4556cc19f457ddc41af8m(J)Lppr;

    move-result-object v3

    nop

    :cond_3
    monitor-exit v1

    nop

    nop

    nop

    nop

    return-object v3

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_14

    nop

    nop

    :goto_17
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    const/4 v1, 0x1

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final c(J)Lsui;
    .locals 8

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v6, p0, Lppt;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-wide v4, p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :cond_0
    :try_start_0
    new-instance p0, Lpfi;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lpfi;-><init>()V

    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-object p0

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

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lppt;->e()V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lppt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static/range {v2 .. v7}, Lrrf;->s(ZLjava/lang/String;JJ)V

    goto/32 :goto_5

    nop

    nop

    :goto_7
    if-gtz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

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

    :goto_9
    const/4 v1, 0x1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    iget-wide v2, p0, Lppt;->b:J

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    cmp-long v0, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v1, p0, Lppt;->e:Z

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lppt;->c:Ljava/util/LinkedList;

    nop

    nop

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-wide v1, p0, Lppt;->d:J

    nop

    nop

    add-long/2addr v1, p1

    nop

    nop

    nop

    nop

    iget-wide v3, p0, Lppt;->b:J

    nop

    nop

    nop

    nop

    cmp-long v1, v1, v3

    nop

    nop

    nop

    if-gtz v1, :cond_3

    nop

    invoke-direct {p0, p1, p2}, Lppt;->7ecc92917e9c4556cc19f457ddc41af8m(J)Lppr;

    move-result-object p0

    nop

    nop

    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-object p0

    nop

    nop

    :cond_3
    new-instance v1, Lpps;

    nop

    invoke-direct {v1, p0, p1, p2}, Lpps;-><init>(Lppt;J)V

    iget-object p1, p0, Lppt;->c:Ljava/util/LinkedList;

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lppt;->d()V

    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_12
    const v1, 0x8

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

    :goto_13
    const-wide/16 v0, 0x0

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

    :goto_14
    const v0, 0xd

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    cmp-long v0, p1, v2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_19
    const-string v3, "%s is an illegal block size (Must be > 0 and <= %s"

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

    :goto_1a
    move v2, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_4

    nop

    goto/32 :goto_a

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, v1, Lpps;->a:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 4

    goto/32 :goto_16

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2, v3}, Lpps;->a(Lppr;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    :goto_9
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_b
    check-cast v2, Lpps;

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

    :goto_c
    monitor-enter v1

    nop

    nop

    :try_start_0
    iget-boolean v2, p0, Lppt;->e:Z

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_1
    const/4 v2, 0x1

    nop

    iput-boolean v2, p0, Lppt;->e:Z

    nop

    nop

    nop

    iget-object v2, p0, Lppt;->c:Ljava/util/LinkedList;

    nop

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lppt;->c:Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p0}, Lppt;->d()V

    monitor-exit v1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_d
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    const v1, 0x20

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Lppt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v3, 0x0

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

    nop

    :goto_16
    const v0, 0x2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    if-lt v1, p0, :cond_2

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

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public d()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final e()V
    .locals 10

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_4

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

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
    iget-object v0, p0, Lppt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v3}, Lpps;->a(Lppr;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lppt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_d
    const v1, 0x8

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

    :goto_e
    monitor-enter v1

    nop

    nop

    :try_start_1
    invoke-virtual {p0}, Lppt;->d()V

    monitor-exit v1

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_8

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

    :try_start_2
    iget-object v1, p0, Lppt;->c:Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lpps;

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    iget-boolean v2, p0, Lppt;->e:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    iget-object v2, p0, Lppt;->c:Ljava/util/LinkedList;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    iget-wide v4, p0, Lppt;->d:J

    nop

    iget-wide v6, v1, Lpps;->b:J

    nop

    nop

    add-long/2addr v4, v6

    nop

    nop

    nop

    iget-wide v8, p0, Lppt;->b:J

    nop

    nop

    nop

    nop

    cmp-long v2, v4, v8

    nop

    if-gtz v2, :cond_3

    nop

    nop

    nop

    invoke-direct {p0, v6, v7}, Lppt;->7ecc92917e9c4556cc19f457ddc41af8m(J)Lppr;

    move-result-object v3

    nop

    nop

    nop

    iget-object v2, p0, Lppt;->c:Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_10

    nop

    :cond_3
    move-object v1, v3

    nop

    nop

    nop

    :goto_10
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    :goto_12
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
