.class public final Lpax;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpag;


# instance fields
.field private final A:Ljava/util/Map;

.field private B:Z

.field private C:I

.field private final D:I

.field public final a:Lj$/util/concurrent/ConcurrentLinkedQueue;

.field public b:Z

.field public c:Z

.field public final d:Lpau;

.field private final e:Z

.field private f:Lpsc;

.field private g:Lpsc;

.field private h:Ljava/util/List;

.field private final i:Ljava/lang/Object;

.field private final j:Landroid/os/Handler;

.field private volatile k:J

.field private final l:Lpai;

.field private final m:Lpai;

.field private n:Ljava/util/List;

.field private final o:Lsuu;

.field private final p:Lpav;

.field private q:Lpab;

.field private final r:I

.field private final s:Lpad;

.field private final t:Z

.field private final u:Lrss;

.field private final v:I

.field private w:J

.field private x:Z

.field private final y:Ljava/util/concurrent/ExecutorService;

.field private final z:J


# direct methods
.method private final declared-synchronized 132cd3b981019b59dc42653eea0b34b4m()Lpab;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpax;->q:Lpab;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 430f03c2ea70bd28108d593eca0c7c30m()V
    .locals 5

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    iget-object v0, p0, Lpax;->i:Ljava/lang/Object;

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

    :goto_5
    rem-int v0, v0, v1

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
    add-int v0, v0, v1

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

    :goto_7
    throw p0

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lpax;->x:Z

    nop

    nop

    nop

    invoke-static {v1}, La;->au(Z)V

    iget-object v1, p0, Lpax;->f:Lpsc;

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lpax;->g:Lpsc;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lpax;->f:Lpsc;

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

    iput-object v2, p0, Lpax;->g:Lpsc;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lpax;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lrgw;->H(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    iput-object v2, p0, Lpax;->n:Ljava/util/List;

    nop

    nop

    nop

    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lpax;->h:Ljava/util/List;

    nop

    nop

    iget-object v2, p0, Lpax;->f:Lpsc;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpsc;->g()V

    const/4 v2, 0x0

    nop

    iput-boolean v2, p0, Lpax;->x:Z

    nop

    nop

    nop

    nop

    iput-boolean v2, p0, Lpax;->B:Z

    nop

    nop

    nop

    iget-object v2, p0, Lpax;->y:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Loxl;

    nop

    nop

    nop

    nop

    nop

    const/16 v4, 0xb

    nop

    nop

    nop

    invoke-direct {v3, p0, v1, v4}, Loxl;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    check-cast v2, Lssl;

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lssl;->a(Ljava/lang/Runnable;)Lsui;

    iget-object v1, p0, Lpax;->j:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lpam;

    nop

    nop

    nop

    const/4 v3, 0x5

    nop

    nop

    invoke-direct {v2, p0, v3}, Lpam;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x8

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;IILrss;Lsui;JIIILpad;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;Lpau;ZZ)V
    .locals 10

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v3, p3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_2
    move-object/from16 v5, p11

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v2, Lgng;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v3, v0, Lpax;->i:Ljava/lang/Object;

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

    :goto_5
    iput-object v8, v0, Lpax;->u:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-static {v1, v2, v0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v4, Lpai;

    nop

    goto/32 :goto_12

    nop

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-wide v2, v0, Lpax;->k:J

    nop

    nop

    nop

    nop

    goto/32 :goto_58

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

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v4, p14

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

    nop

    :goto_c
    move v7, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    move/from16 v4, p9

    nop

    nop

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

    :goto_e
    iput-boolean v2, v0, Lpax;->c:Z

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_f
    const v1, 0x2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v2, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_11
    add-long v1, p6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_12
    move/from16 v5, p8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-wide v5, 0x7fffffffffffffffL

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_15
    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto/32 :goto_59

    nop

    nop

    :goto_16
    invoke-direct {v4, v5, v6}, Lpab;-><init>(J)V

    goto/32 :goto_61

    nop

    nop

    :goto_17
    move-object/from16 v1, p12

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-wide v2, v0, Lpax;->w:J

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-boolean v2, v0, Lpax;->B:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    new-instance v1, Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1c
    move-object v3, p5

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2d

    nop

    nop

    :goto_20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4c

    nop

    nop

    :goto_21
    invoke-direct {v1, v2}, Llnm;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_22
    move/from16 v9, p16

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v3, v0, Lpax;->f:Lpsc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v1, v0, Lpax;->y:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_25
    iput-object v1, v0, Lpax;->j:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move/from16 v1, p10

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_27
    iput-object v2, v0, Lpax;->h:Ljava/util/List;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v1, v0, Lpax;->o:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_29
    iput v1, v0, Lpax;->D:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput v3, v0, Lpax;->v:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput v3, v0, Lpax;->C:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2c
    invoke-direct {v4, v3}, Lpai;-><init>(I)V

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_2d
    move-object v0, p0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2e
    iput-object v4, v0, Lpax;->l:Lpai;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v4, v5}, Lpai;-><init>(I)V

    goto/32 :goto_2e

    nop

    nop

    :goto_30
    invoke-direct {v2, p0, v3}, Lgng;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-wide/32 v1, -0x1c9c380

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_32
    invoke-direct {v1}, Lsuu;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object v8, p4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-string v1, "add least audio or video is required."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_36
    move/from16 v1, p16

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_37
    iput-object v5, v0, Lpax;->s:Lpad;

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

    nop

    :goto_38
    iput-object v4, v0, Lpax;->p:Lpav;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_56

    nop

    nop

    :goto_3a
    new-instance v3, Ljava/util/HashMap;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3c
    iput-object v2, v0, Lpax;->g:Lpsc;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_3d
    move-object/from16 v1, p13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3e
    if-eq v4, v3, :cond_1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static/range {v4 .. v9}, Lpax;->v(Ljava/io/FileDescriptor;Lpad;IILrss;Z)Lpsc;

    move-result-object v3

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

    :goto_40
    new-instance v4, Lpav;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_44
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_45
    iput-boolean v1, v0, Lpax;->e:Z

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_46
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iput-wide v1, v0, Lpax;->z:J

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4a
    move v6, p2

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_4b
    iput v6, v0, Lpax;->r:I

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_4c
    throw v0

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {p5, v1, v2}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v1

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

    :goto_4f
    new-instance v4, Lpab;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_50
    iput-object v4, v0, Lpax;->d:Lpau;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_51
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_52
    iput-object v4, v0, Lpax;->n:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iput-object v3, v0, Lpax;->A:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v3, v0, Lpax;->n:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_55
    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_57
    const/16 v3, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_58
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_59
    iput-object v1, v0, Lpax;->a:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_5a
    new-instance v4, Lpai;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_5b
    new-instance v4, Lpai;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_5c
    new-instance v1, Llnm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_5d
    move-object v4, p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5e
    iput-boolean v2, v0, Lpax;->x:Z

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {v4}, Lpav;-><init>()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_60
    move/from16 v4, p15

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iput-object v4, v0, Lpax;->q:Lpab;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_62
    new-instance v1, Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_63
    const/16 v2, 0x14

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-direct {v4, v1}, Lpai;-><init>(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iput-boolean v2, v0, Lpax;->b:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iput-boolean v4, v0, Lpax;->t:Z

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_68
    iput-object v4, v0, Lpax;->m:Lpai;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_69
    new-instance v3, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop
.end method

.method private final c43d12f4f4da28dd6c943a4effe477b7m()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpax;->n:Ljava/util/List;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lpai;->e()Z

    move-result v0

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
    check-cast v0, Lpai;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method private final e94656b6137dd01f26085f984afe853em(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V
    .locals 10

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lpax;->132cd3b981019b59dc42653eea0b34b4m()Lpab;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_24

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

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v3

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide p2, v2, Lpab;->b:J

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p2, Lpam;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    iget-wide p1, p1, Lpav;->b:J

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lpax;->p:Lpav;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 p3, 0x8

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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Lpax;->p:Lpav;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    const-string v1, "STARTED is expected, but we get "

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

    :goto_a
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p2, p0, p3}, Lpam;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

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

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Lpax;->j:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    cmp-long p1, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_12
    cmp-long p1, v0, p2

    nop

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

    :goto_13
    iget-wide p2, v2, Lpab;->a:J

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p2, Lpam;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_16
    goto/32 :goto_1

    nop

    nop

    :goto_17
    if-gez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :cond_2
    :try_start_1
    iget-object v0, p0, Lpax;->f:Lpsc;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p3, p1, p2}, Lpsc;->i(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object p1, p0, Lpax;->p:Lpav;

    nop

    nop

    nop

    nop

    nop

    iget p3, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    nop

    nop

    nop

    nop

    int-to-long v0, p3

    nop

    iget-wide v4, p1, Lpav;->a:J

    nop

    nop

    nop

    nop

    add-long/2addr v4, v0

    nop

    nop

    iput-wide v4, p1, Lpav;->a:J

    nop

    nop

    nop

    iget-wide v0, p0, Lpax;->w:J

    nop

    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    int-to-long p1, p1

    nop

    nop

    nop

    add-long/2addr v0, p1

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Lpax;->w:J

    nop
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 p3, 0x7

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    monitor-enter v3

    nop

    nop

    :try_start_2
    iget v4, p0, Lpax;->C:I

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    nop

    if-eq v4, v5, :cond_3

    nop

    const-string p0, "MediaMuxerMul"

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lolx;->aP(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    new-instance p2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    nop

    return-void

    nop

    nop

    nop

    :cond_3
    iget-boolean v1, p0, Lpax;->t:Z

    nop

    nop

    nop

    const-wide/16 v4, 0x0

    nop

    nop

    nop

    if-eqz v1, :cond_8

    nop

    nop

    iget-object v1, p0, Lpax;->i:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v1

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-wide v6, p0, Lpax;->w:J

    nop

    nop

    iget-wide v8, p0, Lpax;->z:J

    nop

    nop

    nop

    nop

    nop

    cmp-long v6, v6, v8

    nop

    nop

    nop

    nop

    if-ltz v6, :cond_4

    nop

    nop

    nop

    iget-object v6, p0, Lpax;->j:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    new-instance v7, Lpam;

    nop

    nop

    nop

    nop

    const/16 v8, 0x9

    nop

    nop

    invoke-direct {v7, p0, v8}, Lpam;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-wide v4, p0, Lpax;->w:J

    nop

    nop

    nop

    :cond_4
    iget-boolean v6, p0, Lpax;->x:Z

    nop

    nop

    if-nez v6, :cond_5

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    iget-object v6, p0, Lpax;->m:Lpai;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lpai;->d()Z

    move-result v7

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_6

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lpax;->430f03c2ea70bd28108d593eca0c7c30m()V

    monitor-exit v1

    nop

    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    invoke-virtual {v6}, Lpai;->a()I

    move-result v6

    nop

    nop

    nop

    nop

    if-ne p3, v6, :cond_7

    nop

    nop

    nop

    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    and-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_7

    nop

    nop

    iget-wide v6, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lpax;->430f03c2ea70bd28108d593eca0c7c30m()V

    :cond_7
    monitor-exit v1

    nop

    nop

    nop

    nop

    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    monitor-exit v1

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    nop

    :cond_8
    :goto_1b
    iget-wide v6, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    nop

    cmp-long v1, v6, v4

    nop

    nop

    if-gez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    const-string p0, "MediaMuxerMul"

    nop

    nop

    nop

    iget-wide p1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    new-instance p3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1c
    const v1, 0x17

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1d
    throw p0

    nop

    nop

    :goto_1e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_20
    const-wide v0, 0x7fffffffffffffffL

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

    :goto_21
    invoke-direct {p2, p0, p3}, Lpam;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a

    nop

    nop

    :goto_22
    const-string v0, "Tried to write negative presentationTimeUs "

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-wide v0, p1, Lpav;->a:J

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

    :goto_24
    iget-object v3, p0, Lpax;->i:Ljava/lang/Object;

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

    nop

    nop

    :goto_25
    goto/32 :goto_f

    nop

    :goto_26
    if-gez p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p1, p0, Lpax;->j:Landroid/os/Handler;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto :goto_29

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    :try_start_5
    const-string p2, "MediaMuxerMul"

    nop

    nop

    nop

    const-string p3, "Fail to write data to muxer"

    nop

    nop

    nop

    nop

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lpax;->j:Landroid/os/Handler;

    nop

    nop

    new-instance p2, Lpam;

    nop

    nop

    const/4 p3, 0x6

    nop

    nop

    invoke-direct {p2, p0, p3}, Lpam;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_29
    monitor-exit v3

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static v(Ljava/io/FileDescriptor;Lpad;IILrss;Z)Lpsc;
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    double-to-float p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "Either outputFilePath or outputFilePath should be provided."

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

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    :goto_6
    goto/16 :goto_13

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide p2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_0

    nop

    goto/32 :goto_27

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p2, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p4}, Lrss;->h()Z

    move-result p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, p3}, Lpsc;->e(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string p5, "com.android.model"

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p1, Landroid/location/Location;

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

    :goto_10
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    if-nez p5, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    const-string p1, "Google"

    nop

    nop

    :goto_13
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p0, v0, p1}, Lpsc;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    :goto_15
    check-cast p2, Landroid/location/Location;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1, p0, p2}, Lpad;->a(Ljava/io/FileDescriptor;I)Lpsc;

    move-result-object p0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_18
    invoke-interface {p0, p1, p2}, Lpsc;->d(FF)V

    :goto_19
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    double-to-float p1, p1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1d
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p4}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

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

    :goto_1f
    const-string p1, "Pixel"

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p4}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_22
    if-nez p5, :cond_5

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_23
    invoke-interface {p0}, Lpsc;->l()Z

    move-result p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {p0, p5, p1}, Lpsc;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_25
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v0, "com.android.manufacturer"

    nop

    nop

    goto/32 :goto_14

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lpab;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_3

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
    iput-object p1, p0, Lpax;->q:Lpab;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

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

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b(Landroid/media/MediaFormat;)Lrss;
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    const-string v1, "mime"

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    iget v1, p0, Lpax;->C:I

    nop

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_6

    nop

    nop

    const/4 v3, 0x4

    nop

    if-ne v1, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_3

    nop

    :cond_0
    const/4 v3, 0x2

    nop

    nop

    if-ne v1, v3, :cond_1

    nop

    iget-object v1, p0, Lpax;->f:Lpsc;

    nop

    invoke-interface {v1}, Lpsc;->k()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/4 p0, 0x0

    nop

    sget-object p0, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->cQLIHW:Ljava/lang/String;

    nop

    nop

    nop

    const-string p1, "Already started, cannot add metadata track."

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    :cond_1
    iget v1, p0, Lpax;->D:I

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    const-string p0, "MediaMuxerMul"

    nop

    nop

    nop

    nop

    nop

    const-string p1, "Metadata track is forbidden and can\'t be added"

    nop

    nop

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lrsa;->a:Lrsa;

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

    return-object p0

    nop

    nop

    :cond_2
    const-string v1, "mime"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lpax;->n:Ljava/util/List;

    nop

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_4

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lpai;

    nop

    nop

    nop

    nop

    iget-object v4, v3, Lpai;->d:Landroid/media/MediaFormat;

    nop

    if-eqz v4, :cond_3

    nop

    nop

    const-string v5, "mime"

    nop

    nop

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    const-string p0, "MediaMuxerMul"

    nop

    nop

    nop

    const-string p1, "Metadata track format "

    nop

    nop

    nop

    nop

    nop

    const-string v2, " already added."

    nop

    nop

    nop

    nop

    invoke-static {v1, p1, v2}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lpai;->a()I

    move-result p0

    nop

    nop

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    monitor-exit v0

    nop

    return-object p0

    nop

    :cond_4
    iget-object v1, p0, Lpax;->n:Ljava/util/List;

    nop

    invoke-static {v1}, Lrgw;->ab(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Lpai;

    nop

    iget-boolean v1, v1, Lpai;->a:Z

    nop

    nop

    nop

    nop

    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpax;->n:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lpai;

    nop

    nop

    goto :goto_2

    nop

    nop

    :cond_5
    new-instance v1, Lpai;

    nop

    iget v2, p0, Lpax;->D:I

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lpai;-><init>(I)V

    :goto_2
    iget-object v2, p0, Lpax;->f:Lpsc;

    nop

    nop

    nop

    invoke-interface {v2, p1}, Lpsc;->a(Landroid/media/MediaFormat;)I

    move-result v2

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lpai;->c(I)V

    iput-object p1, v1, Lpai;->d:Landroid/media/MediaFormat;

    nop

    nop

    iget-object p0, p0, Lpax;->n:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lpai;->a()I

    invoke-virtual {v1}, Lpai;->a()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    :cond_6
    :goto_3
    const-string p0, "MediaMuxerMul"

    nop

    nop

    const-string p1, "Already stopped or closed, cannot add metadata track."

    nop

    nop

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lrsa;->a:Lrsa;

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-object p0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    :goto_8
    if-lez v0, :cond_7

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5

    nop

    :goto_9
    iget-object v0, p0, Lpax;->i:Ljava/lang/Object;

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final c(Landroid/media/MediaFormat;)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

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

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget v1, p0, Lpax;->C:I

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

    if-eq v1, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    if-ne v1, v2, :cond_1

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    const/4 v2, 0x2

    nop

    nop

    if-ne v1, v2, :cond_2

    nop

    iget-object v1, p0, Lpax;->f:Lpsc;

    nop

    nop

    invoke-interface {v1}, Lpsc;->k()Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

    const-string p0, "MediaMuxerMul"

    nop

    nop

    const-string p1, "Already started, cannot add audio track."

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

    :cond_2
    iget-object v1, p0, Lpax;->l:Lpai;

    nop

    nop

    nop

    invoke-virtual {v1}, Lpai;->d()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_3

    nop

    const-string p0, "MediaMuxerMul"

    nop

    nop

    nop

    const-string p1, "Audio track is forbidden and can\'t be added"

    nop

    nop

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    nop

    nop

    return-void

    nop

    :cond_3
    iget-object v2, p0, Lpax;->f:Lpsc;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, p1}, Lpsc;->a(Landroid/media/MediaFormat;)I

    move-result v2

    nop

    nop

    invoke-virtual {v1, v2}, Lpai;->c(I)V

    iget-object p0, p0, Lpax;->l:Lpai;

    nop

    nop

    nop

    iput-object p1, p0, Lpai;->d:Landroid/media/MediaFormat;

    nop

    nop

    invoke-virtual {p0}, Lpai;->a()I

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

    :cond_4
    :goto_7
    const-string p0, "MediaMuxerMul"

    nop

    const-string p1, "Already stopped or closed, cannot add audio track."

    nop

    nop

    nop

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

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    :goto_a
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lpax;->i:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    const v0, 0x1f

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
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpax;->y:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lpax;->j()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final d(Lpah;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpax;->a:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final e(J)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    const-wide/16 v0, 0x0

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string p1, "The duration of record cannot be shorter than existing one."

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    cmp-long v0, p1, v0

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

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    add-long/2addr v0, p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lpax;->p:Lpav;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    const-string p0, "MediaMuxerMul"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    iput-wide v0, p0, Lpav;->b:J

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xa

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

    nop

    :goto_c
    if-ltz v0, :cond_1

    nop

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
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    iget-wide v0, p0, Lpav;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final f(Landroid/media/MediaFormat;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x9

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    iget-object v0, p0, Lpax;->i:Ljava/lang/Object;

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

    :goto_8
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lpax;->C:I

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    if-eq v1, v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    if-ne v1, v2, :cond_1

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    :cond_1
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_2

    nop

    nop

    nop

    iget-object v1, p0, Lpax;->f:Lpsc;

    nop

    nop

    invoke-interface {v1}, Lpsc;->k()Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    const-string p0, "MediaMuxerMul"

    nop

    const-string p1, "Already started, cannot add video track."

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    nop

    return-void

    nop

    :cond_2
    iget-object v1, p0, Lpax;->m:Lpai;

    nop

    iget-object v2, p0, Lpax;->f:Lpsc;

    nop

    nop

    nop

    nop

    invoke-interface {v2, p1}, Lpsc;->a(Landroid/media/MediaFormat;)I

    move-result v2

    nop

    nop

    invoke-virtual {v1, v2}, Lpai;->c(I)V

    iget-object p0, p0, Lpax;->m:Lpai;

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lpai;->d:Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lpai;->a()I

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :cond_3
    :goto_b
    const-string p0, "MediaMuxerMul"

    nop

    nop

    nop

    const-string p1, "Already stopped or closed, cannot add video track."

    nop

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    monitor-exit v0

    nop

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

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

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
    const v0, 0x8

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

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    iget-object v0, p0, Lpax;->i:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    const v1, 0x5

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lpax;->C:I

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    const-string p0, "MediaMuxerMul"

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Already started, cannot discard track."

    nop

    nop

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    nop

    return-void

    nop

    nop

    :cond_0
    iget-object p0, p0, Lpax;->l:Lpai;

    nop

    nop

    nop

    nop

    iget-boolean v1, p0, Lpai;->a:Z

    nop

    if-eqz v1, :cond_1

    nop

    const-string p0, "TrackInf"

    nop

    nop

    const-string v1, "Track is already added"

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    nop

    nop

    :cond_1
    iput-boolean v2, p0, Lpai;->b:Z

    nop

    :goto_b
    monitor-exit v0

    nop

    return-void

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop
.end method

.method public final h(Lpah;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpax;->a:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final i(Ljava/io/FileDescriptor;)V
    .locals 7

    goto/32 :goto_43

    nop

    nop

    :goto_0
    iget-boolean v2, v1, Lpai;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3
    invoke-static {v0}, Lrgw;->H(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v1, v0, Lpai;->a:Z

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7
    check-cast v1, Lpai;

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
    const-string v0, "Fail to create next video file"

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_9
    iget-object v6, v4, Lpai;->d:Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eq v5, v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    :cond_0
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_d
    invoke-interface {v5, v6}, Lpsc;->a(Landroid/media/MediaFormat;)I

    move-result v5

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lpax;->n:Ljava/util/List;

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

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    :goto_14
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4c

    nop

    nop

    :goto_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_42

    nop

    nop

    :goto_1a
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_2c

    nop

    nop

    :goto_1b
    iget-object p1, p0, Lpax;->A:Ljava/util/Map;

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

    nop

    :goto_1c
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v5, p0, Lpax;->g:Lpsc;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string p1, "MediaMuxerMul"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_22
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_24
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    :goto_25
    goto/32 :goto_c

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v4}, Lpai;->a()I

    move-result v4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lpax;->l:Lpai;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_29
    check-cast v0, Ljava/util/Map$Entry;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    :goto_2b
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance p1, Ljava/lang/IllegalStateException;

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

    :goto_2d
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2e
    :try_start_0
    iget-object v1, p0, Lpax;->s:Lpad;

    nop

    nop

    nop

    iget v2, p0, Lpax;->r:I

    nop

    nop

    nop

    iget v3, p0, Lpax;->v:I

    nop

    nop

    iget-object v4, p0, Lpax;->u:Lrss;

    nop

    nop

    nop

    iget-boolean v5, p0, Lpax;->e:Z

    nop

    nop

    move-object v0, p1

    nop

    invoke-static/range {v0 .. v5}, Lpax;->v(Ljava/io/FileDescriptor;Lpad;IILrss;Z)Lpsc;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lpax;->g:Lpsc;

    nop

    nop
    :try_end_0
    .catch Lpac; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    nop

    :goto_31
    iget-object v1, p0, Lpax;->g:Lpsc;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_32
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_33
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_34
    if-lt v2, v0, :cond_5

    nop

    nop

    goto/32 :goto_53

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lpax;->m:Lpai;

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

    :goto_36
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_37
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move v3, v1

    nop

    :goto_39
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3a
    if-nez v2, :cond_6

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3b
    throw p1

    nop

    :goto_3c
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-boolean v1, v0, Lpai;->a:Z

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3f
    invoke-interface {v1, v2, v0}, Lpsc;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    :goto_40
    const/4 v3, 0x1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_42
    iput-boolean v3, p0, Lpax;->x:Z

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_43
    const v0, 0x8

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_46
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_48
    check-cast v4, Lpai;

    nop

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

    :goto_49
    move v2, v1

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4b
    iput-object v0, p0, Lpax;->h:Ljava/util/List;

    nop

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

    nop

    :goto_4c
    iget-object v0, p0, Lpax;->n:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_4d
    invoke-static {v3}, La;->au(Z)V

    goto/32 :goto_3d

    nop

    nop

    :goto_4e
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_51
    goto/32 :goto_10

    nop

    nop

    :goto_52
    goto :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 10

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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

    :goto_3
    goto :goto_4

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    :try_start_0
    const-string v2, "MediaMuxerMul"

    nop

    const-string v4, "Failed to release mediamuxer "

    nop

    nop

    nop

    invoke-static {v1, v4}, Lmf;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iput v3, p0, Lpax;->C:I

    nop

    nop

    :goto_5
    iget-object v1, p0, Lpax;->g:Lpsc;

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpsc;->c()V

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lpax;->g:Lpsc;

    nop

    nop

    :cond_1
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

    :goto_6
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v1

    nop

    nop

    nop

    :try_start_1
    const-string v2, "MediaMuxerMul"

    nop

    nop

    nop

    const-string v4, "Failed to stop mediamuxer "

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lpax;->d:Lpau;

    nop

    sget-object v2, Lpar;->h:Lpar;

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lpau;->a(Lpar;)V

    :goto_7
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    iput v1, p0, Lpax;->C:I

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    :goto_b
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    if-ne v1, v3, :cond_3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_3
    :goto_f
    :try_start_2
    iget-object v1, p0, Lpax;->f:Lpsc;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpsc;->c()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    const v0, 0x1c

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lpax;->i:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    iget v1, p0, Lpax;->C:I

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x4

    nop

    if-ne v1, v2, :cond_2

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpax;->f:Lpsc;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpsc;->l()Z

    move-result v1

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpax;->f:Lpsc;

    nop

    nop

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    nop

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    nop

    nop

    nop

    invoke-interface {v1, v4, v5, v6, v7}, Lpsc;->f(JJ)V

    :cond_4
    iget-object v1, p0, Lpax;->m:Lpai;

    nop

    iget-boolean v1, v1, Lpai;->c:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_8

    nop

    iget-object v1, p0, Lpax;->l:Lpai;

    nop

    iget-boolean v2, v1, Lpai;->a:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_5

    nop

    nop

    nop

    iget-boolean v1, v1, Lpai;->c:Z

    nop

    nop

    if-eqz v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    :cond_5
    const-string v1, "MediaMuxerMul"

    nop

    nop

    nop

    const-string v2, "All tracks empty; writing empty packet to avoid muxer hang"

    nop

    nop

    nop

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    nop

    iput-boolean v1, p0, Lpax;->B:Z

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    nop

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-wide v7, p0, Lpax;->k:J

    nop

    nop

    nop

    const/4 v9, 0x5

    nop

    const/4 v5, 0x0

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    move-object v4, v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget-object v4, p0, Lpax;->m:Lpai;

    nop

    iget-boolean v4, v4, Lpai;->a:Z

    nop

    nop

    if-eqz v4, :cond_6

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1, v2}, Lpax;->o(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_14

    nop

    nop

    nop

    :cond_6
    iget-object v4, p0, Lpax;->l:Lpai;

    nop

    nop

    nop

    iget-boolean v4, v4, Lpai;->a:Z

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1, v2}, Lpax;->m(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_7
    const-string v1, "MediaMuxerMul"

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Couldn\'t write out any empty packets."

    nop

    nop

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    :goto_14
    :try_start_4
    iget-object v1, p0, Lpax;->f:Lpsc;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpsc;->h()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(J)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2}, Lpai;->e()Z

    move-result v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    iget-object p2, p0, Lpax;->l:Lpai;

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

    :goto_5
    filled-new-array {p1, p2, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    :goto_7
    const v1, 0x18

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_8

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    :try_start_0
    iget-object v0, p0, Lpax;->o:Lsuu;

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    invoke-virtual {v0, p1, p2, v1}, Lsuu;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Lpax;->m:Lpai;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    const v0, 0xa

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

    :goto_11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v1, Ljava/lang/RuntimeException;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p1, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    invoke-virtual {p2}, Lpai;->e()Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :catch_0
    move-exception v0

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

    :goto_16
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    throw v1

    nop

    nop

    :catch_1
    move-exception p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string p1, "Wait for muxer to start timed out after %s milliseconds.audio-ready: %s, video-ready: %s, meta-ready: %s"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0}, Lpax;->c43d12f4f4da28dd6c943a4effe477b7m()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1b
    const-string p2, "Wait for Muxer start is interrupted"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l()V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lpax;->i:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    :goto_3
    const v1, 0x17

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

    :goto_4
    throw p0

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    const v0, 0x7

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

    :goto_b
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lpax;->C:I

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpax;->l:Lpai;

    nop

    nop

    nop

    invoke-virtual {v1}, Lpai;->e()Z

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

    iget-object v1, p0, Lpax;->m:Lpai;

    nop

    invoke-virtual {v1}, Lpai;->e()Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    invoke-direct {p0}, Lpax;->c43d12f4f4da28dd6c943a4effe477b7m()Z

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

    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v1, p0, Lpax;->f:Lpsc;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpsc;->k()Z

    move-result v1

    nop

    if-eqz v1, :cond_3

    nop

    :goto_c
    iget-object v1, p0, Lpax;->f:Lpsc;

    nop

    nop

    invoke-interface {v1}, Lpsc;->g()V

    const/4 v1, 0x2

    nop

    nop

    nop

    iput v1, p0, Lpax;->C:I

    nop

    nop

    iget-object v1, p0, Lpax;->o:Lsuu;

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lsuu;->e(Ljava/lang/Object;)Z

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    nop

    nop

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    iput-wide v1, p0, Lpax;->k:J

    nop

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    :cond_2
    const/4 p0, 0x3

    nop

    nop

    if-ne v1, p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    const-string p0, "MediaMuxerMul"

    nop

    const-string v1, "Muxer is already stopped and it cannot be reused"

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_d
    monitor-exit v0

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

    monitor-exit v0

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
.end method

.method public final m(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lpax;->e94656b6137dd01f26085f984afe853em(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lpai;->a()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p0, "MediaMuxerMul"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x15

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_5
    goto/32 :goto_12

    nop

    :goto_6
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lpai;->b()V

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    if-gtz p1, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lpax;->l:Lpai;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    const v1, 0x1b

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

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    iget-object v0, p0, Lpax;->l:Lpai;

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
    iget-boolean v1, v0, Lpai;->a:Z

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

    :goto_18
    const-string p1, "Audio track is not supported"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public final n(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V
    .locals 3

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Lpai;->a()I

    move-result v2

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

    :goto_1
    if-nez p3, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    iget p0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

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

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    if-eq v2, p3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-gtz p0, :cond_3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Lpai;->a()I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "MediaMuxerMul"

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

    :goto_b
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    :goto_c
    iget-boolean v2, v1, Lpai;->a:Z

    nop

    nop

    goto/32 :goto_26

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

    :goto_e
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_24

    nop

    :goto_12
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x17

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

    nop

    :goto_15
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_16
    iget-boolean p3, v1, Lpai;->a:Z

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

    :goto_17
    invoke-virtual {v1}, Lpai;->b()V

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
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

    nop

    :goto_1d
    const-string p0, "Couldn\'t find metadata track: "

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v1, Lpai;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    const v0, 0x1c

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    const-string p0, "Metadata track is not supported"

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    :goto_22
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x0

    nop

    :goto_24
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p3, p0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_26
    if-nez v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lpax;->n:Ljava/util/List;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0, p1, p2, p3}, Lpax;->e94656b6137dd01f26085f984afe853em(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    nop
.end method

.method public final o(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    new-instance v0, Loxl;

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

    :goto_1
    iget-boolean v1, v0, Lpai;->a:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_3
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    if-gtz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    :goto_7
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1, p2, v0}, Lpax;->e94656b6137dd01f26085f984afe853em(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Lpax;->m:Lpai;

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

    :goto_d
    invoke-virtual {v0}, Lpai;->a()I

    move-result v0

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

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, p0, p2, v1, v2}, Loxl;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lpax;->m:Lpai;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    iget-boolean p1, p0, Lpax;->B:Z

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

    :goto_13
    const/16 v1, 0xc

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

    :goto_14
    goto/32 :goto_f

    nop

    nop

    :goto_15
    goto/32 :goto_11

    nop

    nop

    :goto_16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Lpai;->b()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

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

    :goto_1b
    const/4 v2, 0x0

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

    :goto_1c
    const-string p1, "Video track is not supported"

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

    :goto_1d
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x2

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

    :goto_1f
    iget-object p1, p0, Lpax;->j:Landroid/os/Handler;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_20
    const-string p0, "MediaMuxerMul"

    nop

    goto/32 :goto_1c

    nop

    nop
.end method

.method public final p()Z
    .locals 2

    goto/32 :goto_1

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

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget p0, p0, Lpax;->C:I

    nop

    nop

    nop

    const/4 v1, 0x2

    nop

    if-ne p0, v1, :cond_1

    nop

    nop

    nop

    nop

    const/4 p0, 0x1

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    const/4 p0, 0x0

    nop

    :goto_4
    monitor-exit v0

    nop

    nop

    nop

    nop

    return p0

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

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

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

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
    iget-object v0, p0, Lpax;->i:Ljava/lang/Object;

    nop

    goto/32 :goto_3

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

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final q(Ljava/lang/Object;)V
    .locals 5

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    monitor-enter v1

    nop

    nop

    nop

    :try_start_0
    iget v3, p0, Lpax;->C:I

    nop

    nop

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    nop

    if-eq v3, v4, :cond_1

    nop

    const/4 v4, 0x4

    nop

    nop

    nop

    if-ne v3, v4, :cond_0

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Lpax;->A:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lpax;->f:Lpsc;

    nop

    nop

    invoke-interface {p0, v2, p1}, Lpsc;->b(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_1
    const-string p0, "MediaMuxerMul"

    nop

    nop

    nop

    invoke-static {v3}, Lolx;->aP(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v1

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

    nop

    :goto_2
    const v0, 0x1d

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

    :goto_3
    const-string v2, "SpecialTypeID"

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    const-string v0, "Failed to add metadata with state: "

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    :goto_6
    goto/32 :goto_4

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

    goto/32 :goto_8

    nop

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

    nop

    goto/32 :goto_d

    nop

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

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xd

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_e
    iget-object v1, p0, Lpax;->i:Ljava/lang/Object;

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
