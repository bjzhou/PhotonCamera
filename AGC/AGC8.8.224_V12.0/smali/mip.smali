.class final Lmip;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lmis;


# direct methods
.method public constructor <init>(Lmis;)V
    .locals 0

    iput-object p1, p0, Lmip;->a:Lmis;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lmip;->a:Lmis;

    invoke-virtual {p1}, Lmis;->a()V

    iget-object p1, p0, Lmip;->a:Lmis;

    iget-object v0, p1, Lmis;->i:Latc;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lmis;->j:Lmjc;

    invoke-virtual {v0, p1}, Latc;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
