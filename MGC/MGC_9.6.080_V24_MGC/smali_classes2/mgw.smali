.class public final synthetic Lmgw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpbz;


# instance fields
.field public final synthetic a:Lmhb;

.field public final synthetic b:Lsuu;


# direct methods
.method public synthetic constructor <init>(Lmhb;Lsuu;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p1, p0, Lmgw;->a:Lmhb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lmgw;->b:Lsuu;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 10

    goto/32 :goto_a5

    nop

    nop

    :goto_0
    invoke-static {}, Lfsr;->a()Lfsr;

    move-result-object v8

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v7, v6}, Lmgn;->setBackgroundResource(I)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v5, Lmhd;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_0
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v7}, Lmgn;->getContext()Landroid/content/Context;

    move-result-object v8

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

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_6
    check-cast v6, Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lmhb;->k:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v6, Lmhd;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_9
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v8, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lt v2, v1, :cond_2

    nop

    goto/32 :goto_60

    nop

    nop

    :cond_2
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v9, :cond_3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_83

    nop

    nop

    :goto_11
    invoke-virtual {v7, v6}, Lmgn;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_40

    nop

    :goto_14
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v9, v7, v8, v6}, Ljsy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_a3

    nop

    nop

    :goto_17
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v9, v7}, Lfdo;->F(Lmgm;)V

    :goto_19
    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6b

    nop

    nop

    :goto_1b
    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v6, v7, Lmgn;->c:Landroid/content/pm/ResolveInfo;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_1d
    const/4 v9, -0x2

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

    :goto_1e
    invoke-virtual {v8, v6}, Lfim;->d(Landroid/graphics/drawable/Drawable;)Lfim;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v6, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

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

    :goto_20
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v9, v1, Lmgs;->g:Lfdo;

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_22
    new-instance v6, Lgko;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_24
    const v9, 0x101045c

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_25
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_26
    iget-object v5, v1, Lmgs;->c:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

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

    :goto_28
    new-instance v9, Ljsy;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v9, 0x7f0707e9

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v9, v9, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v6, Lfim;

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_2c
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v8}, Lfio;->c()Lfim;

    move-result-object v8

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lmgw;->a:Lmhb;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v7}, Lmgn;->getContext()Landroid/content/Context;

    move-result-object v9

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

    :goto_31
    check-cast v9, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, p0}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_79

    nop

    nop

    :goto_33
    check-cast p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    :goto_35
    goto/32 :goto_81

    nop

    nop

    :goto_36
    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v6, v7}, Lmgs;->addView(Landroid/view/View;)V

    :goto_38
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v6, p0, Lmhb;->w:Lmgs;

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

    :goto_3a
    iget-object v6, p0, Lmhb;->s:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v7, v6}, Lmgn;->setRotation(F)V

    goto/32 :goto_94

    nop

    nop

    :goto_3d
    invoke-virtual {v0, p0}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_34

    nop

    nop

    :goto_3e
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3f
    move v7, v2

    nop

    nop

    :goto_40
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v6, p0, Lmhb;->k:Ljava/util/ArrayList;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_45
    check-cast v5, Landroid/util/Pair;

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_46
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

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

    :goto_47
    iget-object v7, v6, Lmgs;->c:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_49
    return-void

    nop

    nop

    :goto_4a
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

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

    :goto_4c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v6, v7, Lmgn;->c:Landroid/content/pm/ResolveInfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4e
    throw v3

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v6, v7}, Lmgs;->removeView(Landroid/view/View;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_52
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-boolean v6, v6, Lmhd;->c:Z

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v7}, Lmgn;->getContext()Landroid/content/Context;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_55
    if-nez v5, :cond_5

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_56
    if-nez v1, :cond_6

    nop

    goto/32 :goto_35

    nop

    :cond_6
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_57
    new-instance v6, Landroid/util/TypedValue;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

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

    :goto_59
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v5, v1, Lmgs;->b:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v1, v5}, Lmgs;->removeView(Landroid/view/View;)V

    :goto_5d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v9, v6, Lmgs;->g:Lfdo;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5f
    goto/16 :goto_65

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v8}, Lfia;->c(Landroid/content/Context;)Lfio;

    move-result-object v8

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_62
    check-cast v8, Lmgn;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_63
    const/16 v6, 0x8

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-nez v8, :cond_7

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_7
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_67
    const v1, 0x15

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_68
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v8, v7, Lmgn;->d:Landroid/content/pm/PackageManager;

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

    nop

    :goto_6a
    iget-object v1, p0, Lmhb;->w:Lmgs;

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_6b
    invoke-virtual {v6, v7, v8}, Lmgs;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_44

    nop

    nop

    :goto_6c
    goto :goto_70

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const/16 v8, 0x300

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v7, v6}, Lmgn;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_70
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_71
    invoke-static {v6}, Lnzk;->ad(Lnbh;)I

    move-result v6

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v7, v9}, Lmgn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v6, v8}, Lfim;->b(Lfsj;)Lfim;

    move-result-object v6

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

    :goto_74
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_75
    if-nez p1, :cond_8

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p0}, Lmhb;->g()Z

    move-result v1

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

    :goto_77
    check-cast v8, Lmhd;

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v6, v8, v8}, Lfsj;->u(II)Lfsj;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_79
    return-void

    nop

    nop

    :goto_7a
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_7b
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_7c
    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_7d
    iget-object v8, v7, Lmgn;->d:Landroid/content/pm/PackageManager;

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

    :goto_7e
    iget-object v6, p0, Lmhb;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_7f
    invoke-virtual {v8, v9, v6, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v7, v6}, Lmgn;->setVisibility(I)V

    goto/32 :goto_97

    nop

    nop

    :goto_81
    iget v1, p0, Lmhb;->A:I

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

    :goto_82
    invoke-virtual {v7}, Lmgn;->getContext()Landroid/content/Context;

    move-result-object v8

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_83
    iget-object v0, p0, Lmgw;->b:Lsuu;

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

    nop

    :goto_84
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v6, v7, Lmgn;->c:Landroid/content/pm/ResolveInfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_86
    if-nez v6, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_9
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_87
    invoke-static {v8}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/32 :goto_a8

    nop

    nop

    :goto_88
    invoke-virtual {v7, v6}, Lmgn;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v6, p0, Lmhb;->w:Lmgs;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-static {v6, v8, v9}, Lmgn;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_8b
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

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

    :goto_8c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_8d
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v7, v6}, Lmgn;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object v7, v6, Lmgs;->c:Landroid/view/View;

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

    :goto_90
    invoke-direct {v6, p0, v8, v3}, Lgko;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_88

    nop

    nop

    :goto_91
    invoke-virtual {v1, v8}, Lmgs;->removeView(Landroid/view/View;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_92
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_93
    new-instance v7, Lmgn;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_94
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

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

    :goto_95
    if-nez v7, :cond_a

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-direct {v7, v6, v8}, Lmgn;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    goto/32 :goto_57

    nop

    nop

    :goto_97
    iget-object v8, p0, Lmhb;->C:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

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

    :goto_98
    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

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

    :goto_99
    iget-boolean v8, p0, Lmhb;->a:Z

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_9b
    iget-object v1, p0, Lmhb;->w:Lmgs;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v9, v6, Lmgs;->b:Ljava/util/ArrayList;

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

    :goto_9d
    if-ne v1, v4, :cond_b

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    :cond_b
    goto/32 :goto_2e

    nop

    nop

    :goto_9e
    iget-object v1, v1, Lmgs;->b:Ljava/util/ArrayList;

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

    :goto_9f
    if-lt v7, v6, :cond_c

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

    :cond_c
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v0, p0}, Lsuu;->e(Ljava/lang/Object;)Z

    :goto_a1
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v6, v7}, Lfim;->j(Landroid/widget/ImageView;)Lftb;

    :goto_a3
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_a4
    iget-object v8, v8, Lmhd;->a:Landroid/content/pm/ResolveInfo;

    nop

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

    nop

    :goto_a5
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_a6
    iget-object v9, v6, Lmgs;->b:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    int-to-float v6, v6

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v7}, Lmgn;->getContext()Landroid/content/Context;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop
.end method
