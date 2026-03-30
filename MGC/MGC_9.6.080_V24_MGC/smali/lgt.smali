.class public final Llgt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkml;


# static fields
.field private static final f:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lows;

.field public final b:Lows;

.field public final c:Lpcu;

.field public final d:Loxp;

.field public e:Lsui;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Lkso;

.field private final j:Lfuq;

.field private final k:Lhsi;

.field private final l:Lggv;

.field private final m:Llgj;

.field private final n:Lpik;

.field private final o:Lqpa;

.field private final p:Lmhz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    return-void

    nop

    nop

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
    goto/32 :goto_6

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    :goto_9
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

    nop

    nop

    :goto_a
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v0, Llgt;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public constructor <init>(Lows;Lows;Lpik;Lpcu;Lkug;Lowu;Lknb;Loyd;Loyd;Lsui;Ljava/util/concurrent/Executor;Lkso;Loxp;Lfuq;Lkvt;Lhsi;Loyd;Lggv;Llgj;Loyd;)V
    .locals 12

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    move-object/from16 v8, p10

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
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2
    move-object v3, v1

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

    :goto_3
    move-object/from16 v7, p9

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v9, p15

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_5
    move-object/from16 v1, p18

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x8

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object/from16 v1, p11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_a
    move-object/from16 v1, p16

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_13

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    iput-object v1, v0, Llgt;->j:Lfuq;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    move-object/from16 v4, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_10
    move-object v0, p0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_11
    iput-object v1, v0, Llgt;->m:Llgj;

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

    nop

    :goto_12
    iput-object v1, v0, Llgt;->k:Lhsi;

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

    :goto_13
    goto/32 :goto_1a

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_16
    iput-object v1, v0, Llgt;->c:Lpcu;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_17
    move-object/from16 v1, p19

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    iput-object v1, v0, Llgt;->i:Lkso;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v6, p8

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v1, v0, Llgt;->l:Lggv;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1d
    new-instance v1, Lmhz;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1e
    move-object/from16 v1, p14

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

    :goto_1f
    new-instance v1, Lqpa;

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_20
    move-object/from16 v2, p4

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    invoke-interface {v2, v1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_22
    iput-object v1, v0, Llgt;->n:Lpik;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v1, v0, Llgt;->a:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_24
    iput-object v1, v0, Llgt;->g:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_25
    move-object/from16 v3, p6

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-string v3, "PckOneCamera-"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_27
    const/4 v2, 0x0

    nop

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

    :goto_28
    move-object/from16 v11, p20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_29
    move-object/from16 v1, p12

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v1, v0, Llgt;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_2b
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2d
    move-object v1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v1, v4, v3, v2}, Lmhz;-><init>(Ljava/lang/Object;Ljava/lang/Object;[B)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v1, v0, Llgt;->d:Loxp;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_30
    move-object v1, p3

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_32
    move-object/from16 v1, p13

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_33
    move-object/from16 v10, p17

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0xf

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_35
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_37
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct/range {v3 .. v11}, Lqpa;-><init>(Lkug;Loyd;Loyd;Loyd;Lsui;Lkvt;Loyd;Loyd;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3a
    iput-object v1, v0, Llgt;->b:Lows;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v5, v2, Lknb;->a:Loxv;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v1, Llgt;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3d
    iput-object v1, v0, Llgt;->o:Lqpa;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iput-object v1, v0, Llgt;->p:Lmhz;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3f
    move-object/from16 v2, p7

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lfdn;)Lfwg;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Llgt;->j:Lfuq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lfuq;->a(Lfdn;)Lfwg;

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

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final c(Lpgb;)Lpci;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Llgt;->k:Lhsi;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lhsi;->c(Lpgb;)Lpci;

    move-result-object p0

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

.method public final close()V
    .locals 3

    goto/32 :goto_a

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

    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v1, Lldq;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Llgt;->n:Lpik;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x2

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

    :goto_9
    const v1, 0x16

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    :goto_f
    invoke-direct {v1, p0, v2}, Lldq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    :goto_11
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

    :goto_12
    invoke-virtual {v0}, Lpik;->close()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Llgt;->g:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Llgt;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method public final d()Lsui;
    .locals 4

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3, v1}, Lows;->d(Lpci;)V

    :try_start_0
    monitor-enter p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Llgt;->c:Lpcu;

    nop

    nop

    nop

    nop

    const-string v2, "OneCamera started."

    nop

    nop

    nop

    const-string v3, "OneCamera failed to start!"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v0, v2, v3}, Lhps;->a(Lpcu;Lsui;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Llgt;->e:Lsui;

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Llgs;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Llgt;->n:Lpik;

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

    :goto_5
    iget-object v2, p0, Llgt;->m:Llgj;

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

    nop

    :goto_6
    iget-object v1, p0, Llgt;->l:Lggv;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2}, Lggv;->a(Lggu;)Lpci;

    move-result-object v1

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

    nop

    :goto_8
    invoke-direct {v2, p0}, Llgs;-><init>(Llgt;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    const-string v2, "Start. Resuming "

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    invoke-virtual {p0, v1}, Lhsi;->c(Lpgb;)Lpci;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v2}, Lhsi;->c(Lpgb;)Lpci;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lkso;->a()Lsui;

    move-result-object v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v3, p0, Llgt;->a:Lows;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_25

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    :goto_14
    iget-object v1, p0, Llgt;->c:Lpcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Llgt;->k:Lhsi;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v1, v0}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_23

    nop

    nop

    :goto_1a
    iget-object p0, p0, Llgt;->k:Lhsi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Llgt;->n:Lpik;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1, p0}, Llgs;-><init>(Llgt;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lpik;->k()V

    goto/32 :goto_20

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_20
    iget-object v0, p0, Llgt;->i:Lkso;

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

    :goto_21
    invoke-static {v0}, Lsgj;->P(Lsui;)Lsui;

    move-result-object v0

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

    :goto_22
    new-instance v2, Llgs;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_23
    const-string v0, "."

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    throw v0

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    :goto_27
    goto/32 :goto_13

    nop
.end method

.method public final e(Lkmq;Llxa;)Lsui;
    .locals 9

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x8

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1
    iget-object p0, v6, Llko;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p2}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v1, Lowu;

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

    :goto_4
    invoke-interface {p0, p1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    :goto_5
    goto/16 :goto_1a

    nop

    :goto_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v2, p2, v1}, Lkts;-><init>(Llxa;Lowu;)V

    goto/32 :goto_32

    nop

    nop

    :goto_8
    check-cast v4, Lkug;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lkol;->a()Z

    move-result p0

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

    :goto_a
    invoke-direct {p0}, Lsuu;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    :goto_b
    const-string p1, "CriticalPath#BlockedShutter#PictureTakerImpl#takePicture"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v7, Lfvw;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p0, Lkol;

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

    :goto_e
    goto/16 :goto_48

    nop

    :goto_f
    goto/32 :goto_47

    nop

    nop

    :goto_10
    const/4 p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1}, Lpdf;->g()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    if-nez p0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Llgt;->p:Lmhz;

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

    :goto_14
    iget-object p1, v4, Lkug;->e:Ljava/lang/Object;

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

    :goto_15
    new-instance p0, Lsuu;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    iget-object p2, v4, Lkug;->g:Ljava/lang/Object;

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

    :goto_17
    check-cast p1, Lkol;

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

    :goto_18
    invoke-virtual {p1}, Loyj;->a()V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, v0}, Lkol;->b(Lkoj;)V

    :goto_1a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {}, Lsgj;->M()Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    new-instance v2, Lkts;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1e
    iget-object p1, v4, Lkug;->a:Ljava/lang/Object;

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

    nop

    :goto_1f
    iget-object p1, v4, Lkug;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    :goto_21
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_22
    invoke-direct {v5, v4, p0}, Lkue;-><init>(Lkug;Lsuu;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_23
    iget-object p0, v4, Lkug;->i:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p1, Loyj;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_26
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_44

    nop

    :goto_28
    invoke-direct {v6, p1, p2, v0, v2}, Llko;-><init>(Lkmq;Llxa;Lktq;Lktr;)V

    goto/32 :goto_3e

    nop

    nop

    :goto_29
    if-gtz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2a
    check-cast p1, Loxv;

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

    :goto_2b
    invoke-direct {v0, p1, v1, p2}, Lktm;-><init>(Lkmq;Lowu;Llxa;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_2c
    iget-object p2, v4, Lkug;->h:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p0, v4, Lkug;->c:Ljava/lang/Object;

    nop

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

    :goto_2e
    iget-object p0, v6, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2f
    iget-object p1, v4, Lkug;->i:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_30
    const-string p1, "Take picture was invoked, but the executor is shutting down!"

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_31
    iget-object p0, v4, Lkug;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v6, Llko;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_33
    new-instance v0, Lkuf;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_34
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_35
    invoke-direct {p1, p2}, Lpfi;-><init>(Ljava/lang/String;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct/range {v3 .. v8}, Lkuf;-><init>(Lkug;Lkub;Llko;Lfvw;Lpdf;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_37
    new-instance p1, Lpfi;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {p0, p1}, Lpcu;->d(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move-object v7, p2

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

    :goto_3c
    move-object v3, v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v5, Lkue;

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

    :goto_3e
    iget-object p0, p0, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_3f
    const-string p2, "Invoked when executor shutting down."

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_43

    nop

    :goto_41
    move-object v4, p0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_42
    invoke-interface {p0}, Lktq;->f()V

    goto/32 :goto_2e

    nop

    nop

    :goto_43
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v8, v4, Lkug;->i:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v0, Lktm;

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

    :goto_47
    const/4 p2, 0x0

    nop

    nop

    :goto_48
    goto/32 :goto_34

    nop

    nop

    :goto_49
    invoke-interface {p0, p1}, Llxa;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v1, p0, Lmhz;->a:Ljava/lang/Object;

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
.end method

.method public final f()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Llgt;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    nop

    nop
.end method

.method public final g()Lows;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Llgt;->a:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final h()Lpik;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Llgt;->n:Lpik;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final i()Lqpa;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Llgt;->o:Lqpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method
