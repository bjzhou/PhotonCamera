.class public abstract Lcab;
.super Lbzt;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final a:Landroid/view/View;

.field public final b:Landroidx/wear/ambient/AmbientDelegate;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lbzt;-><init>()V

    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p1, p0, Lcab;->a:Landroid/view/View;

    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-direct {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcab;->b:Landroidx/wear/ambient/AmbientDelegate;

    return-void
.end method


# virtual methods
.method public final c()Lbzk;
    .locals 2

    iget-object v0, p0, Lcab;->a:Landroid/view/View;

    const v1, 0x7f0b0171

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lbzk;

    if-eqz v1, :cond_0

    check-cast v0, Lbzk;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d(Lbzy;)V
    .locals 8

    iget-object v6, p0, Lcab;->b:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v6}, Landroidx/wear/ambient/AmbientDelegate;->T()I

    move-result v0

    invoke-virtual {v6}, Landroidx/wear/ambient/AmbientDelegate;->S()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/wear/ambient/AmbientDelegate;->V(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0, v1}, Lbzy;->g(II)V

    return-void

    :cond_0
    iget-object v0, v6, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v6, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, v6, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-nez p1, :cond_2

    iget-object p1, v6, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v7, Lcaa;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcaa;-><init>(Landroidx/wear/ambient/AmbientDelegate;[B[B[B[B)V

    iput-object v7, v6, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget-object v0, v6, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    return-void
.end method

.method public final j(Lbzy;)V
    .locals 1

    iget-object v0, p0, Lcab;->b:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k(Lbzk;)V
    .locals 2

    iget-object v0, p0, Lcab;->a:Landroid/view/View;

    const v1, 0x7f0b0171

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcab;->a:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Target for: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
