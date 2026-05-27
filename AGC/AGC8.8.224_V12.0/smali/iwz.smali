.class final Liwz;
.super Lmp;


# instance fields
.field final synthetic d:Lixa;


# direct methods
.method public constructor <init>(Lixa;)V
    .locals 0

    iput-object p1, p0, Liwz;->d:Lixa;

    invoke-direct {p0, p1}, Lmp;-><init>(Lmq;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Lagt;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lmp;->b(Landroid/view/View;Lagt;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lagt;->j(Z)V

    iget-object p1, p2, Lagt;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    sget-object p1, Lagr;->e:Lagr;

    invoke-virtual {p2, p1}, Lagt;->t(Lagr;)V

    new-instance p1, Lagr;

    sget-object v0, Lagr;->e:Lagr;

    invoke-virtual {v0}, Lagr;->a()I

    move-result v0

    iget-object v1, p0, Liwz;->d:Lixa;

    iget-object v1, v1, Lixa;->j:Ljava/lang/CharSequence;

    invoke-direct {p1, v0, v1}, Lagr;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Lagt;->f(Lagr;)V

    return-void
.end method

.method public final h(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p2, v0, :cond_1

    iget-object p1, p0, Liwz;->d:Lixa;

    iget-object p1, p1, Lixa;->d:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    iget-object p1, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aa:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Liwx;

    invoke-interface {p2}, Liwx;->a()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lmp;->h(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
