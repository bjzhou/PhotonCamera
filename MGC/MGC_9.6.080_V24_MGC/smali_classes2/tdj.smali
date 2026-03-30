.class public final Ltdj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final b:I

.field static final c:I

.field static final d:I


# instance fields
.field final a:Ljava/util/List;

.field private final e:Ljava/lang/ThreadLocal;

.field private final f:Ljava/util/concurrent/ConcurrentMap;

.field private final g:Lteh;

.field private final h:Ltfi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput v0, Ltdj;->c:I

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    sput v0, Ltdj;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 v0, 0x1

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

    :goto_3
    sput v0, Ltdj;->d:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const/4 v0, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Ltdd;->a:Ltdd;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 23

    goto/32 :goto_c

    nop

    nop

    :goto_0
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_30

    nop

    nop

    :goto_1
    if-eq v6, v5, :cond_0

    nop

    goto/32 :goto_22

    nop

    :cond_0
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_3
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v6, Ltgu;

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v1, Lthc;->U:Ltdy;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_8
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_9
    const-class v6, Ljava/util/concurrent/atomic/AtomicLongArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_a
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_23

    nop

    nop

    :goto_b
    new-instance v20, Ltde;

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

    nop

    nop

    :goto_c
    const v0, 0x16

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_d
    invoke-direct/range {v17 .. v22}, Ltgs;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ltdx;I[B)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object v11, v5

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

    :goto_f
    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_10
    sget-object v2, Lthc;->M:Ltdy;

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v2, Ltfl;

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

    :goto_12
    sget-boolean v2, Lthl;->a:Z

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

    :goto_13
    if-nez v2, :cond_1

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v5, Lthc;->q:Ltdy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v5, Ltfo;

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v5, Ltdh;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_84

    nop

    nop

    :goto_19
    new-instance v8, Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_1a
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v2, Lthc;->O:Ltdy;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v14, Ltdf;

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

    :goto_1f
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_20
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_90

    nop

    :goto_22
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v5, Ltfi;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v5, Lthc;->z:Ltdx;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_25
    const-class v13, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_26
    sget-object v2, Lthc;->S:Ltdy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_27
    sget-object v2, Lthc;->I:Ltdy;

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v15, 0x1

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_2a
    sget-object v2, Lthc;->g:Ltdy;

    nop

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

    :goto_2b
    iput-object v8, v0, Ltdj;->f:Ljava/util/concurrent/ConcurrentMap;

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2c
    sget-object v2, Lthc;->m:Ltdy;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-class v13, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_2e
    invoke-direct {v14}, Ltdf;-><init>()V

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_30
    sget-object v2, Lthc;->G:Ltdy;

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

    :goto_31
    sget-object v4, Ltej;->a:Ltej;

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

    :goto_32
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_33
    move-object v2, v8

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v9, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v2, Lthc;->s:Ltdy;

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v5, v2}, Ltdh;-><init>(Ltdx;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    new-instance v8, Lteh;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v5}, Ltdx;->b()Ltdx;

    move-result-object v2

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_96

    nop

    nop

    :goto_3d
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_3f
    move-object v1, v10

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    new-instance v10, Ltfw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_42
    invoke-direct/range {v11 .. v16}, Ltgs;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ltdx;I[B)V

    goto/32 :goto_9a

    nop

    nop

    :goto_43
    const-class v2, Ljava/math/BigDecimal;

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

    :goto_44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_12

    nop

    nop

    :goto_46
    iput-object v1, v0, Ltdj;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_47
    new-instance v5, Ltgs;

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_48
    new-instance v9, Ljava/util/ArrayList;

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

    :goto_49
    sget-object v5, Ltfp;->a:Ltdy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v5}, Ltdx;->b()Ltdx;

    move-result-object v5

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

    :goto_4b
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_60

    nop

    nop

    :goto_4d
    new-instance v6, Ltgu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_4e
    sget-object v5, Ltfn;->a:Ltdy;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4f
    sget-object v18, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

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

    :goto_50
    sget-object v2, Lthl;->c:Ltdy;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_51
    sget-object v5, Lthc;->y:Ltdx;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_52
    sget-object v2, Lthc;->v:Ltdy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_53
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    goto/32 :goto_ae

    nop

    nop

    :goto_55
    sget-object v2, Lthc;->i:Ltdy;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_56
    sget v6, Ltdj;->d:I

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_57
    sget v3, Ltdj;->b:I

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iput-object v8, v0, Ltdj;->e:Ljava/lang/ThreadLocal;

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

    nop

    nop

    :goto_59
    invoke-direct {v6, v2, v5, v10}, Ltgu;-><init>(Ljava/lang/Class;Ltdx;I)V

    goto/32 :goto_0

    nop

    nop

    :goto_5a
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5b
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_5c
    new-instance v2, Ltfl;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_5d
    sget-object v2, Lthc;->Q:Ltdy;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_5e
    invoke-direct {v6, v2, v5, v10}, Ltgu;-><init>(Ljava/lang/Class;Ltdx;I)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    sget-object v2, Ltfc;->a:Ltdy;

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_61
    sget-object v2, Lthl;->d:Ltdy;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_62
    sget-object v2, Lthc;->A:Ltdy;

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

    :goto_63
    iput-object v8, v0, Ltdj;->g:Lteh;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_64
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_66
    invoke-direct/range {v20 .. v20}, Ltde;-><init>()V

    goto/32 :goto_47

    nop

    nop

    :goto_67
    new-instance v5, Ltgu;

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

    :goto_68
    invoke-direct/range {v1 .. v6}, Ltfw;-><init>(Lteh;ILtej;Ltfi;Ljava/util/List;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    sget-object v2, Ltff;->a:Ltdy;

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-direct {v5, v6, v2, v10}, Ltgu;-><init>(Ljava/lang/Class;Ltdx;I)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-direct {v8, v1, v7}, Lteh;-><init>(Ljava/util/Map;Ljava/util/List;)V

    goto/32 :goto_63

    nop

    nop

    :goto_6d
    invoke-direct {v6, v11, v5, v10}, Ltgu;-><init>(Ljava/lang/Class;Ltdx;I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6e
    sget-object v1, Lthc;->V:Ltdy;

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

    :goto_6f
    const/16 v21, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_70
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_71
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_72
    const/16 v16, 0x0

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const/4 v5, 0x2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iput-object v5, v0, Ltdj;->h:Ltfi;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const/4 v10, 0x1

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_77
    move-object v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    sget-object v2, Lthc;->b:Ltdy;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_79
    sget-object v2, Lthc;->k:Ltdy;

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_7a
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-direct {v2, v8, v10}, Ltfl;-><init>(Lteh;I)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_7c
    if-eq v5, v10, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :cond_2
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_7d
    sget-object v2, Lthc;->K:Ltdy;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_7d

    nop

    nop

    :goto_7f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

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

    :goto_80
    sget-object v2, Lthc;->C:Ltdy;

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

    :goto_81
    invoke-direct {v8}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_82
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    new-instance v6, Ltgu;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_84
    sget-object v2, Lthc;->E:Ltdy;

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

    :goto_85
    invoke-direct {v5, v8}, Ltfi;-><init>(Lteh;)V

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_86
    invoke-direct {v2, v8, v1}, Ltfl;-><init>(Lteh;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_87
    sget v5, Ltdj;->c:I

    nop

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

    :goto_88
    invoke-direct/range {v11 .. v16}, Ltgs;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ltdx;I[B)V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    sget-object v2, Lthc;->d:Ltdy;

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_8a
    goto :goto_92

    nop

    :goto_8b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_8d
    sget-object v5, Lthc;->x:Ltdx;

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

    :goto_8e
    sget-object v2, Lthc;->t:Ltdx;

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_8f
    invoke-static {v6}, Ltfn;->c(I)Ltdy;

    move-result-object v5

    nop

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_91
    invoke-direct {v5, v1}, Ltfo;-><init>(I)V

    :goto_92
    goto/32 :goto_20

    nop

    nop

    :goto_93
    new-instance v6, Ltgu;

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_94
    new-instance v5, Ltdg;

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_95
    return-void

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    sget-object v2, Lthl;->b:Ltdy;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_99
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_9b
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    const-class v19, Ljava/lang/Double;

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_9d
    invoke-direct {v8}, Ljava/lang/ThreadLocal;-><init>()V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    const-class v11, Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_9f
    move-object v14, v2

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    const/16 v22, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_a1
    move-object v11, v5

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_a2
    const-class v2, Ljava/math/BigInteger;

    nop

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

    nop

    :goto_a3
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a4
    new-instance v5, Ltgs;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_a6
    const-class v2, Ltel;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_a7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-static {v9}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_a9
    const v1, 0x1e

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6a

    nop

    nop

    :goto_ab
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_ad
    move-object/from16 v17, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_ae
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_b0
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3c

    nop

    :goto_b1
    new-instance v5, Ltgs;

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

    :goto_b2
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    add-int v0, v0, v1

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

    :goto_b4
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-direct {v5, v2}, Ltdg;-><init>(Ltdx;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    sget-object v5, Lthc;->o:Ltdy;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_b7
    invoke-direct {v6, v2, v5, v10}, Ltgu;-><init>(Ljava/lang/Class;Ltdx;I)V

    goto/32 :goto_36

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lthm;)Ltdx;
    .locals 8

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    if-nez v6, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ltdj;->f:Ljava/util/concurrent/ConcurrentMap;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ltdj;->e:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    move v3, v1

    nop

    nop

    nop

    nop

    :goto_5
    :try_start_0
    new-instance v4, Ltdi;

    nop

    nop

    invoke-direct {v4}, Ltdi;-><init>()V

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Ltdj;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_3

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Ltdy;

    nop

    nop

    invoke-interface {v6, p0, p1}, Ltdy;->a(Ltdj;Lthm;)Ltdx;

    move-result-object v6

    nop

    nop

    if-eqz v6, :cond_1

    nop

    nop

    nop

    iget-object v5, v4, Ltdi;->a:Ltdx;

    nop

    if-nez v5, :cond_2

    nop

    iput-object v6, v4, Ltdi;->a:Ltdx;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    nop

    nop

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    nop

    nop

    const-string v0, "Delegate is already set"

    nop

    nop

    nop

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_6
    goto/32 :goto_27

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_36

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    if-nez v1, :cond_4

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

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_f
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Ltdj;->e:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    :goto_12
    throw p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Ltdj;->f:Ljava/util/concurrent/ConcurrentMap;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v3, p0, Ltdj;->e:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_37

    nop

    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_6
    goto/32 :goto_25

    nop

    nop

    :goto_19
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Ltdj;->e:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1d
    check-cast v0, Ltdx;

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

    nop

    :goto_1e
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v3, :cond_7

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_17

    nop

    :goto_21
    if-lez v0, :cond_8

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_16

    nop

    :goto_22
    move v1, v2

    nop

    nop

    :goto_23
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_d

    nop

    :goto_26
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_29
    check-cast v0, Ljava/util/Map;

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

    :goto_2a
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

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

    nop

    :goto_2b
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2c
    return-object v6

    nop

    nop

    :goto_2d
    goto/32 :goto_28

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2f
    if-nez v0, :cond_a

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_31
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move v3, v2

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

    :goto_33
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v3, Ltdx;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_35
    const-string v0, "GSON (2.10.1) cannot handle "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_36
    return-object v3

    nop

    :goto_37
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putAll(Ljava/util/Map;)V

    :goto_39
    goto/32 :goto_2c

    nop

    nop

    :goto_3a
    return-object v0

    nop

    :goto_3b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

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
.end method

.method public final b(Ljava/lang/Class;)Ltdx;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {v0, p1}, Lthm;-><init>(Ljava/lang/reflect/Type;)V

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
    invoke-virtual {p0, v0}, Ltdj;->a(Lthm;)Ltdx;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lthm;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ltdy;Lthm;)Ltdx;
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Ltdj;->h:Ltfi;

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_2d

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
    iget-object v2, v0, Ltfi;->c:Ljava/util/concurrent/ConcurrentMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Ltdj;->a:Ljava/util/List;

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

    :goto_7
    const-string p2, "GSON cannot serialize or deserialize "

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

    :goto_8
    invoke-interface {v2, p0, p2}, Ltdy;->a(Ltdj;Lthm;)Ltdx;

    move-result-object v2

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

    :goto_9
    const-class v3, Ltdy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_a
    if-nez v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    :goto_b
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

    :goto_c
    invoke-virtual {v0, v1, v2}, Ltfi;->c(Ljava/lang/Class;Ltdy;)Ltdy;

    move-result-object v0

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
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_11
    check-cast v2, Ltdy;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_12
    invoke-virtual {p0, p2}, Ltdj;->a(Lthm;)Ltdx;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_13
    sget-object v0, Ltfi;->a:Ltdy;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    if-eq p1, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3c

    nop

    nop

    :goto_15
    if-nez v2, :cond_4

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

    :cond_4
    goto/32 :goto_25

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_18
    if-eq v0, p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_5
    :goto_19
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v2, Ltdy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v2, :cond_6

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

    :cond_6
    goto/32 :goto_32

    nop

    nop

    :goto_1d
    if-eq v2, p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_7
    goto/32 :goto_30

    nop

    nop

    :goto_1e
    if-eq v2, p1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_20
    invoke-static {v3, v2}, Ltfi;->e(Lteh;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_21
    iget-object v3, v0, Ltfi;->b:Lteh;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_22
    iget-object v1, p2, Lthm;->a:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v1, :cond_9

    nop

    goto/32 :goto_4

    nop

    :cond_9
    goto/32 :goto_1e

    nop

    nop

    :goto_24
    if-eqz v1, :cond_a

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_25
    return-object v2

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_27
    invoke-static {v1}, Ltfi;->d(Ljava/lang/Class;)Ltdz;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_28
    throw p0

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

    nop

    :goto_2a
    iget-object v0, p0, Ltdj;->h:Ltfi;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v1, 0x0

    nop

    nop

    :goto_2d
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v2, Ltdy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_34
    invoke-interface {v2}, Ltdz;->a()Ljava/lang/Class;

    move-result-object v2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_34

    nop

    nop

    :goto_36
    return-object p0

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_39
    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3e
    const v1, 0x3

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_a

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

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v2, "{serializeNulls:false,factories:"

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Ltdj;->a:Ljava/util/List;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x20

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    const-string p0, ",instanceCreators:"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

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

    :goto_f
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_11
    iget-object v0, p0, Ltdj;->g:Lteh;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    const-string p0, "}"

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    :goto_17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method
