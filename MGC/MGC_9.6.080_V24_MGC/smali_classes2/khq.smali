.class public Lkhq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkiy;
.implements Lkji;
.implements Lkjk;


# static fields
.field public static final a:Lsdb;

.field public static final b:J

.field public static final c:J


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Lkja;

.field private E:Lkmq;

.field private F:Llxo;

.field private final G:Ljava/util/Deque;

.field private H:F

.field private final I:Z

.field private final J:Z

.field private K:Z

.field private L:Z

.field private final M:Lkht;

.field private final N:Lkhw;

.field private final O:Lkgz;

.field private final P:Lhoh;

.field private final Q:Lmhz;

.field private final R:Lldz;

.field public final d:Lkaa;

.field public final e:Lpcu;

.field public final f:Loyn;

.field public final g:Lows;

.field public h:Z

.field public final i:Ljava/util/Deque;

.field public final j:Ljava/util/Deque;

.field public volatile k:Z

.field public final l:Ljava/util/Set;

.field public m:I

.field public final n:Landroid/os/Handler;

.field public final o:Loyn;

.field private final p:Lkiz;

.field private final q:Lkhx;

.field private final r:Lkhx;

.field private final s:Lkhx;

.field private final t:Ltud;

.field private final u:Ltxm;

.field private final v:Lije;

.field private final w:Llsi;

.field private final x:Lrss;

.field private final y:Llss;

.field private final z:Libn;


# direct methods
.method private final 6a76c551e4658c5f4308c862164e4dd9m()Z
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 p0, 0x0

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

    :goto_3
    iget-boolean p0, p0, Lkhq;->B:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

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
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_f

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lkhq;->a:Lsdb;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    sput-wide v0, Lkhq;->c:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "khq"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_6

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

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    const v0, 0xd

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    :goto_10
    const v1, 0x1a

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    sput-wide v0, Lkhq;->b:J

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

    :goto_12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    const-wide/16 v1, 0x32

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    const-wide/16 v1, 0x12c

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lkiz;Lldz;Lkhx;Lkhx;Lkhx;Ltud;Ltxm;Lkaa;Lkht;Lkhw;Lhoh;Lije;Lpcu;Landroid/os/Handler;Llsi;Lkgz;Loyn;Lrss;Lmhz;Llss;Libn;Loyn;Lows;)V
    .locals 5

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v3, v0, Lkhq;->I:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    move-object v3, p1

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

    :goto_2
    move-object/from16 v1, p16

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_3
    invoke-virtual {v1, v3}, Lhoh;->p(Lhmn;)Z

    move-result v3

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

    :goto_4
    iput-object v3, v0, Lkhq;->R:Lldz;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v3, Lhna;->O:Lhmn;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    move-object/from16 v1, p22

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

    :goto_7
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedDeque;

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
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_55

    nop

    :goto_a
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_b
    iput-object v3, v0, Lkhq;->N:Lkhw;

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

    :goto_c
    iput-object v3, v0, Lkhq;->v:Lije;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_d
    move-object v3, p3

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object v0, p0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_51

    nop

    :goto_10
    iput-object v3, v0, Lkhq;->s:Lkhx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_11
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v3, v0, Lkhq;->e:Lpcu;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_13
    move-object/from16 v4, p13

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_14
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v3, v0, Lkhq;->H:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {}, Lj$/util/concurrent/ConcurrentHashMap;->newKeySet()Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_17
    move v4, v2

    nop

    :goto_18
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_19
    iput-object v3, v0, Lkhq;->j:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v3}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1b
    iput-object v3, v0, Lkhq;->z:Libn;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v3, p5

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

    :goto_1d
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1e
    iput-object v3, v0, Lkhq;->p:Lkiz;

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

    :goto_1f
    sget-object v3, Lhna;->N:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_21
    const v0, 0x10

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

    :goto_22
    iput-object v3, v0, Lkhq;->n:Landroid/os/Handler;

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

    nop

    :goto_23
    sget-object v1, Lhmq;->a:Ljava/lang/Float;

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

    :goto_24
    const v1, 0x15

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_25
    iput-boolean v2, v0, Lkhq;->k:Z

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

    :goto_26
    if-nez v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    :goto_27
    move-object/from16 v3, p15

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_28
    iput-object v3, v0, Lkhq;->F:Llxo;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_29
    iput-boolean v2, v0, Lkhq;->A:Z

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

    :goto_2a
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-boolean v4, v0, Lkhq;->J:Z

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

    nop

    :goto_2c
    move-object/from16 v1, p11

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

    :goto_2d
    iput-object v3, v0, Lkhq;->r:Lkhx;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object v3, v0, Lkhq;->y:Llss;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1, v3}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_30
    iput-object v3, v0, Lkhq;->u:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_47

    nop

    nop

    :goto_33
    move-object/from16 v1, p23

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_34
    sget-object v3, Lhna;->K:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_35
    sget-object v3, Lhna;->M:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_36
    iput-object v1, v0, Lkhq;->o:Loyn;

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

    nop

    nop

    :goto_37
    if-eqz v3, :cond_3

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1, v3}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_39
    iput-object v3, v0, Lkhq;->M:Lkht;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object v3, v0, Lkhq;->t:Ltud;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3b
    move-object/from16 v3, p21

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3c
    iput-boolean v2, v0, Lkhq;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedDeque;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3e
    move-object v3, p7

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput-object v3, v0, Lkhq;->q:Lkhx;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_40
    move-object v3, p10

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_41
    const-string v3, "MomentsMainLoop"

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

    :goto_42
    goto :goto_4a

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iput-object v1, v0, Lkhq;->f:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_45
    move-object/from16 v3, p20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_46
    move-object v3, p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_48
    move v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    move v3, v2

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_0

    nop

    nop

    :goto_4b
    invoke-virtual {v1, v3}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_4c
    move-object v3, p9

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_4d
    sget-object v3, Lhna;->L:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_4e
    if-nez v3, :cond_4

    nop

    goto/32 :goto_73

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move-object/from16 v3, p19

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_50
    move-object v3, p6

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

    :goto_51
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iput-boolean v2, v0, Lkhq;->B:Z

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

    :goto_54
    goto/16 :goto_43

    nop

    :goto_55
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_57
    move-object/from16 v1, p17

    nop

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

    nop

    :goto_58
    iput-object v1, v0, Lkhq;->P:Lhoh;

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

    :goto_59
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedDeque;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_5a
    invoke-virtual {v1, v3}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_5b
    sget-object v3, Llxo;->a:Llxo;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iput-object v3, v0, Lkhq;->w:Llsi;

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

    :goto_5d
    move-object/from16 v3, p12

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iput-object v3, v0, Lkhq;->i:Ljava/util/Deque;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_70

    nop

    nop

    :goto_60
    move-object v3, p8

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_61
    iput-object v1, v0, Lkhq;->O:Lkgz;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_62
    sget-object v3, Lhna;->J:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_63
    move-object/from16 v1, p18

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

    :goto_64
    iput-boolean v2, v0, Lkhq;->C:Z

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

    :goto_65
    move-object v3, p4

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

    nop

    nop

    :goto_66
    iput-object v1, v0, Lkhq;->g:Lows;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iput-object v3, v0, Lkhq;->Q:Lmhz;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iput-object v3, v0, Lkhq;->G:Ljava/util/Deque;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-interface {v4, v3}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object v3

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

    :goto_6b
    iput-object v1, v0, Lkhq;->x:Lrss;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    move-object/from16 v3, p14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6d
    iput-object v3, v0, Lkhq;->d:Lkaa;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_6e
    if-nez v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_6
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_70
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_71
    iput v2, v0, Lkhq;->m:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_74
    iput-object v3, v0, Lkhq;->l:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final a2d5024664df85075db576b91d9663e9m(Lkhm;Ljava/util/List;)Lkhp;
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v2, p0, Lkhq;->I:Z

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, v2, Lkhl;->b:Lrss;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v2, p0, Lkhq;->H:F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v2, v0, Lkhp;->f:I

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

    :goto_4
    if-eqz v2, :cond_0

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

    :cond_0
    goto/32 :goto_3a

    nop

    nop

    :goto_5
    iget v2, v0, Lkhp;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v2, p0, Lkhq;->w:Llsi;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_7
    if-eqz v2, :cond_1

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

    :cond_1
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    const v1, 0x1d

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_a
    iget-boolean v2, p0, Lkhq;->A:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput v1, v0, Lkhp;->b:I

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

    :goto_d
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_6a

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    :goto_11
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_67

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

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput v2, v0, Lkhp;->a:I

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_14
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_3
    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v3, p1, Lkhm;->d:Lsay;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-boolean v3, v2, Lkhl;->a:Z

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_18
    check-cast v1, Lkft;

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

    nop

    :goto_19
    goto/16 :goto_52

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Lkhq;->j:Ljava/util/Deque;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v3, p0, Lkhq;->w:Llsi;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_20
    return-object v0

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_52

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v3, v4}, Lsay;->m(Lsay;)Z

    move-result v3

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2}, Lkhl;->d()Lsay;

    move-result-object v4

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

    :goto_28
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_52

    nop

    nop

    :goto_2c
    goto/32 :goto_1

    nop

    nop

    :goto_2d
    if-eqz v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_4
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_2e
    iput v1, v0, Lkhp;->c:I

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/camera/moments/MomentsUtils;->c(Lkft;FLlsi;Ljava/util/Collection;)Z

    move-result v2

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v3, p0, Lkhq;->G:Ljava/util/Deque;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_31
    goto/16 :goto_6a

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_33
    iget-object v2, p1, Lkhm;->d:Lsay;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_34
    iget v1, v0, Lkhp;->c:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v3, :cond_5

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6f

    nop

    nop

    :goto_36
    if-nez v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_37
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_38
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_7
    goto/32 :goto_e

    nop

    nop

    :goto_39
    iget-boolean v2, p0, Lkhq;->K:Z

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3a
    iget-boolean v2, p0, Lkhq;->L:Z

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_3b
    iget v1, v0, Lkhp;->b:I

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

    nop

    :goto_3c
    if-nez v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v2, Lkhl;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v1, v2, v3}, Lcom/google/android/apps/camera/moments/MomentsUtils;->b(Lkft;Llsi;Ljava/util/Collection;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_40
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_41
    iget v1, v0, Lkhp;->c:I

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v2, v3}, Lsay;->j(Ljava/lang/Comparable;)Z

    move-result v2

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

    :goto_43
    invoke-interface {v1}, Lkft;->c()J

    move-result-wide v3

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

    :goto_44
    if-eqz v2, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_45
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_a
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput v2, v0, Lkhp;->h:I

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

    :goto_48
    iput v1, v0, Lkhp;->d:I

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v2}, Lkhl;->e()Z

    move-result v3

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_4a
    iput v2, v0, Lkhp;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_56

    nop

    :goto_4c
    if-eqz v2, :cond_c

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v3, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_49

    nop

    nop

    :goto_4e
    iput v1, v0, Lkhp;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4f
    iget-object v4, p0, Lkhq;->G:Ljava/util/Deque;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_50
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_51
    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-eqz v1, :cond_e

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_e
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_6a

    nop

    :goto_55
    goto/32 :goto_3b

    nop

    nop

    :goto_56
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_58
    if-nez v3, :cond_f

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

    :cond_f
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-boolean v2, p0, Lkhq;->B:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_5c
    iget-boolean v2, p0, Lkhq;->J:Z

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_5d
    new-instance v0, Lkhp;

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_5e
    goto/16 :goto_6a

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iput v1, v0, Lkhp;->c:I

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

    :goto_61
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

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

    :goto_63
    if-nez v2, :cond_10

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_6

    nop

    nop

    :goto_64
    iget v1, v0, Lkhp;->e:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_65
    iget v2, v0, Lkhp;->h:I

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

    :goto_66
    invoke-direct {p0, v1}, Lkhq;->d543f409229584e2e064495967092514m(Lkft;)Z

    move-result v2

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-boolean v2, p0, Lkhq;->A:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-direct {v0}, Lkhp;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_69
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez v2, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_11
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget v1, v0, Lkhp;->d:I

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

    :goto_6d
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_6e
    iget v2, v0, Lkhp;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_6f
    iget v2, v0, Lkhp;->g:I

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
.end method

