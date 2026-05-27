.class public final Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;
.super Livl;


# instance fields
.field private A:I

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:Landroid/graphics/drawable/Drawable;

.field private E:Landroid/graphics/drawable/Drawable;

.field private F:I

.field private G:Z

.field private H:Z

.field private I:Landroid/transition/Transition;

.field private J:Z

.field private final K:I

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/CompoundButton;

.field public l:Z

.field private final m:I

.field private final n:Lzy;

.field private final o:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private p:Livq;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/FrameLayout;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/ImageView;

.field private u:Ljava/lang/CharSequence;

.field private v:I

.field private w:Landroid/content/res/ColorStateList;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04074c

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    invoke-direct {p0, p1, p2, p3}, Livl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lzy;

    invoke-direct {p1}, Lzy;-><init>()V

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n:Lzy;

    new-instance v0, Livn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Livn;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;I)V

    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->o:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    sget-object v0, Livq;->a:Livq;

    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->p:Livq;

    iput v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->F:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->G:Z

    iput-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->H:Z

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Livi;->b:[I

    const v4, 0x7f150544

    invoke-virtual {v2, p2, v3, p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x6

    :try_start_0
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v2, 0x2

    if-ne v3, v0, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iput v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->K:I

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->l()Z

    move-result v5

    const v6, 0x7f07084c

    if-eq v0, v5, :cond_1

    const v5, 0x7f07084c

    goto :goto_1

    :cond_1
    const v5, 0x7f07072f

    :goto_1
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->m:I

    iput v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:I

    iput v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A:I

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f0e011d

    invoke-virtual {v5, v7, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v5, 0x7f0b0420

    invoke-virtual {p0, v5}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->f:Landroid/widget/ImageView;

    const v5, 0x7f0b0421

    invoke-virtual {p0, v5}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    const v7, 0x7f0b0422

    invoke-virtual {p0, v7}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->j:Landroid/widget/TextView;

    const v8, 0x7f0b0424

    invoke-virtual {p0, v8}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->r:Landroid/widget/FrameLayout;

    const v8, 0x7f0b0425

    invoke-virtual {p0, v8}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->s:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->l()Z

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-nez v8, :cond_2

    invoke-virtual {p1, p0}, Lzy;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-direct {p0, v6}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->m(I)I

    move-result v6

    const v8, 0x7f0b0360

    invoke-virtual {p1, v8, v6}, Lzy;->p(II)V

    const v6, 0x7f07084b

    invoke-direct {p0, v6}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->m(I)I

    move-result v6

    const v8, 0x7f0b013b

    invoke-virtual {p1, v8, v6}, Lzy;->q(II)V

    const v6, 0x7f07084d

    invoke-direct {p0, v6}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->m(I)I

    move-result v6

    const v8, 0x7f0b03bb

    invoke-virtual {p1, v8, v6}, Lzy;->p(II)V

    const v6, 0x7f07084a

    invoke-direct {p0, v6}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->m(I)I

    move-result v6

    const v11, 0x7f0b0089

    invoke-virtual {p1, v11, v6}, Lzy;->q(II)V

    invoke-virtual {p1, v5}, Lzy;->o(I)V

    invoke-virtual {p1, v7}, Lzy;->o(I)V

    invoke-virtual {p1, v5, v9, v8, v9}, Lzy;->g(IIII)V

    invoke-virtual {p1, v5, v10, v7, v9}, Lzy;->g(IIII)V

    invoke-virtual {p1, v7, v9, v5, v10}, Lzy;->g(IIII)V

    invoke-virtual {p1, v7, v10, v11, v10}, Lzy;->g(IIII)V

    invoke-virtual {p1, v5}, Lzy;->b(I)Lzt;

    move-result-object v5

    iget-object v5, v5, Lzt;->d:Lzu;

    iput v2, v5, Lzu;->Y:I

    invoke-virtual {p1, p0}, Lzy;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_2
    const-string p1, "WearChipButton:Transition"

    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->setTransitionName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object p1

    const/high16 v5, 0x7f170000

    invoke-virtual {p1, v5}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->I:Landroid/transition/Transition;

    iput-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->J:Z

    invoke-super {p0, p2, p3}, Livl;->d(Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v5, Livi;->b:[I

    invoke-virtual {p1, p2, v5, p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->l()Z

    move-result p3

    if-eq v0, p3, :cond_3

    const p3, 0x7f0c00bb

    goto :goto_2

    :cond_3
    const p3, 0x7f0c00b4

    :goto_2
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->x:I

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->l()Z

    move-result p3

    if-eq v0, p3, :cond_4

    const p3, 0x7f0c00bc

    goto :goto_3

    :cond_4
    const p3, 0x7f0c00b5

    :goto_3
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:I

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->i(Ljava/lang/CharSequence;)V

    :cond_5
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iget-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    iget v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->x:I

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_6
    const/16 p3, 0x9

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_8

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iget-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    if-nez p3, :cond_7

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    :cond_7
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_8
    const/16 p3, 0xa

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v4, 0x5

    if-ltz p3, :cond_c

    invoke-static {}, Ljyx;->j()[I

    if-ge p3, v2, :cond_c

    invoke-static {}, Ljyx;->j()[I

    move-result-object v6

    aget p3, v6, p3

    iget-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lzm;

    if-ne p3, v0, :cond_9

    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    const/high16 v7, 0x3f000000    # 0.5f

    :goto_4
    iput v7, v6, Lzm;->G:F

    iget-object v7, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    if-ne p3, v0, :cond_a

    const v7, 0x800003

    goto :goto_5

    :cond_a
    const/4 v7, 0x1

    :goto_5
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    if-ne p3, v0, :cond_b

    const/4 p3, 0x5

    goto :goto_6

    :cond_b
    const/4 p3, 0x4

    :goto_6
    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_c
    const/16 p3, 0xb

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_d

    iget v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->x:I

    invoke-virtual {p1, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->x:I

    iput p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:I

    iget-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_d
    const/16 p3, 0xc

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->j(Ljava/lang/CharSequence;)V

    :cond_e
    const/16 p3, 0xd

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iget-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->j:Landroid/widget/TextView;

    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_f
    const/16 p3, 0xe

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iget-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->j:Landroid/widget/TextView;

    if-nez p3, :cond_10

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    :cond_10
    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_11
    const/16 p3, 0xf

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-nez p3, :cond_12

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->j:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_12
    const p3, 0x7f070739

    invoke-direct {p0, p3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->m(I)I

    move-result p3

    const/16 v5, 0x12

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {p1, v5, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iget-object v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->f:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput p3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->f:Landroid/widget/ImageView;

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_14

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:I

    :cond_14
    invoke-virtual {p1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_15

    invoke-virtual {p1, v10, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A:I

    :cond_15
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->l()Z

    move-result p3

    if-eq v0, p3, :cond_16

    const/4 p3, 0x2

    goto :goto_7

    :cond_16
    const/4 p3, 0x1

    :goto_7
    const/16 v3, 0x10

    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->j:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object p3, Livq;->a:Livq;

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ltz v2, :cond_17

    invoke-static {}, Livq;->values()[Livq;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_17

    invoke-static {}, Livq;->values()[Livq;

    move-result-object p3

    aget-object p3, p3, v2

    :cond_17
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->p:Livq;

    if-ne v2, p3, :cond_18

    goto/16 :goto_c

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->k()V

    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->k:Landroid/widget/CompoundButton;

    iput-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->t:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->p:Livq;

    iget v3, p3, Livq;->f:I

    if-eqz v3, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget v4, p3, Livq;->f:I

    iget-object v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v3, Livq;->e:Livq;

    if-ne p3, v3, :cond_19

    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->r:Landroid/widget/FrameLayout;

    const v4, 0x7f0b041f

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->t:Landroid/widget/ImageView;

    iget v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->t:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->w:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_8

    :cond_19
    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->r:Landroid/widget/FrameLayout;

    const v4, 0x7f0b0423

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->k:Landroid/widget/CompoundButton;

    :cond_1a
    :goto_8
    sget-object v3, Livq;->e:Livq;

    if-eq p3, v3, :cond_1c

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->k:Landroid/widget/CompoundButton;

    if-eqz p3, :cond_1b

    const/4 p3, 0x1

    goto :goto_9

    :cond_1b
    const/4 p3, 0x0

    goto :goto_9

    :cond_1c
    const/4 p3, 0x1

    :goto_9
    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->r:Landroid/widget/FrameLayout;

    if-eq v0, p3, :cond_1d

    goto :goto_a

    :cond_1d
    const/4 p2, 0x0

    :goto_a
    invoke-virtual {v3, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p3, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07073e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_b

    :cond_1e
    const/4 p2, 0x0

    :goto_b
    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    invoke-static {p3, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->s(Landroid/widget/TextView;I)V

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->j:Landroid/widget/TextView;

    invoke-static {p3, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->s(Landroid/widget/TextView;I)V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->h()V

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->o()V

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->p()V

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->r:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_c
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:I

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->t:Landroid/widget/ImageView;

    if-eqz p2, :cond_1f

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->k()V

    iget p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1f
    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_20

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->u:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->p()V

    :cond_20
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_21

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->w:Landroid/content/res/ColorStateList;

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->p:Livq;

    sget-object v0, Livq;->e:Livq;

    if-ne p3, v0, :cond_21

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->t:Landroid/widget/ImageView;

    if-eqz p3, :cond_21

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_21
    iget-boolean p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->H:Z

    invoke-virtual {p1, v9, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->H:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->J:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->h()V

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->r(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->j:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->r(Landroid/view/View;)V

    new-instance p1, Livo;

    invoke-direct {p1, p0, p0}, Livo;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;)V

    invoke-static {p0, p1}, Lafq;->g(Landroid/view/View;Laei;)V

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->r:Landroid/widget/FrameLayout;

    new-instance p2, Livp;

    invoke-direct {p2, p0, p0}, Livp;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;)V

    invoke-static {p1, p2}, Lafq;->g(Landroid/view/View;Laei;)V

    return-void

    :catchall_0
    move-exception p2

    iput-boolean v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->J:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private final m(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method private static n(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0xff

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final o()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->D:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->E:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    goto :goto_6

    :cond_0
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->F:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->k:Landroid/widget/CompoundButton;

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-static {v5}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n(Z)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    invoke-static {v5}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n(Z)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->D:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_5

    if-nez v1, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n(Z)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->E:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_6

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_7
    :goto_6
    return-void
.end method

.method private final p()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->u:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->g()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->s:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->g()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->t:Landroid/widget/ImageView;

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->t:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->k:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->k:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setImportantForAccessibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method private final q()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->J:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n:Lzy;

    invoke-virtual {v0, p0}, Lzy;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x7

    const v2, 0x7f0b0420

    const v3, 0x7f0b0360

    const v4, 0x7f0b013b

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->p:Livq;

    sget-object v5, Livq;->a:Livq;

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n:Lzy;

    iget v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:I

    invoke-virtual {v0, v3, v5}, Lzy;->p(II)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n:Lzy;

    iget v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:I

    invoke-virtual {v0, v4, v3}, Lzy;->q(II)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n:Lzy;

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v1, v4, v3}, Lzy;->g(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n:Lzy;

    iget v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A:I

    invoke-virtual {v0, v3, v5}, Lzy;->p(II)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n:Lzy;

    iget v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A:I

    invoke-virtual {v0, v4, v3}, Lzy;->q(II)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n:Lzy;

    invoke-virtual {v0, v2, v1}, Lzy;->d(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0b03bd

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n:Lzy;

    const v2, 0x7f0b0421

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0, v3}, Lzy;->g(IIII)V

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n:Lzy;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v0, v3}, Lzy;->g(IIII)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n:Lzy;

    invoke-virtual {v0, p0}, Lzy;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private final r(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->J:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07072d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static final s(Landroid/widget/TextView;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final c(Landroid/content/res/ColorStateList;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->D:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->E:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public final f(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->k()V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->f:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->f:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->h()V

    :cond_0
    return-void
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->r(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->r(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q()V

    return-void
.end method

.method public final i(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->k()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q()V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->p()V

    return-void
.end method

.method public final j(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->k()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->j:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->x:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->j:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q()V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->H:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->J:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->I:Landroid/transition/Transition;

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method final l()Z
    .locals 2

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->K:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Livl;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->o:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Livl;->onDetachedFromWindow()V

    invoke-static {p0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->l:Z

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->o:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Livl;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->l()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getMinHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->G:Z

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->G:Z

    if-eqz v3, :cond_3

    const v0, 0x7f07084d

    invoke-direct {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->m(I)I

    move-result v2

    const v0, 0x7f07084a

    invoke-direct {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->m(I)I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n:Lzy;

    invoke-virtual {v1, p0}, Lzy;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n:Lzy;

    const v3, 0x7f0b03bb

    invoke-virtual {v1, v3, v2}, Lzy;->p(II)V

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n:Lzy;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2, v0}, Lzy;->q(II)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n:Lzy;

    invoke-virtual {v0, p0}, Lzy;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->measure(II)V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->F:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->F:I

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->o()V

    :cond_0
    return-void
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->k()V

    invoke-super {p0, p1}, Livl;->setBackground(Landroid/graphics/drawable/Drawable;)V

    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const v0, 0x7f0b0426

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->B:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0b0427

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->C:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0b041d

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->D:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0b041e

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->E:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->B:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->C:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->D:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->E:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->o()V

    :cond_1
    return-void
.end method

.method public final setChecked(Z)V
    .locals 1

    invoke-super {p0, p1}, Livl;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->k:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Livl;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->p:Livq;

    sget-object v1, Livq;->e:Livq;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->r:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->t:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->r:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->s:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
