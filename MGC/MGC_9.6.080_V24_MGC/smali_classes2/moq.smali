.class public Lmoq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final A:Lmoi;

.field public final B:Lmpp;

.field public final C:Lmpi;

.field public final D:Lmpw;

.field public final E:Lpcm;

.field public final F:Landroid/hardware/Sensor;

.field public final G:Lhrb;

.field public final H:Lgqh;

.field public I:Lpog;

.field public J:Lsui;

.field public K:D

.field public L:D

.field public M:J

.field public N:J

.field public final O:Lmqd;

.field public final P:Lmhf;

.field public final Q:Lnft;

.field public final R:Lhoh;

.field public final S:Lmjv;

.field public final T:Lmhz;

.field public final U:Lhwy;

.field public final V:Lhif;

.field public final W:Lhon;

.field public final X:Lfdn;

.field public final Y:Lrbh;

.field private final Z:Lkcd;

.field private final aa:Loyd;

.field private final ab:Llzj;

.field private final ac:Lnxc;

.field private ad:Ljava/util/concurrent/ScheduledFuture;

.field private final ae:Lmoo;

.field private final af:Loiq;

.field private final ag:Loiq;

.field private final ah:Loiq;

.field private final ai:Lpic;

.field public final b:Ljava/lang/Object;

