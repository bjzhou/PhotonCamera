.class public Llg;
.super Ljava/lang/Object;

# interfaces
.implements Lhn;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ListAdapter;

.field private c:I

.field private d:I

.field public e:Lkm;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:I

.field public k:I

.field public l:Landroid/view/View;

.field public m:Landroid/widget/AdapterView$OnItemClickListener;

.field public n:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public final o:Landroid/os/Handler;

.field public p:Z

.field public q:Landroid/widget/PopupWindow;

.field public final r:Lbe;

.field private s:I

.field private t:Z

.field private u:Landroid/database/DataSetObserver;

.field private final v:Llf;

.field private final w:Landroid/graphics/Rect;

.field private x:Landroid/graphics/Rect;

.field private final y:Lclb;

.field private final z:Lbe;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Llg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I[B)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x2

    iput p4, p0, Llg;->c:I

    iput p4, p0, Llg;->f:I

    const/16 p4, 0x3ea

    iput p4, p0, Llg;->s:I

    const/4 p4, 0x0

    iput p4, p0, Llg;->j:I

    const v0, 0x7fffffff

    iput v0, p0, Llg;->k:I

    new-instance v0, Lbe;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Lbe;-><init>(Llg;I)V

    iput-object v0, p0, Llg;->r:Lbe;

    new-instance v0, Lclb;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lclb;-><init>(Llg;I)V

    iput-object v0, p0, Llg;->y:Lclb;

    new-instance v0, Llf;

    invoke-direct {v0, p0}, Llf;-><init>(Llg;)V

    iput-object v0, p0, Llg;->v:Llf;

    new-instance v0, Lbe;

    const/16 v2, 0x11

    invoke-direct {v0, p0, v2}, Lbe;-><init>(Llg;I)V

    iput-object v0, p0, Llg;->z:Lbe;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llg;->w:Landroid/graphics/Rect;

    iput-object p1, p0, Llg;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Llg;->o:Landroid/os/Handler;

    sget-object v0, Lfr;->o:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, p4, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Llg;->g:I

    invoke-virtual {v0, v1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p4

    iput p4, p0, Llg;->d:I

    if-eqz p4, :cond_0

    iput-boolean v1, p0, Llg;->t:Z

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p4, Lit;

    invoke-direct {p4, p1, p2, p3}, Lit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p4, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {p4, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Llg;->g:I

    return v0
.end method

.method public final aX()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Llg;->e:Lkm;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget-boolean v0, p0, Llg;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Llg;->d:I

    return v0
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Llg;->u:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    new-instance v0, Lle;

    invoke-direct {v0, p0}, Lle;-><init>(Llg;)V

    iput-object v0, p0, Llg;->u:Landroid/database/DataSetObserver;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Llg;->b:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Llg;->b:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Llg;->u:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Llg;->e:Lkm;

    if-eqz p1, :cond_3

    iget-object v0, p0, Llg;->b:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Lkm;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Llg;->g:I

    return-void
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Llg;->d:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Llg;->t:Z

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Llg;->e:Lkm;

    iget-object v0, p0, Llg;->o:Landroid/os/Handler;

    iget-object v1, p0, Llg;->r:Lbe;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o()I
    .locals 1

    invoke-virtual {p0}, Llg;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Llg;->e:Lkm;

    invoke-virtual {v0}, Lkm;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public p(Landroid/content/Context;Z)Lkm;
    .locals 1

    new-instance v0, Lkm;

    invoke-direct {v0, p1, p2}, Lkm;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Llg;->e:Lkm;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkm;->a:Z

    invoke-virtual {v0}, Lkm;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final r(I)V
    .locals 2

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Llg;->w:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Llg;->w:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Llg;->w:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Llg;->f:I

    return-void

    :cond_0
    iput p1, p0, Llg;->f:I

    return-void
.end method

.method public final s()V
    .locals 12

    iget-object v0, p0, Llg;->e:Lkm;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Llg;->a:Landroid/content/Context;

    iget-boolean v2, p0, Llg;->p:Z

    xor-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Llg;->p(Landroid/content/Context;Z)Lkm;

    move-result-object v0

    iput-object v0, p0, Llg;->e:Lkm;

    iget-object v2, p0, Llg;->b:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v2}, Lkm;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Llg;->e:Lkm;

    iget-object v2, p0, Llg;->m:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Lkm;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Llg;->e:Lkm;

    invoke-virtual {v0, v1}, Lkm;->setFocusable(Z)V

    iget-object v0, p0, Llg;->e:Lkm;

    invoke-virtual {v0, v1}, Lkm;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Llg;->e:Lkm;

    new-instance v2, Lanh;

    invoke-direct {v2, p0, v1}, Lanh;-><init>(Llg;I)V

    invoke-virtual {v0, v2}, Lkm;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Llg;->e:Lkm;

    iget-object v2, p0, Llg;->v:Llf;

    invoke-virtual {v0, v2}, Lkm;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Llg;->n:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    iget-object v2, p0, Llg;->e:Lkm;

    invoke-virtual {v2, v0}, Lkm;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    iget-object v0, p0, Llg;->e:Lkm;

    iget-object v2, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, p0, Llg;->w:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Llg;->w:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Llg;->w:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iget-boolean v3, p0, Llg;->t:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Llg;->w:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    iput v3, p0, Llg;->d:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Llg;->w:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    :cond_3
    :goto_1
    iget-object v3, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Llg;->l:Landroid/view/View;

    iget v5, p0, Llg;->d:I

    iget-object v6, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-static {v6, v4, v5, v3}, Llc;->a(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    move-result v3

    iget v4, p0, Llg;->c:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    add-int/2addr v3, v0

    goto :goto_5

    :cond_5
    iget v4, p0, Llg;->f:I

    const/high16 v6, 0x40000000    # 2.0f

    packed-switch v4, :pswitch_data_0

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_3

    :pswitch_0
    iget-object v4, p0, Llg;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Llg;->w:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Llg;->w:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_3

    :pswitch_1
    iget-object v4, p0, Llg;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Llg;->w:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Llg;->w:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    const/high16 v6, -0x80000000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :goto_3
    iget-object v6, p0, Llg;->e:Lkm;

    invoke-virtual {v6, v4, v3}, Lkm;->b(II)I

    move-result v3

    if-lez v3, :cond_6

    iget-object v4, p0, Llg;->e:Lkm;

    invoke-virtual {v4}, Lkm;->getPaddingTop()I

    move-result v4

    iget-object v6, p0, Llg;->e:Lkm;

    invoke-virtual {v6}, Lkm;->getPaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v0, v4

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    add-int/2addr v3, v0

    :goto_5
    invoke-virtual {p0}, Llg;->w()Z

    move-result v0

    iget-object v4, p0, Llg;->q:Landroid/widget/PopupWindow;

    iget v6, p0, Llg;->s:I

    invoke-static {v4, v6}, Lahp;->c(Landroid/widget/PopupWindow;I)V

    iget-object v4, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    const/4 v6, -0x2

    if-eqz v4, :cond_12

    iget-object v4, p0, Llg;->l:Landroid/view/View;

    invoke-static {v4}, Lafe;->e(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_7

    return-void

    :cond_7
    iget v4, p0, Llg;->f:I

    if-ne v4, v5, :cond_8

    const/4 v4, -0x1

    goto :goto_6

    :cond_8
    if-ne v4, v6, :cond_9

    iget-object v4, p0, Llg;->l:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    :cond_9
    :goto_6
    iget v7, p0, Llg;->c:I

    if-ne v7, v5, :cond_e

    if-eq v1, v0, :cond_a

    const/4 v3, -0x1

    :cond_a
    if-eqz v0, :cond_c

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    iget v6, p0, Llg;->f:I

    if-ne v6, v5, :cond_b

    const/4 v6, -0x1

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_9

    :cond_c
    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    iget v6, p0, Llg;->f:I

    if-ne v6, v5, :cond_d

    const/4 v2, -0x1

    goto :goto_8

    :cond_d
    :goto_8
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_9

    :cond_e
    if-eq v7, v6, :cond_f

    move v3, v7

    :cond_f
    :goto_9
    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v6, p0, Llg;->q:Landroid/widget/PopupWindow;

    iget-object v7, p0, Llg;->l:Landroid/view/View;

    iget v8, p0, Llg;->g:I

    iget v9, p0, Llg;->d:I

    if-gez v4, :cond_10

    const/4 v10, -0x1

    goto :goto_a

    :cond_10
    move v10, v4

    :goto_a
    if-gez v3, :cond_11

    const/4 v11, -0x1

    goto :goto_b

    :cond_11
    move v11, v3

    :goto_b
    invoke-virtual/range {v6 .. v11}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void

    :cond_12
    iget v0, p0, Llg;->f:I

    if-ne v0, v5, :cond_13

    const/4 v0, -0x1

    goto :goto_c

    :cond_13
    if-ne v0, v6, :cond_14

    iget-object v0, p0, Llg;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_14
    :goto_c
    iget v2, p0, Llg;->c:I

    if-ne v2, v5, :cond_15

    const/4 v3, -0x1

    goto :goto_d

    :cond_15
    if-eq v2, v6, :cond_16

    move v3, v2

    :cond_16
    :goto_d
    iget-object v2, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-static {v0, v1}, Lld;->b(Landroid/widget/PopupWindow;Z)V

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    iget-object v1, p0, Llg;->y:Lclb;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Llg;->i:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Llg;->h:Z

    invoke-static {v0, v1}, Lahp;->b(Landroid/widget/PopupWindow;Z)V

    :cond_17
    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    iget-object v1, p0, Llg;->x:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lld;->a(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    iget-object v1, p0, Llg;->l:Landroid/view/View;

    iget v2, p0, Llg;->g:I

    iget v3, p0, Llg;->d:I

    iget v4, p0, Llg;->j:I

    invoke-static {v0, v1, v2, v3, v4}, Laho;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    iget-object v0, p0, Llg;->e:Lkm;

    invoke-virtual {v0, v5}, Lkm;->setSelection(I)V

    iget-boolean v0, p0, Llg;->p:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Llg;->e:Lkm;

    invoke-virtual {v0}, Lkm;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    invoke-virtual {p0}, Llg;->q()V

    :cond_19
    iget-boolean v0, p0, Llg;->p:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Llg;->o:Landroid/os/Handler;

    iget-object v1, p0, Llg;->z:Lbe;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Llg;->x:Landroid/graphics/Rect;

    return-void
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final v(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public final w()Z
    .locals 2

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x()V
    .locals 2

    iget-object v0, p0, Llg;->q:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public final y()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Llg;->p:Z

    iget-object v1, p0, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method
