.class final Lasc;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lwy;

.field final synthetic b:Lasf;


# direct methods
.method public constructor <init>(Lasf;Lwy;)V
    .locals 0

    iput-object p1, p0, Lasc;->b:Lasf;

    iput-object p2, p0, Lasc;->a:Lwy;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lasc;->a:Lwy;

    invoke-virtual {v0, p1}, Lxf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lasc;->b:Lasf;

    iget-object v0, v0, Lasf;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lasc;->b:Lasf;

    iget-object v0, v0, Lasf;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
