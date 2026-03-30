.class public Linb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;

.field private static final y:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final A:Lhoa;

.field private final B:Liof;

.field public b:I

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;

.field public final f:Ltbq;

.field public final g:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

.field public final h:Lszb;

.field public final i:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

.field public final j:Lszb;

.field public final k:Lsyy;

.field public final l:Lind;

.field public final m:Lils;

.field public final n:Z

.field public final o:Lpro;

.field public final p:Lioy;

.field public final q:Lpnx;

.field public final r:Lmmw;

.field public final s:Ljava/util/concurrent/atomic/AtomicLong;

.field public final t:Lcom/google/googlex/gcam/JpgEncoderMetadata;

.field public u:I

.field public final v:Lina;

.field public final w:Llko;

.field public final x:Lqnt;

.field private final z:Lcom/google/googlex/gcam/ShotParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

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

    goto/32 :goto_f

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    const-string v0, "inb"

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

    :goto_5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    sput-object v0, Linb;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_10

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    sput-object v0, Linb;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    :goto_f
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_6

    nop

    nop

    :goto_10
    const v1, 0x12

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ltbq;Lind;Landroid/util/DisplayMetrics;Llko;IILhon;Lhoa;Liof;Lcom/google/googlex/gcam/ShotParams;Lils;ZLpro;Lioy;Lpnx;Lmmw;)V
    .locals 13

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    move-object/from16 v0, p14

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_72

    nop

    nop

    :goto_3
    iput-object v0, v9, Linb;->p:Lioy;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_4
    const v0, 0xc

    nop

    goto/32 :goto_5c

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

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_6
    move-object/from16 v1, p3

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

    :goto_7
    const-wide/16 v3, 0x20

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, v9, Linb;->h:Lszb;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v1, Lqnt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    iput-object v6, v9, Linb;->B:Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    move-object/from16 v0, p13

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

    :goto_c
    invoke-virtual {p2}, Lind;->l()Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

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

    :goto_e
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object/from16 v1, p10

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidShotId_get()I

    move-result v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lszb;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move/from16 v2, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, v9, Linb;->o:Lpro;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_16
    move-object/from16 v8, p4

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object v0, p1

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v6, p9

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct/range {v0 .. v8}, Lina;-><init>(Linb;IILind;Lhoa;Liof;Lhon;Llko;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v0, v9, Linb;->i:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

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

    :goto_1c
    iput-boolean v0, v9, Linb;->n:Z

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
    iput-object v10, v9, Linb;->i:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    iput-object v0, v9, Linb;->m:Lils;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1f
    iput v1, v9, Linb;->b:I

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_20
    iput-object v10, v9, Linb;->k:Lsyy;

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_23
    iput-object v0, v9, Linb;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_25
    invoke-virtual {p2}, Lind;->g()Lrss;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    :goto_27
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_28
    move/from16 v0, p12

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

    :goto_29
    invoke-virtual {p2}, Lind;->d()Lrss;

    move-result-object v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move-object v0, v12

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    :goto_2e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v1, v9, Linb;->x:Lqnt;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v0, v9, Linb;->q:Lpnx;

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

    nop

    :goto_31
    goto/16 :goto_21

    nop

    nop

    :goto_32
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v0, Lcom/google/googlex/gcam/ShotParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v0, v1}, Lcom/google/googlex/gcam/ShotParams;-><init>(Lcom/google/googlex/gcam/ShotParams;)V

    goto/32 :goto_7e

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_36
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :cond_1
    goto/32 :goto_7a

    nop

    nop

    :goto_37
    iput-object v0, v9, Linb;->k:Lsyy;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_38
    iput-object v12, v9, Linb;->v:Lina;

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

    :goto_39
    iput v1, v9, Linb;->u:I

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

    :goto_3a
    move-object/from16 v0, p11

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3b
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_3c
    iput-object v10, v9, Linb;->h:Lszb;

    nop

    :goto_3d
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_3f
    iput-object v0, v9, Linb;->j:Lszb;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_40
    move-object v11, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_41
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :cond_3
    goto/32 :goto_65

    nop

    :goto_42
    new-instance v12, Lina;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_43
    iput-object v0, v9, Linb;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iput-object v11, v9, Linb;->l:Lind;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_45
    invoke-virtual {p2}, Lind;->n()Lrss;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_47
    iput-object v0, v9, Linb;->t:Lcom/google/googlex/gcam/JpgEncoderMetadata;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput-object v10, v9, Linb;->j:Lszb;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_49
    new-instance v0, Lsyw;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iput-object v0, v9, Linb;->r:Lmmw;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

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

    :goto_4e
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_4f
    iput-object v0, v9, Linb;->g:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p2}, Lind;->h()Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_51
    invoke-direct {v0}, Lcom/google/googlex/gcam/JpgEncoderMetadata;-><init>()V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_52
    iput-object v10, v9, Linb;->j:Lszb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_53
    return-void

    nop

    nop

    :goto_54
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_55
    move/from16 v3, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_56
    iput-object v10, v9, Linb;->j:Lszb;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    move-object/from16 v7, p7

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

    :goto_5a
    invoke-virtual {p2}, Lind;->f()Lrss;

    move-result-object v0

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-direct {v0}, Lszb;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5c
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_5d
    const-wide/16 v1, 0x120

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

    :goto_5e
    invoke-direct {v0}, Lszb;-><init>()V

    goto/32 :goto_3f

    nop

    nop

    :goto_5f
    invoke-direct {v0, v1}, Lsyu;-><init>(Landroid/util/DisplayMetrics;)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_60
    new-instance v0, Lcom/google/googlex/gcam/JpgEncoderMetadata;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-direct {v0, v1, v2, v3, v4}, Lsyw;-><init>(JJ)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_67

    nop

    nop

    :goto_63
    const-wide/16 v1, 0x133

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {p2}, Lind;->k()Lrss;

    move-result-object v0

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

    nop

    nop

    :goto_65
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iput-object v0, v9, Linb;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_68
    invoke-direct {v1, p1, v10}, Lqnt;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_69
    move-object/from16 v0, p16

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_6b
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    const-wide/16 v3, 0x33

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_6d
    invoke-direct {v0, v1, v2, v3, v4}, Lsyw;-><init>(JJ)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_6f
    invoke-direct {v0}, Lsyz;-><init>()V

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    move-object/from16 v0, p15

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

    :goto_71
    iput-object v0, v9, Linb;->f:Ltbq;

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

    :goto_72
    iput-object v1, v9, Linb;->s:Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_73
    iput-object v10, v9, Linb;->g:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-nez v0, :cond_5

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

    :cond_5
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    new-instance v0, Lszb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_77
    goto/16 :goto_3d

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_79
    new-instance v0, Lsyu;

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

    :goto_7a
    new-instance v0, Lsyw;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_7b
    iput-object v0, v9, Linb;->g:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_7c
    iput-object v10, v9, Linb;->h:Lszb;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iput-object v0, v9, Linb;->z:Lcom/google/googlex/gcam/ShotParams;

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

    nop

    nop

    :goto_7f
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    new-instance v0, Lsyy;

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iput-object v10, v9, Linb;->g:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

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

    :goto_82
    move-object v9, p0

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

    :goto_83
    move-object v4, p2

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_84
    iput-object v0, v9, Linb;->i:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iput-object v8, v9, Linb;->w:Llko;

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_86
    iput-object v10, v9, Linb;->i:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_87
    new-instance v0, Lsyz;

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_88
    iput-object v5, v9, Linb;->A:Lhoa;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    move-object/from16 v5, p8

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_8b
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    :cond_6
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_8d
    invoke-direct {v0}, Lsyy;-><init>()V

    goto/32 :goto_37

    nop

    nop

    :goto_8e
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :cond_7
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    new-instance v0, Ljava/util/ArrayList;

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
.end method

