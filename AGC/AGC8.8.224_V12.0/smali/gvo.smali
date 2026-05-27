.class final Lgvo;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lgvp;


# direct methods
.method public constructor <init>(Lgvp;)V
    .locals 0

    iput-object p1, p0, Lgvo;->a:Lgvp;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lgvo;->a:Lgvp;

    iget-object p1, p1, Lgvp;->b:Lgvs;

    invoke-virtual {p1}, Lgvl;->a()V

    return-void
.end method
