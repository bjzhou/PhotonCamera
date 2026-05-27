.class final Lisb;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lisi;


# direct methods
.method public constructor <init>(Lisi;)V
    .locals 0

    iput-object p1, p0, Lisb;->a:Lisi;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lisb;->a:Lisi;

    iget-object v0, v0, Lisi;->C:Ljwb;

    sget-object v1, Lgdi;->a:Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lisb;->a:Lisi;

    iget-object v0, v0, Lisi;->af:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