.method private final c43d12f4f4da28dd6c943a4effe477b7m(Lkhm;)J
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    return-wide p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lsay;->k()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    :goto_6
    check-cast p0, Ljava/lang/Long;

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

    :goto_7
    iget-object p0, p0, Lkhq;->d:Lkaa;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    iget-object p0, p1, Lkhm;->d:Lsay;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p1, Lkhm;->d:Lsay;

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

    :goto_b
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lsay;->l()Z

    move-result p0

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

    :goto_10
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lkaa;->a()J

    move-result-wide v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    move-wide v2, v0

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p0, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p1, Lkhm;->d:Lsay;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_19
    sub-long/2addr v0, v2

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

    :goto_1a
    if-nez p0, :cond_1

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_14

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p1, Lkhm;->d:Lsay;

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

.method private final d543f409229584e2e064495967092514m(Lkft;)Z
    .locals 7

    goto/32 :goto_25

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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lkhl;->d()Lsay;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v0, Lkhl;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    :goto_a
    if-nez v1, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    :goto_b
    invoke-interface {p1}, Lkft;->c()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_c
    iget-wide v3, v1, Lkho;->c:J

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

    :goto_d
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    cmp-long v1, v3, v5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lkhl;->e()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
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

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lkhq;->j:Ljava/util/Deque;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_4

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    :goto_17
    invoke-interface {p1}, Lkft;->c()J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_19
    return v2

    nop

    nop

    :goto_1a
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lkhl;->b()Lkho;

    move-result-object v1

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

    :goto_1c
    invoke-virtual {v0, v1}, Lsay;->j(Ljava/lang/Comparable;)Z

    move-result v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    :goto_1e
    goto/16 :goto_2

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v2, 0x1

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

    :goto_21
    invoke-virtual {v0}, Lkhl;->f()Z

    move-result v1

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

    :goto_22
    const v1, 0x13

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    :goto_24
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop
.end method

