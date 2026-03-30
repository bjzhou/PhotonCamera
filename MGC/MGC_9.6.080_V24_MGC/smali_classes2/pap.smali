.class public final Lpap;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public A:J

.field public B:I

.field public C:[B

.field public final D:Landroid/os/HandlerThread;

.field public final E:Lsuu;

.field private final F:Ljava/lang/Object;

.field private final G:Ljava/lang/Object;

.field private final H:Loyn;

.field private final I:Lpdf;

.field private final J:Lpaq;

.field private K:J

.field private final L:Loyn;

.field private M:Lpci;

.field private N:Lpci;

.field private O:Landroid/media/audiofx/AcousticEchoCanceler;

.field private P:Landroid/media/audiofx/NoiseSuppressor;

.field private final Q:Landroid/os/Handler;

.field private final R:Landroid/media/MediaCodec$Callback;

.field private S:I

.field public final a:Lsuk;

.field public final b:Lsuk;

.field public final c:Lsuk;

.field public final d:Lsuk;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Lppp;

.field public final h:Landroid/media/MediaCodec;

.field public final i:Lryb;

.field public final j:D

.field public final k:Lryb;

.field public final l:Ljava/util/Queue;

.field public final m:Z

.field public final n:Ljava/util/Deque;

.field public o:J

.field public volatile p:J

.field public q:J

.field public final r:Ljava/util/concurrent/atomic/AtomicLong;

.field public final s:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile t:Z

.field public volatile u:Z

.field public volatile v:Z

.field public volatile w:Z

.field public volatile x:Z

.field public final y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public z:Ljava/util/concurrent/Future;


# direct methods
.method private final 33b3102b6558811a7b7629a1e8e59bd2m(J)V
    .locals 6

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lpap;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lpap;->n:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Lsay;

    nop

    iget-object v2, p0, Lpap;->n:Ljava/util/Deque;

    nop

    invoke-virtual {v1}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    nop

    invoke-static {v3, v4}, Lsay;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lsay;

    move-result-object v3

    nop

    nop

    nop

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lpap;->q:J

    nop

    nop

    invoke-virtual {v1}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    nop

    sub-long/2addr p1, v4

    nop

    nop

    add-long/2addr v2, p1

    nop

    nop

    nop

    nop

    nop

    iput-wide v2, p0, Lpap;->q:J

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_2
    const v0, 0x14

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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    const v1, 0x3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    nop
.end method

.method private final 3fd9578e124c68aa49885b22b61b4ec8m()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    iget-object p0, p0, Lpap;->D:Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    const/4 v1, 0x0

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

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p0, v1}, Lpam;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x10

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lpap;->Q:Landroid/os/Handler;

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

    :goto_e
    new-instance v0, Lpam;

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
.end method

