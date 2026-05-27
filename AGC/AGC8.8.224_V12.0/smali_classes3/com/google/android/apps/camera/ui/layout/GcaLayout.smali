.class public Lcom/google/android/apps/camera/ui/layout/GcaLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;


# instance fields
.field public a:Lmrl;

.field public b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method private final a(Landroid/content/Context;)V
    .locals 1

    check-cast p1, Lemk;

    const-class v0, Lhye;

    invoke-interface {p1, v0}, Lemk;->b(Ljava/lang/Class;)Leml;

    move-result-object p1

    check-cast p1, Lhye;

    invoke-interface {p1, p0}, Lhye;->a(Lcom/google/android/apps/camera/ui/layout/GcaLayout;)V

    return-void
.end method


# virtual methods
.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lhyf;

    return p1
.end method

.method protected final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Lzm;

    move-result-object v0

    return-object v0
.end method

.method public final generateDefaultLayoutParams()Lzm;
    .locals 1

    new-instance v0, Lhyf;

    invoke-direct {v0}, Lhyf;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lzm;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lhyf;

    invoke-direct {v0, p1}, Lhyf;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Lzm;
    .locals 2

    new-instance v0, Lhyf;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lhyf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".onLayout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".onMeasure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->a:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    check-cast v0, Lhyt;

    iget-object v1, v0, Lhyt;->b:Lhyq;

    new-instance v2, Lzy;

    invoke-direct {v2}, Lzy;-><init>()V

    invoke-virtual {v2, p0}, Lzy;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v3, v0, Lhyt;->a:Lhys;

    iget-object v3, v3, Lhys;->i:Lhyn;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->getChildCount()I

    move-result v4

    iget-object v5, v0, Lhyt;->a:Lhys;

    sget-object v6, Lhyn;->a:Lhyn;

    invoke-virtual {v3}, Lhyn;->ordinal()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    new-instance v6, Lhym;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v0, v2, v7}, Lhym;-><init>(Lhyt;Lzy;Landroid/content/res/Resources;)V

    goto :goto_0

    :pswitch_0
    new-instance v6, Lhyl;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v0, v2, v7}, Lhyl;-><init>(Lhyt;Lzy;Landroid/content/res/Resources;)V

    goto :goto_0

    :pswitch_1
    new-instance v6, Lhyj;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v0, v2, v7}, Lhyj;-><init>(Lhyt;Lzy;Landroid/content/res/Resources;)V

    goto :goto_0

    :pswitch_2
    new-instance v6, Lhyk;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v0, v2, v7}, Lhyk;-><init>(Lhyt;Lzy;Landroid/content/res/Resources;)V

    :goto_0
    sget-object v0, Lhyn;->a:Lhyn;

    invoke-virtual {v3, v0}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lhyn;->d:Lhyn;

    invoke-virtual {v3, v0}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lhyn;->e:Lhyn;

    invoke-virtual {v3, v0}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-static {v5, v1, v3, v6}, Lhyt;->a(Lhys;Lhyq;Lhyx;Lhyw;)Lhyt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_2
    if-ge v7, v4, :cond_3

    invoke-virtual {p0, v7}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lhyf;

    iget v1, v1, Lhyf;->ax:I

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v5}, Lzy;->d(II)V

    const/4 v5, 0x6

    invoke-virtual {v2, v3, v5}, Lzy;->d(II)V

    const/4 v5, 0x7

    invoke-virtual {v2, v3, v5}, Lzy;->d(II)V

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v5}, Lzy;->d(II)V

    add-int/lit8 v1, v1, -0x1

    packed-switch v1, :pswitch_data_1

    invoke-virtual {v6, v0}, Lhyw;->l(Landroid/view/View;)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v6, v0}, Lhyw;->g(Landroid/view/View;)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {v6, v0}, Lhyw;->k(Landroid/view/View;)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {v6, v0}, Lhyw;->m(Landroid/view/View;)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {v6, v0}, Lhyw;->e(Landroid/view/View;)V

    goto :goto_3

    :pswitch_7
    invoke-virtual {v6, v0}, Lhyw;->b(Landroid/view/View;)V

    goto :goto_3

    :pswitch_8
    invoke-virtual {v6, v0}, Lhyw;->h(Landroid/view/View;)V

    goto :goto_3

    :pswitch_9
    invoke-virtual {v6, v0}, Lhyw;->j(Landroid/view/View;)V

    goto :goto_3

    :pswitch_a
    invoke-virtual {v6, v0}, Lhyw;->d(Landroid/view/View;)V

    goto :goto_3

    :pswitch_b
    invoke-virtual {v6, v0}, Lhyw;->p(Landroid/view/View;)V

    goto :goto_3

    :pswitch_c
    invoke-virtual {v6, v0}, Lhyw;->q(Landroid/view/View;)V

    goto :goto_3

    :pswitch_d
    invoke-virtual {v6, v0}, Lhyw;->f(Landroid/view/View;)V

    goto :goto_3

    :pswitch_e
    invoke-virtual {v6, v0}, Lhyw;->o(Landroid/view/View;)V

    goto :goto_3

    :pswitch_f
    invoke-virtual {v6, v0}, Lhyw;->a(Landroid/view/View;)V

    goto :goto_3

    :pswitch_10
    invoke-virtual {v6, v0}, Lhyw;->n(Landroid/view/View;)V

    goto :goto_3

    :pswitch_11
    invoke-virtual {v6, v0}, Lhyw;->i(Landroid/view/View;)V

    goto :goto_3

    :pswitch_12
    invoke-virtual {v6, v0}, Lhyw;->c(Landroid/view/View;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p0}, Lzy;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
