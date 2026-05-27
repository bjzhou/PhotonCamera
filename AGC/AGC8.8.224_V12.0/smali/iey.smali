.class final Liey;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lifr;

.field final synthetic b:Life;


# direct methods
.method public constructor <init>(Life;Lifr;)V
    .locals 0

    iput-object p1, p0, Liey;->b:Life;

    iput-object p2, p0, Liey;->a:Lifr;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Liey;->b:Life;

    iget-object p1, p1, Life;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setVideoButtonAnimating(Z)V

    iget-object p1, p0, Liey;->b:Life;

    iget-object p1, p1, Life;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->inFlightSpecBuilder:Lifq;

    iget-object v0, p0, Liey;->a:Lifr;

    iget-boolean v0, v0, Lifr;->p:Z

    invoke-virtual {p1, v0}, Lifq;->b(Z)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Liey;->b:Life;

    iget-object p1, p1, Life;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setVideoButtonAnimating(Z)V

    return-void
.end method
