.class public Lcom/google/android/material/appbar/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "PG"

# interfaces
.implements Ldsv;


# instance fields
.field public a:Z

.field public b:I

.field public c:Ldwy;

.field public d:Ljava/util/List;

.field public e:Z

.field public f:Z

.field public final g:Ljava/util/List;

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Ljava/lang/Integer;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:Ljava/lang/ref/WeakReference;

.field private final q:Z

.field private r:Landroid/animation/ValueAnimator;

.field private s:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final t:J

.field private final u:Landroid/animation/TimeInterpolator;

.field private v:[I

.field private final w:F

.field private x:Lcom/google/android/material/appbar/AppBarLayout$Behavior;


# direct methods
.method private final 132cd3b981019b59dc42653eea0b34b4m()Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->e()I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-gtz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroid/graphics/drawable/Drawable;

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

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 430f03c2ea70bd28108d593eca0c7c30m()Z
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    const/16 v2, 0x8

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

    :goto_5
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_8
    if-gtz v0, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_9
    if-ne v0, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

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
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_1

    nop

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

    :goto_1
    const v0, 0x7f040047

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_1
    instance-of v2, v1, Lrkp;

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

    :goto_2
    const/4 v1, 0x7

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout;->getVisibility()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v15, v3}, Lrkp;->n(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->s:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_7
    invoke-direct {v0, v1, v10, v10}, Lcom/google/android/material/appbar/AppBarLayout;->a74c8a79bf0ef0e20983317119c87838m(ZZZ)V

    :goto_8
    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v8, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_b
    move-object/from16 v2, p2

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v1, Lrey;

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_1
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v8, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

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

    :goto_f
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :goto_10
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_11
    move-object v5, v15

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

    :goto_12
    sget-object v1, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v2, Lrer;->a:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_14
    iput-object v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->u:Landroid/animation/TimeInterpolator;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->w:F

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :cond_2
    goto/32 :goto_72

    nop

    :goto_17
    move-object/from16 v7, p2

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_18
    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v1}, Lrgw;->b(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

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

    nop

    nop

    :goto_1b
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_1c
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 v1, 0x8

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v8, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v1, Lrfj;->a:[I

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v4, :cond_3

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v7, Lrex;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_24
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v14, v0, Lcom/google/android/material/appbar/AppBarLayout;->i:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x3

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_2a
    invoke-virtual {v8, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->o:I

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

    :goto_2c
    move-object v9, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_2d
    iget-object v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroid/graphics/drawable/Drawable;

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

    :goto_2e
    invoke-virtual {v0, v15}, Lcom/google/android/material/appbar/AppBarLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2f
    iput-boolean v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->q:Z

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_30
    const v5, 0x7f15068f

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

    :goto_31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutDirection()I

    move-result v2

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

    :goto_32
    const v5, 0x7f15068f

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout;->postInvalidateOnAnimation()V

    :goto_35
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_36
    iput v10, v0, Lcom/google/android/material/appbar/AppBarLayout;->b:I

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_37
    new-array v6, v10, [I

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_38
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_87

    nop

    nop

    :goto_39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout;->k()V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :cond_5
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_3d
    move-object v1, v13

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_57

    nop

    nop

    :goto_3f
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_6f

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_42
    if-nez v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4b

    nop

    nop

    :goto_43
    move-object/from16 v2, p2

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_44
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_45
    const v2, 0x7f0404d8

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroid/graphics/drawable/Drawable;

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

    :goto_47
    const/16 v16, 0x0

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_48
    sget-object v1, Lrfj;->a:[I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_49
    new-instance v1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v1, v12, v10}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    new-instance v15, Lrkp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_4c
    invoke-virtual {v8, v13, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4d
    move v12, v10

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_4a

    nop

    nop

    :goto_4f
    iget-object v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_50
    const v2, 0x7f070153

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

    :goto_51
    new-array v6, v10, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v2, v14}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :goto_54
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move-object v1, v7

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

    :goto_56
    invoke-virtual {v0, v15}, Lcom/google/android/material/appbar/AppBarLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_57
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v15, v11}, Lrkp;->k(Landroid/content/Context;)V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iput v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->m:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_5b
    const/4 v1, 0x6

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const v0, 0x5

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

    :goto_5d
    invoke-static {v1, v2}, Lrgw;->j(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setKeyboardNavigationCluster(Z)V

    :goto_5f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v13, 0x4

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_61
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    :cond_7
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_62
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_63
    iput v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_64
    sget-object v2, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_65
    if-nez v2, :cond_8

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

    :cond_8
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {v11, v8, v1}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_67
    invoke-direct/range {v1 .. v7}, Lrex;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Lrkp;Ljava/lang/Integer;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iput-object v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->s:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_69
    invoke-static/range {v1 .. v6}, Lric;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    nop

    nop

    nop

    invoke-static {v13, v2}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    goto/32 :goto_8a

    nop

    nop

    :goto_6a
    if-nez v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_6c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6d
    iget-object v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_70
    invoke-direct {v1, v0, v15, v13, v14}, Lmsq;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_71
    move/from16 v4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_96

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v8, v1, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_75
    iput-wide v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->t:J

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_76
    iput-object v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->g:Ljava/util/List;

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

    :goto_77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_78
    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

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

    :goto_7a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

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

    :goto_7b
    invoke-direct {v15}, Lrkp;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_7e
    move/from16 v4, p3

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

    :goto_7f
    goto/16 :goto_a8

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v0, v12}, Lcom/google/android/material/appbar/AppBarLayout;->setOrientation(I)V

    goto/32 :goto_b2

    nop

    nop

    :goto_82
    move-object/from16 v2, p0

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

    :goto_83
    sget-object v3, Lrfj;->a:[I

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    check-cast v1, Lrkp;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_85
    goto/16 :goto_4e

    nop

    :goto_86
    goto/32 :goto_4d

    nop

    nop

    :goto_87
    iget-object v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroid/graphics/drawable/Drawable;

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

    :goto_88
    const/4 v12, 0x1

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_89
    const v1, 0x7f0404ea

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-static {v0, v1}, Ldvw;->j(Landroid/view/View;Ldvo;)V

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_8c
    invoke-static {v1}, Lrgw;->b(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    move-result-object v3

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

    nop

    :goto_8d
    invoke-direct {v0, v1, v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-direct {v1, v0, v10}, Lrey;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    if-nez v1, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_90
    if-nez v1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    :cond_c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_92
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_93
    const v2, 0x7f0401c5

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_94
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    throw v0

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_97
    invoke-static {v11, v1, v2}, Lqqy;->n(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v1

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

    :goto_98
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_99
    const/4 v9, -0x1

    nop

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

    :goto_9a
    invoke-static/range {v1 .. v6}, Lric;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v8

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    const/4 v14, 0x0

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

    :goto_9c
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-static {v0, v1}, Lrfj;->a(Landroid/view/View;F)V

    :goto_9e
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v8, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_a0
    iget v1, v1, Lrkp;->g:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    if-eqz v2, :cond_d

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    new-instance v1, Lmsq;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_a3
    move-object/from16 v0, p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a4
    const v1, 0x7f15068f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a5
    move-object v1, v14

    nop

    nop

    :goto_a6
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_a7
    move v1, v10

    nop

    nop

    :goto_a8
    goto/32 :goto_2f

    nop

    nop

    :goto_a9
    move-object v1, v11

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

    :goto_aa
    iput-object v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroid/graphics/drawable/Drawable;

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

    :goto_ab
    int-to-long v1, v1

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_ac
    move/from16 v8, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_ad
    if-ne v2, v1, :cond_e

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    move/from16 v7, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout;->getDrawableState()[I

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_b0
    const v2, 0x7f0c0009

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

    :goto_b1
    invoke-static {v11, v2, v1}, Lqqy;->i(Landroid/content/Context;II)I

    move-result v1

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-static {v2, v7, v8, v1}, Lrmt;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b6
    sget-object v3, Lrfh;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_b7
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setTouchscreenBlocksFocus(Z)V

    :goto_b8
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    move v1, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    if-nez v2, :cond_f

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_bb
    if-eq v1, v2, :cond_10

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_be
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_bf
    const/4 v1, 0x3

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iput-boolean v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c1
    if-nez v4, :cond_11

    nop

    goto/32 :goto_80

    nop

    :cond_11
    goto/32 :goto_b9

    nop

    nop

    :goto_c2
    const/4 v10, 0x0

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

    :goto_c3
    goto/16 :goto_a6

    nop

    nop

    nop

    nop

    :goto_c4
    goto/32 :goto_a5

    nop

    nop

    nop
.end method

.method private final a74c8a79bf0ef0e20983317119c87838m(ZZZ)V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    :goto_0
    if-ne v0, p1, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x5

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
    move p2, v1

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

    :goto_3
    move p1, v0

    nop

    nop

    :goto_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_a

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->b:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    or-int/2addr p1, p2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_20

    nop

    nop

    :goto_b
    goto :goto_4

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    goto :goto_12

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->requestLayout()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p2, 0x4

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    if-ne v0, p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    if-ne v0, p3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

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

    :goto_18
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    const/4 p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    :goto_1d
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_20
    or-int/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method private final ccb4c19b7dbd16be9d2a43125797659dm()V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_10

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    iput v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->l:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    iget v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:I

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

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    :goto_9
    iput v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x8

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    if-ne v3, v2, :cond_3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_c
    iput v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->m:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1, p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ah(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lrfa;

    move-result-object v1

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->x:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->aj(Lrfa;Z)V

    :goto_15
    goto/32 :goto_18

    nop

    nop

    :goto_16
    sget-object v1, Ldxv;->c:Ldxv;

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

    :goto_17
    const/4 v0, 0x0

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

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    :goto_1a
    const/4 v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->x:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1d
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

    :goto_1e
    iget v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->b:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method private final d116db4599d9ddc8c35e61366a4f4967m(FF)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-array v0, v0, [F

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->u:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    goto/32 :goto_1b

    nop

    nop

    :goto_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_3

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

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x14

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

    :goto_a
    iget-wide v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->t:J

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    aput p2, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_e
    goto/32 :goto_14

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/animation/ValueAnimator;

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

    :goto_12
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->s:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

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

    :goto_16
    const/4 v1, 0x0

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

    :goto_17
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    :goto_19
    aput p1, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1d
    const/4 v0, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_20
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected static final n(Landroid/view/ViewGroup$LayoutParams;)Lrfb;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    instance-of v0, p0, Landroid/widget/LinearLayout$LayoutParams;

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

    :goto_2
    invoke-direct {v0, p0}, Lrfb;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Lrfb;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    goto/32 :goto_6

    nop

    nop

    :goto_4
    new-instance v0, Lrfb;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lrfb;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

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
    invoke-direct {v0, p0}, Lrfb;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    nop

    nop

    :goto_b
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lrfb;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ldsw;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

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

    :goto_1
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->x:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public final b()I
    .locals 9

    goto/32 :goto_1e

    nop

    nop

    :goto_0
    add-int/2addr v7, v4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-int/2addr v5, v3

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

    :goto_2
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-gez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v4, Lrfb;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_30

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-gtz v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->l:I

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_b
    add-int/2addr v7, v5

    nop

    nop

    :goto_c
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_d
    iget v7, v4, Lrfb;->topMargin:I

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    invoke-virtual {v3}, Landroid/view/View;->getMinimumHeight()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_10
    and-int/lit8 v7, v6, 0x5

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_11
    const v1, 0x1a

    nop

    nop

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

    :goto_12
    goto :goto_1a

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/2addr v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-ne v4, v5, :cond_2

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

    :cond_2
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v4, :cond_3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3b

    nop

    nop

    :goto_19
    goto/16 :goto_2e

    nop

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    :goto_1b
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1e
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1f
    sub-int v4, v5, v4

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

    :goto_20
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

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

    :goto_21
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_23
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_26
    add-int/2addr v7, v4

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

    :goto_27
    const/16 v5, 0x8

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_28
    iget v4, v4, Lrfb;->bottomMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_29
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2a
    and-int/lit8 v4, v6, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2b
    const/4 v8, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2c
    iget v6, v4, Lrfb;->a:I

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

    :goto_2d
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2f
    if-eq v7, v8, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    and-int/lit8 v4, v6, 0x2

    nop

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

    :goto_31
    invoke-virtual {v3}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v3

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

    :goto_32
    const/4 v1, -0x1

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

    :goto_33
    if-ne v0, v1, :cond_6

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_6
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    add-int/lit8 v0, v0, -0x1

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

    :goto_35
    goto :goto_3c

    nop

    :goto_36
    goto/32 :goto_b

    nop

    nop

    :goto_37
    add-int/2addr v2, v7

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-lez v0, :cond_7

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1b

    nop

    :goto_39
    return v0

    nop

    :goto_3a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v3}, Landroid/view/View;->getMinimumHeight()I

    move-result v4

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    return v0

    nop

    nop

    :goto_3e
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->e()I

    move-result v3

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

    :goto_40
    if-nez v3, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

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

    :goto_43
    if-nez v4, :cond_9

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method final c()I
    .locals 9

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v2, v0, :cond_0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    iget v5, v5, Lrfb;->a:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_5
    iget v8, v5, Lrfb;->bottomMargin:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-ne v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    :goto_8
    goto/32 :goto_1f

    nop

    nop

    :goto_9
    sub-int/2addr v3, v0

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

    :goto_a
    add-int/2addr v6, v7

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_28

    nop

    nop

    :goto_d
    check-cast v5, Lrfb;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->m:I

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_11
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->m:I

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_12
    if-ne v5, v6, :cond_2

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

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    :goto_13
    if-nez v5, :cond_3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v7, v5, Lrfb;->topMargin:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

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

    :goto_16
    move v2, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_17
    move v3, v2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    :goto_1a
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v4}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1d
    add-int/2addr v3, v6

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

    nop

    :goto_1e
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1f
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    and-int/lit8 v5, v5, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_21
    and-int/lit8 v7, v5, 0x1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_22
    const/16 v6, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_23
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v2, v2, 0x1

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

    :goto_25
    add-int/2addr v7, v8

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2b
    if-nez v7, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2e
    const v0, 0x15

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    instance-of p0, p1, Lrfb;

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

.method public final d()I
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

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

    :goto_1
    div-int/lit8 p0, p0, 0x3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    if-gtz v1, :cond_0

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

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMinimumHeight()I

    move-result v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_6
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_d

    nop

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

    goto/32 :goto_5

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

    :goto_9
    goto/32 :goto_1e

    nop

    nop

    :goto_a
    add-int/2addr v1, v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_13

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_2

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

    :cond_2
    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x7

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

    :goto_16
    add-int/2addr v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_11

    nop

    nop

    :goto_1a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->e()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1c
    goto/16 :goto_9

    nop

    :goto_1d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

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

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

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

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_b

    nop

    nop

    :goto_6
    const v0, 0xf

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

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

    :goto_a
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_7

    nop

    nop

    :goto_b
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->132cd3b981019b59dc42653eea0b34b4m()Z

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

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    neg-int v1, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x19

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_15
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method protected final drawableStateChanged()V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getDrawableState()[I

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_10
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    :goto_11
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroid/graphics/drawable/Drawable;

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
    const v0, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final e()I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ldwy;->d()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->c:Ldwy;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

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

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()I
    .locals 9

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v3, v2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v5, v6, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

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

    :goto_4
    goto/32 :goto_e

    nop

    nop

    :goto_5
    add-int/2addr v6, v8

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sub-int/2addr v3, v2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_9
    and-int/lit8 v8, v7, 0x1

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

    :goto_a
    goto :goto_13

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_23

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v8, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    :goto_10
    const v1, 0x10

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:I

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_14
    move v2, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_16
    return v0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_19
    iget v5, v5, Lrfb;->bottomMargin:I

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

    :goto_1a
    add-int/2addr v6, v5

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

    :goto_1b
    if-nez v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

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

    :goto_1c
    const v0, 0x6

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v4}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1e
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1f
    iget v7, v5, Lrfb;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_20
    add-int/2addr v3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_21
    check-cast v5, Lrfb;

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

    :goto_22
    return v0

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_24
    and-int/lit8 v5, v7, 0x2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    :goto_26
    const/16 v6, 0x8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move v2, v1

    nop

    :goto_28
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_5
    goto/32 :goto_30

    nop

    nop

    :goto_2a
    if-eqz v2, :cond_6

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v1, -0x1

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

    :goto_2c
    invoke-virtual {v4}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2f
    if-lt v2, v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->e()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_31
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sub-int/2addr v3, v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_34
    iget v8, v5, Lrfb;->topMargin:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_35
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

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

    :goto_36
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

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
.end method

.method public final g(Landroid/util/AttributeSet;)Lrfb;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1}, Lrfb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lrfb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method protected final synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Lrfb;

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
    invoke-direct {p0}, Lrfb;-><init>()V

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
.end method

.method protected final synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Lrfb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lrfb;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->g(Landroid/util/AttributeSet;)Lrfb;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method protected final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout;->n(Landroid/view/ViewGroup$LayoutParams;)Lrfb;

    move-result-object p0

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

    :goto_1
    return-object p0

    nop
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->g(Landroid/util/AttributeSet;)Lrfb;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout;->n(Landroid/view/ViewGroup$LayoutParams;)Lrfb;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method final h(I)V
    .locals 12

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v6, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    :goto_1
    const v1, 0x12

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v10, v7}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a(Landroid/view/View;)I

    move-result v7

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    int-to-float v4, v6

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_75

    nop

    nop

    :goto_7
    goto/32 :goto_47

    nop

    nop

    :goto_8
    invoke-virtual {v9, v7}, Ltjo;->S(I)Z

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->postInvalidateOnAnimation()V

    :goto_b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v5, :cond_1

    nop

    goto/32 :goto_5f

    nop

    :cond_1
    goto/32 :goto_33

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
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v5, v3, Lrhv;->b:F

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_11
    iget-object v3, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v10, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    iput v4, v7, Lrhv;->d:F

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_15
    goto/16 :goto_54

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v7, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_18
    check-cast v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_19
    check-cast v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

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

    :goto_1a
    invoke-virtual {v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_1c
    neg-int v8, p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    int-to-float v6, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_1e
    iget v8, v8, Lrfd;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1f
    invoke-virtual {v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_20
    invoke-virtual {v7, v6}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_2

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int/lit8 v6, v6, 0x1

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

    :goto_23
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->d:Ljava/util/List;

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

    :goto_24
    sub-int/2addr v6, v7

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move v4, v1

    nop

    nop

    :goto_26
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5b

    nop

    :goto_29
    if-gtz v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_4
    goto/32 :goto_50

    nop

    nop

    :goto_2a
    iput v4, v7, Lrhv;->e:F

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v5, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMinimumHeight()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v7}, Lrhv;->a()F

    move-result v4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2e
    iget-object v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v5, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_31
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_32
    mul-float/2addr v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_33
    iput v4, v3, Lrhv;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_4d

    nop

    :goto_35
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v4}, Ldwy;->d()I

    move-result v4

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v5, 0x0

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

    :goto_38
    if-nez v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_36

    nop

    nop

    :goto_39
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

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

    :goto_3a
    int-to-float v7, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3b
    check-cast v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_75

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3e
    check-cast v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3f
    invoke-virtual {v7}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_40
    iput p1, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:I

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    sub-int v5, v6, v5

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sub-int/2addr v5, v4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_43
    check-cast v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_44
    iget-object v5, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

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

    :goto_45
    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_46
    invoke-virtual {v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_47
    neg-int v7, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_48
    if-ne v10, v11, :cond_6

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_6
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget v4, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:I

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_4a
    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lrhv;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e:Ldwy;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_4c
    move v6, v1

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_4e
    div-float/2addr v4, v6

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->postInvalidateOnAnimation()V

    :goto_51
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_52
    const/4 v1, 0x0

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

    :goto_53
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_55
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->j:I

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v4, v5, v8}, Ldvu;->y(FFF)F

    move-result v4

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

    :goto_57
    check-cast v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_58
    const/high16 v8, 0x3f800000    # 1.0f

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

    :goto_59
    invoke-static {v7}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g(Landroid/view/View;)Ltjo;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_5a
    if-lt v6, v5, :cond_7

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_f

    nop

    :goto_5c
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    add-int/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_5e
    invoke-virtual {v3}, Lrhv;->c()V

    :goto_5f
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v7, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

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

    :goto_61
    iget-object v4, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

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

    :goto_62
    cmpl-float v5, v4, v5

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-ne v10, v7, :cond_8

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_8
    goto/32 :goto_6

    nop

    nop

    :goto_65
    div-float/2addr v4, v6

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

    :goto_66
    iget v10, v8, Lrfd;->a:I

    nop

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

    nop

    :goto_67
    iget-object v7, v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lrhv;

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

    nop

    :goto_68
    if-nez v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_69
    check-cast v8, Lrfd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->willNotDraw()Z

    move-result v0

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

    :goto_6b
    iget-object v7, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_6c
    add-int/lit8 v2, v2, 0x1

    nop

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

    :goto_6d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_6e
    iget-object v5, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6f
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-static {v8, v1, v7}, Ldvu;->z(III)I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_72
    if-lt v2, v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v9, v7}, Ltjo;->S(I)Z

    :goto_75
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_76
    iput v4, v3, Lrhv;->f:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_77
    check-cast v3, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_78
    rem-int v0, v0, v1

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

    :goto_79
    check-cast v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_7a
    const/4 v11, 0x1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_7b
    if-eqz v0, :cond_b

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

    :cond_b
    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final i(Z)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->j(ZZ)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->isLaidOut()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final j(ZZ)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->a74c8a79bf0ef0e20983317119c87838m(ZZZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final k()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setWillNotDraw(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    xor-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->132cd3b981019b59dc42653eea0b34b4m()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method final l(Z)Z
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    :goto_2
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1e

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->e:Z

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_7
    if-ne v1, p1, :cond_1

    nop

    goto/32 :goto_22

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Z

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_9
    goto :goto_c

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

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_c

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    move v3, v2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->d116db4599d9ddc8c35e61366a4f4967m(FF)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v0, v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    move v2, v0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_18
    goto :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

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

    :goto_1d
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->e:Z

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->w:F

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-ne v0, p1, :cond_3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_11

    nop

    nop

    :goto_22
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return v1

    nop

    :goto_26
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_27
    move v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_28
    if-nez p1, :cond_4

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_29
    if-nez p1, :cond_5

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2a
    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->w:F

    nop

    :goto_2b
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_6

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

    :cond_6
    goto/32 :goto_28

    nop

    nop

    :goto_2d
    instance-of v0, v0, Lrkp;

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

    :goto_2e
    if-ne v1, p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_18

    nop

    nop

    :goto_2f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_30
    invoke-direct {p0, v3, v2}, Lcom/google/android/material/appbar/AppBarLayout;->d116db4599d9ddc8c35e61366a4f4967m(FF)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->refreshDrawableState()V

    goto/32 :goto_1c

    nop

    nop

    :goto_32
    if-nez v0, :cond_8

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_8
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method final m(Landroid/view/View;)Z
    .locals 4

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_31

    nop

    nop

    :goto_2
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->p:Ljava/lang/ref/WeakReference;

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    :goto_5
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->o:I

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_6
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move p0, v1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v3, Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v1, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->p:Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    iget v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_22

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_21

    nop

    nop

    :goto_14
    if-nez v3, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return v1

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v0, Landroid/view/ViewGroup;

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

    :goto_18
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

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

    :goto_1c
    const/4 p0, 0x0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1e
    const/4 v2, -0x1

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1f
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_21
    move-object v0, v1

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_23
    move-object p1, v1

    nop

    nop

    :goto_24
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2c
    const v0, 0x14

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2d
    if-ne v0, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_6
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2f
    if-nez p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->p:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    :goto_32
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_33
    if-nez p0, :cond_9

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_9
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_a
    goto/32 :goto_23

    nop

    nop

    :goto_37
    if-lez v0, :cond_b

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_26

    nop

    :goto_38
    instance-of v3, v3, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_39
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop
.end method

.method protected final onAttachedToWindow()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lrkm;->c(Landroid/view/View;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected final onCreateDrawableState(I)[I
    .locals 5

    goto/32 :goto_3

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

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    invoke-static {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object p0

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

    :goto_2
    const/4 v4, 0x0

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

    :goto_3
    const v0, 0x19

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v2, 0x7f040649

    nop

    :goto_5
    goto/32 :goto_38

    nop

    nop

    :goto_6
    const v3, -0x7f04064f

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7
    aput v3, v0, v4

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    new-array v0, v1, [I

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->v:[I

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_10
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    :goto_11
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    aput v2, v0, p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v2, -0x7f04064a

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_16
    move v1, v4

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_3

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    :goto_18
    goto :goto_14

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    const v3, -0x7f04064e

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

    :goto_1b
    const/4 v1, 0x4

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1c
    if-ne v2, v1, :cond_4

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

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1e
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->v:[I

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->v:[I

    nop

    :goto_21
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    :goto_23
    iget-boolean p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_24
    if-ne v2, v4, :cond_6

    nop

    goto/32 :goto_19

    nop

    :cond_6
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aput v3, v0, v2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_7
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    :goto_28
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_29
    const v3, 0x7f04064e

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2b
    move v4, v2

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2d
    iget-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->e:Z

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2e
    const v2, 0x7f04064a

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto :goto_2c

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v3, 0x2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-int/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_34
    const v2, -0x7f040649

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v3, 0x7f04064f

    nop

    :goto_36
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_37
    iget-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_38
    const/4 p0, 0x3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_39
    array-length v2, v0

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3b
    aput v2, v0, v3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    goto/32 :goto_6

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

    :goto_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->p:Ljava/lang/ref/WeakReference;

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

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->p:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

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
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result p2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2
    add-int/lit8 p3, p3, 0x1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3
    if-nez p2, :cond_0

    nop

    goto/32 :goto_3b

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/lit8 p3, p3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_5
    and-int/lit8 v0, p5, 0x1

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

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result p2

    nop

    :goto_7
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_8
    move p3, p1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->e()I

    move-result p5

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_c
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->430f03c2ea70bd28108d593eca0c7c30m()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_d
    if-lt p3, p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->a:Z

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10
    goto :goto_7

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_12
    if-nez p5, :cond_2

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

    :cond_2
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p4, Ldwd;->a:[I

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Z

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->e()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    iget-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->f:Z

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    if-gez p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    :goto_1b
    iget p5, p5, Lrfb;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto/32 :goto_26

    nop

    nop

    :goto_1d
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->ccb4c19b7dbd16be9d2a43125797659dm()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    iput-boolean p4, p0, Lcom/google/android/material/appbar/AppBarLayout;->a:Z

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

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

    :goto_21
    if-nez p5, :cond_4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_23
    if-nez p1, :cond_5

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 p4, 0x1

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

    nop

    :goto_25
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getFitsSystemWindows()Z

    move-result p1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_3d

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2b
    move p3, p1

    nop

    :goto_2c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getWidth()I

    move-result p3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast p5, Lrfb;

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

    :goto_2f
    move p1, p4

    nop

    nop

    :goto_30
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_31
    goto :goto_2a

    nop

    nop

    :goto_32
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_33
    if-ne p2, p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_34
    and-int/lit8 p5, p5, 0xa

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

    :goto_35
    if-eqz p2, :cond_7

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

    :cond_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p5, p5, Lrfb;->b:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_37
    if-eq v0, p4, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_8
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int/lit8 p2, p2, -0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_39
    if-lt p3, p2, :cond_9

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_22

    nop

    nop

    :goto_3a
    invoke-virtual {p2, p1, p1, p3, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_3b
    goto/32 :goto_17

    nop

    nop

    :goto_3c
    goto/16 :goto_9

    nop

    nop

    :goto_3d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez p1, :cond_a

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

    :cond_a
    goto/32 :goto_c

    nop

    nop

    :goto_3f
    invoke-virtual {p3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->refreshDrawableState()V

    :goto_41
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_42
    check-cast p5, Lrfb;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1b

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->e()I

    move-result v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredWidth()I

    move-result p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x16

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getFitsSystemWindows()Z

    move-result v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_18

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

    nop

    nop

    :goto_8
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    add-int/2addr v0, p1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto/32 :goto_22

    nop

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

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_d
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->430f03c2ea70bd28108d593eca0c7c30m()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setMeasuredDimension(II)V

    :goto_f
    goto/32 :goto_14

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->e()I

    move-result p1

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

    :goto_11
    if-ne p1, v1, :cond_1

    nop

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

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int/2addr p1, v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->ccb4c19b7dbd16be9d2a43125797659dm()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    :goto_18
    goto/32 :goto_21

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1, v0, p2}, Ldvu;->z(III)I

    move-result v0

    nop

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredHeight()I

    move-result p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1e
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

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

    :goto_1f
    const/high16 v1, -0x80000000

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    :goto_21
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

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
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-ne p1, v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    :goto_25
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setElevation(F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lrkm;->b(Landroid/view/View;F)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final setOrientation(I)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const-string p1, "AppBarLayout is always vertical and does not support horizontal orientation"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    if-eq p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop
.end method

.method public final setVisibility(I)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroid/graphics/drawable/Drawable;

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
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    goto :goto_c

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
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    move p1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop
.end method

.method protected final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_5

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    :goto_9
    if-eq p1, p0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_a
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method
