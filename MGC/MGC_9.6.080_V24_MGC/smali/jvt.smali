.class public final Ljvt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpsa;


# instance fields
.field private final a:Ljvz;

.field private final b:Ljvk;


# direct methods
.method public constructor <init>(Ljvz;Ljvk;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p2, p0, Ljvt;->b:Ljvk;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ljvt;->a:Ljvz;

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final dQ()V
    .locals 10

    goto/32 :goto_20

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

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_1
    cmp-long v2, v0, v2

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

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v5, "Out of order timestamp %d came after %d"

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_6
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

    :goto_7
    check-cast v4, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    cmp-long v2, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v3, v0, Ljwk;->g:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    const-wide v4, 0x7fffffffffffffffL

    nop

    nop

    nop

    nop

    :cond_1
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    if-eqz v6, :cond_2

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, Ljwj;

    nop

    nop

    nop

    nop

    iget-boolean v7, v6, Ljwj;->c:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-boolean v7, v6, Ljwj;->f:Z

    nop

    nop

    nop

    if-nez v7, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v6, Ljwj;->b:Lsay;

    nop

    nop

    nop

    invoke-virtual {v6}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    nop

    nop

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    nop

    goto :goto_a

    nop

    nop

    :cond_2
    iget-wide v6, v0, Ljwk;->d:J

    nop

    nop

    nop

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    nop

    iput-wide v1, v0, Ljwk;->d:J

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljwk;->d()V

    iget-object v1, v0, Ljwk;->i:Ljwm;

    nop

    nop

    nop

    nop

    nop

    iget-wide v2, v0, Ljwk;->d:J

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Ljwm;->d(J)V

    iget-object v1, v0, Ljwk;->j:Ljwm;

    nop

    iget-wide v2, v0, Ljwk;->d:J

    nop

    invoke-virtual {v1, v2, v3}, Ljwm;->d(J)V

    iget-object v1, v0, Ljwk;->k:Ljwm;

    nop

    nop

    nop

    iget-wide v2, v0, Ljwk;->d:J

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Ljwm;->d(J)V

    monitor-exit p0

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    const v1, 0x4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    iput-wide v0, p0, Ljvk;->o:J

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-gez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v2, p0, Ljvk;->o:J

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    iget-object v0, p0, Ljvk;->t:Ljwk;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v3, 0xa85

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    iget-wide v8, p0, Ljvk;->o:J

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object v4, v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    iget-wide v2, p0, Ljvk;->o:J

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-ltz v2, :cond_4

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v2, Ljvk;->a:Lsdb;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1a
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface/range {v4 .. v9}, Lscz;->A(Ljava/lang/String;JJ)V

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    throw v0

    nop

    nop

    :goto_1e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Ljvk;->p:Ljava/util/List;

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

    :goto_20
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_21
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_22
    goto/32 :goto_17

    nop

    nop

    :goto_23
    iget-object p0, v0, Ljwk;->c:Ljava/lang/Object;

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

    :goto_24
    iget-object v0, p0, Ljvt;->a:Ljvz;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-wide/32 v3, -0x16e360

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Ljvt;->b:Ljvk;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0}, Ljvz;->a()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2a
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2b
    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2c
    move-wide v6, v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2e
    iget-wide v1, p0, Ljvk;->o:J

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2f
    add-long/2addr v1, v3

    nop

    goto/32 :goto_23

    nop

    nop
.end method
