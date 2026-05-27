.class public final Lhol;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final A:Ljvs;

.field public final B:Ljava/util/ArrayList;

.field public final C:Ljava/util/List;

.field public D:Ljava/util/concurrent/ScheduledFuture;

.field public E:Lgxz;

.field public F:Ljwj;

.field public G:Lkll;

.field public H:Lkll;

.field public I:Lkli;

.field public J:Ljws;

.field public K:Ljwu;

.field public L:Lfzj;

.field public M:Lklv;

.field public N:Lkef;

.field public O:Ljuf;

.field public P:Lgdk;

.field public Q:Lmqp;

.field public R:Lkfj;

.field public final S:Limq;

.field public T:Lctd;

.field public U:Lctd;

.field public V:Lkfj;

.field public W:Lhpu;

.field public X:Lhps;

.field public Y:Lhpw;

.field public Z:I

.field public aa:Lkee;

.field public ab:Lken;

.field public final ac:Lkha;

.field public ad:Lkgq;

.field public ae:Lkgq;

.field public af:Ljwo;

.field public ag:Lhor;

.field public final ah:Ldqx;

.field public final ai:Lfvx;

.field public final aj:Lkfg;

.field public final ak:Ljyx;

.field public final al:Ljyx;

.field public final am:Ldja;

.field public final an:Lcvm;

.field private ao:Lkef;

.field public final b:Lkoe;

.field public final c:Landroid/media/AudioManager;

.field public final d:Ldhi;

.field public final e:Ljvk;

.field public final f:Ljwm;

.field public final g:Ldbf;

.field public final h:Lklj;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Lhno;

.field public final k:Lfbk;

.field public final l:Ljuh;

.field public final m:Ljava/lang/Object;

.field public final n:Lgft;

.field public final o:Ljwb;

.field public final p:F

.field public final q:Ljvs;

.field public final r:Lccg;

.field public final s:Lcfp;

.field public final t:Lhny;

.field public final u:Lhof;

.field public final v:Lkbc;

.field public final w:Litm;

.field public final x:Z

.field public final y:Ldlj;