.field public final c:[D

.field public d:J

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;

.field public final i:Lgup;

.field public final j:Lhco;

.field public final k:Lmsx;

.field public final l:Loxv;

.field public final m:Landroid/content/Context;

.field public final n:Ljava/util/concurrent/Executor;

.field public final o:Lmob;

.field public final p:Lowu;

.field public final q:Ljava/lang/Object;

.field public final r:Lrss;

.field public final s:Loyn;

.field public final t:Loyn;

.field public final u:Loyn;

.field public final v:Ljava/util/concurrent/ScheduledExecutorService;

.field public final w:Landroid/hardware/SensorEventListener;

.field public final x:Landroid/hardware/SensorManager;

.field public final y:Lgwd;

.field public final z:Lmns;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const-string v0, "moq"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lmoq;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Lfdn;Lhco;Lmhf;Lmsx;Landroid/content/Context;Ljava/util/concurrent/Executor;Lhon;Lhoh;Lfdn;Lows;Lowu;Lixe;Lrss;Loyn;Loyn;Loyn;Lnft;Ljava/util/concurrent/ScheduledExecutorService;Lmns;Lmob;Lmoi;Lmpp;Lmpi;Lmpw;Lmjv;Lhif;Llzj;Lhwy;Lpcm;Lgwd;Lgup;Lrbh;Lnxc;Lpic;Lhrb;Lmhz;Lmqd;Lgqh;Lkcd;Loyd;)V
    .locals 16

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_1
    iput-object v11, v0, Lmoq;->m:Landroid/content/Context;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v10, v0, Lmoq;->af:Loiq;

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_3
    iput-object v11, v0, Lmoq;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_4
    invoke-direct {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_5
    move-object/from16 v13, p13

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

    nop

    :goto_6
    sget-object v14, Lmnp;->a:Lmnp;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_7
    invoke-interface {v10, v9, v3}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v9

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_8
    move-object/from16 v14, p39

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {p25 .. p31}, Lmoo;-><init>(Lmoq;Lowu;Lmpp;Lmpw;Lixe;Landroid/content/Context;)V

    goto/32 :goto_f

    nop

    nop

    :goto_a
    move-object/from16 v13, p17

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_b
    move-object/from16 v14, p38

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 p25, v2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_d
    iput-object v13, v0, Lmoq;->o:Lmob;

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_e
    move-object/from16 v7, p23

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v2, v0, Lmoq;->ae:Lmoo;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v2, v0, v8}, Lmon;-><init>(Lmoq;Lmpw;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v11, v0, Lmoq;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v14, v0, Lmoq;->ac:Lnxc;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object/from16 p28, p22

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual/range {p1 .. p1}, Lfdn;->p()Landroid/hardware/SensorManager;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v3, Loiq;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v2, Lmon;

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

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    :cond_0
    goto/32 :goto_88

    nop

    :goto_19
    move-object/from16 v13, p9

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v1, p8

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v13, p22

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1d
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_1e
    iput-object v6, v0, Lmoq;->A:Lmoi;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1f
    iput-object v14, v0, Lmoq;->G:Lhrb;

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

    :goto_20
    iput-object v13, v0, Lmoq;->n:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v11, v0, Lmoq;->c:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_22
    move-object/from16 v14, p32

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_23
    iput-object v13, v0, Lmoq;->W:Lhon;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_24
    iput-object v13, v0, Lmoq;->r:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v11, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_26
    move-object/from16 v14, p18

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v14, v6, Lmoi;->d:Loxv;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v9, v7, Lmpi;->q:Loiq;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_29
    invoke-direct {v9, v4, v10}, Lmfe;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move-object/from16 p26, p0

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_2b
    move-object/from16 v13, p6

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2c
    const/4 v14, 0x1

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_2d
    move-object/from16 v14, p28

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

    nop

    :goto_2e
    iput-object v11, v0, Lmoq;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2f
    move-object/from16 v11, p5

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

    :goto_30
    move-object/from16 v8, p24

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_31
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_32
    invoke-direct {v10, v0, v1, v4}, Loiq;-><init>(Ljava/lang/Object;Ljava/lang/Object;[B)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_33
    move-object/from16 v14, p31

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput-object v3, v0, Lmoq;->ah:Loiq;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_35
    move-object/from16 v14, p35

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

    :goto_36
    move-object/from16 v13, p20

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_37
    iput-object v2, v0, Lmoq;->w:Landroid/hardware/SensorEventListener;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v13, 0x4

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object v13, v0, Lmoq;->l:Loxv;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_3c
    move-object/from16 v11, p3

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3e
    move-object/from16 v14, p37

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move-object/from16 v3, p11

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_40
    iput-object v11, v0, Lmoq;->q:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v11, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_42
    iput-object v13, v0, Lmoq;->X:Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_43
    const/4 v10, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_44
    new-instance v11, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_45
    move-object/from16 v13, p36

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_46
    iput-object v11, v0, Lmoq;->h:Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_47
    const-wide/16 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_49
    iput-object v3, v0, Lmoq;->p:Lowu;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iput-object v1, v0, Lmoq;->R:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_4b
    new-instance v2, Lmoo;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    new-instance v11, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_4d
    iput-object v11, v0, Lmoq;->j:Lhco;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_4e
    invoke-virtual {v11, v13}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v11

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_4f
    new-instance v9, Loiq;

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_50
    move-object/from16 v13, p15

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_51
    invoke-direct {v13, v14}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3a

    nop

    nop

    :goto_52
    iput-object v11, v0, Lmoq;->P:Lmhf;

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_53
    invoke-virtual {v2, v9}, Lows;->d(Lpci;)V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move-object/from16 p31, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_55
    move-object/from16 v14, p34

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_56
    new-instance v15, Lmdt;

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iput-object v14, v0, Lmoq;->V:Lhif;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_58
    move-object/from16 v10, p40

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iput-object v11, v0, Lmoq;->k:Lmsx;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_5a
    invoke-virtual {v2, v9}, Lows;->d(Lpci;)V

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-direct {v15, v0, v12}, Lmdt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_85

    nop

    nop

    :goto_5c
    move-object/from16 v5, p19

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_5d
    iput-object v7, v0, Lmoq;->C:Lmpi;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    move-object/from16 v2, p10

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iput-object v14, v0, Lmoq;->y:Lgwd;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_60
    iput-object v13, v0, Lmoq;->E:Lpcm;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    move-object/from16 p29, p24

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_25

    nop

    nop

    :goto_63
    iput-object v14, v0, Lmoq;->H:Lgqh;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iput-object v9, v0, Lmoq;->ag:Loiq;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_65
    move-object/from16 v13, p29

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

    :goto_66
    iput-object v4, v0, Lmoq;->s:Loyn;

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

    :goto_67
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-direct {v3, v0, v8, v4}, Loiq;-><init>(Ljava/lang/Object;Ljava/lang/Object;[B)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_69
    move-object/from16 v4, p14

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

    :goto_6a
    iput-object v11, v0, Lmoq;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v2, v9}, Lows;->d(Lpci;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6c
    iput-object v5, v0, Lmoq;->z:Lmns;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6d
    invoke-direct {v11, v13, v14}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    new-instance v10, Loiq;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_6f
    invoke-direct {v9, v0, v12}, Lmok;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iput-object v11, v0, Lmoq;->F:Landroid/hardware/Sensor;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_71
    iput-object v14, v0, Lmoq;->O:Lmqd;

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

    :goto_72
    move-object/from16 v9, p27

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_73
    move-object/from16 v14, p33

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_74
    rem-int v0, v0, v1

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

    :goto_75
    iput-object v10, v0, Lmoq;->aa:Loyd;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v9, v12, v3}, Loyv;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_77
    move-object/from16 p30, p12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_78
    invoke-direct {v12, v0, v14}, Lmok;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_76

    nop

    nop

    :goto_79
    move-object/from16 v11, p4

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_7a
    iput-object v13, v0, Lmoq;->T:Lmhz;

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iput-object v14, v0, Lmoq;->ai:Lpic;

    nop

    nop

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

    :goto_7c
    move-object/from16 v14, p30

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

    :goto_7d
    iput-object v14, v0, Lmoq;->Z:Lkcd;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_7e
    iput-object v3, v8, Lmpw;->K:Loiq;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_7f
    iput-object v8, v0, Lmoq;->D:Lmpw;

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iput-object v14, v0, Lmoq;->Y:Lrbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_81
    invoke-direct {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_3

    nop

    nop

    :goto_82
    invoke-virtual {v2, v12}, Lows;->d(Lpci;)V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_83
    const/4 v4, 0x0

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_84
    new-array v11, v11, [D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_85
    invoke-interface {v14, v15, v3}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v12

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iput-object v2, v6, Lmoi;->af:Lmoo;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual/range {p1 .. p1}, Lfdn;->p()Landroid/hardware/SensorManager;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_88
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_8a
    move-object/from16 v13, p16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_8b
    move-object/from16 v14, p25

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-direct {v9, v0, v8}, Loiq;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_8d
    goto/32 :goto_89

    nop

    :goto_8e
    iput-object v9, v0, Lmoq;->ab:Llzj;

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iput-object v13, v0, Lmoq;->B:Lmpp;

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_90
    move-object/from16 p27, p11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_91
    move-object/from16 v11, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    new-instance v9, Lmfe;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iput-object v14, v0, Lmoq;->v:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_94
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

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

    nop

    :goto_95
    new-instance v12, Lmok;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_96
    move-object/from16 v13, p7

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_97
    iput-object v14, v0, Lmoq;->S:Lmjv;

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_98
    move-object/from16 v14, p26

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_99
    new-instance v9, Lmok;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9a
    iput-object v13, v0, Lmoq;->x:Landroid/hardware/SensorManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_9b
    iput-object v13, v0, Lmoq;->t:Loyn;

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_9c
    iput-object v14, v0, Lmoq;->U:Lhwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_9e
    iput-object v13, v0, Lmoq;->Q:Lnft;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9f
    iput-object v14, v0, Lmoq;->i:Lgup;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_a0
    new-instance v13, Loxv;

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

    :goto_a1
    return-void

    nop

    nop

    :goto_a2
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    move-object/from16 v6, p21

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

    :goto_a4
    const/16 v12, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_a5
    iput-object v10, v5, Lmns;->u:Loiq;

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_a6
    iput-object v13, v0, Lmoq;->u:Loyn;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpog;)V
    .locals 4

    goto/32 :goto_2a

    nop

    nop

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v3, v0, Lmoi;->ai:Lhwy;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Lmqd;->c()Loze;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lkcd;->b()Z

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Lozg;->k:Lozg;

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    iput-object p1, v0, Lmoi;->I:Lozg;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_8
    const/16 v2, 0xc

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, v0, Lmpw;->k:Lowu;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lmoq;->O:Lmqd;

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

    :goto_b
    iget-object v0, p0, Lmoq;->A:Lmoi;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1, v1, v2, v3}, Lnzk;->bk(Lhco;Lhoh;Lhif;Lhwy;)Lozg;

    move-result-object p1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, v0, Lmoi;->ag:Lhoh;

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

    nop

    :goto_e
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, v0, Lmoi;->f:Lhco;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0}, Lnxc;->z()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2, v3}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_13
    iget-object v0, p0, Lmoq;->ab:Llzj;

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

    :goto_14
    if-eq p1, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

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
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    new-instance v1, Lmom;

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

    :goto_18
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v2, v0, Lmoi;->d:Loxv;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, v0, Lmoi;->aj:Lhif;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lmoq;->Z:Lkcd;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    :goto_1f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1f

    nop

    :goto_21
    iput-object p1, v0, Lmoi;->K:Lpog;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Loyv;->a(Ljava/lang/Object;)V

    :goto_23
    goto/32 :goto_27

    nop

    nop

    :goto_24
    iget-object p0, p0, Lmoq;->ac:Lnxc;

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

    :goto_25
    sget-object v2, Lozg;->n:Lozg;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v2, v0, Lmoi;->H:Loze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_27
    iput-object p1, p0, Lmoq;->I:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_28
    sget-object v1, Llyk;->a:Llyk;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_29
    iput-object v1, v0, Lmoi;->V:Lmqd;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2a
    const v0, 0x8

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2b
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lmoq;->D:Lmpw;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v1, v0, v2}, Lmom;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final b(ZZ)V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v2, v1

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

    nop

    :goto_1
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, v0, Lskd;->aA:Lspr;

    nop

    nop

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

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iget-object p1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p1, v2, Lspr;->c:Z

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

    :goto_7
    iget v1, p1, Lspr;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

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

    nop

    :goto_9
    check-cast v0, Lskd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v2, Lskd;

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

    :goto_c
    invoke-virtual {p2}, Ltkg;->m()Ltkb;

    move-result-object p2

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

    :goto_d
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_f
    or-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_10
    const v1, 0x18

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

    :goto_11
    sget-object v0, Lspr;->a:Lspr;

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

    :goto_12
    iget-object v0, p2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p2}, Ltkb;->o()V

    :goto_15
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p1, Lspr;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_17
    or-int/2addr p1, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    check-cast v2, Lspr;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1a
    sget-object p2, Lskd;->a:Lskd;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    or-int/lit8 v1, v1, 0x2

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lmoq;->S:Lmjv;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, p2}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    or-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3e

    nop

    :goto_22
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_23
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_24
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_38

    nop

    :cond_2
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_25
    iput p1, v0, Lskd;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_26
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_27
    const/high16 v1, 0x8000000

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v1, p2, Ltkb;->b:Ltkg;

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

    :goto_29
    sget-object v0, Lskc;->az:Lskc;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_2b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v0, v0, Lskc;->aG:I

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2e
    iget v3, v2, Lspr;->b:I

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

    :goto_2f
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput v3, v2, Lspr;->b:I

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

    :goto_31
    iget v0, v2, Lskd;->b:I

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

    nop

    :goto_32
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move-object v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_36
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p2}, Ltkb;->o()V

    :goto_38
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput v0, v2, Lskd;->b:I

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast p1, Lspr;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3c
    iget p1, v0, Lskd;->d:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iput v1, p1, Lspr;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_35

    nop

    nop

    :goto_3f
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_40
    iput-boolean p2, p1, Lspr;->d:Z

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_41
    iput v0, v2, Lskd;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop
