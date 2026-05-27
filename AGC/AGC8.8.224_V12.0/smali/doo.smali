.class final Ldoo;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Ldoq;


# direct methods
.method public constructor <init>(Ldoq;)V
    .locals 0

    iput-object p1, p0, Ldoo;->a:Ldoq;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ldoo;->a:Ldoq;

    iget-object p1, p1, Ldoq;->d:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method
