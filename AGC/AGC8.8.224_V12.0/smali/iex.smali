.class public final synthetic Liex;
.super Ljava/lang/Object;

# interfaces
.implements Liez;


# instance fields
.field public final synthetic a:Life;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Life;I)V
    .locals 0

    iput p2, p0, Liex;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liex;->a:Life;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Liex;->b:I

    const/16 v1, 0x258

    const/16 v2, 0x190

    const/16 v3, 0x64

    const/16 v4, 0x15e

    const/16 v5, 0xfa

    const/16 v6, 0x1f4

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Liex;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    invoke-virtual {v0, p2}, Life;->e(Lifr;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Liex;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v5}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->e()V

    invoke-virtual {p1}, Lifd;->i()V

    iget-object p1, v0, Life;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v5}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->e()V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    iget-object p2, p2, Lifr;->l:Lmqp;

    invoke-virtual {p1, p2}, Lifd;->h(Lmqp;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Liex;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->blockClickForAnimation(Z)V

    iget-object p1, v0, Life;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v5}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->e()V

    iget-object p1, v0, Life;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v5}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->e()V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    iget-object p2, p2, Lifr;->l:Lmqp;

    invoke-virtual {p1, p2}, Lifd;->h(Lmqp;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Liex;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v2}, Lifd;->d(I)V

    iget-object p1, v0, Life;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1}, Lifd;->e()V

    invoke-virtual {p1, v4}, Lifd;->d(I)V

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v5}, Lifd;->d(I)V

    return-void

    :pswitch_3
    iget-object v0, p0, Liex;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v5}, Lifd;->d(I)V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    iget-object p2, p2, Lifr;->l:Lmqp;

    invoke-virtual {p1, p2}, Lifd;->h(Lmqp;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Liex;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v2}, Lifd;->d(I)V

    iget-object p1, v0, Life;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1}, Lifd;->e()V

    invoke-virtual {p1, v4}, Lifd;->d(I)V

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v5}, Lifd;->d(I)V

    iget-object p1, v0, Life;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v2}, Lifd;->d(I)V

    iget-object p1, v0, Life;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v1}, Lifd;->d(I)V

    iget-object p1, v0, Life;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    const/16 p2, 0x320

    invoke-virtual {p1, p2}, Lifd;->d(I)V

    return-void

    :pswitch_5
    iget-object v0, p0, Liex;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v5}, Lifd;->d(I)V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    iget-object p2, p2, Lifr;->l:Lmqp;

    invoke-virtual {p1, p2}, Lifd;->h(Lmqp;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Liex;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v5}, Lifd;->d(I)V

    iget-object p1, v0, Life;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->i()V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    iget-object p2, p2, Lifr;->l:Lmqp;

    invoke-virtual {p1, p2}, Lifd;->h(Lmqp;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Liex;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v5}, Lifd;->d(I)V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    iget-object p2, p2, Lifr;->l:Lmqp;

    invoke-virtual {p1, p2}, Lifd;->h(Lmqp;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Liex;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v3}, Lifd;->d(I)V

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v3}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->g()V

    invoke-virtual {p1}, Lifd;->i()V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v4}, Lifd;->d(I)V

    iget-object p2, p2, Lifr;->l:Lmqp;

    invoke-virtual {p1, p2}, Lifd;->h(Lmqp;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Liex;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v2}, Lifd;->d(I)V

    iget-object p1, v0, Life;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v1}, Lifd;->d(I)V

    return-void

    :pswitch_a
    iget-object v0, p0, Liex;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    invoke-virtual {v0}, Life;->j()V

    return-void

    :pswitch_b
    iget-object v0, p0, Liex;->a:Life;

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

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->f()V

    return-void

    :pswitch_c
    iget-object v0, p0, Liex;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v4}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->g()V

    invoke-virtual {p1}, Lifd;->i()V

    iget-object p1, v0, Life;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v6}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->f()V

    return-void

    :pswitch_d
    iget-object v0, p0, Liex;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v1}, Lifd;->d(I)V

    return-void

    :pswitch_e
    iget-object v0, p0, Liex;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v2}, Lifd;->d(I)V

    iget-object p1, v0, Life;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1}, Lifd;->e()V

    invoke-virtual {p1, v4}, Lifd;->d(I)V

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v5}, Lifd;->d(I)V

    iget-object p2, p2, Lifr;->l:Lmqp;

    invoke-virtual {p1, p2}, Lifd;->c(Lmqp;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Liex;->a:Life;

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    iget-object p1, v0, Life;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v3}, Lifd;->d(I)V

    iget-object p1, v0, Life;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v3}, Lifd;->d(I)V

    invoke-virtual {p1}, Lifd;->g()V

    invoke-virtual {p1}, Lifd;->i()V

    iget-object p1, v0, Life;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Life;->c(Landroid/animation/Animator;)Lifd;

    move-result-object p1

    invoke-virtual {p1, v4}, Lifd;->d(I)V

    iget-object p2, p2, Lifr;->l:Lmqp;

    invoke-virtual {p1, p2}, Lifd;->h(Lmqp;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

    iget v0, p0, Liex;->b:I

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

    :pswitch_data_0
    .packed-switch 0x0
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
