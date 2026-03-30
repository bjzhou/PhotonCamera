.class public final Lnjw;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnjw;->b:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p2, p0, Lnjw;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->setVisibility(I)V

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lnjw;->b:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    const/4 p1, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iget-boolean p1, p0, Lnjw;->a:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean p1, p0, Lnjw;->a:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_3
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->setVisibility(I)V

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lnjw;->b:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    iput p1, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->e:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->setVisibility(I)V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnjw;->b:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean p1, p0, Lnjw;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->e:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
