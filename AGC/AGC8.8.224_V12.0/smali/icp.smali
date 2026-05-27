.class final Licp;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Licq;


# direct methods
.method public constructor <init>(Licq;)V
    .locals 0

    iput-object p1, p0, Licp;->a:Licq;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Licp;->a:Licq;

    iget-object p1, p1, Licq;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
