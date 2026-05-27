.class final Lasv;
.super Lasg;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lasy;


# direct methods
.method public constructor <init>(Lasy;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lasv;->d:Lasy;

    iput-object p2, p0, Lasv;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lasv;->b:Landroid/view/View;

    iput-object p4, p0, Lasv;->c:Landroid/view/View;

    invoke-direct {p0}, Lasg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lasf;)V
    .locals 3

    iget-object v0, p0, Lasv;->c:Landroid/view/View;

    const v1, 0x7f0b02e9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lasv;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lasv;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Lasf;->y(Lase;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lasv;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lasv;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lasv;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lasv;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lasv;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lasv;->d:Lasy;

    invoke-virtual {v0}, Lasf;->l()V

    return-void
.end method
