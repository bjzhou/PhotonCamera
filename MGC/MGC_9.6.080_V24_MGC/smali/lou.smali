.class public final Llou;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Llou;->b:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Llou;->a:Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
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

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Llou;->b:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    goto/32 :goto_f

    nop

    nop

    :goto_0
    iget-object p0, p0, Llou;->a:Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p1, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->b:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p1, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    iget-object p1, p0, Llou;->a:Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p1, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->d:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->c:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    iget-object p1, p1, Lcom/google/android/apps/camera/pro/feature/lens/LensFeatureControlsView;->a:Loyn;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean p1, p0, Llou;->b:Z

    nop

    goto/32 :goto_9

    nop

    nop
.end method