.method public static final f(Lmmw;)Lsxn;
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lsxn;->c:Lsxn;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :pswitch_0
    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_4

    nop

    nop

    :goto_3
    sget-object p0, Lsxn;->b:Lsxn;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    sget-object p0, Lsxn;->i:Lsxn;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    sget-object p0, Lsxn;->e:Lsxn;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    :pswitch_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Lsxn;->a:Lsxn;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    :pswitch_3
    goto/32 :goto_a

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lmmw;->ordinal()I

    move-result p0

    nop

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p0, Lsxn;->f:Lsxn;

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

    :goto_b
    return-object p0

    nop

    nop

    :pswitch_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p0, Lsxn;->d:Lsxn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p0, Lsxn;->h:Lsxn;

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

    :goto_e
    return-object p0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_1
    .end packed-switch

    :goto_f
    return-object p0

    nop

    :pswitch_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    :pswitch_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    :pswitch_7
    goto/32 :goto_d

    nop

    nop

    :goto_12
    sget-object p0, Lsxn;->g:Lsxn;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Linb;->b:I

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
    const/4 v0, 0x0

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidShotId_get()I

    move-result v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xa

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    return p0

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    iget v0, p0, Linb;->b:I

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

    :goto_13
    const-string v1, "setShotId() has not been called on this Shot."

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-ne v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final b()Lcom/google/googlex/gcam/ShotParams;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lcom/google/googlex/gcam/ShotParams;-><init>(Lcom/google/googlex/gcam/ShotParams;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Linb;->z:Lcom/google/googlex/gcam/ShotParams;

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

    :goto_3
    new-instance v0, Lcom/google/googlex/gcam/ShotParams;

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final c(Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 5

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    check-cast p1, Lira;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v1, p1, Lira;->c:Ltkv;

    nop

    :goto_5
    goto/32 :goto_11

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

    :goto_7
    goto/32 :goto_29

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_9
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p0, Linb;->a:Lsdb;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x13

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lscz;

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

    :goto_d
    invoke-static {v1}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v1

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

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_10
    const-string p1, "Failed to set face deblur node protos to shot metadata."

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

    :goto_11
    iget-object p1, p1, Lira;->c:Ltkv;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    or-int/lit8 v4, v4, 0x1

    nop

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

    :goto_13
    check-cast v3, Lira;

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
    iget-object p0, p0, Linb;->e:Ljava/util/List;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_15
    check-cast p0, Lira;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Linb;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    const/16 p1, 0x68e

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_19
    move-object v3, p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v4, v3, Lira;->b:I

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

    :goto_1d
    if-eqz p1, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1f
    iget-object p1, v0, Ltkb;->b:Ltkg;

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

    :goto_20
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_22
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz p1, :cond_2

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

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_26
    invoke-interface {v1}, Ltkv;->c()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_27
    iget-object p1, v0, Ltkb;->b:Ltkg;

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

    :goto_28
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1b

    nop

    :goto_2a
    if-eqz v2, :cond_4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p1, v0, Ltkb;->b:Ltkg;

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

    :goto_2c
    sget-object v0, Lira;->a:Lira;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, p1, Lira;->c:Ltkv;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2f
    invoke-static {p1}, Lcom/google/googlex/gcam/ShotMetadata;->a(Lcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_31
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

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

    :goto_32
    iput-wide v1, v3, Lira;->d:J

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

    :goto_33
    invoke-static {p0, p1}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_34
    iput v4, v3, Lira;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop
.end method

.method public final d()Z
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    if-ne v0, v1, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v1, Lils;->c:Lils;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-boolean p0, p0, Linb;->n:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    const v1, 0x1f

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_a
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x13

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

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    iget-object v0, p0, Linb;->m:Lils;

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

    :goto_10
    return p0

    nop

    nop

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
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    if-nez p0, :cond_2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(II)V
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    const/4 p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    const-string v0, "Gxp"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p2, Lhoa;->d:Lhoa;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq p1, p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    sget-object p1, Linb;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_6
    const-string p1, "Gxp failed! Please immediately take and file a bug report."

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

    :goto_7
    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

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

    :goto_8
    iget-object p0, p0, Linb;->B:Liof;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string p2, "%s failed"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Linb;->A:Lhoa;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    nop

    :goto_d
    invoke-interface {p1, p2, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    const/16 p2, 0x68d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    if-ne p1, p2, :cond_2

    nop

    goto/32 :goto_18

    nop

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

    :goto_13
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    if-eqz p1, :cond_3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    :goto_16
    sget-object p1, Linb;->a:Lsdb;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, p1}, Liof;->j(Ljava/lang/String;)V

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop
.end method
