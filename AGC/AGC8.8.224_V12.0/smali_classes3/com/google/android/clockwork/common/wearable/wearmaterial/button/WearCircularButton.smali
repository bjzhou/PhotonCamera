.class public Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;
.super Livl;


# instance fields
.field private j:Livt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040751

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Livl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Livt;->c:Livt;

    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->j:Livt;

    const v0, 0x7f040191

    invoke-static {p1, v0}, Ljcb;->i(Landroid/content/Context;I)I

    move-result v0

    const v1, 0x7f04016d

    invoke-static {p1, v1}, Ljcb;->i(Landroid/content/Context;I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e0122

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0b0195

    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->f:Landroid/widget/ImageView;

    invoke-super {p0, p2, p3}, Livl;->d(Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Livi;->c:[I

    const v1, 0x7f150548

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget-object p2, Livt;->c:Livt;

    invoke-virtual {p2}, Livt;->ordinal()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {}, Livt;->values()[Livt;

    move-result-object v0

    invoke-static {}, Livt;->values()[Livt;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, p3, v1}, Lkba;->n(III)I

    move-result p2

    aget-object p2, v0, p2

    iput-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->j:Livt;

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->j:Livt;

    iget p3, p3, Livt;->f:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->f:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lzm;

    iput p2, p3, Lzm;->width:I

    iput p2, p3, Lzm;->height:I

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private static final g(II)I
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sparse-switch v0, :sswitch_data_0

    return p0

    :sswitch_0
    return p1

    :sswitch_1
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final f(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->j:Livt;

    iget v1, v1, Livt;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->g(II)I

    move-result p1

    invoke-static {v0, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearCircularButton;->g(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, v0}, Livl;->onMeasure(II)V

    return-void
.end method
