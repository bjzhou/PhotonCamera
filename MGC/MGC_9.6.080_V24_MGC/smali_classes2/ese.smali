.class public final Lese;
.super Leqo;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field private static l:Lese;

.field private static m:Lese;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroidx/work/impl/WorkDatabase;

.field public d:Ljava/util/List;

.field public e:Lere;

.field public f:Z

.field public g:Landroid/content/BroadcastReceiver$PendingResult;

.field public h:Lqpe;

.field public i:Lts;

.field public final j:Lhwy;

.field public k:Lfdn;

.field private final n:Lufs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "WorkManagerImpl"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    sput-object v0, Lese;->m:Lese;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Leqh;->a(Ljava/lang/String;)Ljava/lang/String;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lese;->l:Lese;

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
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Lese;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lqpe;Lts;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Lere;Lhwy;)V
    .locals 14

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v2, Lero;

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v6}, Lrkm;->M(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3
    aget-object v11, v5, v9

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

    nop

    :goto_4
    throw v2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_82

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_5e

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object p0, v8

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

    nop

    :goto_b
    check-cast v5, [Ljava/lang/String;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, v0, Lese;->i:Lts;

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

    :goto_d
    iput-object v1, v0, Lese;->h:Lqpe;

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

    :goto_e
    const v0, 0xa

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_f
    move-object/from16 p2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_12
    check-cast v1, Lewk;

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

    :goto_13
    new-instance v1, Lplr;

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

    :goto_14
    invoke-virtual {v5}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v9, v9, 0x1

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

    nop

    :goto_16
    iget-object v9, v0, Lese;->c:Landroidx/work/impl/WorkDatabase;

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

    :goto_17
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v7, v0, Lese;->e:Lere;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, v1}, Lewt;->a(Landroid/content/Context;Lqpe;)Z

    move-result v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v6, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1c
    check-cast v6, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_1d
    new-instance v5, Legq;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    if-nez v11, :cond_0

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v6}, Ltzs;-><init>()V

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_20
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-object/from16 p3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x5

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_24
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_25
    invoke-direct {v5, v2, v3, v1}, Legq;-><init>(Lujp;Left;Lubk;)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v3}, Left;->b()Lefk;

    move-result-object v2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_28
    if-lt v9, v6, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    array-length v9, v5

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v12, v2, Legm;->c:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v1, v10}, Lern;-><init>(Ltzy;)V

    goto/32 :goto_58

    nop

    nop

    :goto_2c
    goto/16 :goto_4f

    nop

    :goto_2d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object v6, v0, Lese;->c:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_2f
    new-array v6, v4, [Ljava/lang/String;

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

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

    :goto_31
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_70

    nop

    nop

    :goto_32
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v1, v0, v10, v2}, Lplr;-><init>(Lujp;Ltzy;I)V

    goto/32 :goto_66

    nop

    nop

    :goto_34
    invoke-virtual {v8, v11}, Lere;->a(Leqt;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v6, Ltzs;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    new-instance v6, Lewb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move-object p1, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3b
    throw v0

    nop

    nop

    :goto_3c
    goto/32 :goto_36

    nop

    nop

    :goto_3d
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_60

    nop

    :goto_3f
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v6, v6, Ltxv;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_42
    const-string v5, "workspec"

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, v0, Lese;->b:Landroid/content/Context;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_44
    iput-object v3, v0, Lese;->d:Ljava/util/List;

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

    :goto_45
    sget-object v2, Lerp;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v2}, Lucd;->B(Lujp;)Lujp;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

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

    nop

    :goto_48
    iget-object v7, v2, Lts;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_49
    new-instance v11, Lerh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_4a
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_4b
    invoke-virtual/range {p4 .. p4}, Landroidx/work/impl/WorkDatabase;->B()Levr;

    move-result-object v1

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v2, v5, v1, v4}, Lujy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_46

    nop

    nop

    :goto_4d
    iget-object v5, v6, Ltxv;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4e
    move v9, v4

    nop

    nop

    :goto_4f
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_50
    const/4 v2, 0x0

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v2, v2, Lts;->a:Ljava/lang/Object;

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

    :goto_52
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_53
    invoke-direct {v3, v5, p0}, Lewq;-><init>(Landroid/content/Context;Lese;)V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v2, v2, Lefk;->c:Legm;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    new-instance v3, Lewq;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_58
    new-instance v2, Lujy;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v11, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

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

    :goto_5a
    iput-object v7, v0, Lese;->j:Lhwy;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    new-instance v6, Leqh;

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-lez v0, :cond_3

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

    :goto_5d
    move v8, v4

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_29

    nop

    nop

    :goto_5f
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_60
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_61
    sget-object v2, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->NPdJBaIqAca:Ljava/lang/String;

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_62
    iget-object v11, v2, Legm;->b:Ljava/util/Map;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_63
    move-object/from16 v3, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_64
    move-object/from16 v6, p4

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_66
    invoke-static {v7, v10, v4, v1, v3}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    :goto_67
    goto/32 :goto_9a

    nop

    nop

    :goto_68
    invoke-direct {v1, v6, v2}, Lnb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_26

    nop

    nop

    :goto_69
    move-object/from16 v1, p2

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_6a
    iput-object v8, v0, Lese;->k:Lfdn;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_6c
    new-instance v1, Lern;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_6d
    const-string v1, "There is no table with name "

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

    :goto_6e
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    new-instance v8, Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_70
    invoke-static {v7}, Lufv;->i(Luad;)Lufs;

    move-result-object v7

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-direct {v0, v1, v2, v3}, Lujy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    monitor-enter v7

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v8, Leqh;->b:Leqh;

    nop

    nop

    nop

    nop

    if-nez v8, :cond_4

    nop

    nop

    nop

    sput-object v6, Leqh;->b:Leqh;

    nop

    nop

    nop

    nop

    nop

    :cond_4
    monitor-exit v7

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_73
    iput-object v2, v0, Lese;->i:Lts;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_74
    add-int v0, v0, v1

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

    :goto_75
    move-object/from16 v7, p6

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-direct/range {p0 .. p5}, Lukl;-><init>(Legm;[I[Ljava/lang/String;Ltzy;I)V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_77
    aput v11, v8, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_78
    iget-object v3, v1, Lewk;->a:Left;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_79
    const/4 v11, 0x1

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

    :goto_7a
    iget-object v8, v0, Lese;->e:Lere;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-direct {v2, v0, v10}, Lero;-><init>(Landroid/content/Context;Ltzy;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v9, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-direct {v6, v1, v2}, Lewb;-><init>(Lewk;Lefz;)V

    goto/32 :goto_80

    nop

    nop

    :goto_7f
    move-object/from16 v7, p7

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_80
    new-instance v1, Lnb;

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v2, v4}, Lefz;->a(Ljava/lang/String;I)Lefz;

    move-result-object v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_82
    new-instance v6, Ltxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_83
    check-cast v5, [Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_84
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_85
    move/from16 p5, v11

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_86
    invoke-direct {v6, v5, v8}, Ltxv;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_87
    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_89
    move-object/from16 v2, p3

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iput-boolean v4, v0, Lese;->f:Z

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_8b
    sget-object v7, Leqh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-direct {p0}, Leqo;-><init>()V

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_8d
    aget-object v9, v5, v8

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    new-instance v2, Lujj;

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_8f
    new-instance v0, Lujy;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-static {v1}, Lujt;->a(Lujp;)Lujp;

    move-result-object v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_91
    new-instance v8, Lukl;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v2, v3}, Lts;->i(Ljava/lang/Runnable;)V

    goto/32 :goto_43

    nop

    nop

    :goto_93
    invoke-direct {v2, v8}, Lujj;-><init>(Lubo;)V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_94
    invoke-direct {v6}, Leqh;-><init>()V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iput-object v5, v0, Lese;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    new-array v8, v6, [I

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

    :goto_97
    if-nez v12, :cond_5

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-lt v8, v9, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_99
    const-string v1, "Cannot initialize WorkManager in direct boot mode"

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

    :goto_9a
    return-void

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
    monitor-exit v7

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_9d
    const/16 v2, 0xc

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    check-cast v12, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_9f
    array-length v6, v5

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

    :goto_a0
    check-cast v5, [Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_a1
    invoke-direct {v8, v9, v10}, Lfdn;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    check-cast v11, Ljava/util/Set;

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

    :goto_a3
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    if-eqz v6, :cond_7

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    :cond_7
    goto/32 :goto_5b

    nop

    nop

    :goto_a6
    invoke-static {v2}, Lucd;->B(Lujp;)Lujp;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a7
    iput-object v7, v0, Lese;->n:Lufs;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    move-object v0, p0

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-direct {v11, v2, v3, v1, v9}, Lerh;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;Lqpe;Landroidx/work/impl/WorkDatabase;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    move-object/from16 p4, v9

    nop

    nop

    goto/32 :goto_85

    nop

    nop
.end method

.method public static b(Landroid/content/Context;)Lese;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    if-eqz v1, :cond_1

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
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    instance-of v1, p0, Lepp;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    check-cast v1, Lepp;

    nop

    invoke-interface {v1}, Lepp;->a()Lqpe;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, v1}, Lese;->f(Landroid/content/Context;Lqpe;)V

    invoke-static {p0}, Lese;->b(Landroid/content/Context;)Lese;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    nop

    nop

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    :goto_6
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lese;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    return-object v1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

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

    :try_start_2
    throw p0

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xd

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-enter v0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v1, Lese;->l:Lese;

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    :cond_3
    sget-object v1, Lese;->m:Lese;

    nop

    monitor-exit v0

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public static f(Landroid/content/Context;Lqpe;)V
    .locals 20

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    monitor-enter v9

    nop

    nop

    :try_start_0
    sget-object v1, Lese;->l:Lese;

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lese;->m:Lese;

    nop

    if-nez v2, :cond_0

    nop

    goto :goto_1

    nop

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    const-string v1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :cond_1
    :goto_1
    if-nez v1, :cond_4

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    nop

    nop

    nop

    sget-object v1, Lese;->m:Lese;

    nop

    nop

    nop

    if-nez v1, :cond_3

    nop

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lts;

    nop

    nop

    iget-object v1, v0, Lqpe;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-direct {v10, v1}, Lts;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v10, Lts;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    nop

    const v4, 0x7f050020

    nop

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    const-class v3, Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    nop

    new-instance v4, Lefs;

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v1, v3, v5}, Lefs;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v4}, Lefs;->c()V

    goto :goto_2

    nop

    nop

    nop

    :cond_2
    const-class v3, Landroidx/work/impl/WorkDatabase;

    nop

    nop

    const-string v4, "androidx.work.workdb"

    nop

    nop

    nop

    invoke-static {v1, v3, v4}, Ldxp;->g(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Lefs;

    move-result-object v4

    nop

    nop

    nop

    new-instance v3, Lers;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1}, Lers;-><init>(Landroid/content/Context;)V

    iput-object v3, v4, Lefs;->c:Leia;

    nop

    :goto_2
    iput-object v2, v4, Lefs;->b:Ljava/util/concurrent/Executor;

    nop

    new-instance v2, Leqs;

    nop

    nop

    nop

    invoke-direct {v2}, Leqs;-><init>()V

    iget-object v3, v4, Lefs;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    nop

    nop

    new-array v2, v11, [Leha;

    nop

    nop

    sget-object v3, Leqy;->c:Leqy;

    nop

    nop

    const/4 v5, 0x0

    nop

    aput-object v3, v2, v5

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Lefs;->b([Leha;)V

    new-array v2, v11, [Leha;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lerf;

    nop

    nop

    nop

    nop

    const/4 v6, 0x3

    nop

    const/4 v7, 0x2

    nop

    nop

    nop

    invoke-direct {v3, v1, v7, v6}, Lerf;-><init>(Landroid/content/Context;II)V

    aput-object v3, v2, v5

    nop

    nop

    invoke-virtual {v4, v2}, Lefs;->b([Leha;)V

    new-array v2, v11, [Leha;

    nop

    nop

    sget-object v3, Leqz;->c:Leqz;

    nop

    nop

    nop

    nop

    nop

    aput-object v3, v2, v5

    nop

    invoke-virtual {v4, v2}, Lefs;->b([Leha;)V

    new-array v2, v11, [Leha;

    nop

    nop

    nop

    nop

    sget-object v3, Lera;->c:Lera;

    nop

    nop

    nop

    nop

    aput-object v3, v2, v5

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Lefs;->b([Leha;)V

    new-array v2, v11, [Leha;

    nop

    nop

    nop

    new-instance v3, Lerf;

    nop

    const/4 v6, 0x5

    nop

    const/4 v12, 0x6

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1, v6, v12}, Lerf;-><init>(Landroid/content/Context;II)V

    aput-object v3, v2, v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Lefs;->b([Leha;)V

    new-array v2, v11, [Leha;

    nop

    nop

    nop

    nop

    sget-object v3, Lerb;->c:Lerb;

    nop

    nop

    nop

    nop

    nop

    aput-object v3, v2, v5

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Lefs;->b([Leha;)V

    new-array v2, v11, [Leha;

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lerc;->c:Lerc;

    nop

    nop

    aput-object v3, v2, v5

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Lefs;->b([Leha;)V

    new-array v2, v11, [Leha;

    nop

    nop

    sget-object v3, Lerd;->c:Lerd;

    nop

    aput-object v3, v2, v5

    nop

    invoke-virtual {v4, v2}, Lefs;->b([Leha;)V

    new-array v2, v11, [Leha;

    nop

    nop

    nop

    nop

    new-instance v3, Lesf;

    nop

    nop

    nop

    invoke-direct {v3, v1}, Lesf;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v5

    nop

    nop

    invoke-virtual {v4, v2}, Lefs;->b([Leha;)V

    new-array v2, v11, [Leha;

    nop

    new-instance v3, Lerf;

    nop

    const/16 v6, 0xa

    nop

    const/16 v12, 0xb

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1, v6, v12}, Lerf;-><init>(Landroid/content/Context;II)V

    aput-object v3, v2, v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Lefs;->b([Leha;)V

    new-array v2, v11, [Leha;

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lequ;->c:Lequ;

    nop

    nop

    nop

    nop

    aput-object v3, v2, v5

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Lefs;->b([Leha;)V

    new-array v2, v11, [Leha;

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Leqv;->c:Leqv;

    nop

    nop

    nop

    nop

    nop

    aput-object v3, v2, v5

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Lefs;->b([Leha;)V

    new-array v2, v11, [Leha;

    nop

    nop

    nop

    sget-object v3, Leqw;->c:Leqw;

    nop

    nop

    nop

    nop

    aput-object v3, v2, v5

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Lefs;->b([Leha;)V

    new-array v2, v11, [Leha;

    nop

    nop

    sget-object v3, Leqx;->c:Leqx;

    nop

    aput-object v3, v2, v5

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Lefs;->b([Leha;)V

    new-array v2, v11, [Leha;

    nop

    nop

    nop

    nop

    new-instance v3, Lerf;

    nop

    nop

    const/16 v6, 0x15

    nop

    const/16 v12, 0x16

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1, v6, v12}, Lerf;-><init>(Landroid/content/Context;II)V

    aput-object v3, v2, v5

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Lefs;->b([Leha;)V

    invoke-virtual {v4}, Lefs;->d()V

    invoke-virtual {v4}, Lefs;->a()Left;

    move-result-object v1

    nop

    nop

    nop

    nop

    move-object v12, v1

    nop

    nop

    check-cast v12, Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    nop

    new-instance v19, Lhwy;

    nop

    nop

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    nop

    nop

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Leub;

    nop

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v15, v1, v10}, Leub;-><init>(Landroid/content/Context;Lts;)V

    new-instance v1, Leud;

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v10}, Leud;-><init>(Landroid/content/Context;Lts;)V

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Leul;

    nop

    invoke-direct {v3, v2, v10}, Leul;-><init>(Landroid/content/Context;Lts;)V

    new-instance v2, Leun;

    nop

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v4, v10}, Leun;-><init>(Landroid/content/Context;Lts;)V

    move-object/from16 v13, v19

    nop

    move-object/from16 v16, v1

    nop

    move-object/from16 v17, v3

    nop

    nop

    move-object/from16 v18, v2

    nop

    invoke-direct/range {v13 .. v18}, Lhwy;-><init>(Landroid/content/Context;Leui;Leud;Leui;Leui;)V

    new-instance v13, Lere;

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-direct {v13, v1, v0, v10, v12}, Lere;-><init>(Landroid/content/Context;Lqpe;Lts;Landroidx/work/impl/WorkDatabase;)V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v14, v7, [Lerg;

    nop

    nop

    nop

    nop

    sget v1, Leri;->a:I

    nop

    nop

    new-instance v1, Leth;

    nop

    nop

    invoke-direct {v1, v8, v12}, Leth;-><init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;)V

    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    nop

    nop

    nop

    invoke-static {v8, v2, v11}, Lews;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-static {}, Leqh;->b()V

    aput-object v1, v14, v5

    nop

    nop

    nop

    nop

    new-instance v15, Lesr;

    nop

    nop

    new-instance v6, Leur;

    nop

    nop

    invoke-direct {v6, v13, v10}, Leur;-><init>(Lere;Lts;)V

    move-object v1, v15

    nop

    nop

    nop

    nop

    nop

    move-object v2, v8

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v3, p1

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v4, v19

    nop

    nop

    move-object v5, v13

    nop

    nop

    nop

    nop

    move-object v7, v10

    nop

    nop

    invoke-direct/range {v1 .. v7}, Lesr;-><init>(Landroid/content/Context;Lqpe;Lhwy;Lere;Leur;Lts;)V

    aput-object v15, v14, v11

    nop

    invoke-static {v14}, Lrkm;->aQ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    new-instance v11, Lese;

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    nop

    move-object v1, v11

    nop

    move-object/from16 v3, p1

    nop

    nop

    move-object v4, v10

    nop

    nop

    nop

    nop

    move-object v5, v12

    nop

    nop

    nop

    nop

    move-object v7, v13

    nop

    nop

    nop

    move-object/from16 v8, v19

    nop

    invoke-direct/range {v1 .. v8}, Lese;-><init>(Landroid/content/Context;Lqpe;Lts;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Lere;Lhwy;)V

    sput-object v11, Lese;->m:Lese;

    nop

    nop

    nop

    :cond_3
    sget-object v0, Lese;->m:Lese;

    nop

    nop

    sput-object v0, Lese;->l:Lese;

    nop

    nop

    nop

    nop

    :cond_4
    monitor-exit v9

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    monitor-exit v9

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    sget-object v9, Lese;->a:Ljava/lang/Object;

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

    :goto_6
    move-object/from16 v0, p1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x20

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

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

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

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xe

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final c()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x12

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lese;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    nop

    :try_start_0
    iput-boolean v1, p0, Lese;->f:Z

    nop

    nop

    iget-object v1, p0, Lese;->g:Landroid/content/BroadcastReceiver$PendingResult;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lese;->g:Landroid/content/BroadcastReceiver$PendingResult;

    nop

    :cond_0
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

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_9

    nop

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop
.end method

.method public final d()V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lhbt;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    throw p0

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

    nop

    nop

    nop

    :goto_5
    const-string p0, "ReschedulingWork"

    nop

    nop

    :try_start_0
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Lqpe;->e:Ljava/lang/Object;

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

    :goto_7
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

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    :goto_f
    goto :goto_12

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lese;->h:Lqpe;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_2

    nop

    goto/32 :goto_16

    nop

    :cond_2
    :try_start_1
    invoke-static {p0}, Ldwa;->j(Ljava/lang/String;)V

    :goto_16
    invoke-interface {v0}, Luaz;->a()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    goto :goto_18

    nop

    :catchall_1
    goto/32 :goto_17

    nop

    nop

    :goto_1c
    if-eqz v1, :cond_3

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

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, p0, v1}, Lhbt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final e(Levg;I)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    new-instance v1, Lewv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Lts;->i(Ljava/lang/Runnable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x10

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x4

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x1

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

    :goto_9
    iget-object v0, p0, Lese;->i:Lts;

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

    :goto_a
    goto/32 :goto_10

    nop

    :goto_b
    iget-object p0, p0, Lese;->e:Lere;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2, p1}, Lfdn;-><init>(Levg;)V

    goto/32 :goto_8

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    new-instance v2, Lfdn;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1, p0, v2, p1, p2}, Lewv;-><init>(Lere;Lfdn;ZI)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method
