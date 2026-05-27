.class public Lhsc;
.super Ljava/lang/Object;


# instance fields
.field public final f:Lhrz;

.field protected final g:Landroid/content/Context;

.field public h:Lhsb;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lhrz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhsc;->g:Landroid/content/Context;

    iput-object p2, p0, Lhsc;->f:Lhrz;

    return-void
.end method


# virtual methods
.method protected final c()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lhsc;->g:Landroid/content/Context;

    const v1, 0x7f0e0100

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final d(Landroid/view/View;Ljava/util/List;ILmlb;Lmli;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 6

    iget-object v0, p0, Lhsc;->g:Landroid/content/Context;

    const v1, 0x7f0b03f8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lhsb;

    invoke-direct {v2, p2, p3}, Lhsb;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    iget-object v4, v1, Landroidx/viewpager2/widget/ViewPager2;->j:Lath;

    if-eqz v3, :cond_0

    check-cast v4, Lauq;

    iget-object v4, v4, Lauq;->b:Lej;

    invoke-virtual {v3, v4}, Lls;->i(Lej;)V

    :cond_0
    if-eqz v3, :cond_1

    iget-object v4, v1, Landroidx/viewpager2/widget/ViewPager2;->i:Lej;

    invoke-virtual {v3, v4}, Lls;->i(Lej;)V

    :cond_1
    iget-object v3, v1, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->Y(Lls;)V

    const/4 v3, 0x0

    iput v3, v1, Landroidx/viewpager2/widget/ViewPager2;->b:I

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->c()V

    iget-object v4, v1, Landroidx/viewpager2/widget/ViewPager2;->j:Lath;

    check-cast v4, Lauq;

    invoke-virtual {v4}, Lauq;->f()V

    iget-object v4, v4, Lauq;->b:Lej;

    invoke-virtual {v2, v4}, Lls;->h(Lej;)V

    iget-object v4, v1, Landroidx/viewpager2/widget/ViewPager2;->i:Lej;

    invoke-virtual {v2, v4}, Lls;->h(Lej;)V

    iput-object v2, p0, Lhsc;->h:Lhsb;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v2, 0x1

    if-le p3, v2, :cond_4

    iput-boolean v3, v1, Landroidx/viewpager2/widget/ViewPager2;->g:Z

    iget-object p3, v1, Landroidx/viewpager2/widget/ViewPager2;->j:Lath;

    check-cast p3, Lauq;

    invoke-virtual {p3}, Lauq;->f()V

    :cond_4
    const p3, 0x7f0b0372

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/GradientDrawable;

    const v4, 0x7f0701a3

    invoke-static {v4, v0}, Lllj;->r(ILandroid/content/Context;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/GradientDrawable;->setTint(I)V

    if-eqz p4, :cond_5

    invoke-virtual {p1, p4}, Lcom/google/android/material/tabs/TabLayout;->e(Lmla;)V

    :cond_5
    new-instance p3, Lmll;

    invoke-direct {p3, p1, v1, p5}, Lmll;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lmli;)V

    iget-boolean p4, p3, Lmll;->d:Z

    if-nez p4, :cond_8

    iget-object p4, p3, Lmll;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p4}, Landroidx/viewpager2/widget/ViewPager2;->b()Lls;

    move-result-object p4

    iput-object p4, p3, Lmll;->c:Lls;

    iget-object p4, p3, Lmll;->c:Lls;

    if-eqz p4, :cond_7

    iput-boolean v2, p3, Lmll;->d:Z

    new-instance p4, Lmlj;

    iget-object p5, p3, Lmll;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p4, p5}, Lmlj;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object p4, p3, Lmll;->e:Lmlj;

    iget-object p4, p3, Lmll;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p5, p3, Lmll;->e:Lmlj;

    iget-object p4, p4, Landroidx/viewpager2/widget/ViewPager2;->a:Lauf;

    invoke-virtual {p4, p5}, Lauf;->d(Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;)V

    new-instance p4, Lmlk;

    iget-object p5, p3, Lmll;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p4, p5, v3}, Lmlk;-><init>(Landroidx/viewpager2/widget/ViewPager2;I)V

    iput-object p4, p3, Lmll;->f:Lmlb;

    iget-object p4, p3, Lmll;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-object p5, p3, Lmll;->f:Lmlb;

    invoke-virtual {p4, p5}, Lcom/google/android/material/tabs/TabLayout;->e(Lmla;)V

    new-instance p4, Lmlh;

    invoke-direct {p4, p3}, Lmlh;-><init>(Lmll;)V

    iput-object p4, p3, Lmll;->g:Lej;

    iget-object p4, p3, Lmll;->c:Lls;

    iget-object p5, p3, Lmll;->g:Lej;

    invoke-virtual {p4, p5}, Lls;->h(Lej;)V

    invoke-virtual {p3}, Lmll;->a()V

    iget-object p4, p3, Lmll;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-object p3, p3, Lmll;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget p3, p3, Landroidx/viewpager2/widget/ViewPager2;->b:I

    invoke-virtual {p4, p3}, Lcom/google/android/material/tabs/TabLayout;->l(I)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x2

    if-ge p2, p3, :cond_6

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    :cond_6
    return-object v1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TabLayoutMediator attached before ViewPager2 has an adapter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TabLayoutMediator is already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final e(ILandroid/view/View;Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 6

    iget-object v0, p0, Lhsc;->f:Lhrz;

    const/4 v2, -0x1

    new-instance v4, Lcsf;

    const/4 v1, 0x4

    invoke-direct {v4, p0, v1}, Lcsf;-><init>(Lhsc;I)V

    move v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lhrz;->n(IILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    return-void
.end method