.end method

.method public final c(Ljava/util/List;Z)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lmoq;->q:Ljava/lang/Object;

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

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x2

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

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lmoq;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lmoq;->l:Loxv;

    nop

    sget-object p2, Lmnp;->c:Lmnp;

    nop

    invoke-virtual {p1, p2}, Loxv;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lmoq;->p:Lowu;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lmoq;->B:Lmpp;

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lmom;

    nop

    nop

    nop

    nop

    invoke-direct {p2, p0, v1}, Lmom;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Lowu;->c(Ljava/lang/Runnable;)V

    monitor-exit v0

    nop

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

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop
.end method

.method final d(Z)V
    .locals 4

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lmoq;->l:Loxv;

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

    :goto_1
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v2}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Lnxc;->s()V

    :goto_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lmoq;->A:Lmoi;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lmoq;->ac:Lnxc;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v0, Lmnp;

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

    :goto_9
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lmoi;->h()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    const v1, 0x5

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

    :goto_e
    invoke-interface {p0}, Lnxc;->ac()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lmoq;->p:Lowu;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lmoq;->l:Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_12
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

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
    iget-object v0, p0, Lmoq;->j:Lhco;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_14
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Lmnp;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v0}, Lmoq;->i(I)V

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_1
    goto/32 :goto_3a

    nop

    nop

    :goto_1a
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_2
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1d
    sget-object v1, Lmnp;->e:Lmnp;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1e
    invoke-direct {v2, v1, v3}, Lmom;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, v0}, Lmoq;->a(Lpog;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_3

    nop

    goto/32 :goto_18

    nop

    :cond_3
    :goto_21
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v1, Lmnp;->f:Lmnp;

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

    nop

    :goto_23
    new-instance v2, Lmom;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_37

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Lhco;->a()Lpog;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_27
    iget-object v0, p0, Lmoq;->A:Lmoi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_28
    const v0, 0x3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v1}, Lmnp;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Lmoi;->i()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p1, v0}, Lnxc;->M(Z)V

    :goto_2c
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2d
    iget-object p1, p0, Lmoq;->ac:Lnxc;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2e
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_4
    goto/32 :goto_1

    nop

    :goto_2f
    sget-object v1, Lmnp;->b:Lmnp;

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

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_31
    iget-object p1, p0, Lmoq;->R:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_32
    iget-object v1, p0, Lmoq;->B:Lmpp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_33
    iget-object p1, p0, Lmoq;->A:Lmoi;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_35
    sget-object v0, Lhmq;->ah:Lhmn;

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

    :goto_36
    invoke-virtual {p1}, Lmoi;->g()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_39
    check-cast v0, Lmnp;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lmoq;->l:Loxv;

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final e()V
    .locals 5

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_0
    if-ne v2, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

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
    const-wide/16 v2, 0x2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lmoq;->R:Lhoh;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7
    check-cast v3, Lmnp;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

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

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v4, Lmnp;->f:Lmnp;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_d
    iget-object v3, v3, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lmoq;->ad:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    const-wide/16 v2, 0xf

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lmoq;->ad:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lmoq;->v:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x1d

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

    :goto_1d
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1f
    iget-object v3, p0, Lmoq;->l:Loxv;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    iput-object v0, p0, Lmoq;->ad:Ljava/util/concurrent/ScheduledFuture;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1b

    nop

    nop

    :goto_22
    const/4 v1, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_23
    invoke-virtual {v3, v4}, Lmnp;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_24
    const/4 v0, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_25
    invoke-direct {v1, p0, v2}, Lmom;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v1, Lhnu;->i:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_27
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_28
    new-instance v1, Lmom;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 12

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lnft;->a()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, v0, Lmoi;->h:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5
    iget-object v1, v0, Lmoi;->ah:Lgvb;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lmpw;->l()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lmoi;->c()Lrsu;

    move-result-object v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lmoq;->D:Lmpw;

    nop

    nop

    goto/32 :goto_6

    nop

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
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, v0, Lmoi;->k:Lowu;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lmoq;->B:Lmpp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v2, Lmom;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lmoq;->ai:Lpic;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_11
    const-string v0, "Recording state is not IDLE. Ignore start recording"

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_12
    new-instance v7, Lqdl;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_13
    invoke-direct {v2, v1, v3}, Lmom;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v2}, Lgvb;->e(Lpsz;)Lgrl;

    move-result-object v1

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v2}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_17
    sget v1, Lcom/a;->aa:I

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_18
    invoke-virtual {v1, v2}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_19
    iget-object v0, p0, Lmoq;->A:Lmoi;

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

    nop

    :goto_1a
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, v0, Lmoi;->I:Lozg;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v1, Ljava/lang/Integer;

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

    :goto_1d
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_1e
    move v10, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v2, v0, Lmoi;->G:Lpnx;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, v0, Lmoi;->aj:Lhif;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_21
    iget-object v1, v0, Lmoi;->ab:Llad;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/16 v0, 0x11f8

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

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v2, v0, Lmoi;->al:Lolx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_25
    sget-object v1, Lmnp;->c:Lmnp;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Lmoq;->H:Lgqh;

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, v0, Lmoi;->R:Lgrl;

    nop

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

    nop

    :goto_28
    check-cast p0, Lscz;

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

    :goto_29
    iget-object v0, p0, Lmoq;->p:Lowu;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v2, Lmoc;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1}, Lmhf;->c(I)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v2, v8, v1}, Lmoi;->k(ZZLmqb;)Z

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2e
    new-instance v11, Lmoe;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2f
    iput-object v1, v3, Lozx;->j:Lozv;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v0, p0}, Lmpf;-><init>(Lmpi;)V

    goto/32 :goto_44

    nop

    nop

    :goto_31
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, v1}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_33
    move-object v1, v11

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v0, Lmnp;

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

    :goto_35
    iget-object v2, v1, Lrsu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_36
    const v1, 0x7f130086

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

    :goto_37
    iget-object v1, v0, Lmoi;->A:Lmob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sget-object v2, Lhnu;->d:Lhmo;

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

    :goto_39
    if-nez v9, :cond_0

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lmoq;->P:Lmhf;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3b
    check-cast v1, Lmqb;

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

    :goto_3c
    invoke-static {v2, v1}, Lolx;->aV(Lpnx;Lozt;)Lozv;

    move-result-object v1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v3, Lozx;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_3e
    move v6, v8

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_3f
    invoke-virtual {v0}, Lpic;->P()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_40
    invoke-direct/range {v1 .. v7}, Lmoe;-><init>(Lmoi;Lozx;Lgrl;Lpcg;ZLqdl;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/16 v0, 0x11f9

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_42
    iget-object v1, v0, Lmoi;->TimeLapse:Lrss;

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

    :goto_43
    sget-object v2, Lpsz;->e:Lpsz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p0, p0, Lmpi;->h:Lmlw;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_46
    invoke-direct {v2, v0, v10, v8, v9}, Lmoc;-><init>(Lmoi;IZZ)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1}, Lmob;->c()Z

    move-result v1

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {v1, v2, v0}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v1}, Lmnp;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_4a
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_4b
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4c
    const-string v0, "Device status is not allowed to start recording"

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_4d
    const v1, 0xa

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

    :goto_4e
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4f
    invoke-static {v11, v1}, Lsgj;->T(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    :goto_52
    goto/32 :goto_5c

    nop

    nop

    :goto_53
    invoke-virtual {v1, v2}, Lgvb;->e(Lpsz;)Lgrl;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_54
    new-instance v0, Lmpf;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_55
    return-void

    nop

    nop

    :goto_56
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_57
    iput v1, v3, Lozx;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p0, v0}, Lmlw;->b(Lmlv;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    :cond_3
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_56

    nop

    nop

    :goto_5c
    goto/32 :goto_68

    nop

    nop

    :goto_5d
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_5e
    invoke-static {v1}, Lozt;->a(Lozg;)Lozt;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_5f
    iget-object p0, p0, Lmoq;->C:Lmpi;

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

    :goto_60
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v0}, Lmpp;->h()V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_62
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_64
    sget-object v1, Lmnp;->d:Lmnp;

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

    :goto_65
    invoke-virtual {v1}, Llad;->a()Lpcg;

    move-result-object v5

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_66
    iput-object v1, v0, Lmoi;->R:Lgrl;

    nop

    nop

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

    :goto_67
    invoke-interface {v1}, Lgrl;->close()V

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_68
    iget-object v0, p0, Lmoq;->l:Loxv;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_69
    invoke-direct {v7, v0, v10}, Lqdl;-><init>(Lmoi;I)V

    goto/32 :goto_42

    nop

    nop

    :goto_6a
    iput-object v1, v0, Lmoi;->R:Lgrl;

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_6c

    nop

    nop

    :goto_6c
    iget-object v1, v0, Lmoi;->ah:Lgvb;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_6d
    sget-object p0, Lmoq;->a:Lsdb;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iput-object v1, v0, Lmoi;->TimeLapse:Lrss;

    nop

    nop

    :goto_6f
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_70
    const/4 v3, 0x5

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

    :goto_71
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_4
    goto/32 :goto_5b

    nop

    :goto_72
    iget-object v1, v0, Lmoi;->ag:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_73
    iget-object v0, p0, Lmoq;->l:Loxv;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    :goto_75
    iput-object v1, v0, Lmoi;->S:Lgrl;

    nop

    nop

    :goto_76
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_77
    iget-object v2, v0, Lmoi;->I:Lozg;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v1}, Lhif;->g()I

    move-result v1

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

    :goto_79
    invoke-virtual {v0}, Lgqh;->c()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

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

    :goto_7b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_7c
    iget-object v1, v1, Lrsu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_7d
    goto/16 :goto_63

    nop

    nop

    :goto_7e
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_81
    invoke-direct {v3, v2}, Lozx;-><init>(Lozg;)V

    goto/32 :goto_2f

    nop

    nop

    :goto_82
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_67

    nop

    nop

    :goto_83
    iget-object v0, p0, Lmoq;->Q:Lnft;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_86
    return-void

    nop

    nop

    :goto_87
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    sget-object v2, Lpsz;->e:Lpsz;

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

    :goto_89
    sget-object p0, Lmoq;->a:Lsdb;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    check-cast p0, Lscz;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v4, v0, Lmoi;->R:Lgrl;

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v1, p0, Lmoq;->Q:Lnft;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop
.end method

