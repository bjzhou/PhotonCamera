.class public final Ldwp;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Ldwa;

.field final synthetic b:Landroid/content/res/Resources;

.field final synthetic c:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;


# direct methods
.method public constructor <init>(Ldwa;Landroid/content/res/Resources;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)V
    .locals 0

    iput-object p1, p0, Ldwp;->a:Ldwa;

    iput-object p2, p0, Ldwp;->b:Landroid/content/res/Resources;

    iput-object p3, p0, Ldwp;->c:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ldwp;->a:Ldwa;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ldwa;->o(I)V

    iget-object p1, p0, Ldwp;->a:Ldwa;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Ldwa;->j(I)V

    iget-object p1, p0, Ldwp;->b:Landroid/content/res/Resources;

    const v0, 0x7f070061

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v0, p0, Ldwp;->a:Ldwa;

    invoke-interface {v0, p1}, Ldwa;->n(F)V

    iget-object p1, p0, Ldwp;->b:Landroid/content/res/Resources;

    const v0, 0x7f070147

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Ldwp;->a:Ldwa;

    invoke-interface {v0, p1}, Ldwa;->k(F)V

    iget-object p1, p0, Ldwp;->a:Ldwa;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Ldwa;->g(FF)V

    iget-object p1, p0, Ldwp;->c:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->invalidate()V

    return-void
.end method