.method private static w(Lrss;J)Lrss;
    .locals 2

    goto/32 :goto_9

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4
    const v1, 0x19

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_b

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

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

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_8
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

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

    :goto_e
    cmp-long v0, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

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

    :goto_12
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v0, Ljava/lang/Long;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    if-gtz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method final a(JZZLrss;)I
    .locals 0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

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

    :goto_1
    check-cast p1, Ljava/lang/Integer;

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

    :goto_2
    invoke-virtual {p5}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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

    :goto_7
    invoke-virtual {p5}, Lrss;->h()Z

    move-result p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lkhq;->p:Lkiz;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lkhq;->p:Lkiz;

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

    :goto_b
    iget-wide p3, p0, Lkiz;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_c
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p5}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    iget p0, p0, Lkiz;->c:I

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

    :goto_12
    iget-object p0, p0, Lkhq;->p:Lkiz;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    iget p0, p0, Lkiz;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_14
    iget-object p0, p0, Lkhq;->p:Lkiz;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    iget p0, p0, Lkiz;->a:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    return p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p4, :cond_3

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

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_19
    check-cast p1, Ljava/lang/Integer;

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

    :goto_1a
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1b
    iget p0, p0, Lkiz;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    iget p0, p0, Lkiz;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return p0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1f
    long-to-int p1, p1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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

    :goto_21
    div-long/2addr p1, p3

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_22
    if-gtz p1, :cond_4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return p0

    nop

    :goto_24
    invoke-virtual {p5}, Lrss;->h()Z

    move-result p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_25
    iget-object p0, p0, Lkhq;->p:Lkiz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_26
    iget p2, p0, Lkiz;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Llxm;JLpcg;ZZLkjg;Lqep;Lsui;J)Lkjh;
    .locals 11

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    move-object v0, p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    move/from16 v6, p6

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

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v1, p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    move/from16 v9, p5

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

    :goto_b
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v4, p8

    nop

    :try_start_0
    iget-object v2, v1, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v5, "... but Moments is disabled by the switcher; ignoring."

    nop

    invoke-interface {v2, v5}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v2, v1, Lkhq;->M:Lkht;

    nop

    nop

    nop

    sget v5, Lryb;->d:I

    nop

    nop

    nop

    nop

    sget-object v5, Lsbh;->a:Lryb;

    nop

    invoke-virtual {v2, p1, v5}, Lkht;->d(Llxm;Ljava/util/List;)V

    invoke-virtual/range {p7 .. p7}, Lkjg;->b()V

    invoke-interface/range {p8 .. p8}, Lqep;->close()V

    new-instance v0, Lkjl;

    nop

    nop

    nop

    invoke-direct {v0, v3}, Lkjl;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    nop

    :cond_1
    :goto_e
    goto/32 :goto_c

    nop

    nop

    :goto_f
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iput-boolean v9, v1, Lkhq;->A:Z

    nop

    nop

    nop

    nop

    nop

    iput-boolean v6, v1, Lkhq;->B:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lhmz;->a:Lhmo;

    nop

    iget-object v4, v1, Lkhq;->P:Lhoh;

    nop

    sget-object v5, Lhmz;->e:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lhoh;->p(Lhmn;)Z

    move-result v4

    nop

    if-nez v4, :cond_2

    nop

    nop

    move v2, v3

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v4, v1, Lkhq;->N:Lkhw;

    nop

    invoke-virtual {v4}, Lkhw;->a()I

    move-result v4

    nop

    nop

    if-eq v4, v3, :cond_1

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :cond_3
    invoke-virtual {p0}, Lkhq;->n()V

    iget-boolean v2, v1, Lkhq;->A:Z

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    iget-object v2, v1, Lkhq;->O:Lkgz;

    nop

    nop

    nop

    iget-object v2, v2, Lkgz;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    sget-object v3, Lkiw;->b:Lkiw;

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual/range {p7 .. p7}, Lkjg;->a()V

    move-wide/from16 v2, p10

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v2, v3, v6}, Lkhq;->d(JZ)Lrss;

    move-result-object v7

    nop

    nop

    new-instance v10, Lkhm;

    nop

    nop

    move-object v2, v10

    nop

    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v4, p7

    nop

    nop

    nop

    nop

    move/from16 v5, p5

    nop

    move/from16 v6, p6

    nop

    nop

    nop

    move-object/from16 v8, p9

    nop

    nop

    nop

    nop

    invoke-direct/range {v2 .. v8}, Lkhm;-><init>(Llxm;Lkjg;ZZLrss;Lsui;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    move-wide v4, p2

    nop

    nop

    invoke-virtual {v2, p2, p3, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    invoke-static {v2}, Lsay;->c(Ljava/lang/Comparable;)Lsay;

    move-result-object v2

    nop

    nop

    nop

    nop

    iput-object v2, v10, Lkhm;->d:Lsay;

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lkhq;->i:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v10}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    iget-object v2, v1, Lkhq;->M:Lkht;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p1}, Lkht;->a(Llxm;)Lsui;

    move-result-object v0

    nop

    nop

    new-instance v2, Lgfq;

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0x9

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, v10, v3, v4}, Lgfq;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    sget-object v3, Lstd;->a:Lstd;

    nop

    invoke-static {v0, v2, v3}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    new-instance v0, Lkfy;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v2, v1, Lkhq;->A:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_5

    nop

    nop

    nop

    iget-object v2, v1, Lkhq;->s:Lkhx;

    nop

    nop

    goto :goto_10

    nop

    :cond_5
    iget-object v2, v1, Lkhq;->q:Lkhx;

    nop

    :goto_10
    move-object v3, p4

    nop

    nop

    nop

    nop

    move-object/from16 v4, p8

    nop

    nop

    nop

    invoke-direct {v0, v2, v4, p4}, Lkfy;-><init>(Lkhx;Lqep;Lpcg;)V

    iget-object v2, v1, Lkhq;->P:Lhoh;

    nop

    nop

    nop

    sget-object v3, Lhna;->y:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_6

    nop

    nop

    nop

    nop

    iget-boolean v2, v1, Lkhq;->A:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_6

    nop

    nop

    nop

    iget-object v2, v1, Lkhq;->r:Lkhx;

    nop

    nop

    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    iput-object v2, v0, Lkfy;->a:Lrss;

    nop

    :cond_6
    if-eqz v9, :cond_7

    nop

    nop

    iget-object v2, v1, Lkhq;->P:Lhoh;

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lhna;->t:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    if-nez v2, :cond_8

    nop

    nop

    nop

    :cond_7
    if-nez v9, :cond_9

    nop

    iget-object v2, v1, Lkhq;->P:Lhoh;

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lhna;->u:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_9

    nop

    :cond_8
    new-instance v2, Lkfx;

    nop

    nop

    invoke-direct {v2, v0}, Lkfx;-><init>(Lkgn;)V

    move-object v0, v2

    nop

    nop

    nop

    nop

    nop

    :cond_9
    iput-object v0, v10, Lkhm;->b:Lkgn;

    nop

    nop

    nop

    invoke-virtual {p0}, Lkhq;->o()V

    new-instance v0, Lkhi;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0, v10}, Lkhi;-><init>(Lkhq;Lkhm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    throw v0

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop
.end method

.method public final c()Lpci;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_2

    nop

    nop

    :goto_2
    new-instance v0, Ljso;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_4
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lkhq;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const/16 v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lkev;

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

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

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
    const v0, 0x1d

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, p0, v1}, Lkev;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, p0, v1}, Ljso;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method final d(JZ)Lrss;
    .locals 5

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_0
    move-object v1, v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1
    iget-object p0, p0, Lkhq;->p:Lkiz;

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

    :goto_2
    iget p0, p0, Lkiz;->c:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, p2}, Lhhg;->Y(J)J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    return-object p0

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
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_b
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_27

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

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_e
    check-cast p1, Lrsx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_f
    sub-long/2addr v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz p3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

    nop

    goto/32 :goto_2b

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    :goto_13
    iget-object v0, p0, Lkhq;->z:Libn;

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

    :goto_14
    iget-object v3, v0, Lnpr;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_15
    iget-object p0, p0, Lkhq;->z:Libn;

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

    :goto_16
    invoke-static {v1}, Lcom/google/android/apps/camera/moments/api/GroupPhotoUtils;->a(Llsc;)I

    move-result p1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

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

    :goto_18
    return-object p0

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    const-wide/32 v2, 0x1dcd6500

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1b
    iget-object v0, v0, Libn;->a:Lnpr;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p0, Lkhq;->x:Lrss;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_20
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, v1, Llsc;->q:[Llsf;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Libn;->b()Llsc;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x6

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

    :goto_25
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_26
    throw p0

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_28
    monitor-enter v3

    nop

    :try_start_1
    iget-object v4, v0, Lnpr;->c:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v4}, Lsbv;->p()Ljava/util/NavigableSet;

    move-result-object v4

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    invoke-interface {v4, v1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Ljava/lang/Long;

    nop

    nop

    nop

    if-nez v2, :cond_4

    nop

    nop

    nop

    monitor-exit v3

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto :goto_29

    nop

    :cond_4
    iget-object v2, v0, Lnpr;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lnpr;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lsbv;->p()Ljava/util/NavigableSet;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Long;

    nop

    nop

    check-cast v2, Lrve;

    nop

    nop

    nop

    invoke-virtual {v2, v0}, Lrve;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lpci;

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_29
    goto/32 :goto_0

    nop

    nop

    :goto_2a
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2d
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

    :goto_2e
    if-eqz v1, :cond_5

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

    :cond_5
    goto/32 :goto_15

    nop

    nop

    :goto_2f
    move-object v1, p0

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v1, Llsc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_32
    check-cast p1, Ljava/lang/Integer;

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

    :goto_33
    check-cast p1, Loyn;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_34
    if-eqz v1, :cond_6

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, p1, p2}, Libn;->a(J)Llsc;

    move-result-object v1

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

    :goto_36
    if-nez v1, :cond_7

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    cmp-long p1, p1, v2

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

    :goto_38
    iget-object p1, p1, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

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

    :goto_3a
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_3b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-wide v2, p0, Llsc;->c:J

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

    :goto_3e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget p0, p0, Lkiz;->c:I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_40
    if-ltz p1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_8
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    array-length p0, p0

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

    :goto_42
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p0, p0, Lkhq;->p:Lkiz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final e(Lkhm;)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    :goto_1
    const v0, 0x16

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

    :goto_2
    sget v1, Lryb;->d:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    iget-object v0, p1, Lkhm;->a:Llxm;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Lkgn;->close()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lkhq;->i:Ljava/util/Deque;

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

    :goto_9
    invoke-virtual {v1, v0, v2}, Lkht;->d(Llxm;Ljava/util/List;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_b
    invoke-interface {p0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    iget-object v0, p1, Lkhm;->b:Lkgn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v2, Lsbh;->a:Lryb;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1f

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lkhq;->M:Lkht;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public final f(J)V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lkhq;->G:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    iget-wide v2, v1, Llso;->a:J

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_5
    cmp-long v2, v2, p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lkhq;->G:Ljava/util/Deque;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    invoke-interface {p0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    const v0, 0x7

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_f
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v2, :cond_2

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

    :cond_2
    goto/32 :goto_a

    nop

    nop

    :goto_11
    const v1, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    check-cast v1, Llso;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 11

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_0
    filled-new-array {v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lkhq;->l:Ljava/util/Set;

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

    :goto_3
    const-string v5, "MTS   "

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    iget-object v1, v1, Lkhm;->a:Llxm;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    check-cast v1, Llxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_7
    const-string v9, "NO"

    nop

    nop

    :goto_8
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_9
    iget-object v5, v1, Lkhm;->d:Lsay;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_b
    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v10, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_f
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_10
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v5}, Lsay;->l()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v1, Lkhm;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_13
    iget-object v7, v1, Lkhl;->b:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Lkhl;->b()Lkho;

    :goto_15
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_18
    sget-object v9, Landroidx/wear/widget/xrA/fuyPMnCeXU;->NrysCWSEUAheNvF:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_19
    if-nez v5, :cond_2

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v2, " est."

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

    :goto_1b
    move-object v7, v8

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
    invoke-virtual {v4}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v7}, Lrss;->h()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1e
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-ne v6, v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-wide v2, v2, Lkhn;->e:J

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_25
    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

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

    :goto_26
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v2, p0, Lkhq;->e:Lpcu;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_29
    iget-boolean v1, v1, Lkhl;->a:Z

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2a
    if-ne v6, v5, :cond_4

    nop

    goto/32 :goto_27

    nop

    :cond_4
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v5}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v5

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    :goto_2d
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v5, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_30
    const-string v5, "UNSPEC"

    nop

    :goto_31
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_32
    filled-new-array {v5, v7, v8, v9, v2}, [Ljava/lang/Object;

    move-result-object v1

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

    :goto_33
    iget-object v3, p0, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_34
    const-string v4, "not a HDR+ shot: %s"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_62

    nop

    nop

    :goto_36
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_37
    const-string v8, "NO "

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_3a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v1}, Lkhl;->a()Lkhn;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_c

    nop

    nop

    :goto_3f
    iget-object v5, v1, Lkhm;->d:Lsay;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const v0, 0x13

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_42
    const-string v4, "   track from: %d to: %s uri: %s"

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_43
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1}, Lkhl;->f()Z

    move-result v5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_45
    const-string v2, "   session; type: %s has_image: %s cancel: %s pending: %s timestamps: %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_46
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_48
    iget-object v0, p0, Lkhq;->i:Ljava/util/Deque;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v1}, Lkhl;->f()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_4b
    iget-object v0, p0, Lkhq;->j:Ljava/util/Deque;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-interface {v2, v1}, Lpcu;->g(Ljava/lang/String;)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_10

    nop

    nop

    :goto_4e
    goto/32 :goto_48

    nop

    nop

    :goto_4f
    invoke-virtual {v1}, Lkhl;->f()Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_50
    invoke-interface {v3, v1}, Lpcu;->g(Ljava/lang/String;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v2, p0, Lkhq;->e:Lpcu;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v4, v1, Lkhm;->d:Lsay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_53
    invoke-virtual {v1}, Lkhl;->b()Lkho;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_47

    nop

    :goto_55
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_56
    const-string v5, "MAIN  "

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_57
    return-void

    nop

    :goto_58
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_22

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_5d
    iget-wide v2, v2, Lkho;->c:J

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_6d

    nop

    nop

    :goto_5f
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_60
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_61
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_63
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_65
    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_67
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_68
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-interface {v2, v1}, Lpcu;->g(Ljava/lang/String;)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_6b
    if-ne v6, v7, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    move-object v7, v9

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_4f

    nop

    nop

    :goto_6e
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6f
    check-cast v1, Lkhl;

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
.end method

.method public final h(Llxm;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, p1, v1}, Lkbu;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x7

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

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_4
    new-instance v0, Lkbu;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_d

    nop

    nop

    :goto_7
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

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lkhq;->n:Landroid/os/Handler;

    nop

    goto/32 :goto_6

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    :goto_c
    goto/32 :goto_4

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
    goto/32 :goto_8

    nop

    nop
.end method

.method public final i(Llxm;)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, v1, Lkhm;->e:Z

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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const-string v1, "Track "

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

    :goto_6
    iget-object p1, p0, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_8
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1d

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

    :goto_9
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lkhq;->e:Lpcu;

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

    :goto_c
    iget-object v0, p0, Lkhq;->i:Ljava/util/Deque;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1e

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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_2

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

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    const v1, 0x12

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    invoke-interface {p0, p1}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, v1, Lkhm;->a:Llxm;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, v1, v2}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v2, " just about to time out; trying to finish up"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_17
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1, v0}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string p1, "... probably done already"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_1c
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_1d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v0, "... found it"

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

    nop

    nop

    :goto_1f
    check-cast v1, Lkhm;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lkhq;->o()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_a

    nop

    :goto_22
    return-void

    nop

    nop

    :goto_23
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(Llxm;J)V
    .locals 7

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    move-object v1, p0

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

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    move-object v0, v6

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lkhq;->n:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v5, 0x7

    nop

    nop

    nop

    goto/32 :goto_3

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

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    :goto_c
    const v0, 0x15

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    move-object v2, p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_6

    nop

    nop

    :goto_f
    const v1, 0x8

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

    :goto_10
    invoke-direct/range {v0 .. v5}, Lhdi;-><init>(Ljava/lang/Object;Ljava/lang/Object;JI)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-wide v3, p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v6, Lhdi;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized k(Llxm;J)V
    .locals 5

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lkhq;->j:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lkhl;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lkhl;->e()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    invoke-virtual {v1}, Lkhl;->a()Lkhn;

    move-result-object v2

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lkhn;->c:Llxm;

    nop

    nop

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    iget-boolean v0, v1, Lkhl;->a:Z

    nop

    nop

    invoke-static {v0}, Lrrf;->x(Z)V

    iget-object v0, v1, Lkhl;->b:Lrss;

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    xor-int/2addr v0, v2

    nop

    invoke-static {v0}, Lrrf;->x(Z)V

    iget-boolean v0, p0, Lkhq;->I:Z

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Lkhq;->A:Z

    nop

    nop

    if-nez v0, :cond_4

    nop

    nop

    nop

    iget-object v0, p0, Lkhq;->R:Lldz;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p2, p3}, Lldz;->f(J)Lkfn;

    move-result-object p2

    nop

    nop

    nop

    nop

    new-instance p3, Lkfm;

    nop

    nop

    nop

    invoke-direct {p3, p2, v3}, Lkfm;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p3}, Lkft;->f()Lrss;

    move-result-object p2

    nop

    invoke-virtual {p2}, Lrss;->h()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_1

    nop

    invoke-interface {p3}, Lkft;->f()Lrss;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Llsy;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p2, Llsy;->a:[Llsx;

    nop

    nop

    array-length p2, p2

    nop

    if-lez p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    move p2, v2

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    move p2, v3

    nop

    :goto_4
    if-nez p2, :cond_2

    nop

    nop

    nop

    iget-object v0, p0, Lkhq;->P:Lhoh;

    nop

    nop

    nop

    nop

    sget-object v4, Lhna;->L:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    iget-object v0, p0, Lkhq;->P:Lhoh;

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lhna;->M:Lhmn;

    nop

    invoke-virtual {v0, v4}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    move v0, v2

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    :cond_2
    move v0, v3

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lkhq;->K:Z

    nop

    if-eqz p2, :cond_3

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lkhq;->P:Lhoh;

    nop

    sget-object v0, Lhna;->J:Lhmn;

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v0}, Lhoh;->p(Lhmn;)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_3

    nop

    iget-object p2, p0, Lkhq;->P:Lhoh;

    nop

    nop

    sget-object v0, Lhna;->K:Lhmn;

    nop

    nop

    nop

    invoke-virtual {p2, v0}, Lhoh;->p(Lhmn;)Z

    move-result p2

    nop

    nop

    if-eqz p2, :cond_3

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    :cond_3
    move v2, v3

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean v2, p0, Lkhq;->L:Z

    nop

    nop

    nop

    iget-object p2, p0, Lkhq;->G:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {p3}, Lkft;->d()Llso;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {p2, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    invoke-interface {p3}, Lkft;->a()F

    move-result p2

    nop

    nop

    nop

    iput p2, p0, Lkhq;->H:F

    nop

    nop

    nop

    :cond_4
    iput-boolean v3, v1, Lkhl;->a:Z

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    new-instance v0, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming YUV frame "

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " CROSS : "

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    invoke-interface {p2, p1}, Lpcu;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkhq;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

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

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lkhq;->g()V

    new-instance p1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop

    const-string p2, "Too many incoming YUV shots; we didn\'t start this many"

    nop

    nop

    nop

    nop

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

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

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    :goto_b
    const v1, 0x2

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

    :goto_c
    goto/32 :goto_a

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop
.end method

.method public final l(Llxm;Lkjj;)V
    .locals 8

    goto/32 :goto_11

    nop

    nop

    :goto_0
    move-object v4, p2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lkhh;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    :goto_5
    move-object v3, p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    :goto_9
    invoke-virtual {v0}, Lkaa;->a()J

    move-result-wide v5

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

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_c
    move-object v1, v0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    invoke-direct/range {v1 .. v7}, Lkhh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xa

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

    :goto_f
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v7, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    const v0, 0x1d

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v2, p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lkhq;->n:Landroid/os/Handler;

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

    :goto_14
    iget-object v0, p0, Lkhq;->d:Lkaa;

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
.end method

.method public final declared-synchronized m(Llxm;Lkjj;J)V
    .locals 7

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

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

    :goto_1
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

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xa

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

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lkhq;->B:Z

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p3, p4, v0}, Lkhq;->d(JZ)Lrss;

    move-result-object v6

    nop

    nop

    nop

    new-instance v0, Lkhn;

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    move-wide v2, p3

    nop

    nop

    move-object v4, p2

    nop

    nop

    nop

    move-object v5, p1

    nop

    invoke-direct/range {v1 .. v6}, Lkhn;-><init>(JLkjj;Llxm;Lrss;)V

    iget-object p1, p0, Lkhq;->j:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {p1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lkhq;->y:Llss;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p3, p4}, Llss;->b(J)Llso;

    move-result-object p1

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lkhq;->Q:Lmhz;

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p1}, Lmhz;->g(Llso;)V

    iget-object p1, p0, Lkhq;->e:Lpcu;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    const-string p3, "adding main shot "

    nop

    nop

    nop

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    invoke-interface {p1, p2}, Lpcu;->b(Ljava/lang/String;)V

    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object p1, p0, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    const-string p2, "main shot score not available"

    nop

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lpcu;->d(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p0}, Lkhq;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x10

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

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final n()V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, v1, v2, v3}, Lfzj;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_18

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
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v3, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->f:Lgjp;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    sget-object v1, Lhna;->A:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    new-instance v2, Lkev;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_e
    const-string v0, "Moments Prewarm"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p0, Lfzj;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_10
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

    :goto_11
    if-nez v0, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
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

    :goto_13
    iget-object v0, p0, Lkhq;->P:Lhoh;

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

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_16
    const/16 v3, 0xb

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v2, p0, v3}, Lkev;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lkhq;->u:Ltxm;

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

    :goto_1c
    check-cast p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method public final o()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iget-object v0, p0, Lkhq;->e:Lpcu;

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
    invoke-virtual {p0}, Lkhq;->g()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

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

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    invoke-virtual {p0}, Lkhq;->p()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x12

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "running update"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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
    invoke-virtual {p0}, Lkhq;->g()V

    goto/32 :goto_0

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
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

    :goto_e
    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x15

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public final declared-synchronized p()V
    .locals 28

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v7, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

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

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    const v1, 0xf

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_6
    move-object v1, v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_8
    throw v1

    nop

    nop

    :goto_9
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v7, Lkhq;->i:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :cond_2
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lkhm;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v7, Lkhq;->l:Ljava/util/Set;

    nop

    nop

    iget-object v5, v3, Lkhm;->a:Llxm;

    nop

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    nop

    nop

    nop

    nop

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    nop

    const/4 v3, 0x0

    nop

    :goto_d
    if-ge v3, v2, :cond_4

    nop

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lkhm;

    nop

    nop

    iget-object v5, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    iget-object v6, v4, Lkhm;->a:Llxm;

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    new-instance v9, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "track "

    nop

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not HDR+; cancelling"

    nop

    nop

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-interface {v5, v6}, Lpcu;->b(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lkhq;->e(Lkhm;)V

    add-int/lit8 v3, v3, 0x1

    nop

    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iget-boolean v1, v7, Lkhq;->C:Z

    nop

    nop

    nop

    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget-boolean v1, v7, Lkhq;->k:Z

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    :cond_5
    :goto_e
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_f
    iget-object v12, v7, Lkhq;->D:Lkja;

    nop

    nop

    nop

    nop

    iget-object v13, v7, Lkhq;->E:Lkmq;

    nop

    nop

    nop

    if-eqz v12, :cond_2f

    nop

    nop

    nop

    nop

    nop

    if-nez v13, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :cond_7
    iget-object v1, v7, Lkhq;->j:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    :cond_8
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Lkhl;

    nop

    nop

    nop

    iget-boolean v4, v3, Lkhl;->a:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_8

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lkhl;->e()Z

    move-result v3

    nop

    if-eqz v3, :cond_9

    nop

    nop

    nop

    const/4 v14, 0x1

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    :cond_9
    add-int/lit8 v2, v2, 0x1

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

    :cond_a
    move v15, v2

    nop

    nop

    nop

    nop

    :goto_11
    iget-boolean v1, v7, Lkhq;->k:Z

    nop

    nop

    nop

    nop

    if-nez v1, :cond_c

    nop

    invoke-direct/range {p0 .. p0}, Lkhq;->6a76c551e4658c5f4308c862164e4dd9m()Z

    move-result v1

    nop

    if-nez v1, :cond_b

    nop

    nop

    nop

    nop

    nop

    if-nez v14, :cond_5

    nop

    nop

    :cond_b
    iget-object v1, v7, Lkhq;->t:Ltud;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ltud;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lkjc;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lkjc;->a()I

    move-result v1

    nop

    nop

    if-ge v15, v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    :cond_c
    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    const-string v2, "trying to add shots; currently in flight: "

    nop

    nop

    nop

    invoke-static {v15, v2}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    iget-boolean v1, v7, Lkhq;->k:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_d

    nop

    nop

    nop

    nop

    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "... but ignoring counts since this is our last chance before shutdown"

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    :cond_d
    iget-object v1, v7, Lkhq;->R:Lldz;

    nop

    nop

    invoke-virtual {v1}, Lldz;->g()Ljava/util/List;

    move-result-object v1

    nop

    new-instance v6, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    nop

    nop

    nop

    nop

    nop

    :cond_e
    :goto_12
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_19

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    move-object v5, v1

    nop

    nop

    check-cast v5, Lkft;

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Lkft;->c()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    invoke-static {v1, v1}, Lsay;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lsay;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v7, Lkhq;->i:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v17

    nop

    nop

    nop

    :cond_f
    :goto_13
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_e

    nop

    nop

    nop

    nop

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    check-cast v2, Lkhm;

    nop

    nop

    nop

    nop

    iget-object v1, v2, Lkhm;->d:Lsay;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Lsay;->m(Lsay;)Z

    move-result v1

    nop

    if-eqz v1, :cond_f

    nop

    nop

    nop

    nop

    iget-boolean v1, v2, Lkhm;->f:Z

    nop

    if-eqz v1, :cond_10

    nop

    nop

    move-object v9, v5

    nop

    nop

    nop

    move-object v10, v6

    nop

    nop

    nop

    move/from16 v20, v14

    nop

    move/from16 v21, v15

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :cond_10
    iget-object v1, v7, Lkhq;->j:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    const/4 v3, 0x0

    nop

    :cond_11
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    nop

    nop

    nop

    nop

    nop

    if-eqz v18, :cond_13

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    nop

    nop

    move-object/from16 v10, v18

    nop

    nop

    check-cast v10, Lkhl;

    nop

    nop

    nop

    nop

    iget-object v8, v2, Lkhm;->d:Lsay;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Lkhl;->d()Lsay;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Lsay;->m(Lsay;)Z

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_11

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Lkhl;->f()Z

    move-result v8

    nop

    nop

    nop

    if-eqz v8, :cond_11

    nop

    nop

    nop

    iget-boolean v8, v10, Lkhl;->a:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v8, :cond_12

    nop

    nop

    iget-object v8, v10, Lkhl;->b:Lrss;

    nop

    invoke-virtual {v8}, Lrss;->h()Z

    move-result v8

    nop

    nop

    nop

    if-eqz v8, :cond_11

    nop

    nop

    :cond_12
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    :cond_13
    invoke-direct {v7, v2}, Lkhq;->c43d12f4f4da28dd6c943a4effe477b7m(Lkhm;)J

    move-result-wide v8

    nop

    nop

    nop

    iget-boolean v10, v2, Lkhm;->f:Z

    nop

    iget-boolean v1, v2, Lkhm;->g:Z

    nop

    nop

    nop

    nop

    iget-object v11, v2, Lkhm;->h:Lrss;

    nop

    nop

    nop

    move/from16 v19, v1

    nop

    nop

    nop

    move-object/from16 v1, p0

    nop

    move/from16 v20, v14

    nop

    move/from16 v21, v15

    nop

    move-object v14, v2

    nop

    nop

    nop

    nop

    nop

    move v15, v3

    nop

    nop

    move-wide v2, v8

    nop

    move-object v8, v4

    nop

    nop

    nop

    nop

    move v4, v10

    nop

    move-object v9, v5

    nop

    move/from16 v5, v19

    nop

    nop

    nop

    move-object v10, v6

    nop

    move-object v6, v11

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v1 .. v6}, Lkhq;->a(JZZLrss;)I

    move-result v1

    nop

    nop

    nop

    invoke-direct/range {p0 .. p0}, Lkhq;->6a76c551e4658c5f4308c862164e4dd9m()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_17

    nop

    iget-boolean v2, v14, Lkhm;->g:Z

    nop

    nop

    nop

    nop

    const/4 v3, -0x1

    nop

    nop

    nop

    if-eqz v2, :cond_14

    nop

    iget-object v2, v14, Lkhm;->h:Lrss;

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Ljava/lang/Integer;

    nop

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    if-gt v2, v4, :cond_15

    nop

    :cond_14
    iget-object v2, v14, Lkhm;->d:Lsay;

    nop

    invoke-virtual {v2}, Lsay;->l()Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_15
    iget-boolean v2, v14, Lkhm;->g:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_17

    nop

    iget-object v2, v14, Lkhm;->d:Lsay;

    nop

    nop

    nop

    invoke-virtual {v2}, Lsay;->l()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_17

    nop

    nop

    nop

    nop

    iget-object v2, v14, Lkhm;->h:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    div-int/lit8 v2, v2, 0x2

    nop

    if-ge v15, v2, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_16
    :goto_15
    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    iget-object v2, v14, Lkhm;->h:Lrss;

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    iget-object v3, v14, Lkhm;->d:Lsay;

    nop

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot launch alternative as this shot ("

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") requires the full range ("

    nop

    nop

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") of shots (and we have not reached that yet). Need to wait..."

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    goto :goto_17

    nop

    nop

    :cond_17
    :goto_16
    if-lt v15, v1, :cond_18

    nop

    nop

    nop

    nop

    iget-object v2, v7, Lkhq;->e:Lpcu;

    nop

    nop

    const-string v3, "Cannot launch alternative as we have already exceeded the max ("

    nop

    nop

    nop

    nop

    const-string v4, " of "

    nop

    nop

    nop

    nop

    nop

    const-string v5, ")"

    nop

    nop

    invoke-static {v1, v15, v3, v4, v5}, La;->bq(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-interface {v2, v1}, Lpcu;->b(Ljava/lang/String;)V

    :goto_17
    move-object v4, v8

    nop

    nop

    nop

    nop

    nop

    move-object v5, v9

    nop

    nop

    nop

    nop

    move-object v6, v10

    nop

    nop

    nop

    nop

    nop

    move/from16 v14, v20

    nop

    nop

    move/from16 v15, v21

    nop

    nop

    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :cond_18
    :goto_18
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    const-string v3, "found relevant burst! "

    nop

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    move-object v6, v10

    nop

    move/from16 v14, v20

    nop

    nop

    nop

    move/from16 v15, v21

    nop

    nop

    nop

    nop

    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_19
    move-object v10, v6

    nop

    nop

    nop

    move/from16 v20, v14

    nop

    nop

    nop

    nop

    nop

    move/from16 v21, v15

    nop

    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_19
    if-ge v3, v2, :cond_1b

    nop

    nop

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Lkft;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v4}, Lkhq;->d543f409229584e2e064495967092514m(Lkft;)Z

    move-result v5

    nop

    nop

    nop

    if-nez v5, :cond_1a

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v7, Lkhq;->e:Lpcu;

    nop

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    nop

    const-string v8, "not yet created: "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    invoke-interface {v5, v6}, Lpcu;->b(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    iget-object v5, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    const-string v6, "burst already processing (or failed): "

    nop

    nop

    nop

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    invoke-interface {v5, v4}, Lpcu;->b(Ljava/lang/String;)V

    :goto_1a
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_19

    nop

    nop

    nop

    :cond_1b
    new-instance v2, Lvl;

    nop

    const/16 v3, 0xf

    nop

    nop

    nop

    invoke-direct {v2, v3}, Lvl;-><init>(I)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1c

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    const-string v2, "Ran out of alternatives to launch."

    nop

    invoke-interface {v1, v2}, Lpcu;->g(Ljava/lang/String;)V

    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :cond_1c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lkft;

    nop

    nop

    iget-boolean v2, v7, Lkhq;->B:Z

    nop

    nop

    if-eqz v2, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_1e

    nop

    nop

    :cond_1d
    iget-boolean v2, v7, Lkhq;->A:Z

    nop

    nop

    nop

    nop

    if-nez v2, :cond_21

    nop

    nop

    nop

    iget-boolean v2, v7, Lkhq;->L:Z

    nop

    nop

    if-nez v2, :cond_1e

    nop

    iget-boolean v2, v7, Lkhq;->K:Z

    nop

    if-eqz v2, :cond_25

    nop

    nop

    :cond_1e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    :cond_1f
    if-ge v3, v2, :cond_20

    nop

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lkft;

    nop

    iget v5, v7, Lkhq;->H:F

    nop

    nop

    nop

    iget-object v6, v7, Lkhq;->w:Llsi;

    nop

    nop

    nop

    iget-object v8, v7, Lkhq;->G:Ljava/util/Deque;

    nop

    nop

    invoke-static {v4, v5, v6, v8}, Lcom/google/android/apps/camera/moments/MomentsUtils;->c(Lkft;FLlsi;Ljava/util/Collection;)Z

    move-result v5

    nop

    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    if-eqz v5, :cond_1f

    nop

    nop

    nop

    move-object v3, v4

    nop

    nop

    nop

    nop

    nop

    goto :goto_1b

    nop

    nop

    :cond_20
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v3, :cond_25

    nop

    nop

    nop

    nop

    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    const-string v2, "We do not have any burst that has good quality and large diversity."

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    goto/16 :goto_e

    nop

    nop

    nop

    :cond_21
    iget-boolean v2, v7, Lkhq;->J:Z

    nop

    if-eqz v2, :cond_25

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_1c
    if-ge v3, v2, :cond_24

    nop

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Lkft;

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lkft;->e()Lrss;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_22

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lkft;->f()Lrss;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_23

    nop

    :cond_22
    iget-object v5, v7, Lkhq;->w:Llsi;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v7, Lkhq;->G:Ljava/util/Deque;

    nop

    nop

    invoke-static {v4, v5, v6}, Lcom/google/android/apps/camera/moments/MomentsUtils;->b(Lkft;Llsi;Ljava/util/Collection;)Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_23

    nop

    move-object v3, v4

    nop

    nop

    nop

    nop

    nop

    goto :goto_1d

    nop

    nop

    nop

    :cond_23
    add-int/lit8 v3, v3, 0x1

    nop

    goto :goto_1c

    nop

    nop

    nop

    nop

    :cond_24
    const/4 v3, 0x0

    nop

    :goto_1d
    if-nez v3, :cond_25

    nop

    nop

    nop

    nop

    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :cond_25
    :goto_1e
    invoke-interface {v3}, Lkft;->c()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v12, v1, v2}, Lkja;->a(J)Lpge;

    move-result-object v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_27

    nop

    nop

    nop

    nop

    nop

    iget-boolean v1, v7, Lkhq;->k:Z

    nop

    nop

    nop

    if-eqz v1, :cond_26

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    invoke-interface {v3}, Lkft;->c()J

    move-result-wide v4

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inserting failed shots for timestamp <"

    nop

    nop

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    nop

    sget-object v4, Landroidx/viewpager2/widget/jY/lIiWb;->GQTXbmYLLPE:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    new-instance v1, Lkho;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lkft;->c()J

    move-result-wide v23

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lkft;->b()F

    move-result v25

    nop

    invoke-interface {v3}, Lkft;->a()F

    move-result v26

    nop

    nop

    nop

    invoke-interface {v3}, Lkft;->d()Llso;

    move-result-object v27

    nop

    nop

    move-object/from16 v22, v1

    nop

    nop

    invoke-direct/range {v22 .. v27}, Lkho;-><init>(JFFLlso;)V

    const/4 v8, 0x0

    nop

    iput-boolean v8, v1, Lkho;->a:Z

    nop

    nop

    iget-object v2, v7, Lkhq;->j:Ljava/util/Deque;

    nop

    invoke-interface {v2, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    move/from16 v14, v20

    nop

    nop

    nop

    move/from16 v15, v21

    nop

    nop

    goto/16 :goto_11

    nop

    :cond_26
    const/4 v8, 0x0

    nop

    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    const-string v2, "almost launched empty burst; aborting"

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->h(Ljava/lang/String;)V

    goto/16 :goto_25

    nop

    nop

    nop

    :cond_27
    const/4 v8, 0x0

    nop

    invoke-interface {v1}, Lpge;->b()Lpgi;

    move-result-object v2

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    new-instance v5, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adding launch frame "

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v2, Lpgi;->b:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-interface {v4, v2}, Lpcu;->b(Ljava/lang/String;)V

    iget-boolean v2, v7, Lkhq;->A:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_28

    nop

    nop

    nop

    nop

    nop

    iget-boolean v2, v7, Lkhq;->I:Z

    nop

    nop

    nop

    if-eqz v2, :cond_29

    nop

    nop

    nop

    nop

    nop

    goto :goto_1f

    nop

    nop

    nop

    :cond_28
    iget-boolean v2, v7, Lkhq;->J:Z

    nop

    nop

    if-eqz v2, :cond_29

    nop

    nop

    :goto_1f
    iget-object v2, v7, Lkhq;->G:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {v3}, Lkft;->d()Llso;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-interface {v2, v4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_29
    iget-object v2, v7, Lkhq;->j:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    const-wide v4, 0x7fffffffffffffffL

    nop

    nop

    const/4 v6, 0x0

    nop

    :cond_2a
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    nop

    nop

    if-eqz v9, :cond_2b

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    check-cast v9, Lkhl;

    nop

    nop

    nop

    invoke-virtual {v9}, Lkhl;->e()Z

    move-result v10

    nop

    nop

    nop

    if-eqz v10, :cond_2a

    nop

    nop

    nop

    invoke-virtual {v9}, Lkhl;->a()Lkhn;

    move-result-object v10

    nop

    nop

    nop

    iget-wide v10, v10, Lkhn;->e:J

    nop

    nop

    invoke-interface {v1}, Lpge;->b()Lpgi;

    move-result-object v14

    nop

    nop

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v14, v14, Lpgi;->b:J

    nop

    nop

    sub-long/2addr v10, v14

    nop

    nop

    nop

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    nop

    nop

    nop

    cmp-long v14, v10, v4

    nop

    if-gez v14, :cond_2a

    nop

    nop

    nop

    nop

    move-object v6, v9

    nop

    move-wide v4, v10

    nop

    nop

    nop

    nop

    goto :goto_20

    nop

    nop

    nop

    :cond_2b
    if-eqz v6, :cond_2c

    nop

    nop

    nop

    invoke-virtual {v6}, Lkhl;->a()Lkhn;

    move-result-object v2

    nop

    nop

    nop

    goto :goto_21

    nop

    nop

    nop

    :cond_2c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v4, v7, Lkhq;->E:Lkmq;

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_2d

    nop

    iget-object v5, v7, Lkhq;->F:Llxo;

    nop

    iget-object v4, v4, Lkmq;->d:Lpog;

    nop

    nop

    nop

    nop

    invoke-static {v4, v5}, Lhst;->b(Lpog;Llxo;)Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_2d

    nop

    nop

    iget-object v4, v7, Lkhq;->v:Lije;

    nop

    invoke-virtual {v4}, Lije;->a()Lijd;

    move-result-object v4

    nop

    invoke-virtual {v4}, Lijd;->a()Llyd;

    move-result-object v4

    nop

    nop

    nop

    goto :goto_22

    nop

    :cond_2d
    sget-object v4, Llyd;->a:Llyd;

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v2, :cond_2e

    nop

    iget-object v2, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    sget-object v5, Lcom/google/android/apps/camera/imax/cyclops/metadata/vUwG/ZKDLyMOUoobPIS;->rfMw:Ljava/lang/String;

    nop

    invoke-interface {v2, v5}, Lpcu;->b(Ljava/lang/String;)V

    new-instance v2, Lkjj;

    nop

    nop

    nop

    invoke-direct {v2, v4}, Lkjj;-><init>(Llyd;)V

    goto :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_2e
    iget-object v2, v2, Lkhn;->d:Lkjj;

    nop

    new-instance v5, Lkjj;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v2, v2, Lkjj;->a:Z

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v4, v2}, Lkjj;-><init>(Llyd;Z)V

    move-object v2, v5

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v4, Lkho;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lkft;->c()J

    move-result-wide v23

    nop

    invoke-interface {v3}, Lkft;->b()F

    move-result v25

    nop

    invoke-interface {v3}, Lkft;->a()F

    move-result v26

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lkft;->d()Llso;

    move-result-object v27

    nop

    nop

    move-object/from16 v22, v4

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v22 .. v27}, Lkho;-><init>(JFFLlso;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    nop

    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    nop

    nop

    nop

    iput-object v3, v4, Lkho;->f:Lrss;

    nop

    nop

    iget-object v3, v7, Lkhq;->t:Ltud;

    nop

    nop

    invoke-interface {v3}, Ltud;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lkjc;

    nop

    new-instance v5, Lkhk;

    nop

    nop

    nop

    nop

    invoke-direct {v5, v7, v4}, Lkhk;-><init>(Lkhq;Lkho;)V

    invoke-interface {v3, v1, v13, v2, v5}, Lkjc;->b(Lpge;Lkmq;Lkjj;Lkjb;)V

    iget-object v1, v7, Lkhq;->j:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {v1, v4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lkhq;->Q:Lmhz;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v4, Lkho;->d:Llso;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lmhz;->g(Llso;)V

    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    const-string v2, "starting HDR+ session."

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    add-int/lit8 v15, v21, 0x1

    nop

    nop

    move/from16 v14, v20

    nop

    goto/16 :goto_11

    nop

    nop

    nop

    :cond_2f
    :goto_24
    const/4 v8, 0x0

    nop

    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    const-string v2, "not launching new shots as most recent shot buffers are not available"

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    :goto_25
    iget-object v1, v7, Lkhq;->d:Lkaa;

    nop

    nop

    nop

    invoke-virtual {v1}, Lkaa;->a()J

    move-result-wide v9

    nop

    nop

    new-instance v11, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v7, Lkhq;->i:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v12

    nop

    :cond_30
    :goto_26
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_3e

    nop

    nop

    nop

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    move-object v13, v1

    nop

    nop

    check-cast v13, Lkhm;

    nop

    nop

    nop

    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    iget-object v3, v13, Lkhm;->d:Lsay;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v3

    nop

    nop

    iget-object v4, v13, Lkhm;->d:Lsay;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lsay;->l()Z

    move-result v4

    nop

    if-eqz v4, :cond_31

    nop

    nop

    nop

    iget-object v4, v13, Lkhm;->d:Lsay;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v4

    nop

    check-cast v4, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_31
    const-string v4, "UNSPEC"

    nop

    nop

    :goto_27
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    const-string v4, "Considering track for finishing, %d to: %s"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-interface {v1, v2}, Lpcu;->g(Ljava/lang/String;)V

    iget-object v1, v13, Lkhm;->d:Lsay;

    nop

    invoke-virtual {v1}, Lsay;->l()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_32

    nop

    nop

    nop

    nop

    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    const-string v2, "... but it doesn\'t have an upper bound yet"

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->g(Ljava/lang/String;)V

    :goto_28
    move v4, v8

    nop

    nop

    nop

    nop

    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    :cond_32
    iget-boolean v1, v13, Lkhm;->e:Z

    nop

    nop

    if-eqz v1, :cond_33

    nop

    nop

    nop

    nop

    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    iget-object v2, v13, Lkhm;->a:Llxm;

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ending high-res track "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to imminent timeout"

    nop

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->h(Ljava/lang/String;)V

    iget-object v1, v7, Lkhq;->R:Lldz;

    nop

    nop

    nop

    invoke-virtual {v1}, Lldz;->g()Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    invoke-direct {v7, v13, v1}, Lkhq;->a2d5024664df85075db576b91d9663e9m(Lkhm;Ljava/util/List;)Lkhp;

    move-result-object v1

    nop

    nop

    iget-object v2, v7, Lkhq;->e:Lpcu;

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const-string v3, "Track timing out: "

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-interface {v2, v1}, Lpcu;->h(Ljava/lang/String;)V

    :goto_29
    const/4 v4, 0x1

    nop

    nop

    goto/16 :goto_2a

    nop

    :cond_33
    iget-object v1, v13, Lkhm;->d:Lsay;

    nop

    invoke-virtual {v1}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    nop

    cmp-long v1, v1, v9

    nop

    nop

    nop

    if-lez v1, :cond_34

    nop

    nop

    nop

    nop

    nop

    iget-boolean v1, v7, Lkhq;->k:Z

    nop

    nop

    if-nez v1, :cond_34

    nop

    nop

    nop

    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "... but we might still have incoming frames (... latest timestamp: "

    nop

    const-string v3, ")"

    nop

    invoke-static {v9, v10, v2, v3}, Lmf;->b(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_34
    iget-object v1, v7, Lkhq;->R:Lldz;

    nop

    iget-object v2, v7, Lkhq;->e:Lpcu;

    nop

    invoke-virtual {v1}, Lldz;->g()Ljava/util/List;

    move-result-object v1

    nop

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    nop

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v13, Lkhm;->a:Llxm;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    const-string v5, "%d bursts are available for launching track %s."

    nop

    nop

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    invoke-interface {v2, v3}, Lpcu;->b(Ljava/lang/String;)V

    invoke-direct {v7, v13, v1}, Lkhq;->a2d5024664df85075db576b91d9663e9m(Lkhm;Ljava/util/List;)Lkhp;

    move-result-object v1

    nop

    nop

    nop

    iget-object v2, v7, Lkhq;->e:Lpcu;

    nop

    nop

    invoke-virtual {v1}, Lkhp;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpcu;->b(Ljava/lang/String;)V

    iget v2, v1, Lkhp;->a:I

    nop

    iget v3, v1, Lkhp;->b:I

    nop

    nop

    nop

    nop

    add-int/2addr v2, v3

    nop

    if-lez v2, :cond_35

    nop

    nop

    iget v14, v1, Lkhp;->f:I

    nop

    nop

    nop

    nop

    invoke-direct {v7, v13}, Lkhq;->c43d12f4f4da28dd6c943a4effe477b7m(Lkhm;)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    iget-boolean v4, v13, Lkhm;->f:Z

    nop

    nop

    iget-boolean v5, v13, Lkhm;->g:Z

    nop

    nop

    nop

    nop

    iget-object v6, v13, Lkhm;->h:Lrss;

    nop

    nop

    nop

    nop

    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v1 .. v6}, Lkhq;->a(JZZLrss;)I

    move-result v1

    nop

    if-ge v14, v1, :cond_35

    nop

    nop

    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    const-string v2, "... but we\'re still waiting for frames"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    goto/16 :goto_28

    nop

    nop

    nop

    :cond_35
    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    const-string v2, "... and we found no reason why not to finish"

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, v13, Lkhm;->i:Lsui;

    nop

    nop

    invoke-interface {v1}, Lsui;->isDone()Z

    move-result v1

    nop

    iget-object v2, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " top-shot tone mapping finishes = "

    nop

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpcu;->b(Ljava/lang/String;)V

    if-eqz v4, :cond_30

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_30

    nop

    nop

    nop

    nop

    iget-object v1, v13, Lkhm;->i:Lsui;

    nop

    invoke-static {v1}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lrss;

    nop

    nop

    nop

    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v7, Lkhq;->j:Ljava/util/Deque;

    nop

    sget-object v3, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    move-object v4, v3

    nop

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_39

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Lkhl;

    nop

    nop

    nop

    nop

    iget-object v6, v13, Lkhm;->d:Lsay;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lkhl;->d()Lsay;

    move-result-object v14

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v14}, Lsay;->m(Lsay;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_38

    nop

    nop

    iget-object v6, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lkhl;->d()Lsay;

    move-result-object v14

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    iget-object v15, v13, Lkhm;->d:Lsay;

    nop

    nop

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    nop

    new-instance v8, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    nop

    nop

    nop

    nop

    nop

    const-string v2, "adding frame from burst: "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to track with range "

    nop

    nop

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v6, v2}, Lpcu;->b(Ljava/lang/String;)V

    invoke-virtual {v5}, Lkhl;->e()Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_36

    nop

    nop

    iget-object v2, v7, Lkhq;->e:Lpcu;

    nop

    const-string v5, "... actually, skipping it since it\'s from a main shot"

    nop

    nop

    invoke-interface {v2, v5}, Lpcu;->b(Ljava/lang/String;)V

    goto :goto_2c

    nop

    :cond_36
    iget-object v2, v5, Lkhl;->b:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    if-nez v2, :cond_37

    nop

    nop

    invoke-virtual {v5}, Lkhl;->b()Lkho;

    move-result-object v2

    nop

    nop

    nop

    iget-wide v5, v2, Lkho;->c:J

    nop

    invoke-static {v4, v5, v6}, Lkhq;->w(Lrss;J)Lrss;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v7, Lkhq;->e:Lpcu;

    nop

    nop

    const-string v5, "... actually, skipping it since it\'s still in flight"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v5}, Lpcu;->b(Ljava/lang/String;)V

    goto :goto_2c

    nop

    nop

    nop

    nop

    :cond_37
    invoke-virtual {v5}, Lkhl;->b()Lkho;

    move-result-object v2

    nop

    nop

    nop

    iget-wide v14, v2, Lkho;->c:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v14, v15}, Lkhq;->w(Lrss;J)Lrss;

    move-result-object v3

    nop

    invoke-virtual {v5}, Lkhl;->b()Lkho;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    nop

    nop

    :cond_38
    move-object/from16 v16, v2

    nop

    :goto_2c
    move-object/from16 v2, v16

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    goto/16 :goto_2b

    nop

    nop

    :cond_39
    invoke-virtual {v3}, Lrss;->h()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_3a

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_3a

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    nop

    nop

    nop

    cmp-long v2, v5, v14

    nop

    nop

    nop

    if-gez v2, :cond_3a

    nop

    nop

    nop

    iget-object v2, v7, Lkhq;->e:Lpcu;

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "earlier moments frame might drop: frame <"

    nop

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> is still in flight, while frame <"

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> is finished."

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpcu;->b(Ljava/lang/String;)V

    :cond_3a
    new-instance v2, Lvl;

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0x10

    nop

    invoke-direct {v2, v3}, Lvl;-><init>(I)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    iget-object v5, v13, Lkhm;->a:Llxm;

    nop

    nop

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    const-string v6, "Sending frames for encoding for "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    invoke-interface {v4, v5}, Lpcu;->b(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_3d

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Lkho;

    nop

    nop

    nop

    nop

    iget-object v5, v4, Lkho;->b:Lrss;

    nop

    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    invoke-static {v5}, Lrrf;->x(Z)V

    iget-object v5, v4, Lkho;->b:Lrss;

    nop

    nop

    nop

    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Lpol;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lpol;->k()Lprw;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lkho;->f:Lrss;

    nop

    nop

    nop

    invoke-virtual {v6}, Lrss;->h()Z

    move-result v6

    nop

    nop

    const-string v8, "Start time not available for Moments shot"

    nop

    nop

    invoke-static {v6, v8}, Lrrf;->y(ZLjava/lang/Object;)V

    iget-object v6, v4, Lkho;->g:Lrss;

    nop

    nop

    nop

    invoke-virtual {v6}, Lrss;->h()Z

    move-result v6

    nop

    nop

    nop

    const-string v8, "End time not available for finished Moments shot"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v8}, Lrrf;->y(ZLjava/lang/Object;)V

    iget-object v6, v4, Lkho;->g:Lrss;

    nop

    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    nop

    nop

    iget-object v6, v4, Lkho;->f:Lrss;

    nop

    nop

    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    nop

    nop

    nop

    sub-long v14, v14, v16

    nop

    nop

    nop

    nop

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    nop

    nop

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    new-instance v8, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    nop

    nop

    nop

    nop

    const-string v1, "Moments HDR+ processing time in ms: "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, v1}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    invoke-interface {v5}, Lprw;->d()J

    move-result-wide v14

    nop

    const-wide/16 v19, 0x3e8

    nop

    div-long v14, v14, v19

    nop

    nop

    nop

    nop

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sending out for encoding: <"

    nop

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ">"

    nop

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v6}, Lpcu;->b(Ljava/lang/String;)V

    iget-boolean v1, v4, Lkho;->j:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3b

    nop

    sget-object v1, Lhna;->a:Lhmo;

    nop

    nop

    nop

    nop

    :cond_3b
    iget-object v1, v13, Lkhm;->b:Lkgn;

    nop

    invoke-interface {v1, v5}, Lkgn;->a(Lprw;)Z

    move-result v1

    nop

    if-eqz v1, :cond_3c

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    const-string v6, " >> success"

    nop

    nop

    invoke-interface {v1, v6}, Lpcu;->b(Ljava/lang/String;)V

    new-instance v1, Lpcd;

    nop

    invoke-interface {v5}, Lprw;->d()J

    move-result-wide v5

    nop

    iget v8, v4, Lkho;->i:F

    nop

    nop

    iget-object v14, v4, Lkho;->d:Llso;

    nop

    nop

    nop

    invoke-direct {v1, v5, v6, v8}, Lpcd;-><init>(JF)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v13, Lkhm;->c:Lkjg;

    nop

    iget-boolean v5, v4, Lkho;->j:Z

    nop

    nop

    nop

    iput-boolean v5, v1, Lkjg;->a:Z

    nop

    nop

    nop

    nop

    iget-boolean v5, v4, Lkho;->k:Z

    nop

    iput-boolean v5, v1, Lkjg;->b:Z

    nop

    nop

    nop

    iget v1, v4, Lkho;->i:F

    nop

    nop

    goto :goto_2e

    nop

    nop

    nop

    nop

    :cond_3c
    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    const-string v4, " >> failed to encode"

    nop

    nop

    invoke-interface {v1, v4}, Lpcu;->b(Ljava/lang/String;)V

    :goto_2e
    move-object/from16 v1, v16

    nop

    goto/16 :goto_2d

    nop

    nop

    nop

    :cond_3d
    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    new-instance v5, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting stream with a set of "

    nop

    nop

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " frames."

    nop

    nop

    nop

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-interface {v1, v4}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v1, v13, Lkhm;->b:Lkgn;

    nop

    invoke-interface {v1}, Lkgn;->close()V

    iget-object v1, v13, Lkhm;->j:Landroid/hardware/HardwareBuffer;

    nop

    nop

    iget-object v1, v13, Lkhm;->c:Lkjg;

    nop

    nop

    nop

    invoke-static {v3}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Lkjg;->c(Lryb;)V

    iget-object v1, v7, Lkhq;->M:Lkht;

    nop

    iget-object v3, v13, Lkhm;->a:Llxm;

    nop

    nop

    invoke-virtual {v1, v3, v2}, Lkht;->d(Llxm;Ljava/util/List;)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    nop

    goto/16 :goto_26

    nop

    nop

    :cond_3e
    iget-object v1, v7, Lkhq;->i:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v11}, Ljava/util/Deque;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, v7, Lkhq;->d:Lkaa;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lkaa;->a()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v7, Lkhq;->j:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    :cond_3f
    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_42

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lkhl;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v6, v5, Lkhl;->a:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_3f

    nop

    nop

    iget-object v6, v7, Lkhq;->i:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    nop

    :cond_40
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_41

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Lkhm;

    nop

    iget-object v8, v8, Lkhm;->d:Lsay;

    nop

    nop

    invoke-virtual {v5}, Lkhl;->d()Lsay;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Lsay;->m(Lsay;)Z

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_40

    nop

    nop

    goto :goto_2f

    nop

    nop

    nop

    :cond_41
    const-wide/32 v8, -0x77359400

    nop

    nop

    nop

    nop

    add-long/2addr v8, v1

    nop

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lsay;->c(Ljava/lang/Comparable;)Lsay;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lkhl;->d()Lsay;

    move-result-object v8

    nop

    nop

    invoke-virtual {v8, v6}, Lsay;->m(Lsay;)Z

    move-result v6

    nop

    nop

    nop

    nop

    if-nez v6, :cond_3f

    nop

    nop

    nop

    nop

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_42
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_30
    if-ge v2, v1, :cond_44

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Lkhl;

    nop

    nop

    nop

    nop

    iget-object v5, v4, Lkhl;->b:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_43

    nop

    nop

    invoke-virtual {v4}, Lkhl;->f()Z

    move-result v5

    nop

    nop

    nop

    const-string v6, "We shouldn\'t get results for main shots"

    nop

    nop

    invoke-static {v5, v6}, Lrrf;->y(ZLjava/lang/Object;)V

    iget-object v5, v7, Lkhq;->e:Lpcu;

    nop

    invoke-virtual {v4}, Lkhl;->b()Lkho;

    move-result-object v6

    nop

    iget-wide v8, v6, Lkho;->c:J

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Disposing of YUV frame from burst: "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    invoke-interface {v5, v6}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v4, v4, Lkhl;->b:Lrss;

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Lpol;

    nop

    invoke-virtual {v4}, Lpol;->l()V

    goto :goto_31

    nop

    nop

    :cond_43
    iget-object v4, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    nop

    const-string v5, "... nothing to close as it never completed."

    nop

    nop

    invoke-interface {v4, v5}, Lpcu;->b(Ljava/lang/String;)V

    :goto_31
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    nop

    :cond_44
    iget-object v1, v7, Lkhq;->j:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {v1, v3}, Ljava/util/Deque;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, v7, Lkhq;->j:Ljava/util/Deque;

    nop

    nop

    nop

    sget-object v2, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    nop

    nop

    nop

    move-object v6, v2

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    const/4 v9, 0x0

    nop

    :cond_45
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_48

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lkhl;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lkhl;->e()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_46

    nop

    nop

    invoke-virtual {v2}, Lkhl;->c()Lrss;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto :goto_32

    nop

    nop

    nop

    :cond_46
    iget-boolean v4, v2, Lkhl;->a:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_45

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lkhl;->b()Lkho;

    move-result-object v4

    nop

    nop

    iget v4, v4, Lkho;->h:F

    nop

    nop

    nop

    nop

    cmpg-float v4, v4, v3

    nop

    if-gez v4, :cond_47

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lkhl;->b()Lkho;

    move-result-object v3

    nop

    nop

    nop

    iget v3, v3, Lkho;->h:F

    nop

    nop

    nop

    invoke-virtual {v2}, Lkhl;->b()Lkho;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    :cond_47
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    goto :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_48
    iget-object v1, v7, Lkhq;->d:Lkaa;

    nop

    nop

    iget-object v2, v7, Lkhq;->i:Ljava/util/Deque;

    nop

    invoke-virtual {v1}, Lkaa;->a()J

    move-result-wide v3

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    move-wide v10, v3

    nop

    nop

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_4b

    nop

    nop

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

    check-cast v2, Lkhm;

    nop

    nop

    nop

    iget-object v5, v2, Lkhm;->d:Lsay;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lsay;->k()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_49

    nop

    nop

    nop

    nop

    iget-object v5, v2, Lkhm;->d:Lsay;

    nop

    nop

    invoke-virtual {v5}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    nop

    goto :goto_34

    nop

    nop

    :cond_49
    move-wide v12, v10

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v2, Lkhm;->d:Lsay;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lsay;->l()Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_4a

    nop

    nop

    iget-object v2, v2, Lkhm;->d:Lsay;

    nop

    nop

    invoke-virtual {v2}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    nop

    nop

    nop

    nop

    nop

    goto :goto_35

    nop

    :cond_4a
    move-wide v12, v3

    nop

    nop

    :goto_35
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_33

    nop

    nop

    nop

    :cond_4b
    sub-long/2addr v3, v10

    nop

    nop

    nop

    nop

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    nop

    iget-boolean v4, v7, Lkhq;->A:Z

    nop

    nop

    nop

    iget-boolean v5, v7, Lkhq;->B:Z

    nop

    nop

    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    invoke-virtual/range {v1 .. v6}, Lkhq;->a(JZZLrss;)I

    move-result v1

    nop

    nop

    nop

    nop

    if-le v8, v1, :cond_4e

    nop

    nop

    nop

    nop

    nop

    if-nez v9, :cond_4c

    nop

    nop

    nop

    nop

    goto :goto_37

    nop

    nop

    nop

    nop

    :cond_4c
    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "YUV cap reached. Disposing of YUV frame from burst: "

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v9, Lkho;->c:J

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v1, v9, Lkho;->b:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    if-eqz v1, :cond_4d

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v9, Lkho;->b:Lrss;

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Lpol;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lpol;->l()V

    goto :goto_36

    nop

    nop

    nop

    :cond_4d
    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    const-string v2, "... nothing to close as it never completed."

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    :goto_36
    iget-object v1, v7, Lkhq;->j:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v9}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    iget-wide v1, v9, Lkho;->c:J

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v1, v2}, Lkhq;->f(J)V

    :cond_4e
    :goto_37
    iget-object v1, v7, Lkhq;->i:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_51

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v7, Lkhq;->j:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_51

    nop

    nop

    nop

    nop

    iget v1, v7, Lkhq;->m:I

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_51

    nop

    nop

    iget-object v1, v7, Lkhq;->E:Lkmq;

    nop

    nop

    nop

    nop

    if-nez v1, :cond_50

    nop

    iget-object v1, v7, Lkhq;->D:Lkja;

    nop

    nop

    nop

    if-eqz v1, :cond_4f

    nop

    nop

    goto :goto_39

    nop

    nop

    nop

    nop

    :cond_4f
    :goto_38
    const/4 v1, 0x0

    nop

    nop

    nop

    goto :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_50
    :goto_39
    iget-object v1, v7, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    const-string v2, "nothing is in flight; cleaning up last parameters & buffers"

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    goto :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object v1, v7, Lkhq;->E:Lkmq;

    nop

    nop

    nop

    iput-object v1, v7, Lkhq;->D:Lkja;

    nop

    iget-object v1, v7, Lkhq;->Q:Lmhz;

    nop

    nop

    nop

    iget-object v1, v1, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_51
    iget-object v1, v7, Lkhq;->i:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    :cond_52
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lkhm;

    nop

    nop

    nop

    iget-object v2, v2, Lkhm;->d:Lsay;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lsay;->l()Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_52

    nop

    iget-boolean v2, v7, Lkhq;->h:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_52

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v2, v7, Lkhq;->h:Z

    nop

    nop

    iget-object v3, v7, Lkhq;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    new-instance v4, Lkev;

    nop

    nop

    nop

    const/16 v5, 0xf

    nop

    invoke-direct {v4, v7, v5}, Lkev;-><init>(Ljava/lang/Object;I)V

    iget-object v6, v7, Lkhq;->p:Lkiz;

    nop

    nop

    nop

    nop

    iget-wide v8, v6, Lkiz;->e:J

    nop

    nop

    nop

    nop

    iget v6, v6, Lkiz;->f:I

    nop

    nop

    int-to-long v10, v6

    nop

    nop

    nop

    nop

    mul-long/2addr v8, v10

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_3c
    goto/32 :goto_3

    nop

    :goto_3d
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3f
    add-int v0, v0, v1

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
.end method

