.class public final Lhsb;
.super Lls;


# instance fields
.field public d:I

.field private final e:Ljava/util/List;

.field private final f:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Lls;-><init>()V

    iput-object p1, p0, Lhsb;->e:Ljava/util/List;

    iput p2, p0, Lhsb;->f:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lhsb;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic bc(Lmo;)V
    .locals 10

    move-object v1, p1

    check-cast v1, Lhse;

    iget-object p1, v1, Lhse;->y:Lhsa;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lhse;->u:[Landroid/view/View;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    const v6, 0x7f0b016f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    const v7, 0x7f0b01de

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iget-object v7, p1, Lhsa;->d:Ljava/lang/Object;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ligo;

    iget-object v7, v7, Ligo;->b:Ljava/lang/Object;

    check-cast v7, Lmqp;

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p1, Lhsa;->d:Ljava/lang/Object;

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ligo;

    iget-object v4, v4, Ligo;->b:Ljava/lang/Object;

    check-cast v4, Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v7, p1, Lhsa;->e:Ljava/lang/Object;

    new-instance v9, Ljes;

    invoke-direct {v9, v5, v6}, Ljes;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;)V

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v4, v7, v9}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->e(Ljava/lang/String;Ljava/lang/String;Ljes;)V

    move v4, v8

    goto :goto_1

    :cond_0
    iget-object v5, p1, Lhsa;->d:Ljava/lang/Object;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ligo;

    iget-object v5, v5, Ligo;->a:Ljava/lang/Object;

    check-cast v5, Lmqp;

    invoke-virtual {v5}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p1, Lhsa;->d:Ljava/lang/Object;

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ligo;

    iget-object v4, v4, Ligo;->a:Ljava/lang/Object;

    check-cast v4, Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    iget-object v5, p1, Lhsa;->f:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->b(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    move v4, v7

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v2, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lhsb;)V

    iget-object p1, v1, Lhse;->x:Landroid/widget/HorizontalScrollView;

    new-instance v7, Lhsd;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lhsd;-><init>(Lhse;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;[B[B[B[B)V

    invoke-virtual {p1, v7}, Landroid/widget/HorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method

.method public final bridge synthetic d(Landroid/view/ViewGroup;I)Lmo;
    .locals 7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e00b3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0b0144

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget v2, p0, Lhsb;->f:I

    new-array v3, v2, [Landroid/widget/FrameLayout;

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0060

    aget-object v6, v3, v1

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    aget-object v4, v3, v1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lhse;

    invoke-direct {p1, p2, v3}, Lhse;-><init>(Landroid/view/View;[Landroid/view/View;)V

    return-object p1
.end method

.method public final bridge synthetic e(Lmo;I)V
    .locals 9

    check-cast p1, Lhse;

    iget-object v0, p0, Lhsb;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lhsa;

    iget-object v0, p1, Lhse;->s:Landroid/widget/TextView;

    iget-object v1, p2, Lhsa;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lhse;->t:Landroid/widget/TextView;

    iget-object v1, p2, Lhsa;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lhse;->v:Landroid/view/View;

    iget-boolean v1, p2, Lhsa;->a:Z

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lhse;->u:[Landroid/view/View;

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v0, p1, Lhse;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070265

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p1, Lhse;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    iget-object v0, p1, Lhse;->u:[Landroid/view/View;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const v5, 0x7f0b00ab

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0b00ac

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0b01de

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iget-object v8, p2, Lhsa;->b:Ljava/lang/Object;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p2, Lhsa;->g:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x4

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-object p2, p1, Lhse;->y:Lhsa;

    return-void
.end method
