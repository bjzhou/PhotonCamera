.class public final Ldwt;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

.field final synthetic b:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

.field final synthetic c:Ldwa;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;Ldwa;Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Ldwt;->a:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iput-object p2, p0, Ldwt;->b:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    iput-object p3, p0, Ldwt;->c:Ldwa;

    iput-object p4, p0, Ldwt;->d:Landroid/content/Context;

    iput-object p5, p0, Ldwt;->e:Landroid/content/res/Resources;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Ldwt;->a:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iget-object p1, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->d:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldwt;->b:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080204

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Ldwt;->b:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {v0, p1}, Liq;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Ldwt;->c:Ldwa;

    iget-object v0, p0, Ldwt;->d:Landroid/content/Context;

    const v1, 0x7f06095b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-interface {p1, v0}, Ldwa;->j(I)V

    :cond_0
    iget-object p1, p0, Ldwt;->b:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->e()V

    iget-object p1, p0, Ldwt;->b:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b()V

    iget-object p1, p0, Ldwt;->c:Ldwa;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ldwa;->o(I)V

    iget-object p1, p0, Ldwt;->e:Landroid/content/res/Resources;

    const v0, 0x7f0706a2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v0, p0, Ldwt;->c:Ldwa;

    invoke-interface {v0, p1}, Ldwa;->l(F)V

    iget-object p1, p0, Ldwt;->e:Landroid/content/res/Resources;

    const v0, 0x7f0706a4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v0, p0, Ldwt;->c:Ldwa;

    invoke-interface {v0, p1}, Ldwa;->n(F)V

    iget-object p1, p0, Ldwt;->e:Landroid/content/res/Resources;

    const v0, 0x7f07069d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v0, p0, Ldwt;->c:Ldwa;

    invoke-interface {v0, p1}, Ldwa;->k(F)V

    iget-object p1, p0, Ldwt;->c:Ldwa;

    iget-object v0, p0, Ldwt;->e:Landroid/content/res/Resources;

    const v1, 0x7f07069f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Ldwt;->e:Landroid/content/res/Resources;

    const v2, 0x7f0706a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-interface {p1, v0, v1}, Ldwa;->g(FF)V

    iget-object p1, p0, Ldwt;->c:Ldwa;

    iget-object v0, p0, Ldwt;->e:Landroid/content/res/Resources;

    const v1, 0x7f07069e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Ldwt;->e:Landroid/content/res/Resources;

    const v2, 0x7f0706a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-interface {p1, v0, v1}, Ldwa;->f(FF)V

    iget-object p1, p0, Ldwt;->c:Ldwa;

    iget-object v0, p0, Ldwt;->e:Landroid/content/res/Resources;

    const v1, 0x7f07069c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-interface {p1, v0}, Ldwa;->h(F)V

    iget-object p1, p0, Ldwt;->c:Ldwa;

    iget-object v0, p0, Ldwt;->d:Landroid/content/Context;

    const v1, 0x7f06095a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-interface {p1, v0}, Ldwa;->e(I)V

    return-void
.end method
