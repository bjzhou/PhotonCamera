.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/LinearLayoutCompat;

# interfaces
.implements Lgv;
.implements Lhl;


# instance fields
.field public a:Lgw;

.field public b:Z

.field public c:Lic;

.field public d:Lgu;

.field public e:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private i:Landroid/content/Context;

.field private j:I

.field private k:Lhi;

.field private l:Z

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->t()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42600000    # 56.0f

    mul-float v0, v0, p2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->n:I

    const/high16 v0, 0x40800000    # 4.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p0, Landroid/support/v7/widget/ActionMenuView;->o:I

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->i:Landroid/content/Context;

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->j:I

    return-void
.end method

.method public static final n()Lif;
    .locals 2

    new-instance v0, Lif;

    invoke-direct {v0}, Lif;-><init>()V

    const/16 v1, 0x10

    iput v1, v0, Lif;->gravity:I

    return-object v0
.end method

.method public static final o(Landroid/view/ViewGroup$LayoutParams;)Lif;
    .locals 1

    if-eqz p0, :cond_2

    instance-of v0, p0, Lif;

    if-eqz v0, :cond_0

    new-instance v0, Lif;

    check-cast p0, Lif;

    invoke-direct {v0, p0}, Lif;-><init>(Lif;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lif;

    invoke-direct {v0, p0}, Lif;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget p0, v0, Lif;->gravity:I

    if-gtz p0, :cond_1

    const/16 p0, 0x10

    iput p0, v0, Lif;->gravity:I

    :cond_1
    return-object v0

    :cond_2
    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->n()Lif;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lgw;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->a:Lgw;

    return-void
.end method

.method public final b(Lgy;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->a:Lgw;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lgw;->z(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/util/AttributeSet;)Lif;
    .locals 2

    new-instance v0, Lif;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lif;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected final bridge synthetic cf()Lkw;
    .locals 1

    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->n()Lif;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic cg(Landroid/util/AttributeSet;)Lkw;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->c(Landroid/util/AttributeSet;)Lif;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic ch(Landroid/view/ViewGroup$LayoutParams;)Lkw;
    .locals 0

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuView;->o(Landroid/view/ViewGroup$LayoutParams;)Lif;

    move-result-object p1

    return-object p1
.end method

.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lif;

    return p1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final g()Landroid/view/Menu;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->a:Lgw;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lgw;

    invoke-direct {v1, v0}, Lgw;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->a:Lgw;

    new-instance v2, Lig;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lig;-><init>(Landroid/support/v7/widget/ActionMenuView;I)V

    invoke-virtual {v1, v2}, Lgw;->p(Lgu;)V

    new-instance v1, Lic;

    invoke-direct {v1, v0}, Lic;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->c:Lic;

    invoke-virtual {v1}, Lic;->p()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Lic;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->k:Lhi;

    if-nez v1, :cond_0

    new-instance v1, Lie;

    invoke-direct {v1}, Lie;-><init>()V

    :cond_0
    iput-object v1, v0, Lgm;->e:Lhi;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->a:Lgw;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->c:Lic;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->i:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lgw;->h(Lhj;Landroid/content/Context;)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Lic;

    invoke-virtual {v0, p0}, Lic;->j(Landroid/support/v7/widget/ActionMenuView;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->a:Lgw;

    return-object v0
.end method

.method protected final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->n()Lif;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->c(Landroid/util/AttributeSet;)Lif;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuView;->o(Landroid/view/ViewGroup$LayoutParams;)Lif;

    move-result-object p1

    return-object p1
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Lic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lic;->n()V

    :cond_0
    return-void
.end method

.method public final i(Lhi;Lgu;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->k:Lhi;

    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuView;->d:Lgu;

    return-void
.end method

.method public final j(I)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->j:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->j:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->i:Landroid/content/Context;

    return-void

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->i:Landroid/content/Context;

    :cond_1
    return-void
.end method

.method public final k(Lic;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->c:Lic;

    invoke-virtual {p1, p0}, Lic;->j(Landroid/support/v7/widget/ActionMenuView;)V

    return-void
.end method

.method protected final l(I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v1, Lid;

    if-eqz v3, :cond_1

    check-cast v1, Lid;

    invoke-interface {v1}, Lid;->c()Z

    move-result v0

    goto :goto_0

    :cond_1
    :goto_0
    if-lez p1, :cond_2

    instance-of p1, v2, Lid;

    if-eqz p1, :cond_2

    check-cast v2, Lid;

    invoke-interface {v2}, Lid;->d()Z

    move-result p1

    or-int/2addr p1, v0

    return p1

    :cond_2
    return v0
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Lic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lic;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->c:Lic;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lgm;->i()V

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->c:Lic;

    invoke-virtual {p1}, Lic;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->c:Lic;

    invoke-virtual {p1}, Lic;->k()Z

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->c:Lic;

    invoke-virtual {p1}, Lic;->m()Z

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->h()V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView;->l:Z

    if-nez v1, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->h:I

    sub-int v4, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static/range {p0 .. p0}, Lnw;->a(Landroid/view/View;)Z

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    div-int/lit8 v11, v2, 0x2

    const/16 v12, 0x8

    const/4 v13, 0x1

    if-ge v8, v1, :cond_5

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v12, :cond_4

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lif;

    iget-boolean v15, v12, Lif;->a:Z

    if-eqz v15, :cond_3

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/ActionMenuView;->l(I)Z

    move-result v15

    if-eqz v15, :cond_1

    add-int/2addr v9, v3

    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    if-eqz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v16

    iget v12, v12, Lif;->leftMargin:I

    add-int v16, v16, v12

    add-int v12, v16, v9

    move/from16 v7, v16

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v17

    sub-int v16, v16, v17

    iget v12, v12, Lif;->rightMargin:I

    sub-int v12, v16, v12

    sub-int v16, v12, v9

    move/from16 v7, v16

    :goto_1
    div-int/lit8 v16, v15, 0x2

    sub-int v11, v11, v16

    add-int/2addr v15, v11

    invoke-virtual {v14, v7, v11, v12, v15}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v5, v9

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v11, v12, Lif;->leftMargin:I

    add-int/2addr v7, v11

    iget v11, v12, Lif;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v5, v7

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/ActionMenuView;->l(I)Z

    add-int/lit8 v10, v10, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    if-ne v1, v13, :cond_7

    if-eqz v9, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v2, 0x2

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v11, v6

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/2addr v3, v11

    invoke-virtual {v1, v4, v11, v2, v3}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_7
    :goto_3
    xor-int/lit8 v2, v9, 0x1

    sub-int/2addr v10, v2

    if-lez v10, :cond_8

    div-int v2, v5, v10

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v1, :cond_c

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lif;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v12, :cond_9

    iget-boolean v6, v5, Lif;->a:Z

    if-nez v6, :cond_9

    iget v6, v5, Lif;->rightMargin:I

    sub-int/2addr v4, v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v9, v8, 0x2

    sub-int v9, v11, v9

    sub-int v10, v4, v6

    add-int/2addr v8, v9

    invoke-virtual {v3, v10, v9, v4, v8}, Landroid/view/View;->layout(IIII)V

    iget v3, v5, Lif;->leftMargin:I

    add-int/2addr v6, v3

    add-int/2addr v6, v2

    sub-int/2addr v4, v6

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v1, :cond_c

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lif;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v12, :cond_b

    iget-boolean v6, v5, Lif;->a:Z

    if-nez v6, :cond_b

    iget v6, v5, Lif;->leftMargin:I

    add-int/2addr v4, v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v9, v8, 0x2

    sub-int v9, v11, v9

    add-int v10, v4, v6

    add-int/2addr v8, v9

    invoke-virtual {v3, v4, v9, v10, v8}, Landroid/view/View;->layout(IIII)V

    iget v3, v5, Lif;->rightMargin:I

    add-int/2addr v6, v3

    add-int/2addr v6, v2

    add-int/2addr v4, v6

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_c
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 29

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView;->l:Z

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Landroid/support/v7/widget/ActionMenuView;->l:Z

    if-eq v1, v2, :cond_1

    iput v4, v0, Landroid/support/v7/widget/ActionMenuView;->m:I

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-boolean v2, v0, Landroid/support/v7/widget/ActionMenuView;->l:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/support/v7/widget/ActionMenuView;->a:Lgw;

    if-eqz v2, :cond_2

    iget v6, v0, Landroid/support/v7/widget/ActionMenuView;->m:I

    if-eq v1, v6, :cond_2

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView;->m:I

    invoke-virtual {v2, v3}, Lgw;->l(Z)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v1

    iget-boolean v2, v0, Landroid/support/v7/widget/ActionMenuView;->l:Z

    if-eqz v2, :cond_2f

    if-lez v1, :cond_2e

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, -0x2

    move/from16 v10, p2

    invoke-static {v10, v8, v9}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v9

    sub-int/2addr v2, v7

    iget v7, v0, Landroid/support/v7/widget/ActionMenuView;->n:I

    div-int v10, v2, v7

    rem-int v11, v2, v7

    if-nez v10, :cond_3

    invoke-virtual {v0, v2, v4}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void

    :cond_3
    div-int/2addr v11, v10

    add-int/2addr v7, v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_1
    if-ge v14, v11, :cond_11

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    move/from16 v23, v2

    move/from16 v20, v6

    move/from16 v22, v8

    goto/16 :goto_9

    :cond_4
    instance-of v3, v5, Landroid/support/v7/view/menu/ActionMenuItemView;

    add-int/lit8 v12, v12, 0x1

    if-eqz v3, :cond_5

    iget v4, v0, Landroid/support/v7/widget/ActionMenuView;->o:I

    move/from16 v20, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_5
    move/from16 v20, v6

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lif;

    iput-boolean v6, v4, Lif;->f:Z

    iput v6, v4, Lif;->c:I

    iput v6, v4, Lif;->b:I

    iput-boolean v6, v4, Lif;->d:Z

    iput v6, v4, Lif;->leftMargin:I

    iput v6, v4, Lif;->rightMargin:I

    if-eqz v3, :cond_6

    move-object v6, v5

    check-cast v6, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/ActionMenuItemView;->b()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    iput-boolean v6, v4, Lif;->e:Z

    iget-boolean v6, v4, Lif;->a:Z

    move/from16 v21, v12

    const/4 v12, 0x1

    if-eq v12, v6, :cond_7

    move v6, v10

    goto :goto_4

    :cond_7
    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lif;

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    move/from16 v23, v2

    sub-int v2, v22, v8

    move/from16 v22, v8

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    if-eqz v3, :cond_8

    move-object v3, v5

    check-cast v3, Landroid/support/v7/view/menu/ActionMenuItemView;

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    if-lez v6, :cond_c

    if-eqz v3, :cond_a

    const/4 v8, 0x2

    if-lt v6, v8, :cond_c

    :cond_a
    mul-int v6, v6, v7

    const/high16 v8, -0x80000000

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int v8, v6, v7

    rem-int/2addr v6, v7

    if-eqz v6, :cond_b

    add-int/lit8 v8, v8, 0x1

    :cond_b
    if-eqz v3, :cond_d

    const/4 v6, 0x2

    if-ge v8, v6, :cond_d

    const/4 v8, 0x2

    goto :goto_7

    :cond_c
    const/4 v8, 0x0

    :cond_d
    :goto_7
    iget-boolean v6, v12, Lif;->a:Z

    if-nez v6, :cond_e

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    :goto_8
    iput-boolean v3, v12, Lif;->d:Z

    iput v8, v12, Lif;->b:I

    mul-int v3, v8, v7

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v5, v3, v2}, Landroid/view/View;->measure(II)V

    move/from16 v2, v18

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v18

    iget-boolean v2, v4, Lif;->d:Z

    if-eqz v2, :cond_f

    add-int/lit8 v13, v13, 0x1

    :cond_f
    iget-boolean v2, v4, Lif;->a:Z

    or-int/2addr v15, v2

    sub-int/2addr v10, v8

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move/from16 v4, v19

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    const/4 v2, 0x1

    if-ne v8, v2, :cond_10

    shl-int v3, v2, v14

    int-to-long v2, v3

    or-long v2, v16, v2

    move-wide/from16 v16, v2

    :cond_10
    move/from16 v12, v21

    :goto_9
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v20

    move/from16 v8, v22

    move/from16 v2, v23

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    goto/16 :goto_1

    :cond_11
    move/from16 v23, v2

    move/from16 v20, v6

    move/from16 v2, v18

    move/from16 v4, v19

    if-eqz v15, :cond_12

    const/4 v3, 0x2

    if-ne v12, v3, :cond_12

    const/4 v3, 0x1

    const/4 v12, 0x2

    goto :goto_a

    :cond_12
    const/4 v3, 0x0

    :goto_a
    const/4 v5, 0x0

    :goto_b
    const-wide/16 v18, 0x1

    if-lez v13, :cond_1c

    if-lez v10, :cond_1c

    const v6, 0x7fffffff

    const/4 v8, 0x0

    const/4 v14, 0x0

    const-wide/16 v21, 0x0

    :goto_c
    if-ge v14, v11, :cond_16

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move/from16 v25, v4

    move-object/from16 v4, v24

    check-cast v4, Lif;

    move/from16 v24, v5

    iget-boolean v5, v4, Lif;->d:Z

    if-nez v5, :cond_13

    goto :goto_d

    :cond_13
    iget v4, v4, Lif;->b:I

    if-ge v4, v6, :cond_14

    shl-long v5, v18, v14

    move-wide/from16 v21, v5

    const/4 v8, 0x1

    move v6, v4

    goto :goto_d

    :cond_14
    if-ne v4, v6, :cond_15

    shl-long v4, v18, v14

    or-long v4, v21, v4

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v21, v4

    :cond_15
    :goto_d
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v24

    move/from16 v4, v25

    goto :goto_c

    :cond_16
    move/from16 v25, v4

    move/from16 v24, v5

    or-long v16, v16, v21

    if-le v8, v10, :cond_17

    goto :goto_10

    :cond_17
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v11, :cond_1b

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lif;

    move/from16 v26, v13

    const/4 v14, 0x1

    shl-int v13, v14, v4

    int-to-long v13, v13

    and-long v18, v21, v13

    const-wide/16 v27, 0x0

    cmp-long v24, v18, v27

    if-nez v24, :cond_18

    iget v5, v8, Lif;->b:I

    if-ne v5, v6, :cond_1a

    or-long v16, v16, v13

    goto :goto_f

    :cond_18
    if-eqz v3, :cond_19

    iget-boolean v13, v8, Lif;->e:Z

    if-eqz v13, :cond_19

    const/4 v13, 0x1

    if-ne v10, v13, :cond_19

    iget v10, v0, Landroid/support/v7/widget/ActionMenuView;->o:I

    add-int v13, v10, v7

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14, v10, v14}, Landroid/view/View;->setPadding(IIII)V

    const/4 v10, 0x1

    :cond_19
    iget v5, v8, Lif;->b:I

    const/4 v13, 0x1

    add-int/2addr v5, v13

    iput v5, v8, Lif;->b:I

    iput-boolean v13, v8, Lif;->f:Z

    add-int/lit8 v10, v10, -0x1

    :cond_1a
    :goto_f
    add-int/lit8 v4, v4, 0x1

    move/from16 v13, v26

    goto :goto_e

    :cond_1b
    move/from16 v26, v13

    move/from16 v4, v25

    const/4 v5, 0x1

    goto/16 :goto_b

    :cond_1c
    move/from16 v25, v4

    move/from16 v24, v5

    :goto_10
    if-nez v15, :cond_1d

    const/4 v3, 0x1

    if-ne v12, v3, :cond_1d

    const/4 v3, 0x1

    const/4 v12, 0x1

    goto :goto_11

    :cond_1d
    const/4 v3, 0x0

    :goto_11
    if-lez v10, :cond_2a

    const-wide/16 v4, 0x0

    cmp-long v6, v16, v4

    if-eqz v6, :cond_2a

    add-int/lit8 v12, v12, -0x1

    if-lt v10, v12, :cond_1e

    if-nez v3, :cond_1e

    const/4 v4, 0x1

    if-le v2, v4, :cond_2a

    :cond_1e
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    int-to-float v2, v2

    if-nez v3, :cond_20

    and-long v3, v16, v18

    const/high16 v5, -0x41000000    # -0.5f

    const-wide/16 v12, 0x0

    cmp-long v6, v3, v12

    if-eqz v6, :cond_1f

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lif;

    iget-boolean v3, v3, Lif;->e:Z

    if-nez v3, :cond_1f

    add-float/2addr v2, v5

    :cond_1f
    add-int/lit8 v3, v11, -0x1

    const/4 v4, 0x1

    shl-int v6, v4, v3

    int-to-long v12, v6

    and-long v12, v16, v12

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-eqz v4, :cond_20

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lif;

    iget-boolean v3, v3, Lif;->e:Z

    if-nez v3, :cond_20

    add-float/2addr v2, v5

    :cond_20
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_21

    mul-int v10, v10, v7

    int-to-float v3, v10

    div-float/2addr v3, v2

    float-to-int v6, v3

    goto :goto_12

    :cond_21
    const/4 v6, 0x0

    :goto_12
    move/from16 v12, v24

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v11, :cond_29

    const/4 v3, 0x1

    shl-int v4, v3, v2

    int-to-long v3, v4

    and-long v3, v16, v3

    const-wide/16 v13, 0x0

    cmp-long v5, v3, v13

    if-eqz v5, :cond_27

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lif;

    instance-of v3, v3, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v3, :cond_24

    iput v6, v4, Lif;->c:I

    const/4 v3, 0x1

    iput-boolean v3, v4, Lif;->f:Z

    if-nez v2, :cond_23

    iget-boolean v2, v4, Lif;->e:Z

    if-nez v2, :cond_22

    neg-int v2, v6

    const/4 v3, 0x2

    div-int/2addr v2, v3

    iput v2, v4, Lif;->leftMargin:I

    goto :goto_14

    :cond_22
    :goto_14
    const/4 v2, 0x0

    goto :goto_15

    :cond_23
    :goto_15
    const/4 v5, 0x2

    const/4 v12, 0x1

    goto :goto_16

    :cond_24
    iget-boolean v3, v4, Lif;->a:Z

    if-eqz v3, :cond_25

    iput v6, v4, Lif;->c:I

    const/4 v3, 0x1

    iput-boolean v3, v4, Lif;->f:Z

    neg-int v3, v6

    const/4 v5, 0x2

    div-int/2addr v3, v5

    iput v3, v4, Lif;->rightMargin:I

    const/4 v12, 0x1

    goto :goto_16

    :cond_25
    const/4 v5, 0x2

    if-eqz v2, :cond_26

    div-int/lit8 v3, v6, 0x2

    iput v3, v4, Lif;->leftMargin:I

    :cond_26
    add-int/lit8 v3, v11, -0x1

    if-eq v2, v3, :cond_28

    div-int/lit8 v3, v6, 0x2

    iput v3, v4, Lif;->rightMargin:I

    goto :goto_16

    :cond_27
    const/4 v5, 0x2

    :cond_28
    :goto_16
    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_13

    :cond_29
    move v5, v12

    goto :goto_17

    :cond_2a
    move/from16 v5, v24

    :goto_17
    if-eqz v5, :cond_2c

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v11, :cond_2c

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lif;

    iget-boolean v5, v3, Lif;->f:Z

    if-eqz v5, :cond_2b

    iget v5, v3, Lif;->b:I

    mul-int v5, v5, v7

    iget v3, v3, Lif;->c:I

    add-int/2addr v5, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v5, v9}, Landroid/view/View;->measure(II)V

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2c
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_2d

    move/from16 v6, v20

    goto :goto_19

    :cond_2d
    move/from16 v6, v25

    :goto_19
    move/from16 v2, v23

    invoke-virtual {v0, v2, v6}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void

    :cond_2e
    move/from16 v10, p2

    const/4 v6, 0x0

    goto :goto_1a

    :cond_2f
    move/from16 v10, p2

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v1, :cond_30

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lif;

    const/4 v3, 0x0

    iput v3, v2, Lif;->rightMargin:I

    iput v3, v2, Lif;->leftMargin:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_30
    invoke-super/range {p0 .. p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void
.end method