.method public final g(Z)V
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lhnu;->i:Lhmn;

    nop

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

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    :try_start_0
    iput-wide v4, p0, Lmoq;->d:J

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lmoq;->c:[D

    nop

    nop

    nop

    nop

    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    invoke-static {v4, v1, v5, v2, v3}, Ljava/util/Arrays;->fill([DIID)V

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-object v0, p0, Lmoq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_4
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v1}, Lmns;->d(Z)V

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lmoq;->z:Lmns;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_c
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1a

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

    :goto_e
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1e

    nop

    nop

    :goto_11
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lmoq;->ad:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    iput-wide v2, p0, Lmoq;->L:D

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-wide v2, p0, Lmoq;->K:D

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
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

    :goto_17
    iget-object v0, p0, Lmoq;->R:Lhoh;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lmoq;->ad:Ljava/util/concurrent/ScheduledFuture;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    const v1, 0x16

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    throw p0

    nop

    :goto_1e
    goto/32 :goto_a

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_20
    monitor-enter v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method final h()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, v1}, Lmnq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    :goto_1
    const v0, 0xe

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xa

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lhco;->h(Ljava/lang/Runnable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v1, 0xf

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

    :goto_9
    iget-object p0, p0, Lmoq;->j:Lhco;

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

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lmnq;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(I)V
    .locals 10

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lmhf;->c(I)V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v1, Lmpy;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v1, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    cmp-long v4, v4, v6

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v3, "Codec error"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, v0, Lmoi;->A:Lmob;

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lmlw;->a()V

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_b
    iget-object v4, v1, Lmpy;->d:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_c
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    :goto_e
    iget-object v0, p0, Lmoq;->l:Loxv;

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v0, Lmnp;

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_11
    iget-object v0, p0, Lmoq;->h:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    long-to-float v6, v6

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

    nop

    :goto_13
    throw p0

    nop

    :goto_14
    goto/32 :goto_20

    nop

    nop

    :goto_15
    if-ne v5, v2, :cond_1

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v5, v3, Lmnx;->m:I

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_3f

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v3, v4, v5}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-wide/16 v6, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1b
    div-float/2addr v6, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_1c
    sget-object v3, Lsue;->a:Lsui;

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_34

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

    :try_start_0
    monitor-exit v5

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lmoq;->l:Loxv;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_20
    iget-object v1, v0, Lmoi;->T:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_21
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_23
    iput-object v3, p1, Lmob;->p:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_24
    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v3, v3, p1}, Lmoi;->k(ZZLmqb;)Z

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_b2

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    :try_start_1
    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_27
    int-to-long v5, v4

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_28
    throw p0

    nop

    :goto_29
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v4, p1, Lmob;->t:Lkkb;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_2b
    iget-object v3, p1, Lmob;->k:Lmnx;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2c
    sget-object v3, Lsue;->a:Lsui;

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, v1, Lmpy;->e:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    monitor-enter v2

    nop

    :try_start_2
    iput p1, v1, Lmqh;->w:I

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v4, v1, Lmpy;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_b

    nop

    nop

    :goto_32
    sget-object v3, Lsue;->a:Lsui;

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

    :goto_33
    invoke-virtual {p1, v0}, Lsuu;->a(Ljava/lang/Throwable;)Z

    :goto_34
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_35
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_64

    nop

    :goto_36
    iput-object p1, p0, Lmoq;->J:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_37
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_93

    nop

    nop

    :goto_38
    sget-object v4, Lstd;->a:Lstd;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v4, 0x3

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_3a
    if-eq p1, v5, :cond_4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object p1, p1, Lmpi;->h:Lmlw;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3c
    sub-long/2addr v5, v7

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_3d
    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_3e
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_40
    monitor-enter v5

    nop

    :try_start_3
    iget-object v8, v3, Lmnx;->d:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    cmp-long v6, v8, v6

    nop

    nop

    if-ltz v6, :cond_5

    nop

    nop

    invoke-virtual {v3}, Lmnx;->a()V

    sget-object v3, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    monitor-exit v5

    nop

    nop

    goto :goto_41

    nop

    nop

    nop

    :cond_5
    new-instance v6, Lsuu;

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Lsuu;-><init>()V

    iput-object v6, v3, Lmnx;->k:Lsuu;

    nop

    nop

    nop

    iget-object v6, v3, Lmnx;->k:Lsuu;

    nop

    nop

    nop

    nop

    new-instance v7, Lmnq;

    nop

    invoke-direct {v7, v3, v4}, Lmnq;-><init>(Ljava/lang/Object;I)V

    iget-object v4, v3, Lmnx;->e:Lowu;

    nop

    nop

    nop

    invoke-virtual {v6, v7, v4}, Lsuu;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v3, v3, Lmnx;->k:Lsuu;

    nop

    monitor-exit v5

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_41
    goto/32 :goto_b1

    nop

    nop

    :goto_42
    sget-object p1, Lmqb;->a:Lmqb;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_43
    const-string v4, "State check failed. Recording already stopped."

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_44
    new-instance v0, Lmom;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_45
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_46
    long-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_47
    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_48
    new-instance p1, Lsuu;

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_49
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_55

    nop

    nop

    :goto_4b
    invoke-virtual {p1}, Lpic;->Q()V

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_4c
    const/16 v4, 0xbb2

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

    nop

    :goto_4d
    move-object v3, v4

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_4f
    new-instance p1, Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_50
    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v5, v3, Lmnx;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v3, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object p1, v0, Lmoi;->Z:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_54
    iget-object v1, v0, Lmoi;->M:Lmpy;

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget v5, v4, Lkkb;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_56
    return-void

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_bc

    nop

    nop

    :goto_58
    new-instance v4, Lmnq;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_59
    cmp-long v3, v8, v6

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_5a
    goto :goto_4e

    nop

    :goto_5b
    goto/32 :goto_7f

    nop

    nop

    :goto_5c
    invoke-virtual {p0, v2}, Lmoq;->g(Z)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    sub-long/2addr v6, v4

    nop

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

    :goto_5e
    const/16 v4, 0x11bb

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {v0, p0, v1}, Lmom;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_60
    iget-wide v4, v1, Lmpy;->g:J

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-interface {v1, v4}, Lscz;->M(I)Lsdo;

    move-result-object v1

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

    :goto_62
    const/4 v3, 0x0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const/16 v5, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-eqz v4, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_6
    goto/32 :goto_30

    nop

    nop

    :goto_67
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_7
    goto/32 :goto_1f

    nop

    nop

    :goto_68
    iget-object p1, p0, Lmoq;->C:Lmpi;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_69
    monitor-enter v4

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    iput v1, v3, Lmqh;->u:F

    nop

    nop

    monitor-exit v4

    nop

    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v4

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6a
    sget-object v3, Lkkb;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-interface {p1, v3, v4}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_53

    nop

    nop

    :goto_6c
    invoke-direct {v4, p1, v1}, Lmnq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_6d
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

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

    :goto_6f
    if-ne p1, v4, :cond_8

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_8
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_70
    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_71
    invoke-virtual {p1}, Lnft;->f()V

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_73
    const/16 v4, 0x1216

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

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

    :goto_75
    sget-object v3, Lmnx;->a:Lsdb;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_78
    const-wide/16 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_79
    const/4 v1, 0x7

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    div-float/2addr v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const/16 v4, 0xb

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v2, v1, Lmqh;->b:Ljava/lang/Object;

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

    :goto_7d
    invoke-virtual {v0, v1}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iput-boolean v3, v4, Lkkb;->v:Z

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_81
    monitor-enter v3

    nop

    nop

    nop

    nop

    :try_start_5
    new-instance v5, Lsuu;

    nop

    invoke-direct {v5}, Lsuu;-><init>()V

    iput-object v5, v4, Lkkb;->w:Lsuu;

    nop

    iget-object v5, v4, Lkkb;->w:Lsuu;

    nop

    nop

    nop

    new-instance v6, Lkib;

    nop

    nop

    nop

    nop

    const/4 v7, 0x4

    nop

    nop

    nop

    invoke-direct {v6, v4, v7}, Lkib;-><init>(Ljava/lang/Object;I)V

    iget-object v7, v4, Lkkb;->f:Lowu;

    nop

    invoke-virtual {v5, v6, v7}, Lsuu;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v4, v4, Lkkb;->w:Lsuu;

    nop

    monitor-exit v3

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-boolean v5, p1, Lmob;->q:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_83
    long-to-float v1, v5

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_84
    iget-object p0, p0, Lmoq;->P:Lmhf;

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_85
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_86
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_88
    cmp-long v4, v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v1, v0, Lmoi;->W:Lmqh;

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object p1, p0, Lmoq;->p:Lowu;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v3, v4, Lkkb;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v5, p1, Lmob;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8d
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object p1, p0, Lmoq;->ai:Lpic;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_8f
    iget-object v5, p1, Lmob;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_90
    invoke-interface {v3, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_91
    invoke-direct {v3, v0, v4}, Lmnq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_38

    nop

    nop

    :goto_92
    iget-object v3, v0, Lmoi;->W:Lmqh;

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

    :goto_93
    invoke-interface {v1, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :goto_94
    goto/32 :goto_79

    nop

    nop

    :goto_95
    invoke-virtual {v4}, Lkkb;->b()V

    goto/32 :goto_2c

    nop

    nop

    :goto_96
    if-nez v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_92

    nop

    nop

    nop

    :goto_97
    iget-object v3, p1, Lmob;->p:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_98
    iget-object p1, p0, Lmoq;->Q:Lnft;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_99
    goto/16 :goto_41

    nop

    nop

    nop

    nop

    :goto_9a
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    sget-object v1, Lmnp;->g:Lmnp;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_9c
    if-ne v5, v2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    :cond_a
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    check-cast v3, Lscz;

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_9e
    iget-object p1, p1, Lmob;->p:Lsui;

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_9f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    new-instance v3, Lmnq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_a2
    return-void

    nop

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    monitor-exit v2

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object v3, v4, Lkkb;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    const p1, 0x7f130087

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a5
    iput-object p1, v0, Lmoi;->Z:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a6
    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_a7
    if-nez v4, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :cond_b
    goto/32 :goto_b5

    nop

    nop

    :goto_a8
    invoke-virtual {p1, v0}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_84

    nop

    nop

    :goto_a9
    iget-object v0, p0, Lmoq;->A:Lmoi;

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_aa
    iget-object v4, v3, Lmqh;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object v5, v1, Lmpy;->c:Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_ad
    const-string v4, "no timestamp to calculate frame drop rate"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_ae
    const-string v4, "State check failed. Recording already stopped."

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

    :goto_af
    const/4 v2, 0x1

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    add-int/2addr v4, v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_b1
    iput-object v3, p1, Lmob;->p:Lsui;

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_b4
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_b5
    iget-object v4, v1, Lmpy;->d:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_b6
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-static {v0}, Lmnp;->a(Lmnp;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    goto/16 :goto_4e

    nop

    nop

    nop

    nop

    :goto_b9
    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_bb
    invoke-static {}, Lolx;->bh()Ljava/util/concurrent/Executor;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_bc
    iget-object v0, p0, Lmoq;->l:Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_bd
    if-gez v3, :cond_c

    nop

    goto/32 :goto_b9

    nop

    :cond_c
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(I)Z
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    check-cast v0, Lscz;

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
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

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

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    const/16 v1, 0x1201

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    const-string v1, "stopRecordingOnCriticalState()"

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lmoq;->a:Lsdb;

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

    :goto_b
    const v0, 0x6

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

    :goto_c
    check-cast v0, Lmnp;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lmoq;->l:Loxv;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Lmnp;->a(Lmnp;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x3

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

    :goto_12
    const/4 p0, 0x0

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

    :goto_13
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_15
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    return p0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p1}, Lmoq;->i(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop
.end method