.method public constructor <init>(Lozj;Lppp;Ljava/util/List;Ljava/util/List;Lpdf;Loyn;Loyn;Lpaq;Z)V
    .locals 5

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide v0, p0, Lpap;->o:J

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

    :goto_1
    iput-object v0, p0, Lpap;->l:Ljava/util/Queue;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_2
    int-to-double p3, p2

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v2, p0, Lpap;->t:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lpap;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_7
    iput-object p8, p0, Lpap;->J:Lpaq;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_9
    invoke-static {p4}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-wide v2, 0x7fffffffffffffffL

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6f

    nop

    nop

    :goto_c
    const/4 p6, 0x5

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_f
    const-string p8, "audio/mp4a-latm"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    iget-object p6, p2, Lozn;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p6, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v1, 0x3e8

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_13
    iget-object p6, p2, Lozn;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_14
    iput-object v4, p0, Lpap;->s:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_16
    iput-wide p3, p0, Lpap;->j:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_17
    iput-wide v0, p0, Lpap;->A:J

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Lpap;->R:Landroid/media/MediaCodec$Callback;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_19
    const v1, 0xe

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_1a
    iput-boolean v2, p0, Lpap;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p7}, Landroid/media/MediaFormat;-><init>()V

    goto/32 :goto_34

    nop

    nop

    :goto_1c
    goto/32 :goto_2f

    nop

    nop

    :goto_1d
    goto/32 :goto_85

    nop

    nop

    nop

    :goto_1e
    move v2, p3

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_20
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_22
    iput-object p1, p0, Lpap;->h:Landroid/media/MediaCodec;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object p7, p0, Lpap;->L:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    const/4 p4, 0x2

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_25
    iget p2, p2, Lozb;->g:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_26
    iput-boolean v2, p0, Lpap;->v:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p2}, Lolx;->aX(Lozp;)Landroid/media/MediaCodec;

    move-result-object p1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_29
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez p9, :cond_0

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

    :cond_0
    goto/32 :goto_45

    nop

    nop

    :goto_2b
    iput-object p2, p0, Lpap;->i:Lryb;

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

    :goto_2c
    const-string p6, "sample-rate"

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v3, p0, Lpap;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    :goto_2f
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object p5, p0, Lpap;->I:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p2, p4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {p3}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_34
    const-string p8, "mime"

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_35
    iput-object v0, p0, Lpap;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_36
    sget-object p3, Lkotlinx/coroutines/android/cMC/QBzQbzDQvUUZ;->IwaIbdGMlM:Ljava/lang/String;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_38
    iget p4, p1, Lozj;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eq p2, p4, :cond_1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1, p7, v3, v3, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object p2, Lozn;->a:Lozn;

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p7, p6, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_3e
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-ne p2, p6, :cond_2

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_41
    invoke-static {p2}, Lsgj;->H(Ljava/util/concurrent/ExecutorService;)Lsuk;

    move-result-object p2

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iput-wide v2, p0, Lpap;->p:J

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iput-object p2, p0, Lpap;->D:Landroid/os/HandlerThread;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_44
    iput-object v3, p0, Lpap;->C:[B

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_45
    const p4, 0xbb80

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_46
    sget-object p2, Lozn;->b:Lozn;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput-object v0, p0, Lpap;->G:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput-object p2, p0, Lpap;->a:Lsuk;

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-ne p2, p3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :cond_3
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    new-instance v0, Lpan;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_4b
    new-instance v0, Ljava/util/ArrayDeque;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4c
    invoke-static {p2}, Lsgj;->H(Ljava/util/concurrent/ExecutorService;)Lsuk;

    move-result-object p2

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_4d
    iput-object p2, p0, Lpap;->b:Lsuk;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_4e
    iput-object v3, p0, Lpap;->z:Ljava/util/concurrent/Future;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4f
    iput-wide v2, p0, Lpap;->K:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_50
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8f

    nop

    nop

    :goto_53
    const-string p2, "AEncFormat"

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_54
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_2d

    nop

    nop

    :goto_56
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_57
    iget p4, p1, Lozj;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const/4 p6, 0x4

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iput-object p2, p0, Lpap;->d:Lsuk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iput-object p6, p0, Lpap;->H:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_5e
    invoke-direct {p4, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    new-instance p4, Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget p2, p1, Lozj;->d:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    sget-object p2, Lozn;->e:Lozn;

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_63
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_64
    if-ne p2, p4, :cond_4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iput-object v0, p0, Lpap;->E:Lsuu;

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_66
    invoke-static {p2}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iput p3, p0, Lpap;->S:I

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iput-object p2, p0, Lpap;->c:Lsuk;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_69
    invoke-direct {v0, p0}, Lpan;-><init>(Lpap;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6a
    const-wide/16 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6b
    const-string p2, "AEncOutput"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_6c
    iput-object p2, p0, Lpap;->k:Lryb;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const v0, 0x8

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_6e
    const/4 p3, 0x0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iput-boolean v2, p0, Lpap;->u:Z

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const-string p2, "AEncReadAudio"

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p7, p8, p6}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {p2}, Lsgj;->H(Ljava/util/concurrent/ExecutorService;)Lsuk;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget p6, p1, Lozj;->c:I

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_75
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_76
    iput-object p2, p0, Lpap;->g:Lppp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_77
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_78
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_79
    iput-boolean v2, p0, Lpap;->w:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_7a
    iput-object v4, p0, Lpap;->r:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {p2}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_7c
    goto/32 :goto_1d

    nop

    nop

    :goto_7d
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    :goto_7e
    if-ne p2, p6, :cond_6

    nop

    nop

    goto/32 :goto_9e

    nop

    :cond_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7f
    iput-boolean v2, p0, Lpap;->x:Z

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_80
    const-string p2, "AEncInput"

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    const/4 p6, 0x3

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iput v0, p0, Lpap;->B:I

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    div-double/2addr p3, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_84
    new-instance v0, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p7, p4, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_88
    iget p1, p1, Lozj;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_89
    sget-object p2, Lozn;->c:Lozn;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-static {p2}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_8b
    sget-object p2, Lozn;->d:Lozn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_8d
    const-string p6, "aac-profile"

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iput-object v0, p0, Lpap;->n:Ljava/util/Deque;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_8f
    iput-object v0, p0, Lpap;->F:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_90
    new-instance p7, Landroid/media/MediaFormat;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_91
    invoke-direct {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_14

    nop

    nop

    :goto_92
    const-string p6, "channel-count"

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {p7, p6, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_88

    nop

    nop

    :goto_95
    const/4 p3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_96
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_97
    if-nez p6, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_7
    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_98
    new-instance p2, Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_99
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object p2, p1, Lozj;->a:Lozb;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_9b
    const-string p4, "AudioEncoder"

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    throw p0

    nop

    nop

    nop

    :goto_9e
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    iput-object p4, p0, Lpap;->Q:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {p1, v0, p4}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_a1
    const-string p4, "bitrate"

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-static {p2}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_a4
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_99

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-static {p2}, Lsgj;->H(Ljava/util/concurrent/ExecutorService;)Lsuk;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_a8
    int-to-double p6, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {p7, p6, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-direct {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_7a

    nop

    nop

    :goto_ab
    if-eq p2, p6, :cond_8

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_62

    nop

    nop

    nop
.end method

.method private static j()J
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    const v1, 0x20

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    nop

    :goto_6
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    return-wide v0

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    :goto_b
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

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

    nop

    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

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
.end method


# virtual methods
.method public final a(J)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1c

    nop

    goto/32 :goto_d

    nop

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    iget-wide v0, p0, Lpap;->j:D

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    long-to-double p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    mul-double/2addr p1, v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    return-wide p0

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    double-to-long p0, p1

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xb

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
.end method

.method public final b(J)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    iget-object v0, p0, Lpap;->F:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_a

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lpap;->S:I

    nop

    nop

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_1

    nop

    nop

    const-string p0, "AudioEncoder"

    nop

    nop

    const-string p1, "It is not recording now"

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    iput v1, p0, Lpap;->S:I

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1, p2}, Lpap;->a(J)J

    move-result-wide p1

    nop

    nop

    nop

    iget-object p0, p0, Lpap;->n:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    invoke-static {p1}, Lsay;->c(Ljava/lang/Comparable;)Lsay;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

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

    nop

    monitor-exit v0

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

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1f

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
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1c

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const v0, 0x8

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

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
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    iget-object v0, p0, Lpap;->F:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lpap;->S:I

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_4

    nop

    iget-object v1, p0, Lpap;->D:Landroid/os/HandlerThread;

    nop

    nop

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

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

    nop

    nop

    invoke-direct {p0}, Lpap;->3fd9578e124c68aa49885b22b61b4ec8m()V

    :cond_1
    iget-object v1, p0, Lpap;->a:Lsuk;

    nop

    nop

    nop

    invoke-interface {v1}, Lsuk;->shutdown()V

    iget-object v1, p0, Lpap;->c:Lsuk;

    nop

    nop

    invoke-interface {v1}, Lsuk;->shutdown()V

    iget-object v1, p0, Lpap;->b:Lsuk;

    nop

    nop

    nop

    invoke-interface {v1}, Lsuk;->shutdown()V

    iget-object v1, p0, Lpap;->d:Lsuk;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lsuk;->shutdown()V

    iget-object v1, p0, Lpap;->h:Landroid/media/MediaCodec;

    nop

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iget-object v1, p0, Lpap;->g:Lppp;

    nop

    invoke-interface {v1}, Lppp;->close()V

    iget-object v1, p0, Lpap;->M:Lpci;

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    invoke-interface {v1}, Lpci;->close()V

    :cond_2
    iget-object v1, p0, Lpap;->N:Lpci;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    invoke-interface {v1}, Lpci;->close()V

    :cond_3
    iput v2, p0, Lpap;->S:I

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_4
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

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

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lpap;->F:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    invoke-static {}, Lpap;->j()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1, v2}, Lpap;->g(J)V

    invoke-virtual {p0}, Lpap;->c()V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    const v1, 0x10

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final d(J)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1c

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

    :goto_1
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget v1, p0, Lpap;->S:I

    nop

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    const-string p0, "AudioEncoder"

    nop

    const-string p1, "It is not recording now"

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_0
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    iput v1, p0, Lpap;->S:I

    nop

    nop

    nop

    invoke-virtual {p0, p1, p2}, Lpap;->a(J)J

    move-result-wide p1

    nop

    nop

    nop

    invoke-direct {p0, p1, p2}, Lpap;->33b3102b6558811a7b7629a1e8e59bd2m(J)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_8
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lpap;->F:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Ljava/lang/Runnable;Lsuk;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p2, p1}, Lsuk;->a(Ljava/lang/Runnable;)Lsui;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x3

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p0, Lstd;->a:Lstd;

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
    new-instance p2, Lkka;

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

    :goto_5
    invoke-direct {p2, p0, v0}, Lkka;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, p2, p0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 8

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    const v0, 0x13

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

    :goto_7
    iget-object v0, p0, Lpap;->F:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    :try_start_0
    iget v1, p0, Lpap;->S:I

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    if-eq v1, v4, :cond_6

    nop

    nop

    nop

    nop

    nop

    const-string p0, "AudioEncoder"

    nop

    nop

    nop

    nop

    if-eq v1, v4, :cond_5

    nop

    nop

    nop

    nop

    if-eq v1, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_3

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    if-eq v1, v2, :cond_2

    nop

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_1

    nop

    nop

    nop

    nop

    const-string v1, "null"

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    const-string v1, "PAUSED"

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    :cond_2
    const-string v1, "CLOSED"

    nop

    nop

    goto :goto_c

    nop

    :cond_3
    const-string v1, "STOPPED"

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    :cond_4
    const-string v1, "STARTED"

    nop

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    :cond_5
    const-string v1, "READY"

    nop

    :goto_c
    const-string v2, "illegal state as "

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_6
    iget-boolean v1, p0, Lpap;->x:Z

    nop

    nop

    if-eqz v1, :cond_8

    nop

    invoke-virtual {p0}, Lpap;->close()V

    iget-object p0, p0, Lpap;->k:Lryb;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lryb;->t()Lscq;

    move-result-object p0

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lpau;

    nop

    nop

    sget-object v2, Lpar;->i:Lpar;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lpau;->a(Lpar;)V

    goto :goto_d

    nop

    nop

    nop

    nop

    :cond_7
    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_8
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-wide v5, p0, Lpap;->q:J

    nop

    nop

    iget-object v1, p0, Lpap;->H:Loyn;

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Lnug;

    nop

    nop

    nop

    nop

    nop

    const/16 v6, 0x8

    nop

    nop

    nop

    invoke-direct {v5, p0, v6}, Lnug;-><init>(Ljava/lang/Object;I)V

    iget-object v6, p0, Lpap;->c:Lsuk;

    nop

    invoke-interface {v1, v5, v6}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    iput-object v1, p0, Lpap;->M:Lpci;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpap;->L:Loyn;

    nop

    nop

    nop

    nop

    new-instance v5, Lnug;

    nop

    nop

    nop

    nop

    nop

    const/16 v6, 0x9

    nop

    nop

    nop

    nop

    invoke-direct {v5, p0, v6}, Lnug;-><init>(Ljava/lang/Object;I)V

    iget-object v6, p0, Lpap;->c:Lsuk;

    nop

    nop

    nop

    invoke-interface {v1, v5, v6}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lpap;->N:Lpci;

    nop

    nop

    nop

    iget-object v1, p0, Lpap;->g:Lppp;

    nop

    nop

    invoke-interface {v1}, Lppp;->b()I

    move-result v1

    nop

    nop

    const/4 v5, 0x7

    nop

    nop

    nop

    if-ne v1, v5, :cond_d

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpap;->g:Lppp;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lppp;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lpap;->G:Ljava/lang/Object;

    nop

    nop

    monitor-enter v5

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_a

    nop

    nop

    nop

    iget-object v6, p0, Lpap;->O:Landroid/media/audiofx/AcousticEchoCanceler;

    nop

    if-nez v6, :cond_9

    nop

    nop

    iget-object v6, p0, Lpap;->I:Lpdf;

    nop

    const-string v7, "AudioEncoder#createAcousticEchoCanceler"

    nop

    nop

    nop

    invoke-interface {v6, v7}, Lpdf;->f(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v6

    nop

    nop

    nop

    iput-object v6, p0, Lpap;->O:Landroid/media/audiofx/AcousticEchoCanceler;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, p0, Lpap;->I:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Lpdf;->g()V

    :cond_9
    iget-object v6, p0, Lpap;->O:Landroid/media/audiofx/AcousticEchoCanceler;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v4}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    goto :goto_e

    nop

    nop

    nop

    nop

    :cond_a
    const-string v4, "AudioEncoder"

    nop

    nop

    nop

    const-string v6, "AcousticEchoCanceler is unavailable."

    nop

    nop

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_c

    nop

    nop

    nop

    iget-object v4, p0, Lpap;->P:Landroid/media/audiofx/NoiseSuppressor;

    nop

    if-nez v4, :cond_b

    nop

    iget-object v4, p0, Lpap;->I:Lpdf;

    nop

    const-string v6, "AudioEncoder#createNoiseSuppressor"

    nop

    nop

    nop

    invoke-interface {v4, v6}, Lpdf;->f(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v1

    nop

    nop

    iput-object v1, p0, Lpap;->P:Landroid/media/audiofx/NoiseSuppressor;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpap;->I:Lpdf;

    nop

    invoke-interface {v1}, Lpdf;->g()V

    :cond_b
    iget-object v1, p0, Lpap;->P:Landroid/media/audiofx/NoiseSuppressor;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    nop

    nop

    invoke-virtual {v1, v4}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    goto :goto_f

    nop

    :cond_c
    const-string v1, "AudioEncoder"

    nop

    nop

    nop

    const-string v4, "NoiseSuppressor is unavailable."

    nop

    nop

    nop

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    monitor-exit v5

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

    :catchall_0
    move-exception p0

    nop

    monitor-exit v5

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

    :cond_d
    :goto_10
    iget-object v1, p0, Lpap;->g:Lppp;

    nop

    nop

    nop

    invoke-interface {v1}, Lppp;->e()V

    iget-object v1, p0, Lpap;->g:Lppp;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lppp;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lpap;->g:Lppp;

    nop

    nop

    nop

    invoke-interface {v1}, Lppp;->c()I

    iget-object v1, p0, Lpap;->g:Lppp;

    nop

    invoke-interface {v1}, Lppp;->c()I

    move-result v1

    nop

    nop

    if-eq v1, v2, :cond_10

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpap;->i:Lryb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lryb;->t()Lscq;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_e

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lpag;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpag;->g()V

    invoke-interface {v2}, Lpag;->l()V

    goto :goto_11

    nop

    nop

    nop

    :cond_e
    iget-object v1, p0, Lpap;->k:Lryb;

    nop

    nop

    invoke-virtual {v1}, Lryb;->t()Lscq;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_f

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lpau;

    nop

    sget-object v3, Lpar;->d:Lpar;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lpau;->a(Lpar;)V

    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_f
    invoke-virtual {p0}, Lpap;->close()V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_10
    iput v3, p0, Lpap;->S:I

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lpap;->h:Landroid/media/MediaCodec;

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final g(J)V
    .locals 9

    goto/32 :goto_b

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lpap;->S:I

    nop

    nop

    const/4 v2, 0x2

    nop

    const/4 v3, 0x5

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    if-ne v1, v3, :cond_4

    nop

    nop

    nop

    move v1, v3

    nop

    nop

    nop

    nop

    :cond_0
    invoke-virtual {p0, p1, p2}, Lpap;->a(J)J

    move-result-wide p1

    nop

    nop

    nop

    if-ne v1, v3, :cond_1

    nop

    nop

    invoke-direct {p0, p1, p2}, Lpap;->33b3102b6558811a7b7629a1e8e59bd2m(J)V

    :cond_1
    iget-wide v3, p0, Lpap;->q:J

    nop

    nop

    nop

    nop

    sub-long/2addr p1, v3

    nop

    nop

    nop

    nop

    iput-wide p1, p0, Lpap;->p:J

    nop

    nop

    iget-object p1, p0, Lpap;->I:Lpdf;

    nop

    nop

    nop

    const-string p2, "AudioEncoder#stop"

    nop

    invoke-interface {p1, p2}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v3, p0, Lpap;->J:Lpaq;

    nop

    nop

    iget-wide v5, p0, Lpap;->p:J

    nop

    nop

    iget-object v7, p0, Lpap;->r:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    iget-object v8, p0, Lpap;->E:Lsuu;

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual/range {v3 .. v8}, Lpaq;->a(IJLjava/util/concurrent/atomic/AtomicLong;Lsui;)V

    iget-object p1, p0, Lpap;->g:Lppp;

    nop

    nop

    invoke-interface {p1}, Lppp;->f()V

    iget-object p1, p0, Lpap;->G:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lpap;->O:Landroid/media/audiofx/AcousticEchoCanceler;

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v3}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    iget-object p2, p0, Lpap;->O:Landroid/media/audiofx/AcousticEchoCanceler;

    nop

    nop

    invoke-virtual {p2}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    iput-object v1, p0, Lpap;->O:Landroid/media/audiofx/AcousticEchoCanceler;

    nop

    :cond_2
    iget-object p2, p0, Lpap;->P:Landroid/media/audiofx/NoiseSuppressor;

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_3

    nop

    nop

    invoke-virtual {p2, v3}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    iget-object p2, p0, Lpap;->P:Landroid/media/audiofx/NoiseSuppressor;

    nop

    invoke-virtual {p2}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    iput-object v1, p0, Lpap;->P:Landroid/media/audiofx/NoiseSuppressor;

    nop

    nop

    nop

    nop

    :cond_3
    monitor-exit p1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lpap;->Q:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    new-instance p2, Lpam;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2, p0, v2}, Lpam;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lpap;->3fd9578e124c68aa49885b22b61b4ec8m()V

    iget-object p1, p0, Lpap;->I:Lpdf;

    nop

    nop

    nop

    invoke-interface {p1}, Lpdf;->g()V

    const/4 p1, 0x3

    nop

    nop

    nop

    nop

    nop

    iput p1, p0, Lpap;->S:I

    nop

    nop

    nop

    :cond_4
    monitor-exit v0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

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

    :goto_2
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_3

    nop

    :goto_8
    iget-object v0, p0, Lpap;->F:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    const v0, 0x7

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

    :goto_c
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-exit p1

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 4

    goto/32 :goto_2

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

    goto/32 :goto_1

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    const v0, 0x10

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

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lpap;->t:Z

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget v1, p0, Lpap;->S:I

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x5

    nop

    nop

    if-eq v1, v2, :cond_1

    nop

    nop

    if-ne v1, v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-boolean v1, p0, Lpap;->v:Z

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpap;->c:Lsuk;

    nop

    new-instance v2, Lmaq;

    nop

    nop

    nop

    invoke-direct {v2, p0, v3}, Lmaq;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    :cond_2
    invoke-static {}, Lpap;->j()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1, v2}, Lpap;->g(J)V

    :cond_3
    monitor-exit v0

    nop

    nop

    nop

    return-void

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lpap;->F:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 11

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v3, "Could not start all required tracks."

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_1
    check-cast v2, Ljava/lang/Long;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lpap;->l:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_4
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ltz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_6
    iget-object v2, v2, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v8, v2, v1}, Lpag;->m(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_8
    iget-object v0, v0, Lpao;->a:Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v3, v3, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_33

    nop

    nop

    :goto_d
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, v0, Lpao;->a:Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_f
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v2, "AudioEncoder"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v3, p0, Lpap;->i:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v0, Lpao;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean v7, p0, Lpap;->u:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    cmp-long v1, v1, v3

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

    :goto_17
    goto :goto_10

    nop

    :catch_0
    move-exception v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v4, Lpar;->c:Lpar;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1b
    iget-wide v3, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1c
    iget-object v0, v0, Lpao;->a:Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1d
    invoke-interface {v8}, Lpag;->p()Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lt v5, v2, :cond_2

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v9, :cond_3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_21
    iget-object v1, v0, Lpao;->a:Landroid/media/MediaCodec$BufferInfo;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    :goto_23
    if-lt v6, v4, :cond_5

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_3c

    nop

    :goto_25
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v3, v0, Lpao;->a:Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v8, Lpag;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lpap;->l:Ljava/util/Queue;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_29
    const-wide/16 v9, 0x7d0

    nop

    nop

    :try_start_0
    invoke-interface {v8, v9, v10}, Lpag;->k(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    :goto_2c
    goto/32 :goto_1e

    nop

    nop

    :goto_2d
    iput-wide v0, p0, Lpap;->K:J

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

    :goto_2e
    iget-object v1, p0, Lpap;->k:Lryb;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2f
    check-cast v3, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_30
    iget-object v2, p0, Lpap;->L:Loyn;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lpap;->l:Ljava/util/Queue;

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

    :goto_32
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v3, v4}, Lpau;->a(Lpar;)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v3, Lpau;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_37
    iget-wide v1, p0, Lpap;->K:J

    nop

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

    :goto_38
    check-cast v2, Loxv;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_39
    const/4 v5, 0x0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_3b
    move v6, v5

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_3e
    const v1, 0xd

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput-boolean v7, p0, Lpap;->v:Z

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_41
    if-gez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_6
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    :goto_43
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v0, Lpao;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v2, v0, Lpao;->b:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_47
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_49
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_4a
    iput-boolean v7, p0, Lpap;->w:Z

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

    nop

    nop

    :goto_4b
    const/4 v7, 0x1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_4c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_4e
    cmp-long v1, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_4f
    iget-object v3, p0, Lpap;->H:Loyn;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_50
    check-cast v3, Loxv;

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

    :goto_51
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_53
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_7
    goto/32 :goto_32

    nop
.end method
