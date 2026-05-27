.class public final Lije;
.super Ljava/lang/Object;

# interfaces
.implements Lijk;


# instance fields
.field private final A:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field private final B:Logd;

.field private final C:Ldns;

.field private final D:Lnou;

.field private final E:Ljuf;

.field private final F:Lhxh;

.field public final a:Loiw;

.field public final b:Ljuh;

.field public final c:Lmqp;

.field public final d:Lfey;

.field public final e:Ljwb;

.field public final f:Ldqj;

.field public final g:Ljvs;

.field public final h:Lgeh;

.field public final i:Ldbf;

.field public final j:Logd;

.field public final k:Ldhi;

.field public final l:Ljvs;

.field public final m:Ljvs;

.field public final n:Lebl;

.field public final o:Lhmb;

.field public final p:Lgzn;

.field public final q:Lgzm;

.field public final r:Ljwb;

.field public final s:Lhrq;

.field public final t:Lgzi;

.field public final u:Litm;

.field public final v:Ljwb;

.field public final w:Ljvs;

.field public final x:Lfbz;

.field public final y:Lcdi;

.field public final z:Ljvd;


# direct methods
.method public constructor <init>(Loiw;Lcdi;Ljuh;Ljwb;Ldqj;Ljvs;Lhxh;Lmqp;Lfey;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lgeh;Ldbf;Logd;Logd;Lebl;Ldhi;Ldns;Lgzn;Lgzm;Lhmb;Ljwb;Lhrq;Lgzi;Litm;Lnou;Ljwb;Ljvs;Lfbz;)V
    .locals 4

    move-object v0, p0

    move-object v1, p11

    move-object/from16 v2, p19

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lije;->a:Loiw;

    move-object v3, p2

    iput-object v3, v0, Lije;->y:Lcdi;

    invoke-virtual {p2}, Lcdi;->i()Ljuf;

    move-result-object v3

    iput-object v3, v0, Lije;->E:Ljuf;

    move-object v3, p3

    iput-object v3, v0, Lije;->b:Ljuh;

    move-object v3, p7

    iput-object v3, v0, Lije;->F:Lhxh;

    move-object v3, p8

    iput-object v3, v0, Lije;->c:Lmqp;

    move-object v3, p9

    iput-object v3, v0, Lije;->d:Lfey;

    move-object v3, p5

    iput-object v3, v0, Lije;->f:Ldqj;

    move-object v3, p6

    iput-object v3, v0, Lije;->g:Ljvs;

    move-object v3, p4

    iput-object v3, v0, Lije;->e:Ljwb;

    move-object v3, p10

    iput-object v3, v0, Lije;->A:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iput-object v1, v0, Lije;->h:Lgeh;

    move-object/from16 v3, p12

    iput-object v3, v0, Lije;->i:Ldbf;

    move-object/from16 v3, p13

    iput-object v3, v0, Lije;->j:Logd;

    move-object/from16 v3, p14

    iput-object v3, v0, Lije;->B:Logd;

    move-object/from16 v3, p16

    iput-object v3, v0, Lije;->k:Ldhi;

    move-object/from16 v3, p17

    iput-object v3, v0, Lije;->C:Ldns;

    sget-object v3, Lgzd;->s:Lgzu;

    invoke-interface {v2, v3}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v3

    iput-object v3, v0, Lije;->l:Ljvs;

    sget-object v3, Lgzd;->t:Lgzu;

    invoke-interface {v2, v3}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v3

    iput-object v3, v0, Lije;->m:Ljvs;

    move-object/from16 v3, p15

    iput-object v3, v0, Lije;->n:Lebl;

    move-object/from16 v3, p20

    iput-object v3, v0, Lije;->o:Lhmb;

    move-object/from16 v3, p18

    iput-object v3, v0, Lije;->p:Lgzn;

    iput-object v2, v0, Lije;->q:Lgzm;

    move-object/from16 v2, p21

    iput-object v2, v0, Lije;->r:Ljwb;

    move-object/from16 v2, p22

    iput-object v2, v0, Lije;->s:Lhrq;

    move-object/from16 v2, p23

    iput-object v2, v0, Lije;->t:Lgzi;

    move-object/from16 v2, p24

    iput-object v2, v0, Lije;->u:Litm;

    move-object/from16 v2, p25

    iput-object v2, v0, Lije;->D:Lnou;

    move-object/from16 v2, p26

    iput-object v2, v0, Lije;->v:Ljwb;

    move-object/from16 v2, p27

    iput-object v2, v0, Lije;->w:Ljvs;

    move-object/from16 v2, p28

    iput-object v2, v0, Lije;->x:Lfbz;

    new-instance v2, Lija;

    invoke-direct {v2, p11}, Lija;-><init>(Lgeh;)V

    iput-object v2, v0, Lije;->z:Ljvd;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    invoke-static {}, Ljuh;->d()Z

    move-result v0

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lije;->a:Loiw;

    check-cast v0, Lihj;

    invoke-virtual {v0}, Lihj;->a()Lihg;

    move-result-object v0

    iget-object v0, v0, Lihg;->h:Ljava/lang/Object;

    iget-object v1, p0, Lije;->a:Loiw;

    check-cast v1, Lihj;

    invoke-virtual {v1}, Lihj;->a()Lihg;

    move-result-object v1

    iget-object v1, v1, Lihg;->i:Ljava/lang/Object;

    iget-object v2, p0, Lije;->h:Lgeh;

    check-cast v1, Landroid/view/View;

    check-cast v0, Landroid/view/View;

    invoke-interface {v2, v0, v1}, Lgeh;->z(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lije;->h:Lgeh;

    new-instance v1, Lhqo;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lhqo;-><init>(Lije;I)V

    invoke-interface {v0, v1}, Lgeh;->g(Lgen;)V

    iget-object v0, p0, Lije;->i:Ldbf;

    invoke-virtual {v0}, Ldbf;->e()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lije;->h:Lgeh;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfuz;

    invoke-interface {v1, v0}, Lgeh;->J(Lfuz;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lije;->C:Ldns;

    new-instance v1, Ldnq;

    iget-object v5, p0, Lije;->i:Ldbf;

    invoke-virtual {v5}, Ldbf;->d()Lklv;

    move-result-object v5

    invoke-virtual {v5}, Lklv;->name()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " camera present"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lkbo;->b:Lkbo;

    new-array v7, v4, [Lklv;

    iget-object v8, p0, Lije;->i:Ldbf;

    invoke-virtual {v8}, Ldbf;->d()Lklv;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-direct {v1, v5, v6, v7}, Ldnq;-><init>(Ljava/lang/String;Lkbo;[Lklv;)V

    invoke-interface {v0, v1}, Ldns;->e(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lije;->h:Lgeh;

    new-instance v1, Lijd;

    invoke-direct {v1, p0}, Lijd;-><init>(Lije;)V

    invoke-interface {v0, v1}, Lgeh;->g(Lgen;)V

    iget-object v0, p0, Lije;->A:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    new-instance v1, Lijb;

    invoke-direct {v1, p0}, Lijb;-><init>(Lije;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->addListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    iget-object v0, p0, Lije;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lije;->E:Ljuf;

    iget-object v1, p0, Lije;->q:Lgzm;

    sget-object v5, Lgzd;->ax:Lgzs;

    invoke-interface {v1, v5}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v1

    new-instance v5, Liiz;

    invoke-direct {v5, p0, v2}, Liiz;-><init>(Lije;I)V

    iget-object v2, p0, Lije;->b:Ljuh;

    invoke-interface {v1, v5, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    :cond_1
    iget-object v0, p0, Lije;->F:Lhxh;

    new-instance v1, Licv;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Licv;-><init>(Lije;I)V

    new-instance v2, Licv;

    const/16 v5, 0x8

    invoke-direct {v2, p0, v5}, Licv;-><init>(Lije;I)V

    iget-object v5, v0, Lhxh;->a:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iput-object v1, v0, Lhxh;->b:Ljava/lang/Runnable;

    iput-object v2, v0, Lhxh;->c:Ljava/lang/Runnable;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lije;->k:Ldhi;

    sget-object v1, Ldgt;->a:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lije;->E:Ljuf;

    iget-object v1, p0, Lije;->e:Ljwb;

    new-instance v2, Liiz;

    invoke-direct {v2, p0, v4}, Liiz;-><init>(Lije;I)V

    iget-object v5, p0, Lije;->b:Ljuh;

    invoke-interface {v1, v2, v5}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lije;->E:Ljuf;

    iget-object v1, p0, Lije;->B:Logd;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liff;

    new-instance v2, Lijc;

    invoke-direct {v2, p0}, Lijc;-><init>(Lije;)V

    invoke-interface {v1, v2}, Liff;->e(Lifj;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    :cond_2
    iget-object v0, p0, Lije;->a:Loiw;

    check-cast v0, Lihj;

    invoke-virtual {v0}, Lihj;->a()Lihg;

    move-result-object v0

    iget-object v0, v0, Lihg;->c:Ljava/lang/Object;

    iget-object v1, p0, Lije;->h:Lgeh;

    check-cast v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->c(Likj;)V

    iget-object v0, p0, Lije;->a:Loiw;

    check-cast v0, Lihj;

    invoke-virtual {v0}, Lihj;->a()Lihg;

    move-result-object v0

    iget-object v0, v0, Lihg;->q:Ljava/lang/Object;

    check-cast v0, Ljew;

    const v1, 0x7f0b03d8

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lije;->h:Lgeh;

    new-instance v2, Lhqo;

    const/4 v4, 0x3

    invoke-direct {v2, v0, v4}, Lhqo;-><init>(Landroid/view/View;I)V

    invoke-interface {v1, v2}, Lgeh;->g(Lgen;)V

    iget-object v0, p0, Lije;->k:Ldhi;

    sget-object v1, Ldho;->cc:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lije;->k:Ldhi;

    sget-object v1, Ldho;->ce:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lije;->k:Ldhi;

    sget-object v1, Ldho;->O:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lije;->E:Ljuf;

    iget-object v1, p0, Lije;->q:Lgzm;

    sget-object v2, Lgzd;->al:Lgzs;

    invoke-interface {v1, v2}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v1

    new-instance v2, Liiz;

    invoke-direct {v2, p0, v3}, Liiz;-><init>(Lije;I)V

    iget-object v3, p0, Lije;->b:Ljuh;

    invoke-interface {v1, v2, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    :cond_3
    iget-object v0, p0, Lije;->D:Lnou;

    new-instance v1, Lgij;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lgij;-><init>(Lije;I)V

    iget-object v2, p0, Lije;->b:Ljuh;

    invoke-static {v0, v1, v2}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