.field public final z:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/timelapse/TimelapseFrameServer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhol;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lkoe;Landroid/media/AudioManager;Ldhi;Lfvx;Ljwm;Ljyx;Ldbf;Lklj;Ljava/util/concurrent/Executor;Lhno;Lfbk;Ljuh;Lgft;Ljyx;Lkha;FLjvs;Lccg;Lcfp;Lhny;Lhof;Lkbc;Ldja;Lcvm;Ldqx;Litm;ZLdlj;Ljava/util/concurrent/ScheduledExecutorService;Limq;Ljwb;Ljvs;Lhpu;[B[B[B[B)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lhol;->m:Ljava/lang/Object;

    new-instance v1, Lhoh;

    invoke-direct {v1, p0}, Lhoh;-><init>(Lhol;)V

    iput-object v1, v0, Lhol;->aj:Lkfg;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lhol;->B:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lhol;->C:Ljava/util/List;

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, v0, Lhol;->Q:Lmqp;

    move-object v1, p1

    iput-object v1, v0, Lhol;->b:Lkoe;

    move-object v1, p2

    iput-object v1, v0, Lhol;->c:Landroid/media/AudioManager;

    move-object v1, p3

    iput-object v1, v0, Lhol;->d:Ldhi;

    move-object v1, p5

    iput-object v1, v0, Lhol;->f:Ljwm;

    move-object v1, p4

    iput-object v1, v0, Lhol;->ai:Lfvx;

    move-object v1, p6

    iput-object v1, v0, Lhol;->ak:Ljyx;

    move-object v1, p7

    iput-object v1, v0, Lhol;->g:Ldbf;

    move-object v1, p8

    iput-object v1, v0, Lhol;->h:Lklj;

    move/from16 v1, p16

    iput v1, v0, Lhol;->p:F

    move-object v1, p10

    iput-object v1, v0, Lhol;->j:Lhno;

    move/from16 v1, p27

    iput-boolean v1, v0, Lhol;->x:Z

    move-object v1, p11

    iput-object v1, v0, Lhol;->k:Lfbk;

    move-object v1, p12

    iput-object v1, v0, Lhol;->l:Ljuh;

    move-object/from16 v1, p13

    iput-object v1, v0, Lhol;->n:Lgft;

    move-object/from16 v1, p14

    iput-object v1, v0, Lhol;->al:Ljyx;

    move-object/from16 v1, p15

    iput-object v1, v0, Lhol;->ac:Lkha;

    new-instance v1, Ljvk;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lhol;->e:Ljvk;

    move-object/from16 v1, p18

    iput-object v1, v0, Lhol;->r:Lccg;

    move-object/from16 v1, p19

    iput-object v1, v0, Lhol;->s:Lcfp;

    move-object/from16 v1, p20

    iput-object v1, v0, Lhol;->t:Lhny;

    move-object v1, p9

    iput-object v1, v0, Lhol;->i:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p21

    iput-object v1, v0, Lhol;->u:Lhof;

    move-object/from16 v1, p22

    iput-object v1, v0, Lhol;->v:Lkbc;

    move-object/from16 v1, p23

    iput-object v1, v0, Lhol;->am:Ldja;

    move-object/from16 v1, p24

    iput-object v1, v0, Lhol;->an:Lcvm;

    move-object/from16 v1, p25

    iput-object v1, v0, Lhol;->ah:Ldqx;

    move-object/from16 v1, p17

    iput-object v1, v0, Lhol;->q:Ljvs;

    move-object/from16 v1, p26

    iput-object v1, v0, Lhol;->w:Litm;

    move-object/from16 v1, p28

    iput-object v1, v0, Lhol;->y:Ldlj;

    move-object/from16 v1, p29

    iput-object v1, v0, Lhol;->z:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v1, p30

    iput-object v1, v0, Lhol;->S:Limq;

    move-object/from16 v1, p31

    iput-object v1, v0, Lhol;->o:Ljwb;

    move-object/from16 v1, p32

    iput-object v1, v0, Lhol;->A:Ljvs;

    move-object/from16 v1, p33

    iput-object v1, v0, Lhol;->W:Lhpu;

    sget-object v1, Ljws;->c:Ljws;

    iput-object v1, v0, Lhol;->J:Ljws;

    sget-object v1, Ljwu;->i:Ljwu;

    iput-object v1, v0, Lhol;->K:Ljwu;

    return-void
.end method


# virtual methods
.method public final a(Lkab;Limq;Lklv;Ldhi;)I
    .locals 2

    sget-object v0, Ldho;->bU:Ldhj;

    invoke-interface {p4, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhol;->o:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lhol;->Z:I

    :goto_0
    iget p1, p1, Lkab;->e:I

    sget-object v1, Lklv;->a:Lklv;

    invoke-virtual {p3, v1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result p3

    invoke-static {v0, p1, p2, p3, p4}, Lcea;->a(IILimq;ZLdhi;)I

    move-result p1

    return p1
.end method

.method final b(Ljwu;)Lkaf;
    .locals 3

    iget-object v0, p0, Lhol;->A:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljwu;->b()Lkaf;

    move-result-object p1

    invoke-static {p1}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object p1

    sget-object v0, Ljzr;->c:Ljzr;

    invoke-virtual {p1, v0}, Ljzr;->m(Ljzr;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljwu;->h:Ljwu;

    invoke-virtual {p1}, Ljwu;->b()Lkaf;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Ljwu;->g:Ljwu;

    invoke-virtual {p1}, Ljwu;->b()Lkaf;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object v0, Lhmu;->a:Lhmu;

    sget-object v0, Ljwu;->a:Ljwu;

    invoke-virtual {p1}, Ljwu;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object p1, Ljwu;->i:Ljwu;

    invoke-virtual {p1}, Ljwu;->b()Lkaf;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    sget-object p1, Ljwu;->l:Ljwu;

    invoke-virtual {p1}, Ljwu;->b()Lkaf;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    sget-object p1, Ljwu;->j:Ljwu;

    invoke-virtual {p1}, Ljwu;->b()Lkaf;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    sget-object p1, Ljwu;->h:Ljwu;

    invoke-virtual {p1}, Ljwu;->b()Lkaf;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    sget-object p1, Ljwu;->g:Ljwu;

    invoke-virtual {p1}, Ljwu;->b()Lkaf;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lhol;->I:Lkli;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lkli;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Unable to find suitable viewfinder size %s from supported list: %s"

    invoke-static {v1, v2, p1, v0}, Lmoz;->m(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lgxy;->a()Lgxy;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lgya;->n:Lgya;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Ldlg;->a(Lgya;J)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lgya;->n:Lgya;

    invoke-static {v0, v1, v2, v3, v4}, Lgxz;->a(Lgxy;JLjava/lang/String;Lgya;)Lgxz;

    move-result-object v0

    iput-object v0, p0, Lhol;->E:Lgxz;

    iget-object v1, p0, Lhol;->C:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lhol;->y:Ldlj;

    iget-object v1, p0, Lhol;->E:Lgxz;

    invoke-interface {v0, v1}, Ldlj;->j(Lgxz;)V

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lhol;->ab:Lken;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lhol;->ae:Lkgq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lhol;->m:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v0, v1, v3}, Lken;->r(Lkgq;I)Lkef;

    move-result-object v0

    iput-object v0, p0, Lhol;->ao:Lkef;

    iget-object v0, p0, Lhol;->O:Ljuf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lhol;->ao:Lkef;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Ldsp;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Ldsp;-><init>(Lhol;I)V

    iget-object v1, p0, Lhol;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lhol;->ao:Lkef;

    invoke-static {v2}, Llkj;->C(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Lkef;->k(Lkee;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method final e()V
    .locals 2

    iget-object v0, p0, Lhol;->e:Ljvk;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhol;->O:Ljuf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljuf;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhol;->O:Ljuf;

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lhol;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lhol;->ao:Lkef;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkef;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lhol;->ao:Lkef;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhol;->ab:Lken;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lken;->g()V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lhol;->t:Lhny;

    iget-object v1, v0, Lhny;->n:Lkli;

    invoke-interface {v1}, Lkli;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lhny;->e:Ldol;

    invoke-interface {v1}, Ldol;->d()V

    :cond_0
    iget-object v1, v0, Lhny;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, Lhny;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, Lhny;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Lhny;->v:Ldqx;

    invoke-virtual {v0}, Ldqx;->f()V

    iget-object v0, p0, Lhol;->w:Litm;

    sget-object v1, Lmpx;->a:Lmpx;

    invoke-interface {v0, v1, v2}, Litm;->O(Lmqp;Z)V

    iget-object v0, p0, Lhol;->Q:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhol;->Q:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_1
    invoke-virtual {p0}, Lhol;->e()V

    iget-object v0, p0, Lhol;->T:Lctd;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lctd;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhol;->T:Lctd;

    :cond_2
    iget-object v0, p0, Lhol;->d:Ldhi;

    sget-object v1, Ldil;->d:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lhol;->j:Lhno;

    invoke-virtual {v0}, Lhno;->e()V

    :cond_3
    return-void
.end method
