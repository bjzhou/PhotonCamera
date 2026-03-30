.class public final Lkjz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lilj;


# instance fields
.field public final synthetic a:J

.field final synthetic b:Lpol;

.field final synthetic c:Lkkb;


# direct methods
.method public constructor <init>(Lkkb;JLpol;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-wide p2, p0, Lkjz;->a:J

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkjz;->c:Lkkb;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lkjz;->b:Lpol;

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
.end method


# virtual methods
.method public final a(Linb;Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 4

    goto/32 :goto_19

    nop

    nop

    :goto_0
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p2, p0, Lkjz;->c:Lkkb;

    nop

    nop

    nop

    iget-object p3, p2, Lkkb;->w:Lsuu;

    nop

    nop

    nop

    nop

    nop

    if-eqz p3, :cond_0

    nop

    nop

    iget-object p2, p2, Lkkb;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p2

    nop

    const-wide/16 v0, 0x2

    nop

    cmp-long p2, p2, v0

    nop

    nop

    if-ltz p2, :cond_0

    nop

    nop

    nop

    sget-object p2, Lkkb;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    const/16 p3, 0xbae

    nop

    nop

    invoke-interface {p2, p3}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    nop

    nop

    nop

    const-string p3, "At least %d frames are encoded. "

    nop

    iget-object v0, p0, Lkjz;->c:Lkkb;

    nop

    nop

    iget-object v0, v0, Lkkb;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, p3, v0, v1}, Lscz;->u(Ljava/lang/String;J)V

    iget-object p2, p0, Lkjz;->c:Lkkb;

    nop

    iget-object p2, p2, Lkkb;->w:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x0

    nop

    nop

    nop

    invoke-virtual {p2, p3}, Lsuu;->e(Ljava/lang/Object;)Z

    iget-object p2, p0, Lkjz;->c:Lkkb;

    nop

    nop

    iput-object p3, p2, Lkkb;->w:Lsuu;

    nop

    nop

    nop

    :cond_0
    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iget-object p3, p1, Lkkb;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

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

    :goto_4
    iget-object p1, p0, Lkjz;->c:Lkkb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1d

    nop

    nop

    :goto_7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    int-to-long v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_a
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_b
    iget p1, p1, Lmqd;->e:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_c
    iget-object p1, p0, Lkjz;->c:Lkkb;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p2, p0, Lkjz;->c:Lkkb;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p1, Lkkb;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p2, p2, Lkkb;->h:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p1, Lkkb;->g:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p3, p2, v0, v1}, Ljcv;->b(Landroid/hardware/HardwareBuffer;J)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_12
    invoke-interface {p2, v2, v3, v0, v1}, Lmqa;->a(JJ)V

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_1
    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p3, p1, Lkkb;->p:Ljcv;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_16
    const/16 p3, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p2, p0, p3}, Ljqf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    invoke-static {p0, p2}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p2, Ljqf;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p0, Lkjz;->c:Lkkb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1c
    int-to-long v0, p1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p0, Lkjz;->b:Lpol;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1e
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1f
    iget-object p0, p1, Lkkb;->k:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p1, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p1, Lkkb;->m:Lmqd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget p1, p1, Lmqd;->e:I

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_24
    throw p0

    nop

    :goto_25
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_28
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    :goto_29
    iget-object p1, p0, Lkjz;->c:Lkkb;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2b
    goto/32 :goto_25

    nop

    nop

    :goto_2c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

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

    nop

    :goto_2e
    iget-object p1, p1, Lkkb;->d:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p2, p1, Lkkb;->r:Lmqa;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_30
    iget-object p1, p0, Lkjz;->c:Lkkb;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_31
    iget-wide p2, p0, Lkjz;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p1, p1, Lkkb;->m:Lmqd;

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

    :goto_33
    div-long/2addr v0, v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Lpol;->l()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    monitor-enter p2

    nop

    nop

    nop

    :try_start_2
    iget-object p3, p0, Lkjz;->c:Lkkb;

    nop

    iget-object p3, p3, Lkkb;->o:Ljava/util/ArrayList;

    nop

    nop

    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Lj$/time/Instant;->minusMillis(J)Lj$/time/Instant;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v0

    nop

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit p2

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p1, p0, Lkjz;->c:Lkkb;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_38
    invoke-virtual {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop
.end method
