.class public final Lfex;
.super Ljava/lang/Object;

# interfaces
.implements Lhmz;


# static fields
.field public static final synthetic d:I

.field private static final e:Lnak;

.field private static final f:Lj$/time/Duration;


# instance fields
.field public final a:Lhnb;

.field public final b:Ljuf;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Lken;

.field private final i:Lkbc;

.field private final j:Lhne;

.field private final k:Ljwb;

.field private final l:Lkli;

.field private final m:Lkog;

.field private final n:Ldhi;

.field private final o:Lfuz;

.field private final p:Lgxb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com/google/android/apps/camera/microvideo/LongShotTorchController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfex;->e:Lnak;

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Lfex;->f:Lj$/time/Duration;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lken;Lfuz;Lhnb;Lhna;Ljwb;Lkli;Lkog;Lgxb;Ljava/util/concurrent/atomic/AtomicBoolean;Lkbc;Ldhi;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p13, Ljuf;

    invoke-direct {p13}, Ljuf;-><init>()V

    iput-object p13, p0, Lfex;->b:Ljuf;

    iput-object p1, p0, Lfex;->g:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lfex;->h:Lken;

    iput-object p3, p0, Lfex;->o:Lfuz;

    iput-object p11, p0, Lfex;->i:Lkbc;

    iput-object p4, p0, Lfex;->a:Lhnb;

    iput-object p6, p0, Lfex;->k:Ljwb;

    iput-object p7, p0, Lfex;->l:Lkli;

    iput-object p8, p0, Lfex;->m:Lkog;

    iput-object p9, p0, Lfex;->p:Lgxb;

    iput-object p10, p0, Lfex;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p12, p0, Lfex;->n:Ldhi;

    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object p2

    invoke-virtual {p2, p1}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    const-string p1, "LongShotTorch"

    invoke-virtual {p2, p1}, Lhnd;->d(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Lhnd;->g(Lhna;)V

    new-instance p1, Lfcz;

    const/16 p3, 0xa

    invoke-direct {p1, p6, p3}, Lfcz;-><init>(Ljwb;I)V

    invoke-virtual {p2, p1}, Lhnd;->e(Ljava/lang/Runnable;)V

    new-instance p1, Lfcz;

    const/16 p3, 0xb

    invoke-direct {p1, p6, p3}, Lfcz;-><init>(Ljwb;I)V

    invoke-virtual {p2, p1}, Lhnd;->f(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Lhnd;->a()Lhne;

    move-result-object p1

    iput-object p1, p0, Lfex;->j:Lhne;

    return-void
.end method


# virtual methods
.method final a(Lgxl;Z)Llij;
    .locals 25

    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Lgxl;->i()Lgya;

    move-result-object v0

    sget-object v2, Lgya;->o:Lgya;

    if-ne v0, v2, :cond_4

    if-eqz p2, :cond_4

    iget-object v0, v1, Lfex;->k:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lfex;->o:Lfuz;

    invoke-virtual {v0}, Lklw;->k()Lklv;

    move-result-object v0

    sget-object v2, Lklv;->b:Lklv;

    if-eq v0, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, v1, Lfex;->i:Lkbc;

    const-string v2, "LongShotTorchController#turnOnTorch"

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lgxb;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lfex;->n:Ldhi;

    sget-object v2, Ldhy;->j:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lfex;->o:Lfuz;

    invoke-virtual {v0}, Lklw;->k()Lklv;

    move-result-object v0

    sget-object v2, Lklv;->b:Lklv;

    invoke-virtual {v0, v2}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lfex;->m:Lkog;

    invoke-virtual {v0}, Lkog;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lfex;->h:Lken;

    sget-object v2, Liuy;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x7d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v2

    invoke-interface {v0, v2}, Lken;->h(Lkfa;)V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lfex;->h:Lken;

    sget-object v2, Liuy;->c:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v2

    invoke-interface {v0, v2}, Lken;->h(Lkfa;)V

    :cond_2
    :goto_0
    iget-object v0, v1, Lfex;->h:Lken;

    invoke-interface {v0}, Lken;->d()Lker;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_4

    sget-object v3, Lmpx;->a:Lmpx;

    :try_start_1
    invoke-interface {v2}, Lker;->a()Lkdz;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Lkhs;

    iput-object v5, v6, Lkhs;->c:Ljava/lang/Integer;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Lkhs;

    iput-object v5, v6, Lkhs;->e:Ljava/lang/Integer;

    check-cast v0, Lkhs;

    invoke-virtual {v0}, Lkhs;->d()Lkht;

    move-result-object v0

    invoke-interface {v2, v0}, Lker;->d(Lkea;)Lnou;

    move-result-object v0

    invoke-interface {v0}, Lnou;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkeg;

    iget-wide v5, v0, Lkeg;->b:J

    iget-object v0, v1, Lfex;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-eqz v0, :cond_3

    sget-object v0, Lfex;->f:Lj$/time/Duration;

    invoke-virtual {v0}, Lj$/time/Duration;->toNanos()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    goto :goto_2

    :cond_3
    sget-object v0, Lfex;->e:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v4, 0x872

    invoke-interface {v0, v4}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v4, "Invalid converged 3A timestamp for Long Shot."

    invoke-interface {v0, v4}, Lnah;->o(Ljava/lang/String;)V
    :try_end_1
    .catch Lkdf; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_1
    sget-object v4, Lfex;->e:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    const-string v5, "Couldn\'t set the torch state for Long Shot"

    const/16 v6, 0x873

    invoke-static {v4, v5, v6, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_2
    move-object v8, v3

    iget-object v0, v1, Lfex;->i:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, v1, Lfex;->k:Ljwb;

    new-instance v3, Lecf;

    const/4 v4, 0x7

    invoke-direct {v3, v1, v2, v4}, Lecf;-><init>(Lfex;Lker;I)V

    iget-object v4, v1, Lfex;->g:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v3, v4}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    new-instance v3, Llij;

    new-instance v9, Leid;

    const/16 v4, 0x9

    invoke-direct {v9, v2, v0, v4}, Leid;-><init>(Lker;Lkad;I)V

    iget-object v10, v1, Lfex;->h:Lken;

    iget-object v11, v1, Lfex;->p:Lgxb;

    iget-object v12, v1, Lfex;->l:Lkli;

    iget-object v13, v1, Lfex;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v14, v1, Lfex;->n:Ldhi;

    const/4 v15, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Llij;-><init>(Lmqp;Lkad;Lken;Lgxb;Lkli;Ljava/util/concurrent/atomic/AtomicBoolean;Ldhi;[B)V

    return-object v3

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    :goto_3
    new-instance v0, Llij;

    sget-object v17, Lmpx;->a:Lmpx;

    sget-object v18, Lcgk;->s:Lcgk;

    iget-object v2, v1, Lfex;->h:Lken;

    iget-object v3, v1, Lfex;->p:Lgxb;

    iget-object v4, v1, Lfex;->l:Lkli;

    iget-object v5, v1, Lfex;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v6, v1, Lfex;->n:Ldhi;

    const/16 v24, 0x0

    move-object/from16 v16, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    invoke-direct/range {v16 .. v24}, Llij;-><init>(Lmqp;Lkad;Lken;Lgxb;Lkli;Ljava/util/concurrent/atomic/AtomicBoolean;Ldhi;[B)V

    return-object v0

    :cond_4
    :goto_4
    new-instance v0, Llij;

    sget-object v8, Lmpx;->a:Lmpx;

    sget-object v9, Lcgk;->r:Lcgk;

    iget-object v10, v1, Lfex;->h:Lken;

    iget-object v11, v1, Lfex;->p:Lgxb;

    iget-object v12, v1, Lfex;->l:Lkli;

    iget-object v13, v1, Lfex;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v14, v1, Lfex;->n:Ldhi;

    const/4 v15, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Llij;-><init>(Lmqp;Lkad;Lken;Lgxb;Lkli;Ljava/util/concurrent/atomic/AtomicBoolean;Ldhi;[B)V

    return-object v0
.end method

.method public final bG(Lhna;)V
    .locals 1

    iget-object v0, p0, Lfex;->j:Lhne;

    invoke-virtual {v0, p1}, Lhne;->bG(Lhna;)V

    return-void
.end method
