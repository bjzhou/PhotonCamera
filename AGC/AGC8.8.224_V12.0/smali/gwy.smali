.class public final Lgwy;
.super Lgwp;


# static fields
.field private static final d:Lnak;


# instance fields
.field public c:Lmqp;

.field private final e:Lefq;

.field private final f:Ljvs;

.field private final g:Ljvs;

.field private final h:Lmqp;

.field private final i:Lgcg;

.field private final j:Lkbc;

.field private final k:Lgto;

.field private l:Lmqp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/session/PhotoCaptureSession"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgwy;->d:Lnak;

    return-void
.end method

.method public constructor <init>(Lgwc;Lefq;Ljvs;Lgcg;Lkbc;Lgpv;Ljava/lang/String;Lcjf;Lgxr;Lmqp;Ljvs;Lmqp;Lmqp;Lgya;Lgto;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p14

    move-object v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object v6, p6

    move-object/from16 v7, p12

    invoke-interface/range {v1 .. v7}, Lgwc;->a(Lgya;Ljava/lang/String;Lcjf;Lgxr;Lgpv;Lmqp;)Lgwd;

    move-result-object v1

    invoke-direct {p0, v1}, Lgwp;-><init>(Lgwd;)V

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, v0, Lgwy;->c:Lmqp;

    move-object v1, p2

    iput-object v1, v0, Lgwy;->e:Lefq;

    move-object/from16 v1, p10

    iput-object v1, v0, Lgwy;->l:Lmqp;

    move-object/from16 v1, p11

    iput-object v1, v0, Lgwy;->f:Ljvs;

    move-object v1, p3

    iput-object v1, v0, Lgwy;->g:Ljvs;

    move-object/from16 v1, p13

    iput-object v1, v0, Lgwy;->h:Lmqp;

    move-object v1, p4

    iput-object v1, v0, Lgwy;->i:Lgcg;

    sget-object v1, Ldho;->a:Ldhk;

    move-object v1, p5

    iput-object v1, v0, Lgwy;->j:Lkbc;

    move-object/from16 v1, p15

    iput-object v1, v0, Lgwy;->k:Lgto;

    iget-object v1, v0, Lgwp;->b:Lgwd;

    new-instance v2, Lgot;

    const/16 v3, 0x12

    invoke-direct {v2, p0, v3}, Lgot;-><init>(Lgwy;I)V

    invoke-virtual {v1, v2}, Lgwd;->v(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 1

    const-string v0, "interruptSession"

    invoke-virtual {p0, v0}, Lgwp;->H(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgwp;->o()Lgwm;

    move-result-object v0

    invoke-virtual {v0}, Lgwm;->b()V

    return-void
.end method

.method public final K(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, Lgwy;->e:Lefq;

    invoke-virtual {p0}, Lgwp;->l()Lkou;

    move-result-object v1

    invoke-interface {v0, v1}, Lefq;->a(Lkou;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p0}, Lgwp;->m()Lmqp;

    move-result-object v2

    invoke-static {v1, v2}, Lefr;->a([BLmqp;)V

    invoke-virtual {p0}, Lgwp;->h()Lgxy;

    move-result-object v1

    iget v1, v1, Lgxy;->a:I

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    new-instance v1, Ljava/io/SequenceInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, p1, v2}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lgwp;->h()Lgxy;

    move-result-object v0

    iget v0, v0, Lgxy;->a:I

    return-object p1
.end method

.method public final L([B)[B
    .locals 4

    iget-object v0, p0, Lgwy;->h:Lmqp;

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Ldne;

    invoke-virtual {p0}, Lgwp;->h()Lgxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldne;->a(Lgxy;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Writing depth data into the jpeg image"

    invoke-virtual {p0, v1}, Lgwp;->H(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldne;

    :try_start_0
    iget-object v1, p0, Lgwy;->j:Lkbc;

    const-string v2, "ddepth"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, v0, Ldne;->a:Ljava/lang/Object;

    iget-object v2, v0, Ldne;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->d([BLcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;Lgtk;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lgwp;->k()Lhjc;

    move-result-object v2

    check-cast v2, Lhjd;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lhjd;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Ldne;->e()V

    iget-object v0, p0, Lgwy;->j:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v1

    const/4 v1, 0x0

    :goto_1
    :try_start_2
    sget-object v3, Lgwy;->d:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    invoke-interface {v3, v2}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0xd13

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v3, "Error writing depth data into jpeg."

    invoke-interface {v2, v3}, Lnah;->o(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    if-nez v1, :cond_0

    sget-object v0, Lgwp;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xcfa

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-virtual {p0}, Lgwp;->h()Lgxy;

    move-result-object v1

    const-string v2, "[%s] %s"

    const-string v3, "Couldn\'t write depth data, using original stream"

    invoke-interface {v0, v2, v1, v3}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_0
    return-object v1

    :goto_3
    invoke-virtual {v0}, Ldne;->e()V

    iget-object v0, p0, Lgwy;->j:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    throw p1

    :cond_1
    :goto_4
    return-object p1
.end method

.method public final M()V
    .locals 4

    iget-object v0, p0, Lgwy;->j:Lkbc;

    const-string v1, "CaptureSessionBase#onCaptureStarted"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-super {p0}, Lgwp;->M()V

    iget-object v0, p0, Lgwy;->j:Lkbc;

    const-string v1, "enqueueProcessingTask"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgwp;->G()V

    iget-object v0, p0, Lgwy;->l:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgwy;->j:Lkbc;

    const-string v1, "MicrovideoController#collectCaptureStartStats"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lgwy;->l:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfgc;

    invoke-interface {v0}, Lfgc;->a()Lnjo;

    move-result-object v0

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, p0, Lgwy;->l:Lmqp;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lgwy;->j:Lkbc;

    const-string v2, "CaptureSessionNotifier#onCaptureStarted"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgwp;->o()Lgwm;

    move-result-object v1

    invoke-virtual {p0}, Lgwp;->i()Lgya;

    move-result-object v2

    iget-object v3, p0, Lgwy;->g:Ljvs;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-static {v2, v0, v3}, Lfcr;->b(Lgya;Lnjo;Ljava/lang/Float;)Lfce;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgwm;->c(Lfce;)V

    iget-object v0, p0, Lgwy;->j:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    invoke-virtual {p0}, Lgwp;->p()Lnou;

    move-result-object v0

    new-instance v1, Lhck;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lhck;-><init>(I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-interface {v0, v1, v2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final r([BLhkt;)Lnou;
    .locals 8

    const-string v0, "saveAndFinish"

    invoke-virtual {p0, v0}, Lgwp;->H(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v0

    invoke-virtual {v0}, Ljew;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Ignoring saveAndFinish. CaptureSession has been deleted or canceled."

    invoke-virtual {p0, p1}, Lgwp;->I(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgwp;->p()Lnou;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Ljew;->ag([I)V

    invoke-virtual {p0}, Lgwp;->e()Lcjf;

    move-result-object v0

    invoke-virtual {v0}, Lcjf;->b()Lmqp;

    move-result-object v0

    iput-object v0, p2, Lhkt;->d:Lmqp;

    iget-object v0, p0, Lgwy;->f:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p2, Lhkt;->e:Z

    iget-object v0, p0, Lgwy;->i:Lgcg;

    invoke-virtual {v0}, Ljwi;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgcf;

    iput-object v0, p2, Lhkt;->f:Lgcf;

    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljew;->ah(I)V

    iget-object v0, p0, Lgwy;->k:Lgto;

    iget-object v1, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v1, p2, v0}, Lgwd;->o(Lhkt;Lgto;)Lmqp;

    move-result-object v5

    invoke-virtual {p0}, Lgwp;->x()Lnph;

    move-result-object v0

    new-instance v1, Ldje;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Ldje;-><init>(Lgwy;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0}, Lgwp;->F()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lapv;

    const/16 v7, 0xf

    move-object v2, v1

    move-object v3, p0

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lapv;-><init>(Lgwy;Lhkt;Lmqp;[BI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lgwp;->p()Lnou;

    move-result-object p1

    return-object p1
.end method
