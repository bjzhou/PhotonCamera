.class public final Lfoj;
.super Lchk;

# interfaces
.implements Lcqs;
.implements Lhrx;


# static fields
.field public static final b:Lnak;


# instance fields
.field private final A:Lfmf;

.field private final B:Lidu;

.field private final C:Lhrz;

.field private final D:Ldja;

.field private final E:Lva;

.field public final c:Lcwh;

.field public final d:Ljuh;

.field public final e:Lcxb;

.field public final f:Lcwc;

.field public final g:Lcwe;

.field public final h:Ldbf;

.field public final i:Ldhi;

.field public final j:Lcox;

.field public final k:Ljava/lang/Object;

.field public final l:Lcqa;

.field public final m:Lczm;

.field public final n:Ldqx;

.field public final o:Ljew;

.field private final p:Lcgy;

.field private final q:Ljava/lang/String;

.field private final r:Loiw;

.field private final s:Lcqx;

.field private final t:Lmvv;

.field private final u:Lcvz;

.field private v:Ljuf;

.field private final w:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

.field private final x:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field private final y:Lgzw;

.field private final z:Lczk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/modules/video/VideoModule"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfoj;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Lcgy;Ljuh;Landroid/content/res/Resources;Lcqa;Ldja;Lgzw;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lcwh;Lcwc;Lcwe;Lcvz;Ldqx;Lcox;Lcqx;Lcxb;Loiw;Ldbf;Ldhi;Ljava/util/Set;Lczk;Lhrz;Ljew;Lczm;Lfmf;Lva;[B[B[B[B[B)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lchk;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lfoj;->k:Ljava/lang/Object;

    new-instance v1, Lidp;

    invoke-direct {v1}, Lidp;-><init>()V

    iput-object v1, v0, Lfoj;->B:Lidu;

    move-object/from16 v1, p18

    iput-object v1, v0, Lfoj;->i:Ldhi;

    move-object v1, p9

    iput-object v1, v0, Lfoj;->f:Lcwc;

    move-object v1, p10

    iput-object v1, v0, Lfoj;->g:Lcwe;

    move-object v1, p11

    iput-object v1, v0, Lfoj;->u:Lcvz;

    move-object/from16 v1, p17

    iput-object v1, v0, Lfoj;->h:Ldbf;

    move-object v1, p1

    iput-object v1, v0, Lfoj;->p:Lcgy;

    move-object v1, p2

    iput-object v1, v0, Lfoj;->d:Ljuh;

    move-object v1, p8

    iput-object v1, v0, Lfoj;->c:Lcwh;

    const v1, 0x7f140584

    move-object v2, p3

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfoj;->q:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lfoj;->D:Ldja;

    move-object/from16 v1, p13

    iput-object v1, v0, Lfoj;->j:Lcox;

    move-object/from16 v1, p16

    iput-object v1, v0, Lfoj;->r:Loiw;

    move-object v1, p7

    iput-object v1, v0, Lfoj;->x:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    move-object v1, p4

    iput-object v1, v0, Lfoj;->l:Lcqa;

    move-object v1, p6

    iput-object v1, v0, Lfoj;->y:Lgzw;

    move-object v1, p12

    iput-object v1, v0, Lfoj;->n:Ldqx;

    move-object/from16 v1, p14

    iput-object v1, v0, Lfoj;->s:Lcqx;

    move-object/from16 v1, p15

    iput-object v1, v0, Lfoj;->e:Lcxb;

    invoke-static/range {p19 .. p19}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lfjd;->c:Lfjd;

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lmtf;->a:Lj$/util/stream/Collector;

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmvv;

    iput-object v1, v0, Lfoj;->t:Lmvv;

    move-object/from16 v1, p20

    iput-object v1, v0, Lfoj;->z:Lczk;

    move-object/from16 v1, p21

    iput-object v1, v0, Lfoj;->C:Lhrz;

    new-instance v1, Lfoh;

    invoke-direct {v1, p0}, Lfoh;-><init>(Lfoj;)V

    iput-object v1, v0, Lfoj;->w:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    move-object/from16 v1, p22

    iput-object v1, v0, Lfoj;->o:Ljew;

    move-object/from16 v1, p23

    iput-object v1, v0, Lfoj;->m:Lczm;

    move-object/from16 v1, p24

    iput-object v1, v0, Lfoj;->A:Lfmf;

    move-object/from16 v1, p25

    iput-object v1, v0, Lfoj;->E:Lva;

    return-void
