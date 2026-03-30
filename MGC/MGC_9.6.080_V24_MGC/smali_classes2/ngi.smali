.class final Lngi;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lnhc;

.field final synthetic b:Lngn;


# direct methods
.method public constructor <init>(Lngn;Lnhc;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p2, p0, Lngi;->a:Lnhc;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lngi;->b:Lngn;

    nop

    nop

    nop

    goto/32 :goto_2

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

    :goto_0
    iget-object p0, p0, Lngi;->a:Lnhc;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lngi;->b:Lngn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean p0, p0, Lnhc;->q:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0}, Lnhb;->b(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p1, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->n:Z

    nop

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

    nop

    :goto_6
    iget-object p1, p1, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->j:Lnhb;

    nop

    nop

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

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p1, Lngn;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lngi;->b:Lngn;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lngn;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->n:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

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
.end method