.method public final q(Lkja;Llko;)V
    .locals 7

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v6, Lhfj;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const v0, 0x18

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

    :goto_2
    invoke-direct/range {v0 .. v5}, Lhfj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[S)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-object p0, p0, Lkhq;->n:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v3, p2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v4, 0x11

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v5, 0x0

    nop

    goto/32 :goto_11

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
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    :goto_e
    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v0, v6

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

    :goto_12
    const v1, 0xb

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

    :goto_13
    move-object v1, p0

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

.method public final declared-synchronized r(Lkja;Llko;)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lkhq;->e:Lpcu;

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    sget-object v1, Lcom/google/android/apps/camera/filmstrip/transition/KkW/xCXUu;->ZShLCcwB:Ljava/lang/String;

    nop

    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    nop

    nop

    nop

    iput-boolean v0, p0, Lkhq;->C:Z

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lkhq;->D:Lkja;

    nop

    nop

    nop

    nop

    iget-object p1, p2, Llko;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast p1, Lkmq;

    nop

    iput-object p1, p0, Lkhq;->E:Lkmq;

    nop

    nop

    iget-object p1, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    invoke-interface {p1}, Llxa;->k()Llxo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lkhq;->F:Llxo;

    nop

    nop

    nop

    iget-object p1, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Llxa;->k()Llxo;

    move-result-object p1

    nop

    nop

    nop

    nop

    sget-object v0, Llxo;->o:Llxo;

    nop

    nop

    nop

    nop

    if-eq p1, v0, :cond_3

    nop

    nop

    nop

    nop

    iget-object p1, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    iget-object v0, p0, Lkhq;->j:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Llxa;->j()Llxm;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lkhl;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lkhl;->e()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lkhl;->a()Lkhn;

    move-result-object v1

    nop

    nop

    iget-object v1, v1, Lkhn;->c:Llxm;

    nop

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    goto :goto_2

    nop

    :cond_2
    iget-object v0, p0, Lkhq;->l:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p2, Llko;->c:Ljava/lang/Object;

    nop

    nop

    new-instance v0, Lixc;

    nop

    nop

    nop

    nop

    const/16 v1, 0xe

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0, p1, v1}, Lixc;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    check-cast p2, Lkmq;

    nop

    nop

    nop

    nop

    iget-object p1, p2, Lkmq;->f:Lows;

    nop

    nop

    invoke-virtual {p1, v0}, Lows;->d(Lpci;)V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lkhq;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    const v0, 0x13

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
    monitor-exit p0

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

    :goto_7
    return-void

    nop

    nop

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop
.end method

