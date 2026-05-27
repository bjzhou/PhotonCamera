.class public final Liwv;
.super Landroid/support/v7/widget/LinearLayoutManager;


# instance fields
.field public a:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

.field public b:I

.field public c:Lnaa;

.field private d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(I)V

    new-instance p1, Liwu;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Liwu;-><init>(Liwv;I)V

    iput-object p1, p0, Liwv;->e:Ljava/lang/Runnable;

    return-void
.end method

.method private final bt(ILml;)I
    .locals 3

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lml;->a()I

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p2, Lml;->o:I

    if-nez v0, :cond_6

    iget v0, p2, Lml;->p:I

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Liwv;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p2}, Lml;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    div-int/lit8 p1, p1, 0x2

    return p1

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lly;->M(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {p2}, Lml;->a()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lly;->M(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->a(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v0, p1

    if-eqz v1, :cond_4

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    div-int/lit8 p1, p1, 0x2

    return p1

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    if-gtz v0, :cond_5

    goto :goto_0

    :cond_5
    return p1

    :cond_6
    :goto_2
    return p1
.end method


# virtual methods
.method public final C(Lml;)I
    .locals 2

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lml;->a()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lly;->av(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lly;->aj()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lly;->av(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Liwv;->bo(Landroid/view/View;)I

    move-result v0

    invoke-static {p1}, Liwv;->br(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    iget p1, p0, Lly;->B:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method protected final O(Lml;[I)V
    .locals 3

    iget v0, p0, Liwv;->b:I

    invoke-virtual {p1}, Lml;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->O(Lml;[I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lly;->aq()I

    move-result p1

    invoke-virtual {p0}, Lly;->as()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lly;->ar()I

    move-result v1

    invoke-virtual {p0}, Lly;->ap()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    aput p1, p2, v1

    const/4 p1, 0x1

    aput v0, p2, p1

    return-void
.end method

.method public final a(Lmd;Lml;)I
    .locals 1

    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Lml;->a()I

    move-result p1

    return p1
.end method

.method public final aH(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    iput-object p1, p0, Liwv;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Liwv;->d:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public final ag(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Liwv;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    iput-object p1, p0, Liwv;->d:Landroid/os/Handler;

    return-void
.end method

.method public final b(Lmd;Lml;)I
    .locals 1

    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lml;->a()I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public final bg()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 11

    iget-object v0, p0, Liwv;->c:Lnaa;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lly;->aj()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lly;->av(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    iget v3, p0, Lly;->B:I

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v8

    div-float/2addr v3, v7

    add-float/2addr v6, v8

    int-to-float v4, v4

    div-float v8, v4, v7

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v3, v8

    div-float/2addr v9, v3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v10, v0, Lnaa;->a:Ljava/lang/Object;

    if-nez v10, :cond_1

    const v10, 0x7f010057

    invoke-static {v3, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, v0, Lnaa;->a:Ljava/lang/Object;

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v9, v3}, Laax;->e(FF)F

    move-result v9

    iget-object v10, v0, Lnaa;->a:Ljava/lang/Object;

    sub-float v9, v3, v9

    invoke-interface {v10, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    const v10, 0x3f0ccccd    # 0.55f

    mul-float v9, v9, v10

    const v10, 0x3ee66666    # 0.45f

    add-float/2addr v9, v10

    cmpl-float v3, v9, v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->resetPivot()V

    goto :goto_1

    :cond_2
    add-float/2addr v8, v6

    invoke-static {v8, v4}, Laax;->e(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    int-to-float v3, v5

    div-float/2addr v3, v7

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    :goto_1
    invoke-virtual {v2, v9}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final d(ILmd;Lml;)I
    .locals 0

    invoke-direct {p0, p1, p3}, Liwv;->bt(ILml;)I

    move-result p1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILmd;Lml;)I

    move-result p1

    iget p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez p2, :cond_0

    invoke-virtual {p0}, Liwv;->c()V

    :cond_0
    return p1
.end method

.method public final e(ILmd;Lml;)I
    .locals 0

    invoke-direct {p0, p1, p3}, Liwv;->bt(ILml;)I

    move-result p1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->e(ILmd;Lml;)I

    move-result p1

    iget p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    invoke-virtual {p0}, Liwv;->c()V

    :cond_0
    return p1
.end method

.method public final p(Lml;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->p(Lml;)V

    iget-object p1, p0, Liwv;->d:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object v0, p0, Liwv;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Liwv;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
