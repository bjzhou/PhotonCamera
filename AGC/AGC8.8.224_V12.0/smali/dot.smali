.class public final Ldot;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/evcomp/EvCompView;I)V
    .locals 0

    iput p2, p0, Ldot;->b:I

    iput-object p1, p0, Ldot;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lczp;I)V
    .locals 0

    iput p2, p0, Ldot;->b:I

    iput-object p1, p0, Ldot;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Ldot;->b:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Ldot;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/evcomp/EvCompView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Ldot;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/evcomp/EvCompView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->setVisibility(I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Ldot;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Ldot;->a:Ljava/lang/Object;

    check-cast p1, Lczp;

    iget-object p1, p1, Lczp;->f:Liaj;

    invoke-virtual {p1}, Liad;->a()V

    iget-object p1, p0, Ldot;->a:Ljava/lang/Object;

    check-cast p1, Lczp;

    const/4 v0, 0x0

    iput-object v0, p1, Lczp;->o:Landroid/animation/ObjectAnimator;

    return-void

    :pswitch_0
    iget-object p1, p0, Ldot;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/evcomp/EvCompView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Ldot;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/evcomp/EvCompView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->setVisibility(I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Ldot;->b:I

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Ldot;->b:I

    return-void
.end method
