.class final Lmjh;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lmjk;


# direct methods
.method public constructor <init>(Lmjk;)V
    .locals 0

    iput-object p1, p0, Lmjh;->a:Lmjk;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, Lmjh;->a:Lmjk;

    iget v0, p1, Lmjk;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p1, Lmjk;->d:Lmim;

    iget-object v2, v2, Lmim;->c:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p1, Lmjk;->e:I

    iput-boolean v1, p1, Lmjk;->f:Z

    return-void
.end method
