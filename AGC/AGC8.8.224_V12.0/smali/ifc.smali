.class final Lifc;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lifd;


# direct methods
.method public constructor <init>(Lifd;)V
    .locals 0

    iput-object p1, p0, Lifc;->a:Lifd;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lifc;->a:Lifd;

    iget-object p1, p1, Lifd;->a:Life;

    iget-object p1, p1, Life;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->inFlightSpecBuilder:Lifq;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lifq;->b(Z)V

    return-void
.end method
