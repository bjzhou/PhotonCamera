.class public final Lga;
.super Landroid/view/ActionMode;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lfx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfx;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Lga;->a:Landroid/content/Context;

    iput-object p2, p0, Lga;->b:Lfx;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    iget-object v0, p0, Lga;->b:Lfx;

    invoke-virtual {v0}, Lfx;->f()V

    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lga;->b:Lfx;

    invoke-virtual {v0}, Lfx;->c()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 3

    new-instance v0, Lhm;

    iget-object v1, p0, Lga;->a:Landroid/content/Context;

    iget-object v2, p0, Lga;->b:Lfx;

    invoke-virtual {v2}, Lfx;->a()Landroid/view/Menu;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhm;-><init>(Landroid/content/Context;Ladc;)V

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    iget-object v0, p0, Lga;->b:Lfx;

    invoke-virtual {v0}, Lfx;->b()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lga;->b:Lfx;

    invoke-virtual {v0}, Lfx;->d()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lga;->b:Lfx;

    iget-object v0, v0, Lfx;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lga;->b:Lfx;

    invoke-virtual {v0}, Lfx;->e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleOptionalHint()Z
    .locals 1

    iget-object v0, p0, Lga;->b:Lfx;

    iget-boolean v0, v0, Lfx;->e:Z

    return v0
.end method

.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Lga;->b:Lfx;

    invoke-virtual {v0}, Lfx;->g()V

    return-void
.end method

.method public final isTitleOptional()Z
    .locals 1

    iget-object v0, p0, Lga;->b:Lfx;

    invoke-virtual {v0}, Lfx;->n()Z

    move-result v0

    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lga;->b:Lfx;

    invoke-virtual {v0, p1}, Lfx;->h(Landroid/view/View;)V

    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Lga;->b:Lfx;

    invoke-virtual {v0, p1}, Lfx;->i(I)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lga;->b:Lfx;

    invoke-virtual {v0, p1}, Lfx;->j(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lga;->b:Lfx;

    iput-object p1, v0, Lfx;->d:Ljava/lang/Object;

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    iget-object v0, p0, Lga;->b:Lfx;

    invoke-virtual {v0, p1}, Lfx;->k(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lga;->b:Lfx;

    invoke-virtual {v0, p1}, Lfx;->l(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 1

    iget-object v0, p0, Lga;->b:Lfx;

    invoke-virtual {v0, p1}, Lfx;->m(Z)V

    return-void
.end method
