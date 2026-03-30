.class public Lmav;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;

.field public static final b:Lj$/time/Duration;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lhoa;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Ljava/util/concurrent/ScheduledExecutorService;

.field public final j:Lowu;

.field public final k:Landroid/content/pm/PackageInstaller;

.field public final l:Lmbb;

.field public final m:Lhsn;

.field public final n:Lmba;

.field public final o:Ltxm;

.field public final p:Ltxm;

.field public final q:Lpdf;

.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public t:Ljava/util/concurrent/Future;

.field public u:J

.field public v:Lpdh;

.field public final w:Llyv;

.field public final x:Llyv;

.field public final y:Lhon;

.field private final z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lcom/a;->rp:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    invoke-virtual {v1, v0}, Lcom/RamPatcher;->setPathAllHEXEditor(Ljava/lang/String;)V

    :catch_0
    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_4
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

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

    :goto_5
    sput-object v0, Lmav;->b:Lj$/time/Duration;

    nop

    nop

    :try_start_0
    const-string v0, "brotli"

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v0, 0x46

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Lmav;->a:Lsdb;

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

    :goto_b
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    check-cast v1, Lcom/RamPatcher;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

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

    goto/32 :goto_f

    nop

    nop

    :goto_11
    const v0, 0x1a

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "mav"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lhoa;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lowu;Lhon;Lmbb;Lhsn;Lmba;Llyv;Llyv;Ltxm;Ltxm;Landroid/content/pm/PackageInfo;Lpdf;)V
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v1, v0, Lmav;->k:Landroid/content/pm/PackageInstaller;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    iput-object v2, v0, Lmav;->f:Ljava/lang/String;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4
    iput-object v2, v0, Lmav;->n:Lmba;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5
    move-object v2, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v2, p7

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

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

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v2, v0, Lmav;->i:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v2, p16

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

    :goto_c
    move-object v2, p9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_d
    move-object v2, p10

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

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_27

    nop

    nop

    :goto_10
    iput-object v2, v0, Lmav;->q:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v2, v0, Lmav;->x:Llyv;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_12
    iput-object v1, v0, Lmav;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0xf

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object v2, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_15
    iput-object v1, v0, Lmav;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_16
    const-wide/16 v1, -0x1

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

    :goto_17
    iput-object v2, v0, Lmav;->w:Llyv;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v1, v0, Lmav;->c:Landroid/content/Context;

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

    :goto_19
    move-object/from16 v2, p18

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x18

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1b
    iput-wide v2, v0, Lmav;->z:J

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

    :goto_1c
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v2, p13

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

    :goto_1e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-object v2, p5

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_21
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_22
    move-object v2, p8

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move-object v2, p4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_24
    iput-object v2, v0, Lmav;->j:Lowu;

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

    :goto_25
    move-object v2, p2

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_26
    iput-object v2, v0, Lmav;->g:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_27
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_28
    move-object/from16 v2, p12

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_29
    invoke-virtual/range {p17 .. p17}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2a
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2b
    iput-object v2, v0, Lmav;->l:Lmbb;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object v2, v0, Lmav;->p:Ltxm;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

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

    :goto_2e
    iput-object v2, v0, Lmav;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2f
    iput-object v2, v0, Lmav;->d:Lhoa;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v2, v0, Lmav;->o:Ltxm;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

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

    :goto_32
    move-object/from16 v2, p15

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_33
    iput-object v2, v0, Lmav;->m:Lhsn;

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

    :goto_34
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_15

    nop

    nop

    :goto_35
    move-object/from16 v2, p14

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

    :goto_36
    iput-object v2, v0, Lmav;->h:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_38
    iput-wide v1, v0, Lmav;->u:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move-object v2, p11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3a
    iput-object v2, v0, Lmav;->y:Lhon;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v3, p0, v2}, Lmas;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

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

    nop

    nop

    :goto_2
    const v1, 0x10

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    :goto_5
    iget-object v0, p0, Lmav;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lmav;->t:Ljava/util/concurrent/Future;

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v3, Lmas;

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
    invoke-virtual {v0, v3}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_18

    nop

    nop

    :goto_c
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lmav;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    const/4 v0, 0x0

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
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    :goto_18
    iget-object v0, p0, Lmav;->t:Ljava/util/concurrent/Future;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lmav;->j:Lowu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method

.method public final b(ILj$/util/Optional;)V
    .locals 3

    goto/32 :goto_17

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmav;->n:Lmba;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, p1}, Lmba;->b(II)V

    goto/32 :goto_9

    nop

    nop

    :goto_3
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_6
    if-eq p1, v0, :cond_2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    const/16 p1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    move v0, p1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    iget-object v0, p0, Lmav;->y:Lhon;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_d
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lmav;->a()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p2, 0x2

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    sget-object v0, Lmav;->a:Lsdb;

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

    nop

    :goto_11
    invoke-virtual {p2}, Lj$/util/Optional;->isPresent()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Lhoa;->b(Lhoa;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    const-string p2, "INSTALL_FAILED_INTERNAL_ERROR.*signature.*not compatible.*"

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

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move p1, p2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v0, v2, p1, v1}, Lscz;->y(Ljava/lang/String;ILjava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x1

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

    :goto_1d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move p1, v0

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_21
    const/16 v1, 0x104f

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

    :goto_22
    iget-object v0, p0, Lmav;->d:Lhoa;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_23
    check-cast p1, Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_25
    sget-object v1, Lhoa;->c:Lhoa;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Lhon;->p()V

    :goto_29
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lmav;->d()V

    goto/32 :goto_e

    nop

    nop

    :goto_2b
    const-string v2, "Install failed! Status (%d): %s"

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0x1

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

    nop

    :goto_2d
    goto/16 :goto_19

    nop

    :goto_2e
    goto/32 :goto_1f

    nop

    nop

    :goto_2f
    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_23

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_17

    nop

    nop

    :goto_0
    new-instance v2, Landroid/content/ComponentName;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Lmav;->a:Lsdb;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "Failed to schedule retry!"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

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

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_7
    iget-object p0, p0, Lmav;->p:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    iget-object v0, p0, Lmav;->c:Landroid/content/Context;

    nop

    goto/32 :goto_e

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

    nop

    :goto_a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v0, 0x1056

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_d
    if-eq p0, v1, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    const-class v1, Lcom/google/android/apps/camera/sideline/SidelineJobService;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    const v1, 0xe453

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    check-cast p0, Lixy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

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

    :goto_13
    const/4 v1, 0x1

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

    :goto_14
    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    :goto_17
    const v0, 0x1e

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

    :goto_18
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1a
    const v1, 0x1

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

    :goto_1b
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lixy;->b()Landroid/app/job/JobScheduler;

    move-result-object p0

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

    :goto_1e
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_8

    nop

    nop

    :goto_21
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_22
    check-cast p0, Lscz;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    iget-wide v0, p0, Lmav;->z:J

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-virtual {p0, v2, v0}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lmav;->x:Llyv;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

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

    :goto_b
    goto/32 :goto_1

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_d
    sget-object v2, Llyr;->aw:Llzg;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method
