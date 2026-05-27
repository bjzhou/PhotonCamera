.class final Lnq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final a:Lgk;

.field final synthetic b:Lns;


# direct methods
.method public constructor <init>(Lns;)V
    .locals 2

    iput-object p1, p0, Lnq;->b:Lns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lgk;

    iget-object v1, p1, Lns;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Lns;->c:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, p1}, Lgk;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lnq;->a:Lgk;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lnq;->b:Lns;

    iget-object v0, p1, Lns;->d:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lns;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iget-object v1, p0, Lnq;->a:Lgk;

    invoke-interface {v0, p1, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
