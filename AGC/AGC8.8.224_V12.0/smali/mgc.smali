.class final Lmgc;
.super Laei;


# instance fields
.field final synthetic a:Lmgf;


# direct methods
.method public constructor <init>(Lmgf;)V
    .locals 0

    iput-object p1, p0, Lmgc;->a:Lmgf;

    invoke-direct {p0}, Laei;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Lagt;)V
    .locals 0

    invoke-super {p0, p1, p2}, Laei;->b(Landroid/view/View;Lagt;)V

    iget-object p1, p0, Lmgc;->a:Lmgf;

    iget-boolean p1, p1, Lmgf;->d:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x100000

    invoke-virtual {p2, p1}, Lagt;->e(I)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lagt;->m(Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lagt;->m(Z)V

    return-void
.end method

.method public final h(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lmgc;->a:Lmgf;

    iget-boolean v1, p2, Lmgf;->d:Z

    if-nez v1, :cond_0

    const/high16 p2, 0x100000

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lmgf;->cancel()V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Laei;->h(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
