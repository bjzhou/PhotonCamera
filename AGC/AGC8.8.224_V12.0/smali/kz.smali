.class public final Lkz;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:I

.field public l:Ljava/util/List;

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkz;->a:Z

    const/4 v0, 0x0

    iput v0, p0, Lkz;->h:I

    iput v0, p0, Lkz;->i:I

    iput-boolean v0, p0, Lkz;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lkz;->l:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lmd;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lkz;->l:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lkz;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmo;

    iget-object v1, v1, Lmo;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Llz;

    invoke-virtual {v2}, Llz;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget v3, p0, Lkz;->d:I

    invoke-virtual {v2}, Llz;->a()I

    move-result v2

    if-ne v3, v2, :cond_1

    invoke-virtual {p0, v1}, Lkz;->c(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return-object v1

    :cond_3
    iget v0, p0, Lkz;->d:I

    invoke-virtual {p1, v0}, Lmd;->b(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lkz;->d:I

    iget v1, p0, Lkz;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lkz;->d:I

    return-object p1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkz;->c(Landroid/view/View;)V

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lkz;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v4, p0, Lkz;->l:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmo;

    iget-object v4, v4, Lmo;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Llz;

    if-eq v4, p1, :cond_3

    invoke-virtual {v5}, Llz;->c()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Llz;->a()I

    move-result v5

    iget v6, p0, Lkz;->d:I

    sub-int/2addr v5, v6

    iget v6, p0, Lkz;->e:I

    mul-int v5, v5, v6

    if-gez v5, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    if-ge v5, v2, :cond_0

    if-nez v5, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object v3, v4

    move v2, v5

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    const/4 p1, -0x1

    iput p1, p0, Lkz;->d:I

    return-void

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Llz;

    invoke-virtual {p1}, Llz;->a()I

    move-result p1

    iput p1, p0, Lkz;->d:I

    return-void
.end method

.method public final d(Lml;)Z
    .locals 1

    iget v0, p0, Lkz;->d:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lml;->a()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
