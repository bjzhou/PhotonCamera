.class public final Lkad;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkah;


# instance fields
.field final synthetic a:Lkae;

.field private final b:Lkah;

.field private final c:J

.field private d:Lrss;

.field private e:Lrss;

.field private f:Z


# direct methods
.method public constructor <init>(Lkae;JLkah;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkad;->a:Lkae;

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

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lkad;->f:Z

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

    :goto_2
    iput-object p1, p0, Lkad;->d:Lrss;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lkad;->e:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput-object p4, p0, Lkad;->b:Lkah;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    iput-wide p2, p0, Lkad;->c:J

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()J
    .locals 6

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lkad;->a:Lkae;

    nop

    nop

    nop

    iget-object v1, v1, Lkae;->d:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lkad;->b:Lkah;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lkah;->a()J

    iget-wide v1, p0, Lkad;->c:J

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lkad;->a:Lkae;

    nop

    nop

    iget-wide v4, v3, Lkae;->f:J

    nop

    nop

    nop

    nop

    nop

    cmp-long v1, v1, v4

    nop

    nop

    nop

    if-lez v1, :cond_0

    nop

    nop

    iget-object v1, v3, Lkae;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    :cond_0
    iget-object v1, p0, Lkad;->a:Lkae;

    nop

    iget-wide v1, v1, Lkae;->f:J

    nop

    nop

    nop

    invoke-virtual {p0, v1, v2}, Lkad;->c(J)V

    :cond_1
    iget-wide v1, p0, Lkad;->c:J

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-wide v1

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x14

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_4
    throw p0

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lkad;->a:Lkae;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 7

    goto/32 :goto_1e

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

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    iget-object v0, p0, Lkad;->e:Lrss;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, v0}, Lkag;->a(Ljzx;)V

    :goto_3
    goto/32 :goto_23

    nop

    nop

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Lkae;->a:Lpcu;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2a

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    :goto_8
    invoke-virtual {v3}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, v4, v5, v1}, Lkag;->b(JLkak;)V

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

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

    nop

    :goto_c
    const-string v5, "Sending out end timestamp: "

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    check-cast v1, Lkak;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    iget-object v0, v0, Lkae;->a:Lpcu;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lkad;->a:Lkae;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_15
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    iget-object v0, p0, Lkad;->a:Lkae;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    :goto_19
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v2, Lkak;->a:Lkak;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v0, v4}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x6

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v2, p0, Lkad;->f:Z

    nop

    nop

    if-eqz v2, :cond_2

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

    return-void

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v2, p0, Lkad;->e:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    if-eqz v2, :cond_4

    nop

    iget-object v2, p0, Lkad;->d:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_4

    nop

    nop

    iget-wide v2, p0, Lkad;->c:J

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lkad;->a:Lkae;

    nop

    iget-wide v4, v4, Lkae;->c:J

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lkad;->d:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    cmp-long v2, v4, v2

    nop

    nop

    if-gtz v2, :cond_3

    nop

    nop

    nop

    sget-object v2, Ljzx;->g:Ljzx;

    nop

    nop

    nop

    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    move-object v3, v1

    nop

    nop

    nop

    nop

    goto :goto_20

    nop

    :cond_3
    iget-object v2, p0, Lkad;->d:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    sget-object v3, Lkak;->k:Lkak;

    nop

    nop

    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    move-object v6, v2

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    move-object v1, v6

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v4, 0x1

    nop

    nop

    nop

    iput-boolean v4, p0, Lkad;->f:Z

    nop

    nop

    nop

    iget-object v4, p0, Lkad;->a:Lkae;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lkae;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v6, v2

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    move-object v1, v3

    nop

    nop

    nop

    move-object v3, v6

    nop

    nop

    goto :goto_21

    nop

    :cond_4
    move-object v2, v1

    nop

    nop

    move-object v3, v2

    nop

    :goto_21
    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lkad;->a:Lkae;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_23
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

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lkad;->e:Lrss;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x16

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_28
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_29
    throw p0

    nop

    nop

    :goto_2a
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2b
    check-cast v0, Ljzx;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v2, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2d
    invoke-virtual {v1, v2}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_2e
    const-string v1, "Cancelling long shot."

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method public final c(J)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkad;->d:Lrss;

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

    :goto_1
    invoke-virtual {p0}, Lkad;->b()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final d(Lkag;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkad;->e:Lrss;

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

    :goto_2
    invoke-interface {v0, p1}, Lkah;->d(Lkag;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p0, v0}, Lkac;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Lkac;

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

    :goto_5
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lkad;->b()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lkad;->b:Lkah;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
