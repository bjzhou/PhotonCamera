.class public final synthetic Lhma;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lhls;I)V
    .locals 0

    iput p2, p0, Lhma;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhma;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhmb;I)V
    .locals 0

    iput p2, p0, Lhma;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhma;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhmm;I)V
    .locals 0

    iput p2, p0, Lhma;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhma;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhmp;I)V
    .locals 0

    iput p2, p0, Lhma;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhma;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhne;I)V
    .locals 0

    iput p2, p0, Lhma;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhma;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhny;I)V
    .locals 0

    iput p2, p0, Lhma;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhma;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhny;I[B)V
    .locals 0

    iput p2, p0, Lhma;->b:I

    iput-object p1, p0, Lhma;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lhof;I)V
    .locals 0

    iput p2, p0, Lhma;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhma;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhoj;I)V
    .locals 0

    iput p2, p0, Lhma;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhma;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhol;I)V
    .locals 0

    iput p2, p0, Lhma;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhma;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhos;I)V
    .locals 0

    iput p2, p0, Lhma;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhma;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhpg;I)V
    .locals 0

    iput p2, p0, Lhma;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhma;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljwb;I)V
    .locals 0

    iput p2, p0, Lhma;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhma;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lhma;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v0, v0, Lhos;->A:Lhny;

    invoke-virtual {v0, v5}, Lhny;->d(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lhou;->d()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhoj;

    iget-object v1, v0, Lhoj;->b:Lhol;

    iget-object v1, v1, Lhol;->ag:Lhor;

    invoke-static {v1}, Llkj;->C(Ljava/lang/Object;)V

    iget-object v1, v1, Lhor;->e:Lhos;

    iget-object v2, v1, Lhos;->p:Ljuh;

    new-instance v3, Lhon;

    const/16 v5, 0xb

    invoke-direct {v3, v1, v5}, Lhon;-><init>(Lhos;I)V

    invoke-virtual {v2, v3}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lhoj;->b:Lhol;

    iget-object v8, v1, Lhol;->t:Lhny;

    iget-object v1, v8, Lhny;->n:Lkli;

    invoke-interface {v1}, Lkli;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v8, Lhny;->e:Ldol;

    iget-object v2, v8, Lhny;->n:Lkli;

    invoke-interface {v2}, Lkli;->e()I

    move-result v2

    iget-object v3, v8, Lhny;->n:Lkli;

    invoke-interface {v3}, Lkli;->d()I

    move-result v3

    iget-object v5, v8, Lhny;->n:Lkli;

    invoke-interface {v5}, Lkli;->a()F

    move-result v5

    invoke-interface {v1, v2, v3, v5}, Ldol;->g(IIF)V

    :cond_0
    iget-object v1, v8, Lhny;->v:Ldqx;

    invoke-virtual {v1}, Ldqx;->f()V

    iget-object v1, v8, Lhny;->p:Ljuf;

    iget-object v7, v8, Lhny;->f:Lcbn;

    iget-object v9, v8, Lhny;->n:Lkli;

    iget-object v2, v8, Lhny;->t:Lftu;

    iget-object v10, v2, Lftu;->a:Ljvk;

    invoke-static {v4}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v11

    iget-object v2, v8, Lhny;->i:Lmqp;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual/range {v7 .. v14}, Lcbn;->a(Lcbi;Lkli;Ljvs;Ljvs;ZZI)Lcbm;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v0, v0, Lhoj;->b:Lhol;

    iget-object v0, v0, Lhol;->e:Ljvk;

    invoke-virtual {v0, v6}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhol;

    iget-object v1, v0, Lhol;->af:Ljwo;

    iget-object v4, v1, Ljwo;->d:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v6, v1, Ljwo;->e:Ljwn;

    sget-object v7, Ljwn;->a:Ljwn;

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const-string v7, "%s is expected but we get %s"

    sget-object v8, Ljwn;->a:Ljwn;

    iget-object v9, v1, Ljwo;->e:Ljwn;

    invoke-static {v6, v7, v8, v9}, Lmoz;->m(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v6, Ljwn;->b:Ljwn;

    iput-object v6, v1, Ljwo;->e:Ljwn;

    iget-object v6, v1, Ljwo;->a:Ljyc;

    iget-object v7, v1, Ljwo;->f:Ljxy;

    invoke-interface {v6, v7}, Ljyc;->j(Ljxy;)Lnou;

    move-result-object v6

    new-instance v7, Ljvv;

    invoke-direct {v7, v1, v2}, Ljvv;-><init>(Ljwo;I)V

    iget-object v1, v1, Ljwo;->b:Ljava/util/concurrent/Executor;

    invoke-static {v6, v7, v1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lhol;->d:Ldhi;

    sget-object v2, Ldil;->d:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lhol;->d()V

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lhol;->j:Lhno;

    iget-object v2, v1, Lhno;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, v1, Lhno;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, v1, Lhno;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, v1, Lhno;->i:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v2, v1, Lhno;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v2, v1, Lhno;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v2, v1, Lhno;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, v1, Lhno;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v2, v1, Lhno;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, v1, Lhno;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v2, v1, Lhno;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v2, v1, Lhno;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v2, v1, Lhno;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v2, v1, Lhno;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v2, v1, Lhno;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v2, v1, Lhno;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v2, Lmpx;->a:Lmpx;

    iput-object v2, v1, Lhno;->F:Lmqp;

    iget-object v1, v0, Lhol;->j:Lhno;

    iget-object v2, v0, Lhol;->af:Ljwo;

    iput-object v2, v1, Lhno;->J:Ljwo;

    :goto_1
    iget-object v0, v0, Lhol;->t:Lhny;

    iget-object v1, v0, Lhny;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, Lhny;->e:Ldol;

    invoke-interface {v1}, Ldol;->c()Ljvs;

    move-result-object v1

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lhny;->o:Lken;

    invoke-static {}, Lkfh;->a()Lkff;

    move-result-object v1

    invoke-virtual {v1, v5}, Lkff;->c(I)V

    invoke-virtual {v1, v5}, Lkff;->b(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lkff;->e(I)V

    invoke-virtual {v1}, Lkff;->a()Lkfh;

    move-result-object v1

    invoke-interface {v0, v1}, Lken;->k(Lkfh;)V

    return-void

    :cond_3
    iget-object v0, v0, Lhny;->o:Lken;

    invoke-interface {v0, v3}, Lken;->w(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_3
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhol;

    iget-object v2, v0, Lhol;->C:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgxz;

    iget-object v4, v0, Lhol;->y:Ldlj;

    iget-wide v5, v3, Lgxz;->b:J

    invoke-interface {v4, v5, v6, v1}, Ldlj;->h(JLjava/lang/Integer;)V

    goto :goto_2

    :cond_4
    return-void

    :pswitch_4
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->af:Ljwo;

    invoke-virtual {v0}, Ljwo;->a()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhof;

    iget-object v1, v0, Lhof;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Lhof;->o:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    iget-object v0, v0, Lhny;->r:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_5

    invoke-interface {v0, v5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_5
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    iget-object v0, v0, Lhny;->s:Lnph;

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :pswitch_7
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    iget-object v1, v0, Lhny;->j:Lccg;

    iget-object v0, v0, Lhny;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lccg;->b(Ljava/lang/Runnable;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    invoke-interface {v0, v6}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhne;

    iget-object v1, v0, Lhne;->c:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x3

    iput v1, v0, Lhne;->a:I

    return-void

    :pswitch_b
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhne;

    iget-object v1, v0, Lhne;->d:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iput v2, v0, Lhne;->a:I

    return-void

    :pswitch_c
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhmp;

    iput-boolean v5, v0, Lhmp;->d:Z

    return-void

    :pswitch_d
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhmp;

    iget-object v1, v0, Lhmp;->e:Ligo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ligo;->k()V

    iget-object v0, v0, Lhmp;->f:Ljew;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "taxi_entered_smarts_chip"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Ljew;->ab(Ljava/lang/String;I)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhmm;

    iget-object v1, v0, Lhmm;->k:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lhmm;->v:Z

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrd;

    sget-object v2, Lhrc;->b:Lhrc;

    invoke-interface {v1, v2}, Lhrd;->c(Lhrc;)V

    iput-boolean v3, v0, Lhmm;->v:Z

    :cond_6
    return-void

    :pswitch_f
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhmm;

    iget-object v0, v0, Lhmm;->n:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->A()V

    return-void

    :pswitch_10
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhmm;

    iget-object v0, v0, Lhmm;->n:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i()Likz;

    :cond_7
    return-void

    :pswitch_11
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhmb;

    iget-object v0, v0, Lhmb;->a:Ljvk;

    invoke-virtual {v0, v4}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhls;

    iput-boolean v5, v0, Lhls;->f:Z

    return-void

    :pswitch_13
    iget-object v0, p0, Lhma;->a:Ljava/lang/Object;

    check-cast v0, Lhmb;

    iget-object v0, v0, Lhmb;->a:Ljvk;

    invoke-virtual {v0, v6}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    nop

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
