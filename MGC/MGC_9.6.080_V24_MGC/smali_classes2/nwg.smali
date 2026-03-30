.class final Lnwg;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lnwp;


# direct methods
.method public constructor <init>(Lnwp;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnwg;->a:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/view/ViewGroup;

    move-result-object p1

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

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lnwg;->a:Lnwp;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->C()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lnwg;->a:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p1, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
