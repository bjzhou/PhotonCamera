.class public Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;
.super Landroid/widget/ImageButton;
.source "PG"


# instance fields
.field private final A:F

.field private final B:F

.field private final C:Landroid/graphics/Paint;

.field private final D:Landroid/graphics/Paint;

.field private final E:Landroid/animation/ValueAnimator;

.field private F:Lglq;

.field private G:Z

.field private final H:Landroid/view/View$OnClickListener;

.field public a:Lrss;

.field public b:Lrss;

.field public c:Landroid/animation/AnimatorSet;

.field public d:F

.field public e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:F

.field public j:Landroid/animation/ValueAnimator;

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:Lglq;

.field public p:Lglq;

.field private final q:Landroid/graphics/RectF;

.field private final r:F

.field private final s:F

.field private final t:F

.field private final u:F

.field private final v:Landroid/graphics/Paint;

.field private final w:Landroid/graphics/Paint;

.field private final x:F

.field private final y:Landroid/graphics/Paint;

.field private final z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1
    const v3, 0x7f070764

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

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

    :goto_3
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_6
    invoke-virtual {p0, p2, v0, v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->b(Landroid/graphics/Bitmap;IZ)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p2, v2}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_90

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->a:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_d
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_e
    move-object v1, p2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_10
    invoke-static {p0}, Lnzk;->A(Landroid/view/View;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v2}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setClickable(Z)V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_15
    const v3, 0x7f07075a

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v3, -0x1

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_4d

    nop

    nop

    :goto_18
    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_19
    const v1, 0x7f0700ee

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v1, p0, v2}, Lgt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x0
    .end array-data

    :goto_1d
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

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

    :goto_1f
    const v3, 0x7f07075b

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_20
    const v3, 0x7f070760

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

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

    :goto_22
    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->f:F

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_23
    const v3, 0x7f07075f

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_7e

    nop

    nop

    :goto_25
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->H:Landroid/view/View$OnClickListener;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_29
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v1, p0, v2}, Lkxy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

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

    :goto_2e
    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

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

    nop

    :goto_2f
    const/4 v0, 0x0

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_30
    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->r:F

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance p2, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_32
    invoke-direct {p2, v2}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_8a

    nop

    nop

    :goto_33
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_34
    const v1, 0x7f0700a1

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v1, p0, v4, v5}, Ldwi;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_5d

    nop

    nop

    :goto_36
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_38
    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->t:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->u:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3d
    const v3, 0x7f070762

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_3e
    iput-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->G:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_3f
    invoke-direct {p2, v2}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_41
    const v1, 0x1f

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_42
    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->s:F

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_43
    new-instance p2, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_44
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->v:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_46
    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->h:F

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    new-instance p2, Landroid/graphics/Paint;

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
    invoke-virtual {p0, v2}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->c(I)Landroid/graphics/Bitmap;

    move-result-object p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v3, v4, v4, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-super {p0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    sget-object p1, Lrsa;->a:Lrsa;

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

    nop

    :goto_4e
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_4f
    new-instance v1, Lgt;

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

    :goto_50
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_51
    new-instance v1, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_52
    const v3, 0x7f07075e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_53
    iput-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->D:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_54
    const v1, 0x7f0700a0

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

    :goto_55
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->w:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_56
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_57
    const v3, 0x7f070761

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

    :goto_58
    iput-object v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->q:Landroid/graphics/RectF;

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

    :goto_59
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iput p2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->z:F

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_31

    nop

    nop

    :goto_5e
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_5f
    instance-of v0, p2, Landroid/graphics/drawable/RippleDrawable;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const v3, 0x7f070763

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

    :goto_61
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

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

    :goto_62
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->E:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_65
    const/4 v4, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_66
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_67
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_68
    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->b:Lrss;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_6a
    div-int/2addr v0, p1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_6d
    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->B:F

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

    :goto_6e
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_70
    const-wide/16 v4, 0x96

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

    :goto_71
    invoke-direct {p2, v2}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_72
    const v3, 0x7f07075c

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_73
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_74
    invoke-virtual {p0, p2}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_75
    goto/32 :goto_1c

    nop

    nop

    :goto_76
    new-instance v1, Ldwi;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    const/16 v2, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_9

    nop

    :goto_79
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iput p2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->A:F

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

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

    :goto_7d
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7e
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_80
    new-array p2, p1, [F

    nop

    nop

    nop

    nop

    fill-array-data p2, :array_0

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    new-instance p2, Landroid/graphics/Paint;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_85
    const/4 v4, 0x0

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_86
    iput v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->g:F

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_87
    const v4, 0x7f07075d

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

    :goto_88
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_89
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_8a
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->y:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

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

    nop

    :goto_8c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    new-instance v3, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_8e
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_8f
    new-instance v1, Lkxy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_90
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->C:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    nop

    goto/32 :goto_9

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

    :goto_2
    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->F:Lglq;

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

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_12

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
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean v1, v0, Lglq;->e:Z

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    iget-boolean v1, v0, Lglq;->d:Z

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

    :goto_b
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->p:Lglq;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    const v0, 0x17

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

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_3

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->p:Lglq;

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Landroid/graphics/Bitmap;IZ)V
    .locals 8

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v4, p3, Lglq;->a:F

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-int/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setVisibility(I)V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, v2, v2, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x10c000d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_5
    iput p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->d:F

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_6
    new-instance v3, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->o:Lglq;

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c9

    nop

    nop

    :goto_a
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_b
    invoke-direct {p3, p0}, Lglp;-><init>(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_10
    goto/32 :goto_b5

    nop

    nop

    :goto_11
    iget v4, p3, Lglq;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p3}, Lglq;->b()V

    :goto_14
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_15
    add-float/2addr p1, v4

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_17
    aput v2, v3, v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->c:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_19
    const/high16 v5, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_1a
    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

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

    :goto_1b
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->p:Lglq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_4c

    nop

    nop

    :goto_1d
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->p:Lglq;

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->c:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8b

    nop

    nop

    :goto_21
    iget-object p3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->o:Lglq;

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_22
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_23
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->p:Lglq;

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_25
    iget-object p1, p3, Lglq;->c:Landroid/graphics/Paint;

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

    :goto_26
    invoke-virtual {v3, p1, p2, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p3, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p1}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->B:F

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p3}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

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

    :goto_2e
    iget-object p3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->c:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_10

    nop

    :goto_30
    goto/32 :goto_62

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_32
    aput v2, v7, p1

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_33
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_35
    aput v2, v4, v0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_36
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v6, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_38
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_39
    new-instance v1, Landroid/graphics/BitmapShader;

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

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

    :goto_3b
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->j:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3c
    iget p3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->g:F

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_3d
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p3}, Lglq;->b()V

    :goto_3f
    goto/32 :goto_90

    nop

    nop

    nop

    :goto_40
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    div-float/2addr v6, v5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_42
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :cond_3
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_43
    const-wide/16 p2, 0x64

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

    :goto_44
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_46
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_48
    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->j:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_49
    new-array v7, v3, [F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_4a
    if-eqz p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4b
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    :cond_5
    goto/32 :goto_aa

    nop

    nop

    :goto_4c
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->j:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object p3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->c:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :cond_6
    :goto_50
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_52
    if-nez p3, :cond_7

    nop

    goto/32 :goto_14

    nop

    :cond_7
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_53
    iget p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->f:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iput v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->e:F

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_55
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_56
    if-lez v0, :cond_8

    nop

    goto/32 :goto_da

    nop

    :cond_8
    goto/32 :goto_d9

    nop

    :goto_57
    aput v6, v7, v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-direct {v1, p1, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_5c
    iget-object p1, p3, Lglq;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    return-void

    nop

    :goto_5e
    goto/32 :goto_ac

    nop

    nop

    :goto_5f
    iget-object p3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->o:Lglq;

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    goto/32 :goto_1f

    nop

    nop

    :goto_61
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-direct {p3, p0, v0, p2}, Ldwi;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->invalidate()V

    goto/32 :goto_6b

    nop

    nop

    :goto_65
    aput-object v1, v6, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_9
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->j:Landroid/animation/ValueAnimator;

    nop

    nop

    :goto_68
    goto/32 :goto_38

    nop

    nop

    :goto_69
    cmpl-float v3, v3, v4

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6b
    return-void

    nop

    :goto_6c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    new-array v3, v3, [F

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    new-instance p3, Ldwi;

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

    :goto_70
    sub-int/2addr v6, v7

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {p1}, Lglq;->a()V

    :goto_72
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_75
    iput-object p3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->c:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_77
    invoke-virtual {p3}, Lglq;->a()V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_78
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_79
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-nez p1, :cond_a

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

    :cond_a
    goto/32 :goto_c6

    nop

    nop

    :goto_7b
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->c:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    if-nez p1, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_7d
    new-array v6, v3, [Landroid/animation/Animator;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_7e
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->F:Lglq;

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_7f
    iput-object p3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->F:Lglq;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    if-eqz p1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_c
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_81
    div-float/2addr v4, v5

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_82
    iget-object p3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->F:Lglq;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->o:Lglq;

    nop

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

    :goto_84
    add-float v6, v5, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_85
    iput-boolean p3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->G:Z

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_86
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-direct {p3, p0, v6, p2}, Ldwi;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_88
    new-instance p3, Lglp;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_89
    invoke-virtual {v1, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :goto_8a
    goto/32 :goto_b6

    nop

    nop

    :goto_8b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_8c
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->o:Lglq;

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_8f
    const v1, 0x10c000e

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->j:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_91
    aput v1, v4, p1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getContext()Landroid/content/Context;

    move-result-object p3

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_93
    int-to-float v4, v4

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

    :goto_94
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_97
    new-instance v2, Ldwi;

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_98
    cmpl-float v3, v3, v4

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_99
    invoke-direct {v2, p0, v6, p2}, Ldwi;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->g:F

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

    :goto_9b
    if-nez p1, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :cond_d
    goto/32 :goto_7b

    nop

    nop

    :goto_9c
    iget v4, p3, Lglq;->a:F

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_9d
    iget-object p1, p1, Lglq;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    add-int v0, v0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-static {p3, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    new-instance p3, Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_a3
    iget v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->s:F

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_a4
    iget v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->t:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_a5
    new-instance p1, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a6
    iget v1, p3, Lglq;->a:F

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

    :goto_a7
    new-instance v1, Lglq;

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object p3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->p:Lglq;

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_a9
    invoke-direct {v1, p0}, Lglo;-><init>(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)V

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_ab
    int-to-float v6, v6

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_ac
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_ad
    const-wide/16 v4, 0xc8

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {p3, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    aput v1, v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b0
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->j:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-static {p1}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_b2
    new-instance p3, Ldwi;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_b3
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->j:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_b4
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getVisibility()I

    move-result p1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    new-instance p1, Landroid/graphics/Paint;

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

    :goto_b7
    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_75

    nop

    nop

    :goto_b8
    invoke-direct {v1, p3, v2}, Lglq;-><init>(FLjava/lang/String;)V

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_b9
    iget v6, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->f:F

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_bb
    iput-object p1, p3, Lglq;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_bc
    invoke-virtual {v3, v7, p1, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    const/4 v0, 0x1

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->c:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->j:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_c0
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->c:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_c3
    int-to-float v3, v3

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

    :goto_c4
    const-string v2, ""

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    aput-object v2, v6, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_c6
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->j:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-static {p3, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_c8
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_c9
    iget-object p3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->o:Lglq;

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_ca
    iput-object p3, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->p:Lglq;

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_cb
    const/4 v6, 0x4

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

    :goto_cc
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->j:Landroid/animation/ValueAnimator;

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

    :goto_cd
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-static {p1}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    iget-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->j:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_d0
    new-instance v1, Lglo;

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_d1
    int-to-float p1, p2

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_d2
    iget-object v1, p3, Lglq;->c:Landroid/graphics/Paint;

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

    :goto_d3
    invoke-direct {v7, v5, v4, v6, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_d4
    iget v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->r:F

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    new-instance v7, Landroid/graphics/RectF;

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getContext()Landroid/content/Context;

    move-result-object p3

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_d7
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->F:Lglq;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_d8
    iget-boolean p1, p1, Lglq;->f:Z

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_d9
    goto/32 :goto_5e

    nop

    :goto_da
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual {v2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_dc
    if-eqz p3, :cond_e

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    iput-boolean v0, v1, Lglq;->f:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_de
    new-array v4, v3, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop
.end method

.method public final c(I)Landroid/graphics/Bitmap;
    .locals 5

    goto/32 :goto_43

    nop

    nop

    :goto_0
    sub-float/2addr v1, p0

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

    :goto_1
    invoke-static {p0}, Lnzk;->A(Landroid/view/View;)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

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

    nop

    :goto_3
    iget p0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->u:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    float-to-int v1, v1

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

    nop

    :goto_5
    float-to-int v1, v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

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

    :goto_7
    invoke-virtual {p1, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

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
    const v2, 0x7f080310

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_a
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v3, 0x7f080409

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
    const/high16 v3, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    if-ne p1, v2, :cond_0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    :goto_11
    new-instance v2, Landroid/graphics/Canvas;

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

    :goto_12
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :goto_13
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    float-to-int p0, p0

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

    :goto_15
    div-float/2addr v1, v3

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

    :goto_16
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_17
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_18
    const/4 v2, 0x2

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

    :goto_19
    if-ne p1, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/2addr p0, v1

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

    :goto_1d
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1e
    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2

    nop

    nop

    :goto_21
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_22
    if-nez p1, :cond_2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_13

    nop

    nop

    :goto_24
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_42

    nop

    nop

    :goto_26
    iget v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->f:F

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

    :goto_27
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, v1, v1, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_29
    if-ne p1, v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v2, 0x5

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

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

    :goto_34
    const p0, -0xa09c98

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0xc

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

    :goto_36
    const v2, 0x7f080279

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_37
    if-ne p1, v2, :cond_4

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_38
    return-object v0

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3b
    const v2, 0x7f08026d

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3d
    const/4 v2, 0x4

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_3f
    const v3, 0x7f0605b3

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_40
    if-ne p1, v2, :cond_5

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_48

    nop

    nop

    :goto_42
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const v0, 0x2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {p0}, Lnzk;->u(Landroid/view/View;)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_45
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_41

    nop

    :goto_46
    invoke-virtual {p1, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_47
    return-object v0

    nop

    nop

    :goto_48
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_4a
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_32

    nop

    nop

    nop
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_0
    const v8, 0x7f080409

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_2
    float-to-int v8, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->D:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->x:F

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->m:F

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

    :goto_7
    invoke-virtual {v5, v8, v8, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_9
    div-float/2addr v9, v3

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v5, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v5, v5, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_c
    mul-float/2addr v4, v7

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v6, 0x0

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

    :goto_e
    iget v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->l:F

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_f
    iget v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->g:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int/2addr v10, v8

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

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/32 :goto_91

    nop

    nop

    :goto_13
    div-float/2addr v5, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_14
    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    iget v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->e:F

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v8, :cond_1

    nop

    goto/32 :goto_66

    nop

    :cond_1
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_17
    add-float/2addr v5, v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_18
    add-float/2addr v8, v0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_19
    div-float/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_1a
    iget v9, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->z:F

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sub-float/2addr v9, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1c
    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->w:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->w:Landroid/graphics/Paint;

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

    :goto_1e
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_63

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->C:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_22
    div-float/2addr v8, v5

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->j:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_26
    iget v10, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->x:F

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_27
    iget-object v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->w:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_28
    iget v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_29
    float-to-int v8, v8

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2a
    float-to-int v10, v9

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_85

    nop

    nop

    :goto_2c
    mul-float/2addr v8, v7

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v9, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->z:F

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_2e
    iget v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->l:F

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2f
    iget v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->A:F

    nop

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

    :goto_30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_31
    goto/32 :goto_92

    nop

    nop

    nop

    :goto_32
    add-float/2addr v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_33
    div-int/lit8 v10, v10, 0x2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    div-float/2addr v9, v11

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

    :goto_35
    iget v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->f:F

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_37
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->v:Landroid/graphics/Paint;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_36

    nop

    nop

    :goto_3a
    iget v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->k:F

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1, v0, v1, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3c
    sub-float v5, v0, v8

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_3e
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget v4, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->g:F

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_40
    const/high16 v7, 0x437f0000    # 255.0f

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_41
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_8f

    nop

    nop

    :goto_42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_43
    iget-object v9, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->q:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_44
    div-float/2addr v5, v3

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->x:F

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->n:F

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getHeight()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_48
    iget-object v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->p:Lglq;

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_49
    mul-float/2addr v8, v7

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_4a
    invoke-static {p0}, Lnzk;->u(Landroid/view/View;)I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4b
    const/high16 v3, 0x40000000    # 2.0f

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

    nop

    :goto_4c
    iget-object v11, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->w:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_4d
    if-nez v5, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7a

    nop

    nop

    :goto_4e
    if-nez v5, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    :goto_4f
    div-float/2addr v5, v3

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

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

    :goto_51
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->D:Landroid/graphics/Paint;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_53
    iget-object v7, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->w:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p1, v9, v0, v1, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1, v0, v1, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_56
    div-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p1, v0, v1, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_58
    div-float/2addr v9, v3

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

    :goto_59
    iget-boolean v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->G:Z

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_5a
    invoke-virtual {p1, v7, v0, v1, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    float-to-int v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5c
    div-float/2addr v5, v8

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_5d
    iget v9, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->z:F

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_5e
    return-void

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_60
    iget-object v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->C:Landroid/graphics/Paint;

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

    nop

    :goto_61
    invoke-virtual {p1, v8, v5, v9, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_62
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->g:F

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p1, v0, v1, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_66
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto/32 :goto_52

    nop

    nop

    :goto_68
    float-to-int v8, v8

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_25

    nop

    nop

    :goto_6b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_6c
    goto/32 :goto_59

    nop

    nop

    :goto_6d
    const v1, 0x10

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

    :goto_6e
    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->F:Lglq;

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

    :goto_6f
    iget v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->d:F

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_70
    sub-float/2addr v8, v9

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v2, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->q:Landroid/graphics/RectF;

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

    :goto_72
    if-nez v5, :cond_5

    nop

    goto/32 :goto_62

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_73
    const v0, 0x1b

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget v4, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->n:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_76
    sub-float v5, v0, v5

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_77
    add-float v8, v0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_78
    cmpl-float v5, v5, v6

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-gtz v5, :cond_6

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_7a
    div-float v6, v2, v4

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_7c
    div-float/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :cond_7
    goto/32 :goto_69

    nop

    :goto_7e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_3a

    nop

    nop

    :goto_7f
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_80
    iget v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->A:F

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->C:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_82
    iget-object v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->v:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v8, v8, Lglq;->c:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v5, v5, Lglq;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_86
    iget v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->x:F

    nop

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

    nop

    :goto_87
    const/high16 v11, 0x40800000    # 4.0f

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    cmpl-float v5, v5, v6

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    sub-float/2addr v9, v10

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    div-float/2addr v5, v6

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {p1, v6, v6, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto/32 :goto_98

    nop

    nop

    :goto_8d
    iget-object v11, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->y:Landroid/graphics/Paint;

    nop

    nop

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

    :goto_8e
    if-nez v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :cond_8
    goto/32 :goto_e

    nop

    nop

    :goto_8f
    div-float/2addr v8, v3

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    add-float v8, v0, v5

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget v8, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->A:F

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->p:Lglq;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {p1, v8, v5, v9, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_94
    div-float/2addr v1, v3

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_95
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_96
    iget v10, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->x:F

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v7, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->q:Landroid/graphics/RectF;

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

    :goto_99
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_81

    nop

    nop

    :goto_9a
    int-to-float v0, v0

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

    :goto_9b
    iget-object v6, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->w:Landroid/graphics/Paint;

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

    :goto_9c
    invoke-static {v8}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_84

    nop

    nop

    :goto_9d
    if-gtz v5, :cond_9

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

    :cond_9
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    float-to-int p1, p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setMeasuredDimension(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iget p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->g:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {p1}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->b:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final setPressed(Z)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->E:Landroid/animation/ValueAnimator;

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
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setPressed(Z)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const p1, 0x3f333333    # 0.7f

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    return-void

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

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->invalidate()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->n:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    if-gtz p1, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    cmpl-float p1, p1, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

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
    iget p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->n:F

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
.end method
