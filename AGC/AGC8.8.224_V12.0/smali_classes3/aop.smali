.class final Laop;
.super Laei;


# instance fields
.field final synthetic a:Laoq;


# direct methods
.method public constructor <init>(Laoq;)V
    .locals 0

    iput-object p1, p0, Laop;->a:Laoq;

    invoke-direct {p0}, Laei;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Lagt;)V
    .locals 1

    iget-object v0, p0, Laop;->a:Laoq;

    iget-object v0, v0, Laoq;->e:Laei;

    invoke-virtual {v0, p1, p2}, Laei;->b(Landroid/view/View;Lagt;)V

    iget-object p2, p0, Laop;->a:Laoq;

    iget-object p2, p2, Laoq;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Laop;->a:Laoq;

    iget-object p2, p2, Laoq;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    instance-of v0, p2, Laoj;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Laoj;

    invoke-virtual {p2, p1}, Laoj;->j(I)Landroidx/preference/Preference;

    return-void
.end method

.method public final h(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Laop;->a:Laoq;

    iget-object v0, v0, Laoq;->e:Laei;

    invoke-virtual {v0, p1, p2, p3}, Laei;->h(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
