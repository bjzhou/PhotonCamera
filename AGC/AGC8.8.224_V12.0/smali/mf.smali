.class public final Lmf;
.super Lej;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lmf;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Lej;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget-object v0, p0, Lmf;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->q(Ljava/lang/String;)V

    iget-object v0, p0, Lmf;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lml;->f:Z

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->T(Z)V

    iget-object v0, p0, Lmf;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    invoke-virtual {v0}, Ljvb;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final d(ILjava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lmf;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->q(Ljava/lang/String;)V

    iget-object v0, p0, Lmf;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->T:Ljvb;

    iget-object v1, v0, Ljvb;->d:Ljava/lang/Object;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p1, v3, p2}, Ljvb;->d(IIILjava/lang/Object;)Lih;

    move-result-object p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Ljvb;->b:I

    or-int/2addr p1, v2

    iput p1, v0, Ljvb;->b:I

    iget-object p1, v0, Ljvb;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_1

    sget-boolean p1, Landroid/support/v7/widget/RecyclerView;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmf;->a:Landroid/support/v7/widget/RecyclerView;

    iget-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView;->j:Ljava/lang/Runnable;

    invoke-static {p1, p2}, Lafb;->i(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p1, p0, Lmf;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v3, p1, Landroid/support/v7/widget/RecyclerView;->x:Z

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method
