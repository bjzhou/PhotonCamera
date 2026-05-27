.class public final Ljj;
.super Landroid/widget/Spinner;


# static fields
.field private static final e:[I


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lji;

.field c:I

.field final d:Landroid/graphics/Rect;

.field private final f:Lij;

.field private g:Lkq;

.field private h:Landroid/widget/SpinnerAdapter;

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10102f1

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Ljj;->e:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const v0, 0x7f0405d7

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ljj;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Ljj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1}, Lnf;->d(Landroid/view/View;Landroid/content/Context;)V

    sget-object v1, Lfr;->u:[I

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v0, v2}, Landroidx/wear/ambient/AmbientDelegate;->D(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v1

    new-instance v3, Lij;

    invoke-direct {v3, p0}, Lij;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Ljj;->f:Lij;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroidx/wear/ambient/AmbientDelegate;->s(II)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v4, Lqi;

    invoke-direct {v4, p1, v3}, Lqi;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Ljj;->a:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Ljj;->a:Landroid/content/Context;

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Ljj;->e:[I

    invoke-virtual {p1, p2, v5, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    const/4 v5, 0x2

    packed-switch v6, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    new-instance v6, Ljg;

    iget-object v7, p0, Ljj;->a:Landroid/content/Context;

    invoke-direct {v6, p0, v7, p2}, Ljg;-><init>(Ljj;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v7, p0, Ljj;->a:Landroid/content/Context;

    sget-object v8, Lfr;->u:[I

    invoke-static {v7, p2, v8, v0, v2}, Landroidx/wear/ambient/AmbientDelegate;->D(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v7

    const/4 v8, 0x3

    const/4 v9, -0x2

    invoke-virtual {v7, v8, v9}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v8

    iput v8, p0, Ljj;->c:I

    invoke-virtual {v7, v3}, Landroidx/wear/ambient/AmbientDelegate;->u(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Llg;->f(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v5}, Landroidx/wear/ambient/AmbientDelegate;->x(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Ljg;->a:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Landroidx/wear/ambient/AmbientDelegate;->y()V

    iput-object v6, p0, Ljj;->b:Lji;

    new-instance v5, Liz;

    invoke-direct {v5, p0, p0, v6}, Liz;-><init>(Ljj;Landroid/view/View;Ljg;)V

    iput-object v5, p0, Ljj;->g:Lkq;

    goto :goto_4

    :pswitch_1
    new-instance v6, Ljd;

    invoke-direct {v6, p0}, Ljd;-><init>(Ljj;)V

    iput-object v6, p0, Ljj;->b:Lji;

    invoke-virtual {v1, v5}, Landroidx/wear/ambient/AmbientDelegate;->x(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lji;->i(Ljava/lang/CharSequence;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    throw p1

    :catch_1
    move-exception v5

    move-object v5, v4

    :goto_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    :goto_4
    iget-object v5, v1, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v5, Landroid/content/res/TypedArray;

    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v5, p1, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p1, 0x7f0e0101

    invoke-virtual {v5, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p0, v5}, Ljj;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_5
    invoke-virtual {v1}, Landroidx/wear/ambient/AmbientDelegate;->y()V

    iput-boolean v3, p0, Ljj;->i:Z

    iget-object p1, p0, Ljj;->h:Landroid/widget/SpinnerAdapter;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Ljj;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iput-object v4, p0, Ljj;->h:Landroid/widget/SpinnerAdapter;

    :cond_6
    iget-object p1, p0, Ljj;->f:Lij;

    invoke-virtual {p1, p2, v0}, Lij;->d(Landroid/util/AttributeSet;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljj;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Ljj;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Ljj;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v3, 0xf

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    rsub-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    move v6, v3

    move-object v7, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v6, v4, :cond_4

    invoke-interface {p1, v6}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v0, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v0

    :goto_1
    if-eq v8, v0, :cond_2

    move-object v7, v5

    :cond_2
    invoke-interface {p1, v6, v7, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v0, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    move v0, v9

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    iget-object p1, p0, Ljj;->d:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object p1, p0, Ljj;->d:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Ljj;->d:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p2

    add-int/2addr v3, p1

    :cond_5
    return v3
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Ljj;->b:Lji;

    invoke-static {p0}, Ljb;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {p0}, Ljb;->a(Landroid/view/View;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lji;->l(II)V

    return-void
.end method

.method protected final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    iget-object v0, p0, Ljj;->f:Lij;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lij;->c()V

    :cond_0
    return-void
.end method

.method public final getDropDownHorizontalOffset()I
    .locals 1

    iget-object v0, p0, Ljj;->b:Lji;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lji;->a()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public final getDropDownVerticalOffset()I
    .locals 1

    iget-object v0, p0, Ljj;->b:Lji;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lji;->b()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    return v0
.end method

.method public final getDropDownWidth()I
    .locals 1

    iget-object v0, p0, Ljj;->b:Lji;

    if-eqz v0, :cond_0

    iget v0, p0, Ljj;->c:I

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    return v0
.end method

.method public final getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Ljj;->b:Lji;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lji;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getPopupContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ljj;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final getPrompt()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Ljj;->b:Lji;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lji;->d()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    iget-object v0, p0, Ljj;->b:Lji;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lji;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljj;->b:Lji;

    invoke-interface {v0}, Lji;->k()V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    iget-object p2, p0, Ljj;->b:Lji;

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Ljj;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Ljj;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Ljj;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljj;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Ljj;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljj;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Ljh;

    invoke-virtual {p1}, Ljh;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Ljh;->a:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljj;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lho;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lho;-><init>(Ljj;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Ljh;

    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljh;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Ljj;->b:Lji;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lji;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iput-boolean v2, v0, Ljh;->a:Z

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Ljj;->g:Lkq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lkq;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final performClick()Z
    .locals 1

    iget-object v0, p0, Ljj;->b:Lji;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lji;->u()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljj;->b()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Ljj;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    iget-boolean v0, p0, Ljj;->i:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Ljj;->h:Landroid/widget/SpinnerAdapter;

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Ljj;->b:Lji;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljj;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljj;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Ljj;->b:Lji;

    new-instance v2, Lje;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lje;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v1, v2}, Lji;->e(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Ljj;->f:Lij;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lij;->i()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    iget-object v0, p0, Ljj;->f:Lij;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lij;->e(I)V

    :cond_0
    return-void
.end method

.method public final setDropDownHorizontalOffset(I)V
    .locals 1

    iget-object v0, p0, Ljj;->b:Lji;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lji;->h(I)V

    iget-object v0, p0, Ljj;->b:Lji;

    invoke-interface {v0, p1}, Lji;->g(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    return-void
.end method

.method public final setDropDownVerticalOffset(I)V
    .locals 1

    iget-object v0, p0, Ljj;->b:Lji;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lji;->j(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    return-void
.end method

.method public final setDropDownWidth(I)V
    .locals 1

    iget-object v0, p0, Ljj;->b:Lji;

    if-eqz v0, :cond_0

    iput p1, p0, Ljj;->c:I

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    return-void
.end method

.method public final setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Ljj;->b:Lji;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lji;->f(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setPopupBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Ljj;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lfs;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljj;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Ljj;->b:Lji;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lji;->i(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    return-void
.end method
