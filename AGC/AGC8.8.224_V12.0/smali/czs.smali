.class final Lczs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# instance fields
.field final synthetic a:Lczt;


# direct methods
.method public constructor <init>(Lczt;)V
    .locals 0

    iput-object p1, p0, Lczs;->a:Lczt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    iget-object p2, p0, Lczs;->a:Lczt;

    iget-object p2, p2, Lczt;->b:Lczu;

    iget-object p2, p2, Lczu;->e:Lczv;

    iget-object p2, p2, Lczv;->p:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    sget-object p3, Lika;->c:Lika;

    check-cast p2, Lczp;

    invoke-virtual {p2, p3}, Lczp;->i(Lika;)V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    return-void
.end method

.method public final startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lczs;->a:Lczt;

    iget-object p1, p1, Lczt;->b:Lczu;

    iget-object p1, p1, Lczu;->e:Lczv;

    iget-object p1, p1, Lczv;->p:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    sget-object p2, Lika;->c:Lika;

    check-cast p1, Lczp;

    invoke-virtual {p1, p2}, Lczp;->l(Lika;)Z

    :cond_0
    return-void
.end method
