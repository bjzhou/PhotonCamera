.class public final Lnic;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Lixf;


# instance fields
.field public final a:Lnij;

.field public b:Ljava/util/List;

.field public c:Ljava/lang/Runnable;

.field private final d:I

.field private final e:Landroid/view/View;

.field private final f:Z

.field private final g:Z

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Ljava/util/Date;

.field private j:Z

.field private final k:I

.field private final l:Lnig;


# direct methods
.method public constructor <init>(Lnig;Landroid/view/View;ILandroid/view/View;IIIIIZZZ)V
    .locals 12

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_0
    invoke-static/range {p3 .. p4}, Lnic;->a(ILandroid/view/View;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_44

    nop

    nop

    :goto_2
    goto/32 :goto_6b

    nop

    nop

    :goto_3
    if-gt v1, v6, :cond_0

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    new-instance v8, Lmqp;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_5
    move v1, v9

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_6
    iget-object v8, v7, Lnij;->b:Landroid/graphics/Paint;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Lnic;->u(Landroid/view/View;)I

    move-result v6

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_8
    iput v0, v7, Lnij;->o:I

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_9
    aget v5, v1, v9

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
    if-eq v2, v9, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v1, v0, Lnic;->d:I

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
    move/from16 v1, p8

    nop

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
    if-ne v4, v1, :cond_2

    nop

    goto/32 :goto_92

    nop

    nop

    :cond_2
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v7, v9, v8}, Lnij;->setLayerType(ILandroid/graphics/Paint;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aget v4, v4, v5

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_12
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    invoke-static {p3}, Lnic;->k(I)Z

    move-result v1

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v4, v6}, Lngq;-><init>(I)V

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_15
    invoke-static/range {p4 .. p4}, Lnic;->u(Landroid/view/View;)I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    invoke-virtual {v7, v9, v8}, Lnij;->setLayerType(ILandroid/graphics/Paint;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v4, v7, Lnij;->j:I

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v11, Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_1d
    move/from16 v1, p8

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v8, v7, Lnij;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1f
    move/from16 v0, p7

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    move-object v1, p2

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v4, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_22
    invoke-static {v4}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

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

    nop

    :goto_23
    move/from16 v0, p6

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_24
    new-instance v4, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eq v1, v2, :cond_3

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

    nop

    :cond_3
    goto/32 :goto_57

    nop

    nop

    :goto_26
    iget-object v10, v7, Lnij;->w:Landroid/hardware/display/DisplayManager$DisplayListener;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_27
    iput-object v4, v0, Lnic;->b:Ljava/util/List;

    nop

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

    :goto_28
    iput-object v4, v7, Lnij;->f:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_29
    move v4, v6

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v4, 0x5

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2b
    invoke-virtual {v7, p2}, Lnij;->addView(Landroid/view/View;)V

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v1, v0, Lnic;->l:Lnig;

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

    :goto_2e
    goto/16 :goto_44

    nop

    :goto_2f
    goto/32 :goto_0

    nop

    nop

    :goto_30
    iput-boolean v1, v0, Lnic;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v7}, Lnij;->a()I

    goto/32 :goto_77

    nop

    nop

    :goto_32
    iput-object v4, v0, Lnic;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_33
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

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

    :goto_34
    move v1, v4

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sub-int/2addr v6, v1

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

    :goto_37
    iput v1, v0, Lnic;->k:I

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const-string v8, "display"

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_39
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object v3, v7, Lnij;->k:Landroid/view/View;

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

    :goto_3b
    new-array v4, v4, [I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

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

    nop

    :goto_3d
    aget v3, v1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3e
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_4d

    nop

    nop

    :goto_41
    if-nez v1, :cond_4

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

    :cond_4
    goto/32 :goto_61

    nop

    nop

    :goto_42
    if-nez v0, :cond_5

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_80

    nop

    nop

    nop

    :goto_43
    move v4, v2

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_b

    nop

    nop

    :goto_45
    new-instance v4, Lngq;

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

    :goto_46
    invoke-static {v0}, Lnic;->t(Landroid/view/View;)I

    move-result v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_47
    move/from16 v1, p8

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_48
    move-object/from16 v3, p4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4c
    sub-int/2addr v8, v10

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_4d
    const/4 v4, 0x6

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4f
    move-object v0, p0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_50
    move/from16 v1, p9

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

    :goto_51
    if-eq v2, v6, :cond_6

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v0, v7, Lnij;->k:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_53
    iput-object v2, v7, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move/from16 v1, p11

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {v8, v7, v10}, Lmqp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_92

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_1d

    nop

    nop

    :goto_59
    new-instance v10, Lnii;

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    new-instance v2, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v7, v5}, Lnij;->setWillNotDraw(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    sub-int/2addr v6, v8

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-direct {v11, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_c

    nop

    nop

    :goto_61
    new-array v1, v4, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_62
    iput v0, v7, Lnij;->m:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_63
    add-int/2addr v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-direct {v7, v4}, Lnij;-><init>(Landroid/content/Context;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_66
    invoke-direct {v2, v3, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_67
    move/from16 v0, p5

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_68
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_69
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_79

    nop

    :goto_6a
    iput-boolean v1, v0, Lnic;->f:Z

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_6b
    move v4, v9

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v4, v7, Lnij;->v:Ljava/util/List;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_6d
    iput-object v1, v7, Lnij;->i:Landroid/view/View;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_6f
    const/16 v10, 0x10

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_70
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v7, v8}, Lnij;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_73
    iput-object v3, v0, Lnic;->e:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_74
    if-gt v4, v8, :cond_8

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_8
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iput-object v4, v0, Lnic;->c:Ljava/lang/Runnable;

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_77
    return-void

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_4f

    nop

    nop

    :goto_7b
    move/from16 v1, p8

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-static/range {p4 .. p4}, Lnic;->t(Landroid/view/View;)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_7d
    aget v1, v1, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_7e
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_7f
    move v2, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v1, v7, Lnij;->a:[I

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_82
    move v4, v1

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_83
    iput-object v7, v0, Lnic;->a:Lnij;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_84
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_85
    new-instance v4, Landroid/widget/PopupWindow;

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

    :goto_86
    const/4 v6, 0x3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_87
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_88
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v8, v10, v11}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_8a
    aget v1, v1, v9

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_8b
    const v1, 0xf

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_8d
    move/from16 v1, p10

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8f
    sub-int/2addr v8, v4

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_90
    check-cast v8, Landroid/hardware/display/DisplayManager;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_91
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_93
    iput v0, v7, Lnij;->n:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_94
    invoke-direct {v10, v8, v7, v6}, Lnii;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    move-object v1, p1

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_96
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    new-instance v7, Lnij;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-eqz p12, :cond_9

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    :cond_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_99
    iput-boolean v5, v0, Lnic;->j:Z

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop
.end method

.method static a(ILandroid/view/View;)I
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

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

    nop

    :goto_3
    if-ne p1, v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    if-ne p1, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x2

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

    :goto_a
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto/32 :goto_1

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

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return v1

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v0, Ldwd;->a:[I

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

    :goto_f
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

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

    nop

    :goto_13
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_14
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_15
    const/4 v3, 0x6

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_16
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    return v2

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_5

    nop

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    const v1, 0x10

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

    :goto_1d
    const/4 v1, 0x3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1f
    return v2

    nop

    :goto_20
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_21
    if-ne p0, v1, :cond_3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    :goto_22
    if-eq p0, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_5
    goto/32 :goto_19

    nop

    :goto_24
    const/4 v2, 0x5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_25
    if-ne p0, v1, :cond_6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop
.end method

.method static k(I)Z
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    const v1, 0x1a

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

    :goto_6
    const v0, 0x9

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

    :goto_7
    goto :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_a
    goto/32 :goto_12

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    if-ne p0, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return v0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eq p0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop
.end method

.method private static t(Landroid/view/View;)I
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    goto/32 :goto_7

    nop

    nop

    :goto_5
    return v0

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

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
    const/4 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method private static u(Landroid/view/View;)I
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final b()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget p0, p0, Lnic;->d:I

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
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Lixg;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lixg;->b:Lixg;

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
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lnic;->j:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lnij;->close()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lnic;->c:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p0, Lnic;->j:Z

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

    :goto_a
    const v1, 0x8

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

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_c
    invoke-virtual {v0, v1}, Lnij;->b(Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    iget-object p0, p0, Lnic;->a:Lnij;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lnic;->a:Lnij;

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
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic e()Ljava/lang/Runnable;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final f()Ljava/util/Date;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnic;->i:Ljava/util/Date;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final g(Ljava/lang/Runnable;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_1
    throw p1

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    const-string v0, "Unsupported Operation delayedHide(Runnable) in: "

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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
.end method

.method public final h()V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnic;->a:Lnij;

    nop

    nop

    goto/32 :goto_10

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

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    const v1, 0xa

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lnic;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    goto/32 :goto_4

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
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lnic;->l:Lnig;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lnig;->a()V

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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

    nop

    nop

    :goto_10
    const/4 v1, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Lnij;->b(Z)V

    goto/32 :goto_5

    nop

    nop

    :goto_12
    const v0, 0xa

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic i()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final j(Ljava/util/Date;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnic;->i:Ljava/util/Date;

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
    return-void

    nop

    nop

    nop
.end method

.method public final l()V
    .locals 7

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1
    iget-object v2, v2, Lnib;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_2
    const/16 v5, 0x13

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3
    iget-object v1, p0, Lnic;->e:Landroid/view/View;

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

    :goto_4
    new-instance v2, Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_5
    invoke-direct {v4, v1, v2, v0}, Lnii;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_49

    nop

    :goto_7
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v5, Lmiv;

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

    :goto_9
    check-cast v4, Landroid/app/Activity;

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

    :goto_a
    invoke-direct {v4}, Landroid/transition/Fade;-><init>()V

    goto/32 :goto_31

    nop

    nop

    :goto_b
    invoke-virtual {v4, v5, v6}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_1
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v4, v5, v6}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    goto/32 :goto_26

    nop

    nop

    :goto_e
    cmp-long v5, v3, v5

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v4, v1, v5, v6}, Lgko;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_20

    nop

    nop

    :goto_11
    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v2, Lnib;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x19

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_15
    iget-wide v3, v2, Lnib;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v0}, Lnij;->setVisibility(I)V

    goto/32 :goto_48

    nop

    nop

    :goto_17
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_18
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_19
    invoke-direct {v0, v1, v2, v4}, Lnii;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4a

    nop

    :goto_1c
    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v2, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x0

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

    :goto_22
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v4, Lnih;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_24
    new-instance v4, Lgko;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_25
    const-string v6, ""

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

    :goto_26
    new-instance v5, Leac;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v4, v5}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v4, v1, v0}, Lnih;-><init>(Lnij;I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

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

    :goto_2a
    iget-object v3, v2, Lnib;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

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

    :goto_2c
    invoke-virtual {v3, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2d
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v0, Landroid/graphics/Rect;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v0, v1, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v6, 0x0

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

    :goto_31
    iget-wide v5, v1, Lnij;->s:J

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_32
    iget-object p0, p0, Lnic;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_33
    invoke-direct {v5, v1, v2, v6}, Lmiv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_36
    iget-boolean v4, v1, Lnij;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_37
    iget-object v1, p0, Lnic;->a:Lnij;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    goto/32 :goto_24

    nop

    nop

    :goto_3c
    new-instance v4, Landroid/transition/Fade;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v4, Lnii;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-wide v5, v1, Lnij;->r:J

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

    :goto_3f
    invoke-direct {v5}, Leac;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v3, v1, Lnij;->k:Landroid/view/View;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_42
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_43
    goto :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_47
    const/16 v6, 0x12

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_48
    iget-object v2, v1, Lnij;->f:Landroid/widget/PopupWindow;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_4e

    nop

    nop

    :goto_4a
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    :goto_4e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    new-instance v0, Lnii;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v1, v5, v3, v4}, Lnij;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v0, p0, Lnic;->b:Ljava/util/List;

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

    :goto_53
    if-eqz v5, :cond_4

    nop

    nop

    goto/32 :goto_44

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

    :goto_54
    iget-object v1, p0, Lnic;->a:Lnij;

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

    :goto_55
    iget-wide v1, v1, Lnij;->r:J

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic m()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final n()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final o()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget-boolean p0, p0, Lnic;->g:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final p()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final q()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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

    :goto_1
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

    nop

    nop

    :goto_2
    iget-boolean p0, p0, Lnic;->f:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    if-eqz p0, :cond_0

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final r()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lnic;->k:I

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
    return p0

    nop

    nop
.end method

.method public final synthetic s(IZZZLnbh;Lnbe;Lj$/util/Optional;Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method