.end method

.method private final z(Lcwg;)Lkai;
    .locals 1

    new-instance v0, Lfog;

    invoke-direct {v0, p0, p1}, Lfog;-><init>(Lfoj;Lcwg;)V

    return-object v0
.end method


# virtual methods
.method public final bZ()V
    .locals 2

    iget-object v0, p0, Lfoj;->l:Lcqa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcqa;->j(Z)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfoj;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final ca(I)V
    .locals 2

    iget-object v0, p0, Lfoj;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoj;->j:Lcox;

    invoke-virtual {v1, p1}, Lcox;->f(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final cb(Z)V
    .locals 2

    iget-object v0, p0, Lfoj;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoj;->j:Lcox;

    invoke-virtual {v1, p1}, Lcox;->j(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final cc()V
    .locals 4

    iget-object v0, p0, Lfoj;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoj;->l:Lcqa;

    iget-object v2, p0, Lfoj;->p:Lcgy;

    invoke-interface {v2}, Lcgy;->g()Lcha;

    move-result-object v2

    sget-object v3, Lika;->c:Lika;

    invoke-virtual {v1, v2, v3}, Lcqa;->c(Lcha;Lika;)V

    iget-object v1, p0, Lfoj;->j:Lcox;

    invoke-virtual {v1}, Lcox;->d()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final cd()V
    .locals 2

    iget-object v0, p0, Lfoj;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoj;->l:Lcqa;

    invoke-virtual {v1}, Lcqa;->e()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lfoj;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoj;->j:Lcox;

    invoke-virtual {v1}, Lcox;->m()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lfoj;->e:Lcxb;

    iget-object v1, v0, Lcxb;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldal;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ldal;->s(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    :cond_0
    iget-object v0, v0, Lcxb;->d:Lcxh;

    invoke-virtual {v0}, Lcxc;->g()V

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lfoj;->e:Lcxb;

    iget-object v1, v0, Lcxb;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldal;

    iget-object v2, v0, Lcxb;->c:Ldbf;

    invoke-virtual {v2}, Ldbf;->d()Lklv;

    move-result-object v2

    sget-object v3, Lklv;->a:Lklv;

    invoke-virtual {v2, v3}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Ldak;->c:Ldak;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcxb;->h:Ldja;

    invoke-virtual {v2}, Ldja;->o()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Lcxb;->c(Z)V

    sget-object v2, Ldak;->b:Ldak;

    goto :goto_0

    :cond_1
    sget-object v2, Ldak;->a:Ldak;

    :goto_0
    invoke-interface {v1, v2}, Ldal;->i(Ldak;)V

    iget-boolean v2, v2, Ldak;->d:Z

    if-eqz v2, :cond_2

    new-instance v2, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v2, v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lcxb;)V

    invoke-interface {v1, v2}, Ldal;->s(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    :cond_2
    iget-object v1, v0, Lcxb;->d:Lcxh;

    invoke-virtual {v1}, Lcxc;->f()V

    iget-object v1, v0, Lcxb;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, Lcxb;->e:Ldhi;

    sget-object v2, Ldgu;->i:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcxb;->e:Ldhi;

    sget-object v2, Ldgu;->i:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    sget-object v1, Lcwx;->c:Lcwx;

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    sget-object v1, Lcwx;->d:Lcwx;

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    sget-object v1, Lcwx;->e:Lcwx;

    goto :goto_1

    :cond_5
    sget-object v1, Lcwx;->b:Lcwx;

    :goto_1
    invoke-virtual {v0, v1, v3}, Lcxb;->d(Lcwx;Z)V

    return-void

    :cond_6
    return-void
.end method

.method public final i(Z)V
    .locals 1

    iget-object v0, p0, Lfoj;->j:Lcox;

    invoke-virtual {v0, p1}, Lcox;->g(Z)V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-boolean v0, p0, Lchk;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfoj;->j:Lcox;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcox;->q(I)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lfoj;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoj;->j:Lcox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcox;->l(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final n()V
    .locals 10

    iget-object v0, p0, Lfoj;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoj;->C:Lhrz;

    invoke-virtual {v1, p0}, Lhrz;->e(Lhrx;)V

    new-instance v1, Ljuf;

    invoke-direct {v1}, Ljuf;-><init>()V

    iput-object v1, p0, Lfoj;->v:Ljuf;

    iget-object v2, p0, Lfoj;->D:Ldja;

    iget-object v2, v2, Ldja;->a:Ljava/lang/Object;

    iget-object v3, p0, Lfoj;->f:Lcwc;

    invoke-direct {p0, v3}, Lfoj;->z(Lcwg;)Lkai;

    move-result-object v3

    iget-object v4, p0, Lfoj;->d:Ljuh;

    invoke-interface {v2, v3, v4}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lfoj;->v:Ljuf;

    iget-object v2, p0, Lfoj;->D:Ldja;

    iget-object v2, v2, Ldja;->c:Ljava/lang/Object;

    iget-object v3, p0, Lfoj;->g:Lcwe;

    invoke-direct {p0, v3}, Lfoj;->z(Lcwg;)Lkai;

    move-result-object v3

    iget-object v4, p0, Lfoj;->d:Ljuh;

    invoke-interface {v2, v3, v4}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lfoj;->v:Ljuf;

    iget-object v2, p0, Lfoj;->D:Ldja;

    iget-object v2, v2, Ldja;->b:Ljava/lang/Object;

    iget-object v3, p0, Lfoj;->u:Lcvz;

    invoke-direct {p0, v3}, Lfoj;->z(Lcwg;)Lkai;

    move-result-object v3

    iget-object v4, p0, Lfoj;->d:Ljuh;

    invoke-interface {v2, v3, v4}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lfoj;->v:Ljuf;

    iget-object v2, p0, Lfoj;->y:Lgzw;

    new-instance v3, Lfoi;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lfoi;-><init>(Lfoj;I)V

    iget-object v5, p0, Lfoj;->d:Ljuh;

    invoke-virtual {v2, v3, v5}, Ljwi;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lfoj;->A:Lfmf;

    sget-object v2, Lika;->c:Lika;

    iget-object v3, p0, Lfoj;->v:Ljuf;

    invoke-virtual {v1, p0, v2, v3}, Lfmf;->b(Lchk;Lika;Ljuf;)V

    iget-object v1, p0, Lfoj;->v:Ljuf;

    iget-object v2, p0, Lfoj;->h:Ldbf;

    new-instance v3, Ljyo;

    invoke-direct {v3, p0, v4}, Ljyo;-><init>(Lfoj;I)V

    iget-object v5, p0, Lfoj;->d:Ljuh;

    invoke-virtual {v2, v3, v5}, Ldbf;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lfoj;->v:Ljuf;

    iget-object v2, p0, Lfoj;->t:Lmvv;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgei;

    invoke-interface {v7}, Lgei;->g()Lgec;

    move-result-object v8

    sget-object v9, Lgec;->a:Lgec;

    sget-object v9, Lgyr;->a:Lgyr;

    invoke-virtual {v8}, Lgec;->ordinal()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    goto :goto_1

    :sswitch_0
    invoke-interface {v7}, Lgei;->i()Ljwb;

    move-result-object v7

    new-instance v8, Lfoi;

    invoke-direct {v8, p0, v5}, Lfoi;-><init>(Lfoj;I)V

    iget-object v9, p0, Lfoj;->d:Ljuh;

    invoke-interface {v7, v8, v9}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljuf;->d(Lkad;)V

    :sswitch_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :goto_1
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not a valid menu item in video mode: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lfoj;->v:Ljuf;

    iget-object v2, p0, Lfoj;->e:Lcxb;

    new-instance v3, Lcwy;

    const/4 v5, 0x3

    invoke-direct {v3, p0, v5}, Lcwy;-><init>(Lfoj;I)V

    invoke-virtual {v2, v3}, Lcxb;->b(Lcxa;)Lkad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lfoj;->E:Lva;

    new-instance v2, Lfof;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lfof;-><init>(Lfoj;I)V

    iget-object v3, p0, Lfoj;->v:Ljuf;

    invoke-virtual {v1, v2, v3}, Lva;->A(Ljava/lang/Runnable;Ljuf;)V

    iget-object v1, p0, Lfoj;->x:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v2, p0, Lfoj;->w:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->addListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    iget-object v1, p0, Lfoj;->l:Lcqa;

    invoke-virtual {v1}, Lcqa;->h()V

    iget-object v1, p0, Lfoj;->s:Lcqx;

    invoke-interface {v1}, Lcqx;->d()V

    iget-object v1, p0, Lfoj;->j:Lcox;

    invoke-virtual {v1, p0}, Lcox;->b(Lcqs;)V

    iget-object v1, p0, Lfoj;->p:Lcgy;

    iget-object v2, p0, Lfoj;->B:Lidu;

    invoke-interface {v1, v2, v4}, Lcgy;->r(Lidu;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lfoj;->z:Lczk;

    iget-object v1, v0, Lczk;->c:Lgzm;

    sget-object v2, Lgzd;->N:Lgzs;

    invoke-interface {v1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lczk;->d:I

    if-lez v1, :cond_1

    iget-object v1, v0, Lczk;->b:Lgzn;

    sget-object v2, Lgzd;->N:Lgzs;

    invoke-interface {v1, v2}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v1

    iget v2, v0, Lczk;->d:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, v0, Lczk;->a:Lgeh;

    invoke-interface {v1, v0}, Lgeh;->g(Lgen;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xc -> :sswitch_1
        0x12 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method public final o(Lfsf;)V
    .locals 0

    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lfoj;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoj;->x:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v2, p0, Lfoj;->w:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->removeListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    iget-object v1, p0, Lfoj;->l:Lcqa;

    invoke-virtual {v1}, Lcqa;->i()V

    iget-object v1, p0, Lfoj;->j:Lcox;

    invoke-virtual {v1}, Lcox;->m()V

    iget-object v1, p0, Lfoj;->v:Ljuf;

    invoke-virtual {v1}, Ljuf;->close()V

    iget-object v1, p0, Lfoj;->j:Lcox;

    invoke-virtual {v1, p0}, Lcox;->k(Lcqs;)V

    iget-object v1, p0, Lfoj;->C:Lhrz;

    invoke-virtual {v1, p0}, Lhrz;->i(Lhrx;)V

    iget-object v1, p0, Lfoj;->s:Lcqx;

    invoke-interface {v1}, Lcqx;->e()V

    iget-object v1, p0, Lfoj;->z:Lczk;

    iget-object v2, v1, Lczk;->a:Lgeh;

    invoke-interface {v2, v1}, Lgeh;->n(Lgen;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final s(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final t()Z
    .locals 2

    iget-object v0, p0, Lfoj;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoj;->j:Lcox;

    invoke-virtual {v1}, Lcox;->n()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final w(I)V
    .locals 4

    iget-object v0, p0, Lfoj;->r:Loiw;

    check-cast v0, Lihj;

    invoke-virtual {v0}, Lihj;->a()Lihg;

    move-result-object v0

    iget-object v0, v0, Lihg;->e:Ljava/lang/Object;

    sget-object v1, Lika;->c:Lika;

    new-instance v2, Lbbh;

    const/16 v3, 0x14

    invoke-direct {v2, p0, p1, v3}, Lbbh;-><init>(Lfoj;II)V

    check-cast v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->m(Lika;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final x(I)V
    .locals 1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lfoj;->w(I)V

    :cond_0
    return-void
.end method

.method public final y(I)V
    .locals 1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lfoj;->j:Lcox;

    invoke-virtual {p1}, Lcox;->c()V

    :cond_0
    return-void
.end method
