.class final Lgvm;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lgvn;


# direct methods
.method public constructor <init>(Lgvn;)V
    .locals 0

    iput-object p1, p0, Lgvm;->a:Lgvn;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lgvm;->a:Lgvn;

    iget-object p1, p1, Lgvn;->b:Lgvs;

    invoke-virtual {p1}, Lgvl;->a()V

    return-void
.end method
