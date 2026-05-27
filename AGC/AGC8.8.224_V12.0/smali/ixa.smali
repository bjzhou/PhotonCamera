.class public final Lixa;
.super Lmq;


# instance fields
.field public final d:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

.field public final e:Ljava/lang/Runnable;

.field public final f:Ljava/lang/Runnable;

.field public g:Z

.field public final h:I

.field public i:I

.field public final j:Ljava/lang/CharSequence;

.field private k:Laei;


# direct methods
.method public constructor <init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;)V
    .locals 4

    invoke-direct {p0, p1}, Lmq;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    new-instance v0, Liwu;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Liwu;-><init>(Lixa;I)V

    iput-object v0, p0, Lixa;->e:Ljava/lang/Runnable;

    new-instance v0, Liwu;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Liwu;-><init>(Lixa;I)V

    iput-object v0, p0, Lixa;->f:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lixa;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lixa;->i:I

    iput-object p1, p0, Lixa;->d:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x7f040003

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v0, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1405dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lixa;->j:Ljava/lang/CharSequence;

    new-instance v0, Ljyx;

    invoke-direct {v0}, Ljyx;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aD()V

    iget-object v1, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->W:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Liwy;

    invoke-direct {v0, p0}, Liwy;-><init>(Lixa;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->aw(Les;)V

    return-void
.end method

.method private final m()V
    .locals 1

    iget-object v0, p0, Lixa;->d:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    invoke-virtual {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aD()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Lagt;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lmq;->b(Landroid/view/View;Lagt;)V

    iget-object p1, p0, Lixa;->d:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    invoke-virtual {p1}, Lly;->al()I

    move-result p1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    invoke-static {v2, p1, v1}, Lbkb;->A(III)Lbkb;

    move-result-object p1

    invoke-virtual {p2, p1}, Lagt;->k(Ljava/lang/Object;)V

    iget-object p1, p0, Lixa;->d:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aD()V

    sget-object p1, Lagr;->n:Lagr;

    invoke-virtual {p2, p1}, Lagt;->t(Lagr;)V

    sget-object p1, Lagr;->m:Lagr;

    invoke-virtual {p2, p1}, Lagt;->t(Lagr;)V

    :cond_2
    return-void
.end method

.method public final g(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object p1, p0, Lixa;->d:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Lixa;->d:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    invoke-virtual {p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aD()V

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_0

    return v0

    :sswitch_0
    iget-object p1, p0, Lixa;->d:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    iget-object p2, p0, Lixa;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lixa;->d:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    iget-object p2, p0, Lixa;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->post(Ljava/lang/Runnable;)Z

    return v0

    :sswitch_1
    iget-object p1, p0, Lixa;->d:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    iget-object p2, p0, Lixa;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget p1, p0, Lixa;->i:I

    iput-boolean v0, p0, Lixa;->g:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    return p3

    :sswitch_2
    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return v0

    :cond_1
    return p3

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_0
    .end sparse-switch
.end method

.method public final h(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lmq;->h(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :sswitch_0
    invoke-direct {p0}, Lixa;->m()V

    return v0

    :sswitch_1
    invoke-direct {p0}, Lixa;->m()V

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public final j()Laei;
    .locals 1

    iget-object v0, p0, Lixa;->k:Laei;

    if-nez v0, :cond_0

    new-instance v0, Liwz;

    invoke-direct {v0, p0}, Liwz;-><init>(Lixa;)V

    iput-object v0, p0, Lixa;->k:Laei;

    :cond_0
    iget-object v0, p0, Lixa;->k:Laei;

    return-object v0
.end method
