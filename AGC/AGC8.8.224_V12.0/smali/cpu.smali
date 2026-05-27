.class public final Lcpu;
.super Ljava/lang/Object;

# interfaces
.implements Ljxy;
.implements Lkad;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final A:Lkbc;

.field public final B:Ljava/util/List;

.field public final C:Ljava/util/List;

.field public D:Ljava/util/concurrent/ScheduledFuture;

.field public final E:Ljava/util/List;

.field public F:Lcpt;

.field public G:Lcui;

.field public H:I

.field public I:Lkbf;

.field public final J:Lcvr;

.field public final K:Lcvr;

.field public final L:Lcvr;

.field private final M:Lico;

.field private final N:Lcpf;

.field private final O:Ljzy;

.field private final P:Z

.field private final Q:Lcqx;

.field private final R:Lmqp;

.field private final S:Lcsm;

.field private T:Lgxz;

.field private U:Lctd;

.field private V:J

.field private final W:Ldja;

.field private final X:Lcvm;

.field public final b:Lcqu;

.field public final c:Ljuh;

.field public final d:Lcqa;

.field public final e:Ljava/util/List;

.field public final f:Ljava/lang/Object;

.field public final g:Lcty;

.field public final h:Lcqv;

.field public final i:Lcpx;

.field public final j:Ldhi;

.field public final k:Lgft;

.field public final l:Lcsc;

.field public final m:Lcrz;

.field public final n:Ljava/util/concurrent/atomic/AtomicReference;

.field public final o:Lcvx;

.field public final p:Lcwj;

.field public final q:Lctu;

.field public final r:Ljava/util/concurrent/ScheduledExecutorService;

.field public final s:Lmqp;

.field public final t:Lhkn;

.field public final u:Lmqp;

.field public final v:Lczd;

.field public final w:Lczf;

.field public final x:Lgzm;

.field public final y:Ldlj;

