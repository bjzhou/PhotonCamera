.class public Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;
.super Lnzc;
.source "PG"


# instance fields
.field private s:I

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x7f0407be

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->o:Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

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

    :goto_3
    const v0, 0x7f0401a8

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->s:I

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

    :goto_5
    invoke-super {p0, p2, p3}, Lnzc;->j(Landroid/util/AttributeSet;I)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    const p1, 0x7f0b0222

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_9
    const v0, 0x7f0e0183

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

    :goto_a
    const v1, 0x7f040184

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

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

    :goto_c
    add-int v0, v0, v1

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
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->l:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    sget-object v0, Lnzi;->c:Lnzi;

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

    :goto_f
    iput v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->t:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p1, v0}, Lolx;->aB(Landroid/content/Context;I)I

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    throw p0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v0, Lnyy;->c:[I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

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

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    iget v0, v0, Lnzi;->e:I

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

    :goto_19
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->findViewById(I)Landroid/view/View;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x3

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1b
    invoke-static {v0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->g(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/32 :goto_7

    nop

    nop

    :goto_1d
    invoke-static {p1, v1}, Lolx;->aB(Landroid/content/Context;I)I

    move-result p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1e
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1f
    const v1, 0x7f15061b

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

    :goto_20
    sget-object v0, Lnzi;->c:Lnzi;

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

    :goto_21
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_24

    nop

    nop

    :goto_23
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0, p1, p2, p3}, Lnzc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->getContext()Landroid/content/Context;

    move-result-object p1

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

    :goto_27
    iget v0, v0, Lnzi;->f:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p2, Lnzi;->c:Lnzi;

    nop

    invoke-virtual {p2}, Lnzi;->ordinal()I

    move-result p2

    nop

    nop

    nop

    const/4 p3, 0x0

    nop

    nop

    nop

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    nop

    nop

    nop

    nop

    invoke-static {}, Lnzi;->values()[Lnzi;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {}, Lnzi;->values()[Lnzi;

    move-result-object v1

    nop

    nop

    nop

    nop

    array-length v1, v1

    nop

    nop

    nop

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    nop

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    nop

    nop

    nop

    nop

    aget-object p2, v0, p2

    nop

    nop

    nop

    nop

    iget p3, p2, Lnzi;->e:I

    nop

    nop

    iget p2, p2, Lnzi;->f:I

    nop

    nop

    nop

    iput p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->s:I

    nop

    nop

    nop

    iput p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->t:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    iget p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->t:I

    nop

    nop

    nop

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->o:Landroid/widget/ImageView;

    nop

    nop

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    check-cast p3, Ldse;

    nop

    iput p2, p3, Ldse;->width:I

    nop

    nop

    iput p2, p3, Ldse;->height:I

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->o:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop
.end method

.method private static final m(II)I
    .locals 2

    goto/32 :goto_11

    nop

    nop

    :goto_0
    const/high16 v1, -0x80000000

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    const v1, 0x11

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
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    if-ne v0, v1, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

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

    :goto_9
    return p1

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_f
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    return p0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    const-class p0, Landroid/widget/Button;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l(I)V
    .locals 0

    goto/32 :goto_2

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
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->o:Landroid/widget/ImageView;

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

    :goto_2
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    goto/32 :goto_c

    nop

    :goto_2
    const v1, 0xd

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

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

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
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    nop

    goto/32 :goto_10

    nop

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1, v0}, Lnzc;->onMeasure(II)V

    goto/32 :goto_d

    nop

    nop

    :goto_8
    invoke-static {v0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->m(II)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const/high16 p2, 0x40000000    # 2.0f

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->m(II)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_12

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

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->s:I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_12
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    const v0, 0x9

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
.end method
