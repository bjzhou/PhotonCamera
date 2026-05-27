.class final Ldop;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Ldoq;


# direct methods
.method public constructor <init>(Ldoq;)V
    .locals 0

    iput-object p1, p0, Ldop;->a:Ldoq;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ldop;->a:Ldoq;

    iget-object p1, p1, Ldoq;->d:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method