.field public final z:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/Video2ActiveCamcorderRecordingSession"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcpu;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljuh;Lcvr;Lcqv;Lcpx;Lcvr;Lcsa;Ldja;Lcvx;Lcwm;Lcty;Lcvm;Lcqa;Ldqx;Lcvr;Lhkn;Ldhi;Lgft;Lcxb;Lico;ZLbkc;Lczd;Lczf;Lcqx;Lcqu;Lcsc;Lgzm;Ldlj;Ljava/util/concurrent/ScheduledExecutorService;Lkbc;Lmqp;Lcsm;[B[B[B[B[B)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    move-object/from16 v3, p9

    move-object/from16 v4, p13

    move-object/from16 v5, p26

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v0, Lcpu;->e:Ljava/util/List;

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Lcpu;->f:Ljava/lang/Object;

    new-instance v6, Lcpf;

    invoke-direct {v6}, Lcpf;-><init>()V

    iput-object v6, v0, Lcpu;->N:Lcpf;

    new-instance v6, Ljzy;

    invoke-direct {v6}, Ljzy;-><init>()V

    iput-object v6, v0, Lcpu;->O:Ljzy;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v6, v0, Lcpu;->n:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcpu;->B:Ljava/util/List;

    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v6, v0, Lcpu;->C:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcpu;->E:Ljava/util/List;

    const/4 v7, 0x0

    iput v7, v0, Lcpu;->H:I

    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcpu;->V:J

    move-object/from16 v7, p1

    iput-object v7, v0, Lcpu;->c:Ljuh;

    move-object/from16 v7, p2

    iput-object v7, v0, Lcpu;->J:Lcvr;

    move-object/from16 v7, p12

    iput-object v7, v0, Lcpu;->d:Lcqa;

    iput-object v2, v0, Lcpu;->W:Ldja;

    move-object/from16 v7, p8

    iput-object v7, v0, Lcpu;->o:Lcvx;

    move-object/from16 v7, p3

    iput-object v7, v0, Lcpu;->h:Lcqv;

    move-object/from16 v8, p4

    iput-object v8, v0, Lcpu;->i:Lcpx;

    iput-object v1, v0, Lcpu;->K:Lcvr;

    move-object/from16 v8, p16

    iput-object v8, v0, Lcpu;->j:Ldhi;

    move-object/from16 v9, p17

    iput-object v9, v0, Lcpu;->k:Lgft;

    move-object/from16 v9, p19

    iput-object v9, v0, Lcpu;->M:Lico;

    move/from16 v9, p20

    iput-boolean v9, v0, Lcpu;->P:Z

    iput-object v5, v0, Lcpu;->l:Lcsc;

    invoke-virtual/range {p6 .. p6}, Lcsa;->a()Lcrz;

    move-result-object v9

    iput-object v9, v0, Lcpu;->m:Lcrz;

    move-object/from16 v10, p25

    iput-object v10, v0, Lcpu;->b:Lcqu;

    iput-object v3, v0, Lcpu;->p:Lcwj;

    move-object/from16 v10, p10

    iput-object v10, v0, Lcpu;->g:Lcty;

    move-object/from16 v10, p11

    iput-object v10, v0, Lcpu;->X:Lcvm;

    iget-object v10, v2, Ldja;->b:Ljava/lang/Object;

    check-cast v10, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Recording-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljvd;->j(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v10

    iput-object v10, v0, Lcpu;->r:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v10, p14

    iput-object v10, v0, Lcpu;->L:Lcvr;

    move-object/from16 v10, p15

    iput-object v10, v0, Lcpu;->t:Lhkn;

    move-object/from16 v10, p22

    iput-object v10, v0, Lcpu;->v:Lczd;

    move-object/from16 v10, p23

    iput-object v10, v0, Lcpu;->w:Lczf;

    move-object/from16 v11, p24

    iput-object v11, v0, Lcpu;->Q:Lcqx;

    move-object/from16 v11, p27

    iput-object v11, v0, Lcpu;->x:Lgzm;

    move-object/from16 v11, p28

    iput-object v11, v0, Lcpu;->y:Ldlj;

    move-object/from16 v11, p29

    iput-object v11, v0, Lcpu;->z:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v11, p30

    iput-object v11, v0, Lcpu;->A:Lkbc;

    move-object/from16 v12, p31

    iput-object v12, v0, Lcpu;->R:Lmqp;

    move-object/from16 v12, p32

    iput-object v12, v0, Lcpu;->S:Lcsm;

    invoke-interface/range {p3 .. p3}, Lcqv;->c()Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, v5, Lcsc;->x:Lklv;

    sget-object v13, Lklv;->b:Lklv;

    if-ne v12, v13, :cond_0

    new-instance v12, Lckh;

    iget-object v13, v4, Ldqx;->e:Ljava/lang/Object;

    check-cast v13, Litb;

    invoke-virtual {v13}, Litb;->a()Litm;

    move-result-object v15

    iget-object v13, v4, Ldqx;->a:Ljava/lang/Object;

    invoke-interface {v13}, Loiw;->get()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v16, v13

    check-cast v16, Ljvs;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v4, Ldqx;->b:Ljava/lang/Object;

    invoke-interface {v13}, Loiw;->get()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v17, v13

    check-cast v17, Lcvr;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v4, Ldqx;->d:Ljava/lang/Object;

    check-cast v13, Lema;

    invoke-virtual {v13}, Lema;->a()Landroid/media/AudioManager;

    move-result-object v18

    iget-object v4, v4, Ldqx;->c:Ljava/lang/Object;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Ljwb;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v12

    invoke-direct/range {v14 .. v21}, Lckh;-><init>(Litm;Ljvs;Lcvr;Landroid/media/AudioManager;Ljwb;[B[B)V

    invoke-static {v12}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    goto :goto_0

    :cond_0
    sget-object v4, Lmpx;->a:Lmpx;

    :goto_0
    iput-object v4, v0, Lcpu;->s:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lckf;

    invoke-interface {v4}, Lckf;->a()V

    :cond_1
    sget-object v4, Lcpt;->a:Lcpt;

    invoke-virtual {v0, v4}, Lcpu;->j(Lcpt;)V

    invoke-virtual/range {p7 .. p7}, Ldja;->j()I

    invoke-interface/range {p3 .. p3}, Lcqv;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p18 .. p18}, Lcxb;->a()Lcwx;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcua;->c:Lcua;

    invoke-virtual {v1, v2}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v2

    new-instance v4, Lcwy;

    const/4 v6, 0x1

    invoke-direct {v4, v0, v6}, Lcwy;-><init>(Lcpu;I)V

    move-object/from16 v6, p18

    invoke-virtual {v6, v4}, Lcxb;->b(Lcxa;)Lkad;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljuf;->d(Lkad;)V

    :cond_2
    sget-object v2, Lcua;->c:Lcua;

    invoke-virtual {v1, v2}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljuf;->d(Lkad;)V

    sget-object v2, Lcua;->c:Lcua;

    invoke-virtual {v1, v2}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljuf;->d(Lkad;)V

    iget-object v1, v5, Lcsc;->c:Ljws;

    sget-object v2, Ljws;->a:Ljws;

    if-ne v1, v2, :cond_3

    new-instance v1, Lctp;

    invoke-direct {v1}, Lctp;-><init>()V

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    goto :goto_1

    :cond_3
    sget-object v1, Lmpx;->a:Lmpx;

    :goto_1
    iput-object v1, v0, Lcpu;->u:Lmqp;

    new-instance v1, Lctu;

    invoke-virtual/range {p0 .. p0}, Lcpu;->c()Lcwx;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, p26

    move-object/from16 p3, p21

    move-object/from16 p4, p16

    move-object/from16 p5, p23

    move-object/from16 p6, v9

    move-object/from16 p7, v2

    move-object/from16 p8, p30

    move-object/from16 p9, v3

    move-object/from16 p10, v4

    move-object/from16 p11, v6

    invoke-direct/range {p1 .. p11}, Lctu;-><init>(Lcsc;Lbkc;Ldhi;Lczf;Lcrz;Lcwx;Lkbc;[B[B[B)V

    iput-object v1, v0, Lcpu;->q:Lctu;

    return-void
.end method


# virtual methods
.method public final a(Ljyk;)V
    .locals 1

    iget-object v0, p0, Lcpu;->l:Lcsc;

    iget-boolean v0, v0, Lcsc;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcpu;->N:Lcpf;

    invoke-virtual {v0, p1}, Lcpf;->a(Ljyk;)V

    iget-object v0, p0, Lcpu;->b:Lcqu;

    invoke-interface {v0, p1}, Lcqu;->a(Ljyk;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Lcsu;
    .locals 2

    iget-object v0, p0, Lcpu;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcpu;->G:Lcui;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcui;->b:Ljava/util/List;

    invoke-static {v1}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcsu;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()Lcwx;
    .locals 1

    iget-object v0, p0, Lcpu;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcpu;->E:Ljava/util/List;

    invoke-static {v0}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwx;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lcpu;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcpu;->F:Lcpt;

    sget-object v2, Lcpt;->f:Lcpt;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Lcpu;->l(ZI)Lnou;

    iget-object v1, p0, Lcpu;->r:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    sget-object v1, Lcpt;->f:Lcpt;

    invoke-virtual {p0, v1}, Lcpu;->j(Lcpt;)V

    iget-object v1, p0, Lcpu;->l:Lcsc;

    iget-boolean v1, v1, Lcsc;->B:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcpu;->v:Lczd;

    invoke-virtual {v1}, Lczd;->a()V

    iget-object v1, p0, Lcpu;->w:Lczf;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lczf;->c(Z)V

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

.method public final d()V
    .locals 6

    invoke-static {}, Lgxy;->a()Lgxy;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lgya;->j:Lgya;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Ldlg;->a(Lgya;J)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lgya;->j:Lgya;

    invoke-static {v0, v1, v2, v3, v4}, Lgxz;->a(Lgxy;JLjava/lang/String;Lgya;)Lgxz;

    move-result-object v0

    iput-object v0, p0, Lcpu;->T:Lgxz;

    iget-object v1, p0, Lcpu;->C:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcpu;->y:Ldlj;

    iget-object v1, p0, Lcpu;->T:Lgxz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Ldlj;->j(Lgxz;)V

    return-void
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lcpu;->b:Lcqu;

    check-cast v0, Lcpk;

    iget-object v1, v0, Lcpk;->d:Lcqa;

    new-instance v2, Lclr;

    const/16 v3, 0xd

    invoke-direct {v2, v1, v3}, Lclr;-><init>(Lcqa;I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v2, v1}, Lcpk;->n(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcpu;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcpu;->F:Lcpt;

    sget-object v2, Lcpt;->e:Lcpt;

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcpu;->h:Lcqv;

    invoke-interface {v1}, Lcqv;->j()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcpu;->X:Lcvm;

    iget-object v2, p0, Lcpu;->l:Lcsc;

    iget-object v2, v2, Lcsc;->g:Ljxa;

    iget-object v2, v2, Ljxa;->a:Ljwt;

    iget-object v2, v2, Ljwt;->f:Lkqi;

    invoke-virtual {v1, v2}, Lcvm;->i(Lkqi;)Lctd;

    move-result-object v1

    iput-object v1, p0, Lcpu;->U:Lctd;

    iget-object v1, p0, Lcpu;->G:Lcui;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcui;->a:Ljyc;

    iget-object v2, p0, Lcpu;->U:Lctd;

    invoke-interface {v2}, Lctd;->f()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljyc;->m(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcpu;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-interface {v2, v1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x1d7

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Failed to set next video file."

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcpu;->g()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcpu;->b:Lcqu;

    check-cast v0, Lcpk;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcpk;->m(ZI)Lnou;

    move-result-object v1

    new-instance v2, Lcmc;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcmc;-><init>(Lcpk;I)V

    iget-object v0, v0, Lcpk;->c:Ljuh;

    invoke-static {v1, v2, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lcpu;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcsu;->a()Lllz;

    move-result-object v1

    iget-object v2, p0, Lcpu;->U:Lctd;

    invoke-virtual {v1, v2}, Lllz;->h(Lctd;)V

    iget-object v2, p0, Lcpu;->W:Ldja;

    invoke-virtual {v2}, Ldja;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lllz;->i(I)V

    invoke-virtual {v1}, Lllz;->g()Lcsu;

    move-result-object v1

    iget-object v2, p0, Lcpu;->g:Lcty;

    iget v3, v1, Lcsu;->b:I

    invoke-virtual {v2, v3}, Lcty;->b(I)V

    invoke-virtual {p0}, Lcpu;->b()Lcsu;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcpu;->k(Lcsu;)V

    iget-object v2, p0, Lcpu;->G:Lcui;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcui;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcpu;->d()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i(JJ)V
    .locals 3

    const-wide/16 v0, 0x8

    mul-long p3, p3, v0

    long-to-float v0, p3

    iget-object v1, p0, Lcpu;->O:Ljzy;

    new-instance v2, Ljzx;

    invoke-direct {v2, p1, p2, v0}, Ljzx;-><init>(JF)V

    invoke-virtual {v1, v2}, Ljzy;->a(Ljzx;)V

    iget-wide v0, p0, Lcpu;->V:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcpu;->V:J

    iget-object p3, p0, Lcpu;->q:Lctu;

    invoke-virtual {p3, p1, p2}, Lctu;->l(J)V

    return-void
.end method

.method public final j(Lcpt;)V
    .locals 1

    iget-object v0, p0, Lcpu;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcpu;->F:Lcpt;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final k(Lcsu;)V
    .locals 42

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcpu;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v4, v0, Lcsu;->a:Lctd;

    iget-object v3, v1, Lcpu;->g:Lcty;

    iget v0, v0, Lcsu;->b:I

    invoke-virtual {v3, v0}, Lcty;->a(I)J

    move-result-wide v5

    invoke-interface {v4}, Lctd;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcpu;->l:Lcsc;

    iget-boolean v0, v0, Lcsc;->A:Z

    if-nez v0, :cond_0

    const-wide/16 v7, 0x3e8

    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-interface {v4}, Lctd;->close()V

    iget-object v0, v1, Lcpu;->G:Lcui;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcui;->a:Ljyc;

    iget-object v0, v0, Lcui;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    iget-object v0, v1, Lcpu;->l:Lcsc;

    iget-boolean v0, v0, Lcsc;->A:Z

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljyc;->f()Lmqp;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_1
    :goto_0
    move-wide v10, v5

    long-to-float v0, v10

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v0, v5

    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    iget-wide v8, v1, Lcpu;->V:J

    long-to-float v6, v8

    iget-object v8, v1, Lcpu;->l:Lcsc;

    iget-object v8, v8, Lcsc;->c:Ljws;

    invoke-virtual {v8}, Ljws;->a()I

    move-result v8

    int-to-float v8, v8

    mul-float v0, v0, v8

    div-float/2addr v6, v0

    :goto_1
    iget-object v0, v1, Lcpu;->l:Lcsc;

    iget-boolean v0, v0, Lcsc;->A:Z

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljyc;->e()Lmqp;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lcpu;->q:Lctu;

    invoke-virtual {v0}, Lctu;->i()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    move-object/from16 v17, v0

    :goto_2
    new-instance v0, Lcsx;

    iget-object v8, v1, Lcpu;->l:Lcsc;

    iget-object v8, v8, Lcsc;->g:Ljxa;

    iget-object v9, v1, Lcpu;->L:Lcvr;

    invoke-interface {v3}, Ljyc;->d()Lmqp;

    iget-object v3, v1, Lcpu;->m:Lcrz;

    iget-object v3, v3, Lcrz;->f:Ljwb;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v3, v1, Lcpu;->q:Lctu;

    invoke-virtual {v3}, Lctu;->h()I

    move-result v15

    iget-object v3, v1, Lcpu;->q:Lctu;

    invoke-virtual {v3}, Lctu;->g()I

    move-result v16

    iget-object v3, v1, Lcpu;->W:Ldja;

    invoke-virtual {v3}, Ldja;->i()I

    move-result v18

    iget-object v3, v1, Lcpu;->W:Ldja;

    invoke-virtual {v3}, Ldja;->j()I

    move-result v19

    iget-object v3, v1, Lcpu;->m:Lcrz;

    iget-object v3, v3, Lcrz;->n:Ljvs;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v3, v1, Lcpu;->N:Lcpf;

    iget-object v7, v3, Lcpf;->b:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, v3, Lcpf;->a:Ljava/util/Map;

    invoke-static {v5}, Llyh;->s(Ljava/util/Map;)Lmwa;

    move-result-object v22

    iget-object v3, v3, Lcpf;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, v1, Lcpu;->l:Lcsc;

    iget-object v7, v3, Lcsc;->y:Lgya;

    iget-object v5, v1, Lcpu;->E:Ljava/util/List;

    iget v3, v1, Lcpu;->H:I

    move/from16 v23, v15

    iget-boolean v15, v1, Lcpu;->P:Z

    move/from16 v24, v3

    iget-object v3, v1, Lcpu;->u:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcpu;->u:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lctp;

    move-object/from16 v25, v5

    iget v5, v3, Lctp;->a:I

    int-to-float v5, v5

    iget v3, v3, Lctp;->b:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v5

    const/16 v21, 0x0

    cmpl-float v26, v3, v21

    if-nez v26, :cond_4

    const/16 v26, 0x0

    goto :goto_3

    :cond_4
    div-float/2addr v5, v3

    move/from16 v26, v5

    goto :goto_3

    :cond_5
    move-object/from16 v25, v5

    const/16 v21, 0x0

    iget-object v3, v1, Lcpu;->l:Lcsc;

    iget-object v3, v3, Lcsc;->c:Ljws;

    sget-object v5, Ljws;->c:Ljws;

    if-ne v3, v5, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v26, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    const/16 v26, 0x0

    :goto_3
    float-to-long v5, v6

    iget-object v3, v1, Lcpu;->l:Lcsc;

    iget-object v3, v3, Lcsc;->g:Ljxa;

    invoke-virtual {v3}, Ljxa;->b()I

    move-result v3

    move-wide/from16 v27, v10

    int-to-long v10, v3

    iget-object v3, v1, Lcpu;->T:Lgxz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v21, v3

    iget-object v3, v1, Lcpu;->l:Lcsc;

    move/from16 v29, v15

    iget-boolean v15, v3, Lcsc;->B:Z

    move-wide/from16 v30, v5

    iget-object v5, v1, Lcpu;->m:Lcrz;

    iget-boolean v3, v3, Lcsc;->C:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_7

    iget-object v3, v5, Lcrz;->p:Ljvs;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgyt;

    sget-object v5, Lgyt;->b:Lgyt;

    invoke-virtual {v3, v5}, Lgyt;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v32, 0x1

    goto :goto_4

    :cond_7
    const/16 v32, 0x0

    :goto_4
    iget-object v3, v1, Lcpu;->Q:Lcqx;

    invoke-interface {v3}, Lcqx;->a()Lmqp;

    move-result-object v33

    iget-object v3, v1, Lcpu;->R:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lglm;

    invoke-interface {v3}, Lglm;->c()Lnjm;

    move-result-object v3

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    move-object/from16 v37, v3

    goto :goto_5

    :cond_8
    sget-object v3, Lmpx;->a:Lmpx;

    move-object/from16 v37, v3

    :goto_5
    iget-object v3, v1, Lcpu;->S:Lcsm;

    invoke-interface {v3}, Lcsm;->a()Lmqp;

    move-result-object v38

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v39, v21

    move/from16 v21, v24

    move-object v3, v0

    move-object/from16 v24, v25

    move-object v5, v8

    const/4 v8, 0x0

    move-object v6, v9

    move-object/from16 v25, v7

    move v7, v12

    const/4 v12, 0x0

    move-wide v8, v13

    move-wide/from16 v40, v10

    move-wide/from16 v10, v27

    const/4 v14, 0x0

    move/from16 v12, v23

    move/from16 v13, v16

    move/from16 v14, v18

    move/from16 v23, v29

    move/from16 v29, v15

    move/from16 v15, v19

    move/from16 v16, v20

    move-object/from16 v18, v22

    move-object/from16 v19, v25

    move-object/from16 v20, v24

    move/from16 v22, v23

    move/from16 v23, v26

    move-wide/from16 v24, v30

    move-wide/from16 v26, v40

    move-object/from16 v28, v39

    move/from16 v30, v32

    move-object/from16 v31, v33

    move-object/from16 v32, v37

    move-object/from16 v33, v38

    invoke-direct/range {v3 .. v36}, Lcsx;-><init>(Lctd;Ljxa;Lcvr;ZJJIIIIILmqp;Ljava/util/Map;Lgya;Ljava/util/List;IZFJJLgxz;ZZLmqp;Lmqp;Lmqp;[B[B[B)V

    iget-object v3, v1, Lcpu;->q:Lctu;

    invoke-virtual {v3}, Lctu;->i()J

    iget-object v3, v1, Lcpu;->q:Lctu;

    invoke-virtual {v3}, Lctu;->h()I

    iget-object v3, v1, Lcpu;->q:Lctu;

    invoke-virtual {v3}, Lctu;->g()I

    iget-object v3, v1, Lcpu;->l:Lcsc;

    iget-boolean v3, v3, Lcsc;->A:Z

    if-eqz v3, :cond_9

    sget-object v3, Lcpu;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0x1de

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lnah;

    const-string v5, "Video file encoded %d frames, frame drop listener saw %d"

    iget-wide v6, v0, Lcsx;->k:J

    iget-object v3, v1, Lcpu;->q:Lctu;

    invoke-virtual {v3}, Lctu;->i()J

    move-result-wide v8

    invoke-interface/range {v4 .. v9}, Lnah;->v(Ljava/lang/String;JJ)V

    :cond_9
    iget-object v3, v1, Lcpu;->B:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_a
    :goto_6
    invoke-interface {v4}, Lctd;->g()V

    iget-object v0, v1, Lcpu;->M:Lico;

    sget-object v3, Licm;->h:Licm;

    invoke-virtual {v0, v3}, Lico;->c(Licm;)V

    sget-object v0, Lcpu;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v3, 0x1dc

    invoke-interface {v0, v3}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v3, "Video file is abandoned. Probably because the length is too short."

    invoke-interface {v0, v3}, Lnah;->o(Ljava/lang/String;)V

    iget-object v0, v1, Lcpu;->y:Ldlj;

    iget-object v3, v1, Lcpu;->T:Lgxz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, v3, Lgxz;->b:J

    invoke-interface {v0, v3, v4}, Ldlj;->g(J)V

    iget-object v0, v1, Lcpu;->C:Ljava/util/List;

    iget-object v3, v1, Lcpu;->T:Lgxz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, v1, Lcpu;->T:Lgxz;

    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final l(ZI)Lnou;
    .locals 8

    iget-object v0, p0, Lcpu;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcpu;->F:Lcpt;

    sget-object v2, Lcpt;->c:Lcpt;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcpu;->F:Lcpt;

    sget-object v2, Lcpt;->d:Lcpt;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcpt;->b:Lcpt;

    if-eq v1, v2, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to stop with state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    sget-object v1, Lcpt;->e:Lcpt;

    invoke-virtual {p0, v1}, Lcpu;->j(Lcpt;)V

    iget-object v1, p0, Lcpu;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcpu;->F:Lcpt;

    sget-object v3, Lcpt;->e:Lcpt;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lmoz;->p(Z)V

    iget-object v2, p0, Lcpu;->s:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lckf;

    invoke-interface {v2}, Lckf;->c()V

    :cond_2
    iget-object v2, p0, Lcpu;->G:Lcui;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcui;->a:Ljyc;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v3

    invoke-virtual {p0}, Lcpu;->b()Lcsu;

    move-result-object v5

    iget-object v6, p0, Lcpu;->g:Lcty;

    iget v7, v5, Lcsu;->b:I

    invoke-virtual {v6, v7}, Lcty;->a(I)J

    move-result-wide v6

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcpu;->t:Lhkn;

    sget-object v6, Lhkm;->e:Lhkm;

    invoke-virtual {p1, v6}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object p1, p0, Lcpu;->l:Lcsc;

    iget-boolean p1, p1, Lcsc;->A:Z

    if-eqz p1, :cond_3

    invoke-interface {v2}, Ljyc;->i()Lnou;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljyc;->k()Lnou;

    move-result-object p1

    :goto_1
    invoke-virtual {v3, p1}, Lnph;->f(Lnou;)Z

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcpu;->l:Lcsc;

    iget-boolean p1, p1, Lcsc;->A:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    long-to-int p1, v6

    rsub-int p1, p1, 0x3e8

    :goto_2
    new-instance v6, Lcir;

    const-string v7, "CdrRecSession"

    invoke-direct {v6, v7, p1}, Lcir;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcpu;->K:Lcvr;

    sget-object v7, Lcua;->c:Lcua;

    invoke-virtual {p1, v7}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljuf;->d(Lkad;)V

    new-instance p1, Lcpp;

    invoke-direct {p1, p0, v3, v2}, Lcpp;-><init>(Lcpu;Lnph;Ljyc;)V

    invoke-virtual {v6, p1}, Lcir;->execute(Ljava/lang/Runnable;)V

    :goto_3
    new-instance p1, Lcpq;

    invoke-direct {p1, p0, v5, v4}, Lcpq;-><init>(Lcpu;Lcsu;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v3, p1, v2}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Lcpn;

    invoke-direct {v1, p0, p2}, Lcpn;-><init>(Lcpu;I)V

    sget-object p2, Lnnv;->a:Lnnv;

    invoke-static {p1, v1, p2}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
