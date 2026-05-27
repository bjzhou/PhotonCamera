.class public final synthetic Liev;
.super Ljava/lang/Object;

# interfaces
.implements Liez;


# instance fields
.field public final synthetic a:Life;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Life;I)V
    .locals 0

    iput p2, p0, Liev;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liev;->a:Life;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Liev;->b:I

    const/16 v1, 0x258

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/16 v4, 0xc8

    const/16 v5, 0x15e

    const/16 v6, 0x12c

    const/16 v7, 0x190

    const/16 v8, 0x1f4

    const/16 v9, 0xfa

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    iget-object p1, v0, Life;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    iget-object p1, v0, Life;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v7}, Lifd;->d(I)V

    iget-object p1, v0, Life;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v7}, Lifd;->d(I)V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v8}, Lifd;->d(I)V

    iget-object p2, p2, Lifr;->l:Lmqp;

    invoke-virtual {p1, p2}, Lifd;->h(Lmqp;)V

    iget-object p1, v0, Life;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1}, Lifd;->e()V

    invoke-virtual {p1, v5}, Lifd;->d(I)V

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v7}, Lifd;->d(I)V

    iget-object p1, v0, Life;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v1}, Lifd;->d(I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v7}, Lifd;->d(I)V

    return-void

    :pswitch_3
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v3}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->g()V

    invoke-virtual {p1}, Lifd;->i()V

    iget-object p1, v0, Life;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v8}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->f()V

    return-void

    :pswitch_4
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    sget-object p2, Liem;->t:Liem;

    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->resetTo(Liem;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    iget-object p1, v0, Life;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    iget-object p1, v0, Life;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    return-void

    :pswitch_6
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v7}, Lifd;->d(I)V

    iget-object p1, v0, Life;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v7}, Lifd;->d(I)V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v8}, Lifd;->d(I)V

    iget-object p2, p2, Lifr;->l:Lmqp;

    invoke-virtual {p1, p2}, Lifd;->h(Lmqp;)V

    iget-object p1, v0, Life;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1}, Lifd;->e()V

    invoke-virtual {p1, v5}, Lifd;->d(I)V

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    return-void

    :pswitch_7
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v7}, Lifd;->d(I)V

    iget-object p1, v0, Life;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v1}, Lifd;->d(I)V

    return-void

    :pswitch_8
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    iget-object p1, v0, Life;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v8}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->i()V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v8}, Lifd;->d(I)V

    iget-object p2, p2, Lifr;->l:Lmqp;

    invoke-virtual {p1, p2}, Lifd;->h(Lmqp;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v7}, Lifd;->d(I)V

    iget-object p1, v0, Life;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1}, Lifd;->e()V

    invoke-virtual {p1, v5}, Lifd;->d(I)V

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    return-void

    :pswitch_a
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v8}, Lifd;->d(I)V

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v5}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->g()V

    invoke-virtual {p1}, Lifd;->i()V

    iget-object p1, v0, Life;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v8}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->f()V

    return-void

    :pswitch_b
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v7}, Lifd;->d(I)V

    iget-object p1, v0, Life;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1}, Lifd;->e()V

    invoke-virtual {p1, v5}, Lifd;->d(I)V

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    iget-object p1, v0, Life;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    const/16 p2, 0x96

    invoke-virtual {p1, p2}, Lifd;->d(I)V

    return-void

    :pswitch_c
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {p1, v2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->blockClickForAnimation(Z)V

    iget-object p1, v0, Life;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->e()V

    iget-object p1, v0, Life;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->e()V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    iget-object p2, p2, Lifr;->l:Lmqp;

    invoke-virtual {p1, p2}, Lifd;->c(Lmqp;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {p1, v2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->blockClickForAnimation(Z)V

    iget-object p1, v0, Life;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    return-void

    :pswitch_e
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v3}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->g()V

    invoke-virtual {p1}, Lifd;->i()V

    iget-object p1, v0, Life;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v8}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->f()V

    return-void

    :pswitch_f
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->e()V

    invoke-virtual {p1}, Lifd;->i()V

    iget-object p1, v0, Life;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->e()V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    iget-object p2, p2, Lifr;->l:Lmqp;

    invoke-virtual {p1, p2}, Lifd;->c(Lmqp;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v8}, Lifd;->d(I)V

    iget-object p1, v0, Life;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v4}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->i()V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    iget-object p2, p2, Lifr;->l:Lmqp;

    invoke-virtual {p1, p2}, Lifd;->c(Lmqp;)V

    return-void

    :pswitch_11
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v4}, Lifd;->d(I)V

    iget-object p1, v0, Life;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    iget-object p2, p2, Lifr;->l:Lmqp;

    invoke-virtual {p1, p2}, Lifd;->c(Lmqp;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->e()V

    invoke-virtual {p1}, Lifd;->i()V

    iget-object p1, v0, Life;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->e()V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    iget-object p2, p2, Lifr;->l:Lmqp;

    invoke-virtual {p1, p2}, Lifd;->c(Lmqp;)V

    return-void

    :pswitch_13
    iget-object v0, p0, Liev;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->e()V

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->e()V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v9}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->i()V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    new-instance p2, Licl;

    const/4 v1, 0x2

    invoke-direct {p2, v0, v1}, Licl;-><init>(Life;I)V

    invoke-static {p2}, Ljvd;->K(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1

    iget v0, p0, Liev;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_12
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_13
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
