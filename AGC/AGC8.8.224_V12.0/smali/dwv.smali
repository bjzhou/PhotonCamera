.class public final Ldwv;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Ldwa;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Ldwa;Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Ldwv;->a:Ldwa;

    iput-object p2, p0, Ldwv;->b:Landroid/content/Context;

    iput-object p3, p0, Ldwv;->c:Landroid/content/res/Resources;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Ldwv;->a:Ldwa;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ldwa;->o(I)V

    iget-object p1, p0, Ldwv;->a:Ldwa;

    iget-object v0, p0, Ldwv;->b:Landroid/content/Context;

    const v1, 0x7f06095b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-interface {p1, v0}, Ldwa;->j(I)V

    iget-object p1, p0, Ldwv;->c:Landroid/content/res/Resources;

    const v0, 0x7f0706a2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v0, p0, Ldwv;->a:Ldwa;

    invoke-interface {v0, p1}, Ldwa;->l(F)V

    iget-object p1, p0, Ldwv;->c:Landroid/content/res/Resources;

    const v0, 0x7f0706a4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v0, p0, Ldwv;->a:Ldwa;

    invoke-interface {v0, p1}, Ldwa;->n(F)V

    iget-object p1, p0, Ldwv;->c:Landroid/content/res/Resources;

    const v0, 0x7f07069d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v0, p0, Ldwv;->a:Ldwa;

    invoke-interface {v0, p1}, Ldwa;->k(F)V

    iget-object p1, p0, Ldwv;->a:Ldwa;

    iget-object v0, p0, Ldwv;->c:Landroid/content/res/Resources;

    const v1, 0x7f07069f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Ldwv;->c:Landroid/content/res/Resources;

    const v2, 0x7f0706a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-interface {p1, v0, v1}, Ldwa;->g(FF)V

    iget-object p1, p0, Ldwv;->a:Ldwa;

    iget-object v0, p0, Ldwv;->c:Landroid/content/res/Resources;

    const v1, 0x7f07069e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Ldwv;->c:Landroid/content/res/Resources;

    const v2, 0x7f0706a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-interface {p1, v0, v1}, Ldwa;->f(FF)V

    iget-object p1, p0, Ldwv;->a:Ldwa;

    iget-object v0, p0, Ldwv;->c:Landroid/content/res/Resources;

    const v1, 0x7f07069c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-interface {p1, v0}, Ldwa;->h(F)V

    iget-object p1, p0, Ldwv;->a:Ldwa;

    iget-object v0, p0, Ldwv;->b:Landroid/content/Context;

    const v1, 0x7f06095a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-interface {p1, v0}, Ldwa;->e(I)V

    return-void
.end method
