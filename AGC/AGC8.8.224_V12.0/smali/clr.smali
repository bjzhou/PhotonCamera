.class public final synthetic Lclr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcls;I)V
    .locals 0

    iput p2, p0, Lclr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lclt;I)V
    .locals 0

    iput p2, p0, Lclr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcly;I)V
    .locals 0

    iput p2, p0, Lclr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcmd;I)V
    .locals 0

    iput p2, p0, Lclr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcny;I)V
    .locals 0

    iput p2, p0, Lclr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcof;I)V
    .locals 0

    iput p2, p0, Lclr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcow;I)V
    .locals 0

    iput p2, p0, Lclr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcox;I)V
    .locals 0

    iput p2, p0, Lclr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcpk;I)V
    .locals 0

    iput p2, p0, Lclr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcpu;I)V
    .locals 0

    iput p2, p0, Lclr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcpw;I)V
    .locals 0

    iput p2, p0, Lclr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclr;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcqa;I)V
    .locals 0

    iput p2, p0, Lclr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclr;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lclr;->b:I

    const v1, 0x7f0c000f

    const v2, 0x7f0c0010

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v5, 0x7f0c000d

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    check-cast v0, Lcqa;

    iget-object v0, v0, Lcqa;->y:Lcyq;

    invoke-interface {v0}, Lcyq;->d()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    check-cast v0, Lcqa;

    iget-object v0, v0, Lcqa;->y:Lcyq;

    invoke-interface {v0}, Lcyq;->i()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    check-cast v0, Lcpw;

    iget-object v0, v0, Lcpw;->a:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->a()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    check-cast v0, Lcpu;

    iget-object v1, v0, Lcpu;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgxz;

    iget-object v3, v0, Lcpu;->y:Ldlj;

    iget-wide v4, v2, Lgxz;->b:J

    const/4 v2, 0x0

    invoke-interface {v3, v4, v5, v2}, Ldlj;->h(JLjava/lang/Integer;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_3
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcpu;

    iget-object v1, v1, Lcpu;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    move-object v2, v0

    check-cast v2, Lcpu;

    iget-object v2, v2, Lcpu;->F:Lcpt;

    sget-object v3, Lcpt;->b:Lcpt;

    if-ne v2, v3, :cond_2

    move-object v2, v0

    check-cast v2, Lcpu;

    iget-object v2, v2, Lcpu;->G:Lcui;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcui;->a:Ljyc;

    invoke-interface {v2}, Ljyc;->h()Lnou;

    move-object v2, v0

    check-cast v2, Lcpu;

    iget-object v2, v2, Lcpu;->q:Lctu;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, v2, Lctu;->b:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmym;

    iget-object v6, v2, Lctu;->b:Ljava/util/Deque;

    invoke-virtual {v5}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v7, v9}, Lmym;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmym;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-wide v6, v2, Lctu;->a:J

    invoke-virtual {v5}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v3, v9

    add-long/2addr v6, v3

    iput-wide v6, v2, Lctu;->a:J

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object v2, v0

    check-cast v2, Lcpu;

    iget-object v2, v2, Lcpu;->g:Lcty;

    invoke-virtual {v2}, Lcty;->d()V

    move-object v2, v0

    check-cast v2, Lcpu;

    iget-object v2, v2, Lcpu;->l:Lcsc;

    iget-boolean v2, v2, Lcsc;->B:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcpu;

    iget-object v2, v2, Lcpu;->w:Lczf;

    invoke-virtual {v2, v8}, Lczf;->c(Z)V

    :cond_1
    sget-object v2, Lcpt;->c:Lcpt;

    check-cast v0, Lcpu;

    invoke-virtual {v0, v2}, Lcpu;->j(Lcpt;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :pswitch_4
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    check-cast v0, Lcpk;

    invoke-virtual {v0}, Lcpk;->b()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    check-cast v0, Lcpk;

    iget-object v0, v0, Lcpk;->d:Lcqa;

    invoke-virtual {v0, v7}, Lcqa;->j(Z)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    check-cast v0, Lcqa;

    iget-object v0, v0, Lcqa;->f:Lcsg;

    iget-object v1, v0, Lcsg;->c:Ljuh;

    new-instance v2, Lcqf;

    const/16 v3, 0xf

    invoke-direct {v2, v0, v3}, Lcqf;-><init>(Lcsg;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    check-cast v0, Lcpk;

    invoke-virtual {v0}, Lcpk;->b()V

    iget-object v0, v0, Lcpk;->d:Lcqa;

    invoke-virtual {v0, v8}, Lcqa;->j(Z)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    check-cast v0, Lcow;

    iget-object v0, v0, Lcow;->c:Lcox;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcox;->q(I)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    check-cast v0, Lcow;

    iget-object v1, v0, Lcow;->c:Lcox;

    iget-object v1, v1, Lcox;->c:Ldbf;

    invoke-virtual {v1}, Ldbf;->d()Lklv;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldbf;->f(Lklv;)V

    iget-object v1, v0, Lcow;->c:Lcox;

    iget-object v1, v1, Lcox;->c:Ldbf;

    new-instance v2, Lclr;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v3}, Lclr;-><init>(Lcow;I)V

    invoke-virtual {v1, v2}, Ldbf;->h(Ljava/lang/Runnable;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    check-cast v0, Lcow;

    iget-object v0, v0, Lcow;->c:Lcox;

    invoke-virtual {v0, v7}, Lcox;->g(Z)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    check-cast v0, Lcox;

    invoke-virtual {v0, v6}, Lcox;->q(I)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcof;

    iget-object v1, v1, Lcof;->i:Lezx;

    invoke-virtual {v1, v0}, Lfak;->e(Lfaz;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcny;

    iget-object v1, v1, Lcny;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    move-object v2, v0

    check-cast v2, Lcny;

    iget-boolean v2, v2, Lcny;->l:Z

    if-eqz v2, :cond_3

    monitor-exit v1

    return-void

    :cond_3
    move-object v2, v0

    check-cast v2, Lcny;

    iput-boolean v8, v2, Lcny;->l:Z

    move-object v2, v0

    check-cast v2, Lcny;

    invoke-virtual {v2}, Lcny;->a()V

    move-object v2, v0

    check-cast v2, Lcny;

    iget-object v2, v2, Lcny;->j:Lldf;

    invoke-virtual {v2}, Lldf;->close()V

    check-cast v0, Lcny;

    iget-object v0, v0, Lcny;->h:Llbd;

    invoke-interface {v0}, Llbd;->close()V

    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :pswitch_e
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcmd;

    iget-object v1, v1, Lcmd;->f:Lezx;

    invoke-virtual {v1, v0}, Lfak;->e(Lfaz;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    :try_start_6
    move-object v1, v0

    check-cast v1, Lcly;

    invoke-virtual {v1}, Lcly;->a()V

    move-object v1, v0

    check-cast v1, Lcly;

    iget-object v1, v1, Lcly;->h:Lnph;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :catch_0
    move-exception v1

    check-cast v0, Lcly;

    iget-object v0, v0, Lcly;->h:Lnph;

    invoke-virtual {v0, v1}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void

    :pswitch_10
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    check-cast v0, Lclt;

    invoke-virtual {v0, v4}, Lclt;->setAlpha(F)V

    invoke-virtual {v0, v7}, Lclt;->setVisibility(I)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    check-cast v0, Lclt;

    invoke-virtual {v0, v3}, Lclt;->setVisibility(I)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    check-cast v0, Lcls;

    iget-object v6, v0, Lcls;->b:Lclt;

    invoke-virtual {v6}, Lclt;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6}, Lclt;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v8, Lclr;

    const/4 v9, 0x2

    invoke-direct {v8, v6, v9}, Lclr;-><init>(Lclt;I)V

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, v0, Lcls;->c:Lclq;

    invoke-virtual {v0}, Lclq;->getVisibility()I

    move-result v4

    if-ne v4, v3, :cond_4

    return-void

    :cond_4
    iget-object v3, v0, Lclq;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v3

    iget-object v4, v0, Lclq;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object v4, v0, Lclq;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v4

    iget-object v5, v0, Lclq;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object v5, v0, Lclq;->g:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_5

    invoke-static {v5}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    :cond_5
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v6, v0, Lclq;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lclq;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lclq;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lclp;

    invoke-direct {v1, v0}, Lclp;-><init>(Lclq;)V

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    iput-object v5, v0, Lclq;->g:Landroid/animation/AnimatorSet;

    return-void

    :pswitch_13
    iget-object v0, p0, Lclr;->a:Ljava/lang/Object;

    check-cast v0, Lcls;

    iget-object v3, v0, Lcls;->b:Lclt;

    invoke-virtual {v3}, Lclt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Lclt;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v8, Lclr;

    invoke-direct {v8, v3, v6}, Lclr;-><init>(Lclt;I)V

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, v0, Lcls;->c:Lclq;

    iget-object v3, v0, Lclq;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v3

    iget-object v4, v0, Lclq;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object v4, v0, Lclq;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v4

    iget-object v5, v0, Lclq;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object v5, v0, Lclq;->g:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_6

    invoke-static {v5}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    :cond_6
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lclq;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lclq;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lclo;

    invoke-direct {v1, v0}, Lclo;-><init>(Lclq;)V

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lclq;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    iput-object v5, v0, Lclq;->g:Landroid/animation/AnimatorSet;

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