.method public final s(Lkja;Llko;)V
    .locals 7

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v6, Lhfj;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct/range {v0 .. v5}, Lhfj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[S)V

    goto/32 :goto_7

    nop

    nop

    :goto_2
    const v1, 0x2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v3, p2

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

    :goto_5
    move-object v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lkhq;->n:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    move-object v1, p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    :goto_a
    move-object v0, v6

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

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_e

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    :goto_13
    const/16 v4, 0x10

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
.end method

.method public final declared-synchronized t(Lkja;Llko;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iput-object p1, p0, Lkhq;->D:Lkja;

    nop

    iget-object p1, p2, Llko;->c:Ljava/lang/Object;

    nop

    nop

    check-cast p1, Lkmq;

    nop

    nop

    iput-object p1, p0, Lkhq;->E:Lkmq;

    nop

    nop

    nop

    iget-object p1, p2, Llko;->d:Ljava/lang/Object;

    nop

    invoke-interface {p1}, Llxa;->k()Llxo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lkhq;->F:Llxo;

    nop

    const/4 p1, 0x0

    nop

    nop

    iput-boolean p1, p0, Lkhq;->C:Z

    nop

    nop

    nop

    iget-object p1, p0, Lkhq;->G:Ljava/util/Deque;

    nop

    invoke-interface {p1}, Ljava/util/Deque;->clear()V

    invoke-virtual {p0}, Lkhq;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop
.end method
