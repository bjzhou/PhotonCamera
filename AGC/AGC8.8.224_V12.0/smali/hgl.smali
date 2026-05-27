.class final Lhgl;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Laip;

.field final synthetic b:Lhgm;

.field private c:Z


# direct methods
.method public constructor <init>(Lhgm;Laip;)V
    .locals 0

    iput-object p1, p0, Lhgl;->b:Lhgm;

    iput-object p2, p0, Lhgl;->a:Laip;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhgl;->c:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lhgl;->c:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-boolean p1, p0, Lhgl;->c:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lhgl;->b:Lhgm;

    iget-object v0, p0, Lhgl;->a:Laip;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lhgm;->f(Z)V

    new-instance v1, Laiw;

    invoke-direct {v1}, Laiw;-><init>()V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Laiw;->c(F)V

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v1, v2}, Laiw;->e(F)V

    const v2, 0x7f070674

    invoke-virtual {p1, v2}, Lhgm;->a(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Laiw;->d(F)V

    new-instance v2, Laiv;

    sget-object v3, Lais;->a:Lair;

    invoke-direct {v2, p1, v3}, Laiv;-><init>(Ljava/lang/Object;Laiu;)V

    iput-object v1, v2, Laiv;->q:Laiw;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lais;->i(F)V

    invoke-virtual {v2, v0}, Lais;->f(Laip;)V

    new-instance v0, Libp;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Libp;-><init>(Lhgm;I)V

    invoke-virtual {v2, v0}, Lais;->f(Laip;)V

    invoke-virtual {v2}, Lais;->d()V

    :cond_0
    return-void
.end method
