.class public final Ljei;
.super Lmsj;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lfdo;

.field private final f:Lprb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmse;Lfdo;Lprb;)V
    .locals 0

    goto/32 :goto_3

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

    nop

    :goto_1
    iput-object p1, p0, Ljei;->a:Ljava/util/List;

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

    :goto_2
    iput-object p4, p0, Ljei;->f:Lprb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2}, Lmsj;-><init>(Landroid/content/Context;Lmse;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Ljei;->b:Lfdo;

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

    :goto_5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Ljava/util/ArrayList;

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
.end method


# virtual methods
.method public final a(Ljgc;)V
    .locals 23

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Lprb;->n()Z

    move-result v1

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_3
    move-object v2, v3

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, v6, Ljei;->d:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_5
    new-instance v2, Lmsh;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

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

    :goto_7
    const/16 v1, 0x20

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    const v4, 0x7f1403b1

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

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lmsj;->b()Landroid/view/View;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v12}, Lnar;->n(Ljava/lang/Object;)Lnar;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

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

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    :goto_d
    move v9, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    check-cast v1, Lezb;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_f
    const v4, 0x7f1403bc

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_10
    if-ne v8, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v7, v1}, Lezm;->t(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljeh;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_7e

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eq v0, v1, :cond_2

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

    :cond_2
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct/range {v9 .. v15}, Lmsh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    sget-object v1, Ljgc;->c:Ljgc;

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

    :goto_18
    const v9, 0x7f1403be

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

    :goto_19
    iget-object v0, v2, Lmsh;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v0, p1

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_1b
    const/4 v11, 0x0

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v11, v11}, Landroidx/viewpager2/widget/ViewPager2;->d(IZ)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1d
    invoke-static {v10}, Lnar;->n(Ljava/lang/Object;)Lnar;

    move-result-object v10

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v2, v6, Ljei;->d:Landroid/content/Context;

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v4, v5, v9, v12}, Lryb;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_20
    const v9, 0x7f1403b5

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_21
    const v12, 0x7f1403b6

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v2}, Lryb;->l(Ljava/lang/Object;)Lryb;

    move-result-object v3

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

    :goto_23
    move-object v9, v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_24
    const v4, 0x7f1403ba

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_25
    invoke-static {v4, v5, v9, v10}, Lryb;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object v19

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

    :goto_26
    new-instance v4, Ljeg;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v7}, Lnar;->o(Ljava/lang/Object;)Lnar;

    move-result-object v4

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v6, v9, v10, v0}, Lmsj;->d(ILandroid/view/View;Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v4, 0x7f1403b8

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_2a
    const v4, 0x7f1403b9

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2c
    const/4 v1, -0x1

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

    :goto_2d
    const v5, 0x7f1403b4

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_2e
    invoke-static {v5}, Lnar;->n(Ljava/lang/Object;)Lnar;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2f
    invoke-static {v9}, Lnar;->n(Ljava/lang/Object;)Lnar;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_30
    const v10, 0x7f1403bf

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_33
    new-instance v1, Lklb;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_34
    move v3, v12

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_35
    iget-object v1, v6, Ljei;->f:Lprb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_36
    iget-object v1, v1, Lezs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const v5, 0x7f1403bd

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_5a

    nop

    nop

    :goto_39
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-eq v0, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_3
    goto/32 :goto_75

    nop

    nop

    :goto_3c
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget v12, v0, Lsbh;->c:I

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v10, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_40
    const/4 v8, 0x1

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_41
    const v0, 0x11

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

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

    :goto_43
    invoke-direct {v4, v6, v7}, Ljeg;-><init>(Ljei;Lezm;)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_49

    nop

    nop

    :goto_46
    if-eq v0, v1, :cond_4

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

    :cond_4
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {v0, v6, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const v4, 0x7f1403b0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_49
    const v1, 0x7f13002b

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_4a
    iput-object v1, v0, Lmse;->d:Lmsd;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v5}, Lnar;->n(Ljava/lang/Object;)Lnar;

    move-result-object v5

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v7, v1}, Lezm;->v(Lezb;)Z

    goto/32 :goto_2c

    nop

    nop

    :goto_4f
    invoke-direct {v0, v7, v10, v11}, Ljeh;-><init>(Lezm;Landroid/view/View;I)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const v1, 0x7f13006b

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_51
    new-instance v7, Lezm;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-ne v8, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_64

    nop

    nop

    :goto_53
    sget-object v1, Ljgc;->c:Ljgc;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v1}, Lprb;->n()Z

    move-result v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_3d

    nop

    nop

    :goto_57
    const v3, 0x7f1403c0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_58
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const v1, 0x7f13006d

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

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

    :goto_5c
    sget-object v2, Ljgc;->c:Ljgc;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_5d
    const/16 v1, 0x21

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

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

    :goto_5f
    new-instance v5, Ljef;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v1, v6, Ljei;->f:Lprb;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_62
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_63
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const v1, 0x7f13002a

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_65
    move-object/from16 v16, v2

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_66
    invoke-static {v7}, Lnar;->o(Ljava/lang/Object;)Lnar;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_68
    const v4, 0x7f1403b3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_69
    iget-object v0, v6, Ljei;->c:Lmse;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_6a
    move-object/from16 v6, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6b
    invoke-direct {v5, v0, v11}, Ljef;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6c
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_7

    nop

    nop

    :goto_6e
    const/4 v1, 0x0

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual/range {v0 .. v5}, Lmsj;->c(Landroid/view/View;Ljava/util/List;ILrmb;Lrmj;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_70
    check-cast v0, Lsbh;

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_71
    invoke-direct {v7}, Lezm;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-direct {v1, v7, v8}, Lklb;-><init>(Lezm;I)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_74
    invoke-static {v9}, Lnar;->n(Ljava/lang/Object;)Lnar;

    move-result-object v9

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

    nop

    :goto_75
    new-instance v2, Lmsh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_76
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v1, v6, Ljei;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

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

    :goto_79
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_7a
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    move-object v1, v10

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    const v4, 0x7f1403af

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_7d
    invoke-direct/range {v16 .. v22}, Lmsh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7e
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_80
    invoke-static {v2, v1}, Lezg;->c(Landroid/content/Context;I)Lezs;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_81
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop
.end method
