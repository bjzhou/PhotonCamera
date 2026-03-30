.class public final Lqki;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqkh;


# instance fields
.field public a:Landroid/media/AudioRecord;

.field public final b:I

.field private final c:Landroid/media/AudioFormat;

.field private final d:Lqkk;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Ljava/util/concurrent/atomic/AtomicLong;

.field private final g:Ljava/util/concurrent/atomic/AtomicLong;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final m:Ljava/util/concurrent/atomic/AtomicLong;

.field private final n:Ljava/util/concurrent/atomic/AtomicLong;

.field private final o:Ljava/util/concurrent/atomic/AtomicLong;

.field private final p:Ljava/util/concurrent/atomic/AtomicLong;

.field private final q:Landroid/media/AudioTimestamp;

.field private r:J


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(Z)V
    .locals 8

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1
    const-wide/16 v2, 0x1388

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

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

    :goto_3
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xc

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lqki;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    cmp-long p1, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

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

    :goto_13
    if-gez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p1, p0, Lqki;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_15
    add-long/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

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

    :goto_17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

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

    :goto_18
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1a
    iget-object p1, p0, Lqki;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p0, Lqki;->g:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p0, Lqki;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p0, Lqki;->h:Ljava/util/concurrent/atomic/AtomicInteger;

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
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Lqki;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p1, p0, Lqki;->o:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_e

    nop

    nop

    :goto_28
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    nop

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

    nop

    :goto_2b
    iget-object p1, p0, Lqki;->f:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lqki;->o:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    :goto_31
    goto/32 :goto_32

    nop

    nop

    :goto_32
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_33
    const-string v0, "  read=%d (%d bytes), maxDeltaNs=%d, noTimestamp=%d, noData=%d, noInit=%d, badOut=%d, largeGap=%d"

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public constructor <init>(Landroid/media/AudioRecord;I)V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    :goto_0
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

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

    nop

    :goto_4
    iput-object v0, p0, Lqki;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lqki;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_c
    iput-object p2, p0, Lqki;->d:Lqkk;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lqki;->p:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p1, Landroid/media/AudioTimestamp;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x13

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_12
    new-instance p2, Lqkk;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Lqki;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Lqki;->n:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_2c

    nop

    nop

    :goto_1a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    iput-object v0, p0, Lqki;->o:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1c
    iput p2, p0, Lqki;->b:I

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

    :goto_1d
    iput-object p1, p0, Lqki;->c:Landroid/media/AudioFormat;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1e
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x18

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    iput-object p1, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v0, p0, Lqki;->m:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_22
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_23
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getFormat()Landroid/media/AudioFormat;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_24
    iput-object v0, p0, Lqki;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

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

    :goto_2a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2b
    invoke-direct {p2, p1}, Lqkk;-><init>(Landroid/media/AudioFormat;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object v0, p0, Lqki;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object v0, p0, Lqki;->f:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput-object v0, p0, Lqki;->g:Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_32
    iput-object p1, p0, Lqki;->q:Landroid/media/AudioTimestamp;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput-object v0, p0, Lqki;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_35
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {p1}, Landroid/media/AudioTimestamp;-><init>()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_3a
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_24

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/media/AudioFormat;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getFormat()Landroid/media/AudioFormat;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioRecord;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Ljava/nio/ByteBuffer;I)Lqkg;
    .locals 12

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    if-eq v0, v1, :cond_7

    nop

    nop

    iget-object p1, p0, Lqki;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0, v3}, Lqki;->23ce148e54b083367f51e25c7971761em(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    return-object v2

    nop

    nop

    nop

    :cond_0
    :try_start_1
    iget-object v0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lqki;->q:Landroid/media/AudioTimestamp;

    nop

    nop

    nop

    nop

    iget v4, p0, Lqki;->b:I

    nop

    nop

    invoke-virtual {v0, v1, v4}, Landroid/media/AudioRecord;->getTimestamp(Landroid/media/AudioTimestamp;I)I

    move-result v0

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lqki;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0, v3}, Lqki;->23ce148e54b083367f51e25c7971761em(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x15

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_5

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_2
    monitor-exit v8

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    add-long/2addr v4, v6

    nop

    nop

    nop

    nop

    nop

    iput-wide v4, p0, Lqki;->r:J

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lqki;->p:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    nop

    cmp-long v0, v4, v1

    nop

    nop

    nop

    if-gtz v0, :cond_2

    nop

    move-wide v4, v6

    nop

    nop

    :cond_2
    sub-long v0, v6, v4

    nop

    nop

    const-wide/32 v4, 0x5f5e100

    nop

    nop

    nop

    cmp-long v2, v0, v4

    nop

    nop

    nop

    nop

    nop

    if-ltz v2, :cond_3

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lqki;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    const-string v4, "Large audio timestamp gap detected: %d ns (packet %d)"

    nop

    nop

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    const-string v4, "AudioStreamImpl"

    nop

    nop

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lqki;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_3
    iget-object v2, p0, Lqki;->g:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lqki;->p:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-direct {p0, v3}, Lqki;->23ce148e54b083367f51e25c7971761em(Z)V

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v0, Lqkg;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1, p2, v6, v7}, Lqkg;-><init>(Ljava/nio/ByteBuffer;IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_16

    nop

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

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object v2

    nop

    nop

    nop

    :cond_4
    :try_start_4
    iget-object v0, p0, Lqki;->d:Lqkk;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lqki;->q:Landroid/media/AudioTimestamp;

    nop

    nop

    nop

    nop

    nop

    int-to-long v4, p2

    nop

    nop

    nop

    nop

    nop

    iget v2, v0, Lqkk;->d:I

    nop

    nop

    nop

    nop

    nop

    iget v6, v0, Lqkk;->c:I

    nop

    nop

    nop

    int-to-long v6, v6

    nop

    nop

    nop

    nop

    div-long/2addr v4, v6

    nop

    int-to-long v6, v2

    nop

    div-long/2addr v4, v6

    nop

    nop

    iget-object v2, v0, Lqkk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v2

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-wide v6, v0, Lqkk;->e:J

    nop

    nop

    nop

    iget-wide v8, v1, Landroid/media/AudioTimestamp;->framePosition:J

    nop

    nop

    nop

    sub-long/2addr v6, v8

    nop

    nop

    nop

    iget-wide v8, v0, Lqkk;->b:J

    nop

    nop

    mul-long/2addr v6, v8

    nop

    nop

    nop

    nop

    nop

    iget-wide v8, v0, Lqkk;->e:J

    nop

    nop

    nop

    add-long/2addr v8, v4

    nop

    nop

    nop

    nop

    nop

    iput-wide v8, v0, Lqkk;->e:J

    nop

    nop

    nop

    nop

    iget-wide v0, v1, Landroid/media/AudioTimestamp;->nanoTime:J

    nop

    nop

    nop

    nop

    add-long/2addr v6, v0

    nop

    monitor-exit v2

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v0, p0, Lqki;->m:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    cmp-long v0, v6, v0

    nop

    nop

    nop

    nop

    const-wide/16 v1, 0x0

    nop

    if-gez v0, :cond_5

    nop

    nop

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    iget-object v4, p0, Lqki;->m:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    nop

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    nop

    nop

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    const-string v4, "Stale audio packet detected: %d (start=%d)"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const-string v4, "AudioStreamImpl"

    nop

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    nop

    nop

    nop

    :cond_5
    iget-object v0, p0, Lqki;->n:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v0, v1, v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_6

    nop

    nop

    nop

    iget-object v0, p0, Lqki;->n:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    iget-object v4, p0, Lqki;->m:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    sub-long/2addr v8, v4

    nop

    nop

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    invoke-virtual {v0, v8, v9, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    nop

    iget-object v0, p0, Lqki;->m:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    nop

    nop

    nop

    nop

    nop

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    iget-object v10, p0, Lqki;->n:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    nop

    nop

    nop

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    nop

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    nop

    nop

    filled-new-array {v0, v10, v8, v4}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    const-string v4, "First read. Start: %d ns. First packet: %d ns. Audio startup latency: %d ns (%d ms)"

    nop

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_6
    :goto_8
    iget-wide v4, p0, Lqki;->r:J

    nop

    cmp-long v0, v6, v4

    nop

    nop

    nop

    const-wide/32 v4, 0x186a0

    nop

    if-gez v0, :cond_1

    nop

    nop

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-wide v6, p0, Lqki;->r:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    iget-object v7, p0, Lqki;->d:Lqkk;

    nop

    nop

    iget-object v8, v7, Lqkk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v8

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-wide v9, v7, Lqkk;->e:J

    nop

    nop

    nop

    nop

    nop

    monitor-exit v8

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    nop

    filled-new-array {v0, v6, v7}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    const-string v6, "Timestamp out of order: %d < %d. Frame pos=%d"

    nop

    nop

    nop

    nop

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-wide v6, p0, Lqki;->r:J

    nop

    nop

    nop

    nop

    add-long/2addr v4, v6

    nop

    nop

    nop

    iput-wide v4, p0, Lqki;->r:J

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_4

    nop

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object v2

    nop

    nop

    nop

    :cond_7
    :try_start_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_8

    nop

    nop

    nop

    iget-object v0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lqki;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lqki;->f:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    int-to-long v4, p2

    nop

    nop

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_a

    nop

    nop

    iget-object v0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    nop

    nop

    nop

    add-int/2addr v4, v5

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v4, p2}, Landroid/media/AudioRecord;->read([BII)I

    move-result p2

    nop

    nop

    nop

    iget-object v0, p0, Lqki;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lqki;->f:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    int-to-long v4, p2

    nop

    nop

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :goto_b
    if-nez p2, :cond_0

    nop

    nop

    nop

    iget-object p1, p0, Lqki;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0, v3}, Lqki;->23ce148e54b083367f51e25c7971761em(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object v2

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    :try_start_a
    monitor-exit p0

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    throw p1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_9

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

    :cond_9
    goto/32 :goto_e

    nop

    :goto_13
    monitor-exit p0

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

    nop

    :goto_14
    return-object v0

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    :try_start_b
    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw p1

    nop

    :cond_a
    const-string p1, "AudioStreamImpl"

    nop

    nop

    const-string p2, "Provided bytebuffer unsupported."

    nop

    nop

    nop

    nop

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lqki;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0, v3}, Lqki;->23ce148e54b083367f51e25c7971761em(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x5

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

    nop

    nop

    :goto_16
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    :goto_18
    monitor-exit p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 8

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/16 v0, 0x0

    nop

    nop

    :try_start_0
    iput-wide v0, p0, Lqki;->r:J

    nop

    nop

    nop

    iget-object v2, p0, Lqki;->d:Lqkk;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v2, Lqkk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v3

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-wide v0, v2, Lqkk;->e:J

    nop

    nop

    nop

    monitor-exit v3

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    if-eq v0, v1, :cond_0

    nop

    iget-object v0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSource()I

    move-result v3

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v4

    nop

    nop

    nop

    iget-object v0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelConfiguration()I

    move-result v5

    nop

    nop

    iget-object v0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v6

    nop

    nop

    nop

    iget-object v0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getFormat()Landroid/media/AudioFormat;

    move-result-object v0

    nop

    invoke-static {v0}, Lqkk;->a(Landroid/media/AudioFormat;)I

    move-result v0

    nop

    nop

    iget-object v2, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v2

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

    nop

    nop

    mul-int/2addr v0, v2

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v2

    nop

    nop

    nop

    mul-int v7, v2, v0

    nop

    iget-object v0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const-string v0, "AudioStreamImpl"

    nop

    nop

    nop

    nop

    nop

    const-string v2, "AudioRecord in a bad state. Recreating AudioRecord"

    nop

    nop

    nop

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/AudioRecord;

    nop

    nop

    nop

    move-object v2, v0

    nop

    nop

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    :cond_0
    iget-object v0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    nop

    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    const-string v0, "AudioStreamImpl"

    nop

    nop

    nop

    nop

    const-string v1, "Could not start AudioStream since it is not initialized."

    nop

    nop

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :cond_1
    :try_start_3
    iget-object v0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lqki;->m:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    iget v2, p0, Lqki;->b:I

    nop

    nop

    nop

    nop

    nop

    if-ne v2, v1, :cond_2

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_c

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

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

    :goto_9
    const v1, 0x19

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
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

    nop

    :try_start_4
    monitor-exit v3

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    :goto_10
    add-int v0, v0, v1

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
.end method

.method public final declared-synchronized close()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

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

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    monitor-exit p0

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
    throw v0

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    :try_start_0
    invoke-direct {p0, v0}, Lqki;->23ce148e54b083367f51e25c7971761em(Z)V

    iget-object v0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-void

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

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()V
    .locals 4

    goto/32 :goto_8

    nop

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

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

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

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
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

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-direct {p0, v0}, Lqki;->23ce148e54b083367f51e25c7971761em(Z)V

    iget-object v0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lqki;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lqki;->f:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lqki;->g:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lqki;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lqki;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lqki;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lqki;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lqki;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lqki;->o:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lqki;->p:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lqki;->m:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lqki;->n:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x18

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    goto :goto_a

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    :try_start_2
    const-string v1, "AudioStreamImpl"

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Error while closing AudioStream."

    nop

    nop

    nop

    nop

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public final getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getPreferredDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p0

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

    :goto_1
    iget-object p0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop
.end method

.method public final getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop
.end method

.method public final removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    goto/32 :goto_1

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

    nop

    :goto_2
    iget-object p0, p0, Lqki;->a:Landroid/media/AudioRecord;

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
.end method

.method public final setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result p0

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

    :goto_1
    return p0

    nop

    :goto_2
    iget-object p0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final setPreferredMicrophoneDirection(I)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord;->setPreferredMicrophoneDirection(I)Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final setPreferredMicrophoneFieldDimension(F)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord;->setPreferredMicrophoneFieldDimension(F)Z

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqki;->a:Landroid/media/AudioRecord;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop
.end method
