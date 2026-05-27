.class final Lmio;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lmis;


# direct methods
.method public constructor <init>(Lmis;)V
    .locals 0

    iput-object p1, p0, Lmio;->a:Lmis;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, Lmio;->a:Lmis;

    iget v0, p1, Lmis;->f:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p1, Lmis;->e:Lmim;

    iget-object v1, v1, Lmim;->c:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p1, Lmis;->f:I

    return-void
.end method
