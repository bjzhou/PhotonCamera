.class public final Landroidx/viewpager2/widget/ViewPager2;
.super Landroid/view/ViewGroup;


# instance fields
.field public final a:Lauf;

.field public b:I

.field public c:Z

.field d:Landroid/support/v7/widget/LinearLayoutManager;

.field public e:Landroid/support/v7/widget/RecyclerView;

.field public f:Laui;

.field public g:Z

.field public final h:I

.field public final i:Lej;

.field public j:Lath;

.field private final k:Landroid/graphics/Rect;

.field private final l:Landroid/graphics/Rect;

.field private m:I

.field private n:Landroid/os/Parcelable;

.field private o:Llr;

.field private p:Lauf;

.field private q:Laug;

.field private r:Lbkb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    new-instance v0, Lauf;

    invoke-direct {v0}, Lauf;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Lauf;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Z

    new-instance v0, Lauj;

    invoke-direct {v0, p0}, Lauj;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lej;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Z

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->i(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    new-instance v0, Lauf;

    invoke-direct {v0}, Lauf;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Lauf;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Z

    new-instance v0, Lauj;

    invoke-direct {v0, p0}, Lauj;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lej;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Z

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->i(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    new-instance p3, Lauf;

    invoke-direct {p3}, Lauf;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Lauf;

    const/4 p3, 0x0

    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Z

    new-instance p3, Lauj;

    invoke-direct {p3, p0}, Lauj;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lej;

    const/4 p3, -0x1

    iput p3, p0, Landroidx/viewpager2/widget/ViewPager2;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Z

    iput p3, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->i(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    new-instance p3, Lauf;

    invoke-direct {p3}, Lauf;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Lauf;

    const/4 p3, 0x0

    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Z

    new-instance p3, Lauj;

    invoke-direct {p3, p0}, Lauj;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lej;

    const/4 p3, -0x1

    iput p3, p0, Landroidx/viewpager2/widget/ViewPager2;->m:I

    const/4 p4, 0x1

    iput-boolean p4, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Z

    iput p3, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->i(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final i(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    new-instance v0, Lauq;

    invoke-direct {v0, p0}, Lauq;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Lath;

    new-instance v0, Laus;

    invoke-direct {v0, p0, p1}, Laus;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {}, Lafc;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setId(I)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    new-instance v0, Laun;

    invoke-direct {v0, p0}, Laun;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->aa(Lly;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView;->G:I

    sget-object v0, Lauc;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget-object v3, Lauc;->a:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    invoke-static/range {v1 .. v7}, Lafn;->c(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->T(I)V

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Lath;

    check-cast p2, Lauq;

    invoke-virtual {p2}, Lauq;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lasr;

    invoke-direct {v0}, Lasr;-><init>()V

    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView;->y:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p2, Landroid/support/v7/widget/RecyclerView;->y:Ljava/util/List;

    :cond_0
    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->y:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Laui;

    invoke-direct {p2, p0}, Laui;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Laui;

    new-instance p2, Lbkb;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Laui;

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p2, v0}, Lbkb;-><init>(Laui;)V

    iput-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Lbkb;

    new-instance p2, Laur;

    invoke-direct {p2, p0}, Laur;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Llr;

    invoke-virtual {p2, v1}, Lma;->e(Landroid/support/v7/widget/RecyclerView;)V

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Laui;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->aw(Les;)V

    new-instance p2, Lauf;

    invoke-direct {p2}, Lauf;-><init>()V

    iput-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Lauf;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Laui;

    iput-object p2, v0, Laui;->f:Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;

    new-instance v0, Lauk;

    invoke-direct {v0, p0}, Lauk;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    new-instance v1, Laul;

    invoke-direct {v1, p0}, Laul;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {p2, v0}, Lauf;->d(Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;)V

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Lauf;

    invoke-virtual {p2, v1}, Lauf;->d(Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;)V

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Lath;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lafb;->o(Landroid/view/View;I)V

    new-instance v0, Laup;

    check-cast p2, Lauq;

    invoke-direct {v0, p2}, Laup;-><init>(Lauq;)V

    iput-object v0, p2, Lauq;->b:Lej;

    iget-object v0, p2, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v0}, Lafb;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p2, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lafb;->o(Landroid/view/View;I)V

    :cond_1
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Lauf;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Lauf;

    invoke-virtual {p2, v0}, Lauf;->d(Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;)V

    new-instance p2, Laug;

    invoke-direct {p2}, Laug;-><init>()V

    iput-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Laug;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Lauf;

    invoke-virtual {v0, p2}, Lauf;->d(Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;)V

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lls;
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    return-object v0
.end method

.method public final c()V
    .locals 3

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->b()Lls;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroid/os/Parcelable;

    if-eqz v2, :cond_3

    instance-of v2, v0, Laud;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Laud;

    invoke-interface {v2}, Laud;->b()V

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroid/os/Parcelable;

    :cond_3
    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2;->m:I

    invoke-virtual {v0}, Lls;->a()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:I

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->W(I)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Lath;

    check-cast v0, Lauq;

    invoke-virtual {v0}, Lauq;->f()V

    return-void
.end method

.method public final canScrollHorizontally(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method public final canScrollVertically(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    return p1
.end method

.method public final d(IZ)V
    .locals 0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->h()V

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->e(IZ)V

    return-void
.end method

.method protected final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    instance-of v1, v0, Laut;

    if-eqz v1, :cond_0

    check-cast v0, Laut;

    iget v0, v0, Laut;->a:I

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->c()V

    return-void
.end method

.method public final e(IZ)V
    .locals 8

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->b()Lls;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    iget p2, p0, Landroidx/viewpager2/widget/ViewPager2;->m:I

    if-eq p2, v2, :cond_0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lls;->a()I

    move-result v3

    if-gtz v3, :cond_2

    return-void

    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0}, Lls;->a()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Laui;

    invoke-virtual {v0}, Laui;->j()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_0
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    if-ne p1, v0, :cond_6

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_1
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Lath;

    check-cast v1, Lauq;

    invoke-virtual {v1}, Lauq;->f()V

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Laui;

    invoke-virtual {v1}, Laui;->j()Z

    move-result v1

    int-to-double v2, v0

    if-nez v1, :cond_7

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Laui;

    invoke-virtual {v0}, Laui;->i()V

    iget-object v0, v0, Laui;->c:Lauh;

    iget v1, v0, Lauh;->a:I

    int-to-double v1, v1

    iget v0, v0, Lauh;->b:F

    float-to-double v3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double v2, v1, v3

    goto :goto_2

    :cond_7
    :goto_2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Laui;

    const/4 v1, 0x1

    const/4 v4, 0x2

    if-eq v1, p2, :cond_8

    const/4 v1, 0x3

    goto :goto_3

    :cond_8
    const/4 v1, 0x2

    :goto_3
    iput v1, v0, Laui;->a:I

    iget v1, v0, Laui;->d:I

    iput p1, v0, Laui;->d:I

    invoke-virtual {v0, v4}, Laui;->h(I)V

    if-eq v1, p1, :cond_9

    invoke-virtual {v0, p1}, Laui;->g(I)V

    :cond_9
    if-nez p2, :cond_a

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->W(I)V

    return-void

    :cond_a
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpl-double p2, v4, v6

    if-lez p2, :cond_c

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    cmpl-double v4, v0, v2

    if-lez v4, :cond_b

    add-int/lit8 v0, p1, -0x3

    goto :goto_4

    :cond_b
    add-int/lit8 v0, p1, 0x3

    :goto_4
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->W(I)V

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lauu;

    invoke-direct {v0, p1, p2}, Lauu;-><init>(ILandroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_c
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->ad(I)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Llr;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Llr;->b(Lly;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->be(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Laui;

    iget v1, v1, Laui;->b:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Lauf;

    invoke-virtual {v1, v0}, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;->c(I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Z

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Design assumption violated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lly;->am()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "androidx.viewpager.widget.ViewPager"

    return-object v0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Lath;

    invoke-static {p1}, Lagt;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lagt;

    move-result-object p1

    check-cast v0, Lauq;

    iget-object v1, v0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->b()Lls;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->a()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, v0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->b()Lls;

    move-result-object v1

    invoke-virtual {v1}, Lls;->a()I

    move-result v1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->b()Lls;

    move-result-object v1

    invoke-virtual {v1}, Lls;->a()I

    move-result v1

    move v4, v1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-static {v1, v4, v2}, Lbkb;->A(III)Lbkb;

    move-result-object v1

    invoke-virtual {p1, v1}, Lagt;->k(Ljava/lang/Object;)V

    iget-object v1, v0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->b()Lls;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lls;->a()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v2, v0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v4, v2, Landroidx/viewpager2/widget/ViewPager2;->g:Z

    if-eqz v4, :cond_5

    iget v2, v2, Landroidx/viewpager2/widget/ViewPager2;->b:I

    if-lez v2, :cond_3

    const/16 v2, 0x2000

    invoke-virtual {p1, v2}, Lagt;->e(I)V

    :cond_3
    iget-object v0, v0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget v0, v0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Lagt;->e(I)V

    :cond_4
    invoke-virtual {p1, v3}, Lagt;->n(Z)V

    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 3

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    iput p4, v1, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingTop()I

    move-result p4

    iput p4, p2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    const p4, 0x800033

    invoke-static {p4, p1, v0, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object p4, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget-object p5, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/support/v7/widget/RecyclerView;->layout(IIII)V

    iget-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->f()V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 5

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredState()I

    move-result v2

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v0, v2, 0x10

    invoke-static {v1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setMeasuredDimension(II)V

    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Laut;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Laut;

    invoke-virtual {p1}, Laut;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Laut;->b:I

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:I

    iget-object p1, p1, Laut;->c:Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroid/os/Parcelable;

    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Laut;

    invoke-direct {v1, v0}, Laut;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v0

    iput v0, v1, Laut;->a:I

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    :cond_0
    iput v0, v1, Laut;->b:I

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iput-object v0, v1, Laut;->c:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    instance-of v2, v0, Laud;

    if-eqz v2, :cond_2

    check-cast v0, Laud;

    invoke-interface {v0}, Laud;->a()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Laut;->c:Landroid/os/Parcelable;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " does not support direct child views"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Lath;

    invoke-virtual {v0, p1}, Lath;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Lath;

    invoke-virtual {p2, p1}, Lath;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move-object p1, p2

    check-cast p1, Lauq;

    iget-object p1, p1, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget p1, p1, Landroidx/viewpager2/widget/ViewPager2;->b:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Lauq;

    iget-object p1, p1, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget p1, p1, Landroidx/viewpager2/widget/ViewPager2;->b:I

    add-int/2addr p1, v1

    :goto_0
    check-cast p2, Lauq;

    invoke-virtual {p2, p1}, Lauq;->e(I)V

    return v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final setLayoutDirection(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Lath;

    check-cast p1, Lauq;

    invoke-virtual {p1}, Lauq;->f()V

    return-void
.end method
