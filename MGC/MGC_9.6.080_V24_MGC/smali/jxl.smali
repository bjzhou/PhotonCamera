.class final Ljxl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqkz;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Ljwn;Lqkz;I)V
    .locals 0

    goto/32 :goto_4

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
    iput-object p2, p0, Ljxl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Ljxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Ljxl;->d:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Ljxm;Ljwk;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ljxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Ljxl;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Ljxl;->d:I

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
.method public final a(J)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    sget-boolean p0, Ljwc;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    sget-boolean p0, Ljwc;->a:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    invoke-interface {p0, p1, p2}, Lqkz;->a(J)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ljxl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    iget v0, p0, Ljxl;->d:I

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
.end method

.method public final b(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_40

    nop

    nop

    :goto_1
    iget-object v0, p0, Ljxl;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x2

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Ljxl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/high16 v2, -0x80000000

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, v2, Ljxm;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Ljxm;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Ljxy;->j:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, v0, Ljxm;->i:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Ljxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_e
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Ljxm;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Ljxm;->t:Ljxy;

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

    :goto_12
    iput v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    :goto_13
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v2, Ljxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Ljxl;->a:Ljava/lang/Object;

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

    nop

    nop

    :goto_16
    check-cast v0, Ljxm;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3f

    nop

    :goto_18
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_19
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_1b
    check-cast p0, Ljxm;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :goto_1e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, v0, Ljxm;->k:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Ljxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Ljxl;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_24
    sget-object v0, Ljxy;->a:Lsdb;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v2, Ljxm;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v0, Ljxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_28
    goto :goto_1e

    nop

    :goto_29
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget v0, p0, Ljxl;->d:I

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Ljxy;->m:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v2, p0, Ljxl;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Ljxl;->a:Ljava/lang/Object;

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

    :goto_2e
    if-nez v0, :cond_3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    and-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto/32 :goto_18

    nop

    nop

    :goto_31
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Luoj;->m()Z

    move-result v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1, v2, v3, v0}, Llcm;->c(JLkat;)Z

    move-result v0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v0, p1, v1}, Ljxx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_46

    nop

    nop

    :goto_38
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast v0, Ljwk;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3b
    const v0, 0xe

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, v2, v3}, Ljwk;->e(J)Luoj;

    move-result-object v0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v2, v3, v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v0, v0, Ljxm;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_43
    invoke-interface {v0, p1, v1, v2}, Lscz;->u(Ljava/lang/String;J)V

    :goto_44
    goto/32 :goto_59

    nop

    nop

    :goto_45
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v1, p0, Ljxy;->o:Llcm;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    return-void

    nop

    nop

    :goto_48
    goto/32 :goto_0

    nop

    nop

    :goto_49
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4a
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    or-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4c
    new-instance v0, Ljxk;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    :goto_4e
    goto/32 :goto_5

    nop

    nop

    :goto_4f
    invoke-interface {p0, p1}, Lqkz;->b(Landroid/media/MediaCodec$BufferInfo;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v0, v0, Ljxm;->j:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const-string p1, "onEncoded(%d) was received but we weren\'t expecting this timestamp"

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_52
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {v0, p0, v1}, Ljxk;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object p0, p0, Ljxl;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v0, p0, Ljxl;->a:Ljava/lang/Object;

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

    :goto_56
    iget-object v0, v0, Ljxm;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    new-instance v0, Ljxx;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/16 v1, 0xaf2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_59
    iget-object p1, p0, Ljxy;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_5a
    iget-object v2, p0, Ljxl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_5b
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v2, v2, Ljxm;->l:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final d(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final e(Lqkp;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    const v1, 0x14

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    :try_start_0
    iget-object v1, p0, Ljxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Ljwn;

    nop

    nop

    iget-object v1, v1, Ljwn;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_4
    new-instance p1, Ljxk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Lqkp;->b()Lqkr;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xf

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Ljxl;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0, p1}, Lqkz;->e(Lqkp;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p1, p0, v0}, Ljxk;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Ljxm;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Ljxm;->d:Landroid/os/Handler;

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

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Ljxl;->a:Ljava/lang/Object;

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

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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

    :goto_18
    iget v0, p0, Ljxl;->d:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method
