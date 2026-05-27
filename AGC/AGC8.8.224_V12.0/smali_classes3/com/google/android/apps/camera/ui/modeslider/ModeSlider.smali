.class public Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Liaq;


# instance fields
.field public a:Liap;

.field final b:Ljava/util/List;

.field public c:I

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:I

.field private final f:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b:Ljava/util/List;

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07044c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->e:I

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07044a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 v0, -0x2

    invoke-direct {p1, v0, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->f:Landroid/widget/LinearLayout$LayoutParams;

    const p2, 0x800013

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-void
.end method

.method private final m(Landroid/widget/TextView;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Liaa;

    invoke-direct {v1, p1}, Liaa;-><init>(Landroid/widget/TextView;)V

    const v2, 0x7f09000b

    invoke-static {v0, v2, v1}, Lacn;->a(Landroid/content/Context;ILacl;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final b(Liac;)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liac;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unsupported mode item: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->setEnabled(Z)V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->setEnabled(Z)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->setVisibility(I)V

    return-void
.end method

.method public final f(I)Liac;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Liac;

    return-object p1
.end method

.method final g()V
    .locals 6

    iget v0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->c:I

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->f:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070450

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->c:I

    add-int/2addr v0, v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070451

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getMeasuredWidth()I

    move-result v3

    if-le v3, v1, :cond_2

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    add-int/2addr v2, v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a()I

    move-result v4

    if-eq v3, v4, :cond_1

    div-int v4, v1, v2

    invoke-virtual {p0, v3}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->setVisibility(I)V

    return-void
.end method

.method public final i(Liab;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b:Ljava/util/List;

    iget-object v1, p1, Liab;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Liab;->j:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->removeAllViews()V

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07044e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07044d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Likp;->a(F)F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x11

    if-ge v3, p1, :cond_0

    iget-object v5, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Liac;

    iget-object v5, v5, Liac;->c:Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Liac;

    iget-object v6, v6, Liac;->d:Ljava/lang/Object;

    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->f:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setGravity(I)V

    const v4, 0x7f040181

    invoke-static {v7, v4}, Lkwp;->l(Landroid/view/View;I)I

    move-result v4

    invoke-direct {p0, v7, v4}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->m(Landroid/widget/TextView;I)V

    const/4 v4, 0x4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    invoke-virtual {v7, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    iget v4, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->e:I

    invoke-virtual {v7, v4, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v4, Lhzz;

    invoke-direct {v4, p0, v3, v2}, Lhzz;-><init>(Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;II)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v7, v3}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->addView(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070451

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1, v2, p1, v2}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->setPadding(IIII)V

    new-instance p1, Lclb;

    invoke-direct {p1, p0, v4}, Lclb;-><init>(Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;I)V

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final j()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->l(IZ)V

    return-void
.end method

.method public final l(IZ)V
    .locals 5

    if-ltz p1, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-ne v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08013f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    const v4, 0x7f040178

    invoke-static {v2, v4}, Lkwp;->l(Landroid/view/View;I)I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->m(Landroid/widget/TextView;I)V

    const v4, 0x7f0401a5

    invoke-static {v2, v4}, Lkwp;->l(Landroid/view/View;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f040181

    invoke-static {v2, v3}, Lkwp;->l(Landroid/view/View;I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->m(Landroid/widget/TextView;I)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->g()V

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a:Liap;

    if-eqz v1, :cond_4

    if-nez p2, :cond_3

    invoke-interface {v1, v0}, Liap;->c(Z)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a:Liap;

    invoke-interface {v1, p0, p1, p2}, Liap;->a(Landroid/view/View;IZ)V

    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a:Liap;

    invoke-interface {p1, p0, v0}, Liap;->b(Landroid/view/View;Z)V

    :cond_4
    return-void

    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
