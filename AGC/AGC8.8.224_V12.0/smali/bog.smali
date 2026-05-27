.class public Lbog;
.super Lbz;


# instance fields
.field private q:Ljgd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbz;-><init>()V

    return-void
.end method

.method private final h()Ljgd;
    .locals 3

    iget-object v0, p0, Lbog;->q:Ljgd;

    if-nez v0, :cond_0

    new-instance v0, Ljgd;

    new-instance v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v1, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lbog;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljgd;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;[B)V

    iput-object v0, p0, Lbog;->q:Ljgd;

    :cond_0
    iget-object v0, p0, Lbog;->q:Ljgd;

    return-object v0
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    invoke-super {p0}, Lbz;->onBackPressed()V

    invoke-virtual {p0}, Lbz;->bI()Lcq;

    move-result-object v0

    invoke-virtual {v0}, Lcq;->a()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbog;->finishAfterTransition()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lbz;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lbog;->h()Ljgd;

    move-result-object p1

    invoke-virtual {p0}, Lbog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0035

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    :cond_0
    const v1, 0x7f0b00db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v1, p1, Ljgd;->c:Ljava/lang/Object;

    const v1, 0x7f0b0068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v1, p1, Ljgd;->d:Ljava/lang/Object;

    iget-object v1, p1, Ljgd;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lmhx;

    const v3, 0x3f8ccccd    # 1.1f

    iput v3, v1, Lmhx;->F:F

    :cond_1
    iget-object v1, p1, Ljgd;->d:Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Laal;

    new-instance v3, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {v3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    new-instance v4, Lkwp;

    invoke-direct {v4, v2}, Lkwp;-><init>([B)V

    iput-object v4, v3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->c:Lkwp;

    invoke-virtual {v1, v3}, Laal;->b(Laai;)V

    :cond_2
    const v1, 0x7f0b00e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p1, Ljgd;->a:Ljava/lang/Object;

    const v1, 0x7f0b0036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar;

    iput-object v1, p1, Ljgd;->b:Ljava/lang/Object;

    iget-object v1, p1, Ljgd;->e:Ljava/lang/Object;

    iget-object p1, p1, Ljgd;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v2, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v2, Lbz;

    check-cast p1, Landroid/widget/Toolbar;

    invoke-super {v2, p1}, Lbz;->setActionBar(Landroid/widget/Toolbar;)V

    iget-object p1, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast p1, Lbz;

    invoke-super {p1}, Lbz;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_3
    invoke-super {p0, v0}, Lbz;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final onNavigateUp()Z
    .locals 1

    invoke-virtual {p0}, Lbz;->bI()Lcq;

    move-result-object v0

    invoke-virtual {v0}, Lcq;->a()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lbz;->bI()Lcq;

    move-result-object v0

    invoke-virtual {v0}, Lcq;->W()Z

    :cond_0
    invoke-virtual {p0}, Lbz;->bI()Lcq;

    move-result-object v0

    invoke-virtual {v0}, Lcq;->a()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lbog;->finishAfterTransition()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final setContentView(I)V
    .locals 2

    iget-object v0, p0, Lbog;->q:Ljgd;

    if-nez v0, :cond_0

    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lbog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Ljgd;->a:Ljava/lang/Object;

    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lbog;->q:Ljgd;

    if-nez v0, :cond_0

    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lbog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Ljgd;->a:Ljava/lang/Object;

    :goto_0
    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lbog;->q:Ljgd;

    if-nez v0, :cond_0

    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lbog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Ljgd;->a:Ljava/lang/Object;

    :goto_0
    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final setTitle(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lbog;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0}, Lbog;->h()Ljgd;

    move-result-object v0

    iget-object v1, v0, Ljgd;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v1, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, v0, Ljgd;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v0, Lbz;

    invoke-super {v0, p1}, Lbz;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
