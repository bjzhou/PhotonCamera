.class public final Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;
.super Landroid/widget/FrameLayout;


# instance fields
.field public final a:Landroid/view/GestureDetector;

.field public final b:Ljew;

.field private final c:Lixk;

.field private final d:Landroid/graphics/Rect;

.field private e:Landroid/widget/TextView;

.field private f:Z

.field private g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

.field private final h:Lmb;

.field private final i:Lixm;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/high16 v0, 0x1010000

    filled-new-array {v0}, [I

    move-result-object v0

    const v1, 0x7f150559

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lixk;

    invoke-direct {v0}, Lixk;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->c:Lixk;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->d:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->f:Z

    const/4 v3, 0x2

    iput v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->j:I

    new-instance v4, Lixi;

    invoke-direct {v4, p0}, Lixi;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;)V

    iput-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->h:Lmb;

    new-instance v5, Lixm;

    new-instance v6, Lbx;

    const/16 v7, 0x9

    invoke-direct {v6, p0, v7}, Lbx;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;I)V

    invoke-direct {v5, v6}, Lixm;-><init>(Laea;)V

    iput-object v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->i:Lixm;

    new-instance v6, Ljew;

    invoke-direct {v6, p1}, Ljew;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->b:Ljew;

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lixj;

    invoke-direct {v7}, Lixj;-><init>()V

    invoke-direct {p1, v6, v7}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->a:Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0e0126

    invoke-virtual {v6, v7, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v6, 0x7f0b0431

    invoke-virtual {p0, v6}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->e:Landroid/widget/TextView;

    const v6, 0x7f0b0430

    invoke-virtual {p0, v6}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    iput-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    invoke-virtual {v6, v5}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    iget-object v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->as()V

    iget-object v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    instance-of v6, v5, Liwv;

    if-eqz v6, :cond_1

    check-cast v5, Liwv;

    new-instance v6, Lnaa;

    invoke-direct {v6}, Lnaa;-><init>()V

    iput-object v6, v5, Liwv;->c:Lnaa;

    :cond_1
    sget-object v5, Lixg;->c:[I

    invoke-virtual {p1, p2, v5, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    :try_start_1
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->e:Landroid/widget/TextView;

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->f:Z

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iget-boolean v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->f:Z

    if-ne p3, v5, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->f:Z

    if-nez p3, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->a(Lixt;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object p1

    const p2, 0x7f170001

    invoke-virtual {p1, p2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    const p2, 0x7f170002

    invoke-virtual {p1, p2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->setWillNotDraw(Z)V

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView;->p(Lmb;)V

    iget p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->j:I

    if-ne p1, v3, :cond_4

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->az()Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p1, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ai:Landroid/animation/Animator;

    const/16 p1, 0xff

    invoke-virtual {p2, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->setVignetteAlpha(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->az()Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p1, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ai:Landroid/animation/Animator;

    invoke-virtual {p2, v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->setVignetteAlpha(I)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->e:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static synthetic b(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;Landroid/view/View;II)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method private final c()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    invoke-virtual {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private final d(Landroid/graphics/Rect;ILandroid/view/View;)V
    .locals 6

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const v1, 0x800033

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getLayoutDirection()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    and-int/lit8 v2, v2, 0x7

    sparse-switch v2, :sswitch_data_0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    goto :goto_0

    :sswitch_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v4

    goto :goto_0

    :sswitch_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v4

    rem-int/lit8 v4, v3, 0x2

    add-int/2addr v2, v4

    :goto_0
    and-int/lit8 v1, v1, 0x70

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sparse-switch v1, :sswitch_data_1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p1, v0

    goto :goto_1

    :sswitch_2
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p1, v0

    goto :goto_1

    :sswitch_3
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, p1

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, p1

    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    rem-int/lit8 p1, v4, 0x2

    add-int/2addr p1, v1

    :goto_1
    add-int/2addr p2, p1

    add-int/2addr v3, v2

    add-int/2addr v4, p2

    invoke-virtual {p3, v2, p2, v3, v4}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final a(Lixt;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->f:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    instance-of v0, p1, Lixb;

    if-nez v0, :cond_2

    return-void

    :cond_2
    check-cast p1, Lixb;

    const/4 p1, 0x0

    throw p1
.end method

.method public final dispatchSetActivated(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSetActivated(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    const/4 v2, 0x1

    if-eq v2, p1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->setImportantForAccessibility(I)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    instance-of v0, p1, Liwv;

    if-eqz v0, :cond_0

    sub-int v0, p5, p3

    div-int/lit8 v0, v0, 0x2

    check-cast p1, Liwv;

    iget v1, p1, Liwv;->b:I

    if-eq v1, v0, :cond_0

    iput v0, p1, Liwv;->b:I

    invoke-virtual {p1}, Lly;->aP()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getPaddingLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->d:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    iput p4, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getPaddingTop()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->d:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    iput p5, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->d:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->d(Landroid/graphics/Rect;ILandroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getHeight()I

    move-result p1

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->c()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->d:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->e:Landroid/widget/TextView;

    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->d(Landroid/graphics/Rect;ILandroid/view/View;)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->c:Lixk;

    const/4 v1, 0x0

    iput v1, v0, Lixk;->a:I

    iput v1, v0, Lixk;->b:I

    iput v1, v0, Lixk;->c:I

    iput v1, v0, Lixk;->d:I

    iput v1, v0, Lixk;->e:I

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->b:Ljew;

    invoke-virtual {v0}, Ljew;->e()Z

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->c:Lixk;

    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0, p1, p2, v2}, Lixk;->a(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;IILandroid/view/View;)I

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->c:Lixk;

    iget v0, v0, Lixk;->d:I

    add-int v1, v0, v0

    goto :goto_1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->c:Lixk;

    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->g:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    invoke-virtual {v0, p0, p1, p2, v2}, Lixk;->a(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;IILandroid/view/View;)I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->c:Lixk;

    iget v2, v0, Lixk;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lixk;->b:I

    iget v1, v0, Lixk;->a:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lixk;->a:I

    iget v1, v0, Lixk;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lixk;->b:I

    iget v1, v0, Lixk;->a:I

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lixk;->a:I

    iget v1, v0, Lixk;->b:I

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lixk;->b:I

    iget v1, v0, Lixk;->e:I

    shl-int/lit8 v2, v1, 0x10

    iget v3, v0, Lixk;->a:I

    invoke-static {v3, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget v0, v0, Lixk;->b:I

    invoke-static {v0, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/WearPickerColumn;->setMeasuredDimension(II)V

    return-void
.end method
