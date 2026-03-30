.class public final Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/widget/ImageView;

.field private final g:Landroid/widget/ImageView;

.field private final h:Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;

.field private final i:Lobk;

.field private final j:Lobn;

.field private final k:Landroid/animation/ObjectAnimator;

.field private final l:Ljava/lang/Runnable;

.field private m:Z

.field private n:Z


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->l:Ljava/lang/Runnable;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->l:Ljava/lang/Runnable;

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

    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_1

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
    const v0, 0x7f04036e

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x7f150804

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    iget-boolean p4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->n:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_5
    const/16 p3, 0xf

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_6
    if-ne p4, p3, :cond_0

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_0
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v7, Landroid/view/View;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :cond_1
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_9
    iput-object v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->g:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->findViewById(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_80

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

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    new-instance v7, Lobo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_e
    iput p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->b:F

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

    :goto_f
    invoke-direct {v7, v6}, Lobo;-><init>(I)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_10
    const/16 p3, 0x8

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_12
    invoke-virtual {v7, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p2, v1, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

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

    :goto_15
    iput p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->a:F

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

    :goto_16
    iput p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_17
    const v0, 0x1c

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

    :goto_18
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Lnue;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 p3, 0x3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v7, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->k:Landroid/animation/ObjectAnimator;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v7, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_1e
    const v4, 0x7f0b0233

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->33f5b80483094659737b73d90f80a8a4m()V

    :goto_20
    goto/32 :goto_5d

    nop

    nop

    :goto_21
    const/4 p4, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    :cond_2
    goto/32 :goto_6b

    nop

    :goto_23
    const v1, 0xe

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

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->a()V

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_25
    const/4 p3, 0x2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v2, :cond_3

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

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v3, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_28
    cmpl-float p4, p4, p3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2a
    iget-boolean p4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2b
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_2d
    const/4 p1, 0x7

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_2e
    const/16 v1, 0x11

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-ne p4, p3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_4
    goto/32 :goto_54

    nop

    nop

    :goto_30
    invoke-virtual {p0, v5}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->findViewById(I)Landroid/view/View;

    move-result-object v5

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

    :goto_31
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

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

    :goto_33
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->h:Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_34
    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->b:F

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

    :goto_35
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->33f5b80483094659737b73d90f80a8a4m()V

    :goto_38
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->c:F

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_3b
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v0, 0x0

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

    :goto_3d
    const/16 p3, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_3e
    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

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

    :goto_3f
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->l:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput-boolean p3, v6, Lobn;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_6c

    nop

    nop

    :goto_42
    const/16 p3, 0xe

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p4, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->b:Landroid/graphics/Paint;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/4 p3, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_46
    new-instance p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;

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

    :goto_47
    invoke-virtual {v4, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v4, Landroid/widget/ImageView;

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

    :goto_49
    const v3, 0x7f0b0234

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4b
    cmpl-float v1, v1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iput-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->i:Lobk;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iput-boolean p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->n:Z

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_50
    cmpl-float v2, v2, p3

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

    :goto_51
    if-nez v2, :cond_6

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :cond_6
    goto/32 :goto_e

    nop

    nop

    :goto_52
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->33f5b80483094659737b73d90f80a8a4m()V

    :goto_53
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iput-boolean p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->m:Z

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

    :goto_55
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->33f5b80483094659737b73d90f80a8a4m()V

    :goto_57
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_58
    cmpl-float v2, v2, p3

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v6}, Lobn;->a()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-static {v2, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_5b
    const/16 p1, 0xc

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_5c
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->setOrientation(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/16 p3, 0xb

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

    :goto_5e
    const/16 p1, 0xa

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;-><init>()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-direct {p0, p3, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->da190e616797844b591057d0190e7728m(FZ)V

    :goto_62
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v5, Landroid/widget/ImageView;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const v4, 0x7f0e0185

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v2, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_66
    iput-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->f:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_67
    invoke-virtual {p0, v4}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->findViewById(I)Landroid/view/View;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_68
    invoke-direct {v0, p0, v1}, Lnue;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_69
    iget p4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->d:F

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_5b

    nop

    nop

    :goto_6b
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->33f5b80483094659737b73d90f80a8a4m()V

    :goto_6e
    goto/32 :goto_1a

    nop

    nop

    :goto_6f
    invoke-direct {v6, v3, v4}, Lobn;-><init>(Landroid/view/View;Landroid/view/View;)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_70
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_72
    new-instance v7, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_73
    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_74
    sget-object v7, Lobj;->a:[I

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

    :goto_75
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

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

    :goto_76
    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_77
    const v7, 0x7f070379

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

    nop

    :goto_78
    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_79
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_46

    nop

    nop

    :goto_7a
    const/16 p3, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_7b
    iput-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->e:Landroid/widget/ImageView;

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

    :goto_7c
    iput-object v7, v6, Lobn;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_7d
    invoke-virtual {p0, v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->setClipToOutline(Z)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const v7, 0x7f020052

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_7f
    invoke-direct {v6, v7}, Lobk;-><init>(Landroid/view/View;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_80
    check-cast v3, Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_81
    check-cast v7, Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_82
    const/4 p3, 0x5

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

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

    nop

    :goto_84
    iget-object p4, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->a:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_85
    new-instance v6, Lobk;

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

    nop

    :goto_86
    const v5, 0x7f0b0235

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_87
    new-instance v6, Lobn;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_89
    iput-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->j:Lobn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_8a
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

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

    :goto_8b
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object p1, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->c:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop
.end method

.method public static bridge synthetic b(Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;F)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->da190e616797844b591057d0190e7728m(FZ)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(FZ)V
    .locals 4

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->b:F

    nop

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

    :goto_2
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->k:Landroid/animation/ObjectAnimator;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->d:F

    nop

    :goto_6
    goto/32 :goto_4b

    nop

    nop

    :goto_7
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_8
    iget v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->c:F

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    iget p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->b:F

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    div-float/2addr p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    aput v2, v0, p2

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

    :goto_e
    div-float v2, v0, v1

    nop

    nop

    :goto_f
    goto/32 :goto_1e

    nop

    nop

    :goto_10
    invoke-static {p1, v1, v3}, Lnzk;->d(FFF)F

    move-result p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    sub-float/2addr p1, v3

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

    :goto_12
    sub-float/2addr v1, p2

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

    :goto_13
    if-lez v0, :cond_1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    :goto_14
    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->h:Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->c:F

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

    :goto_16
    rem-int v0, v0, v1

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

    nop

    :goto_17
    if-nez p2, :cond_2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    iget v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->a:F

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_3
    :goto_1a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->d:F

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

    :goto_1c
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2e

    nop

    nop

    :goto_1e
    cmpl-float p1, p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1f
    goto/16 :goto_a

    nop

    nop

    :goto_20
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->b:F

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    cmpl-float p2, v1, v2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_23
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->d:F

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto :goto_30

    nop

    nop

    :goto_25
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_27
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4a

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_29
    cmpl-float p1, p1, v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->d:F

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2c
    sub-float/2addr p2, v0

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

    nop

    :goto_2d
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1, v2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->setFillAmount(F)V

    :goto_30
    goto/32 :goto_48

    nop

    nop

    :goto_31
    if-eqz p2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :cond_5
    goto/32 :goto_53

    nop

    nop

    :goto_32
    sub-float/2addr v0, p2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_33
    aput p2, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_36
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_37
    add-float/2addr p1, v1

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {p1, v1, v3}, Lnzk;->d(FFF)F

    move-result p1

    nop

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

    :goto_39
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->h:Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_3b
    mul-float/2addr p1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3c
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->a:F

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->isLaidOut()Z

    move-result p1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_3f
    if-gtz v3, :cond_6

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

    :cond_6
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->getFillAmount()F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const v1, 0x5

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

    :goto_42
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_43
    cmpl-float v3, v1, v2

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_44
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->k:Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_45
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->h:Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_46
    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->getFillAmount()F

    move-result p1

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

    :goto_47
    const/4 v1, 0x0

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

    :goto_48
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->invalidate()V

    goto/32 :goto_34

    nop

    nop

    :goto_49
    new-array v0, v0, [F

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

    :goto_4a
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->k:Landroid/animation/ObjectAnimator;

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

    :goto_4b
    if-eqz p2, :cond_7

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

    :cond_7
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4c
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->b:F

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_4d
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4f
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->c:F

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_51
    iget-boolean p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->n:Z

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 6

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v5, :cond_0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    cmpg-float v3, v1, v2

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

    :goto_2
    iput v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->a:F

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->da190e616797844b591057d0190e7728m(FZ)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->h:Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    iget-boolean v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->m:Z

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

    :goto_8
    cmpl-float v3, v3, v2

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

    :goto_9
    rem-float/2addr v3, v1

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

    :goto_a
    iput v1, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->d:F

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

    :goto_b
    int-to-float v1, v4

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

    :goto_c
    iput v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->c:F

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

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    div-float v3, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_10
    iget v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_11
    rem-float/2addr v0, v1

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

    :goto_12
    cmpg-float v5, v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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

    :goto_14
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->b:F

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_15
    iget v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->b:F

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_16
    if-gtz v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    :goto_17
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_18
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->a:F

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

    :goto_19
    cmpl-float v0, v0, v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->d:F

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1c
    float-to-int v4, v3

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

    :goto_1d
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->j:Lobn;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1f
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v3, :cond_4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v4, 0x0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/SliderProgressDrawable;->invalidateSelf()V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_25
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->b:F

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

    :goto_26
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    :goto_27
    invoke-virtual {p0}, Lobn;->a()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_28
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->c:F

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2b
    sub-float v3, v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2c
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2d
    goto/32 :goto_e

    nop

    :goto_2e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sub-float v1, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

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

    :goto_31
    if-gtz v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_32
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_33
    sub-float/2addr v0, v3

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

    :goto_34
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->n:Z

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_35
    const/high16 v5, 0x41000000    # 8.0f

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-int/2addr p3, p1

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

    :goto_1
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->i:Lobk;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    float-to-int p1, p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p1, Lobk;->a:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget p3, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->i:Lobk;

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

    :goto_7
    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->f:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const p2, 0x7f070371

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    new-instance p2, Landroid/graphics/Rect;

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
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

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

    :goto_d
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->f:Landroid/widget/ImageView;

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

    :goto_f
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    goto/32 :goto_5

    nop

    nop

    :goto_10
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->getContext()Landroid/content/Context;

    move-result-object p1

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

    :goto_12
    iget p3, p2, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p3, Landroid/view/TouchDelegate;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p2, Landroid/graphics/Rect;

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

    :goto_15
    invoke-virtual {p2, p4}, Lobk;->a(Landroid/view/TouchDelegate;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    iput p3, p2, Landroid/graphics/Rect;->left:I

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

    :goto_17
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, p3}, Lobk;->a(Landroid/view/TouchDelegate;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p4, p2, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p3, p2, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->i:Lobk;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput p3, p2, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->e:Landroid/widget/ImageView;

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

    :goto_1f
    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->i:Lobk;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_20
    new-instance p4, Landroid/view/TouchDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_21
    add-int/2addr p3, p1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->e:Landroid/widget/ImageView;

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

    :goto_23
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_11

    nop

    nop

    nop
.end method
