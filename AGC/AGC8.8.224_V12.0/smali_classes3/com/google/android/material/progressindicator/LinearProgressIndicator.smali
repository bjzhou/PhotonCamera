.class public final Lcom/google/android/material/progressindicator/LinearProgressIndicator;
.super Lmil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04040e

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const v0, 0x7f1507d2

    invoke-direct {p0, p1, p2, p3, v0}, Lmil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->a:Lmim;

    check-cast p2, Lmjl;

    new-instance p3, Lmjc;

    new-instance v0, Lmjd;

    invoke-direct {v0, p2}, Lmjd;-><init>(Lmjl;)V

    iget v1, p2, Lmjl;->g:I

    if-nez v1, :cond_0

    new-instance v1, Lmjg;

    invoke-direct {v1, p2}, Lmjg;-><init>(Lmjl;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lmjk;

    invoke-direct {v1, p1, p2}, Lmjk;-><init>(Landroid/content/Context;Lmjl;)V

    :goto_0
    invoke-direct {p3, p1, p2, v0, v1}, Lmjc;-><init>(Landroid/content/Context;Lmim;Lmja;Lmjb;)V

    invoke-virtual {p0, p3}, Lmil;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->a:Lmim;

    check-cast p2, Lmjl;

    new-instance p3, Lmiv;

    new-instance v0, Lmjd;

    invoke-direct {v0, p2}, Lmjd;-><init>(Lmjl;)V

    invoke-direct {p3, p1, p2, v0}, Lmiv;-><init>(Landroid/content/Context;Lmim;Lmja;)V

    invoke-virtual {p0, p3}, Lmil;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Lmim;
    .locals 1

    new-instance v0, Lmjl;

    invoke-direct {v0, p1, p2}, Lmjl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final g(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->a:Lmim;

    if-eqz v0, :cond_0

    check-cast v0, Lmjl;

    iget v0, v0, Lmjl;->g:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lmil;->g(I)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lmil;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->a:Lmim;

    check-cast p1, Lmjl;

    iget p2, p1, Lmjl;->h:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    invoke-static {p0}, Lafc;->c(Landroid/view/View;)I

    move-result p2

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->a:Lmim;

    check-cast p2, Lmjl;

    iget p2, p2, Lmjl;->h:I

    const/4 p4, 0x2

    if-eq p2, p4, :cond_2

    :cond_0
    invoke-static {p0}, Lafc;->c(Landroid/view/View;)I

    move-result p2

    const/4 p4, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->a:Lmim;

    check-cast p2, Lmjl;

    iget p2, p2, Lmjl;->h:I

    const/4 p5, 0x3

    if-ne p2, p5, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_0

    :cond_2
    :goto_0
    iput-boolean p3, p1, Lmjl;->i:Z

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->getPaddingRight()I

    move-result p4

    add-int/2addr p3, p4

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->getPaddingTop()I

    move-result p4

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->getPaddingBottom()I

    move-result v0

    add-int/2addr p4, v0

    invoke-virtual {p0}, Lmil;->c()Lmjc;

    move-result-object v0

    sub-int/2addr p1, p3

    sub-int/2addr p2, p4

    const/4 p3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    invoke-virtual {p0}, Lmil;->b()Lmiv;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p4, p3, p3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method
