.class public final Lgio;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lkrh;

.field public c:Z

.field public final d:Lker;

.field public e:Lnwn;

.field private final f:Lkbc;

.field private final g:Lecd;

.field private final h:Lebl;

.field private final i:Lgiz;

.field private final j:Lebv;

.field private final k:Lgnk;

.field private final l:Ldhi;

.field private final m:Lmqp;

.field private final n:Lgno;

.field private final o:Lghx;

.field private final p:Lgue;

.field private final q:Lgkr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/commands/PckHdrPlusBurstTaker"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgio;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lkbc;Lecd;Lebl;Lgiz;Lebv;Lgue;Lkrh;Ldhi;Lmqp;Lgno;Lghx;Lker;Lgkr;Lgnk;[B[B)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lgio;->c:Z

    move-object v1, p1

    iput-object v1, v0, Lgio;->f:Lkbc;

    move-object v1, p2

    iput-object v1, v0, Lgio;->g:Lecd;

    move-object v1, p3

    iput-object v1, v0, Lgio;->h:Lebl;

    move-object v1, p4

    iput-object v1, v0, Lgio;->i:Lgiz;

    move-object v1, p5

    iput-object v1, v0, Lgio;->j:Lebv;

    move-object v1, p6

    iput-object v1, v0, Lgio;->p:Lgue;

    move-object v1, p7

    iput-object v1, v0, Lgio;->b:Lkrh;

    move-object v1, p8

    iput-object v1, v0, Lgio;->l:Ldhi;

    move-object v1, p9

    iput-object v1, v0, Lgio;->m:Lmqp;

    move-object v1, p10

    iput-object v1, v0, Lgio;->n:Lgno;

    move-object v1, p12

    iput-object v1, v0, Lgio;->d:Lker;

    move-object v1, p13

    iput-object v1, v0, Lgio;->q:Lgkr;

    move-object/from16 v1, p14

    iput-object v1, v0, Lgio;->k:Lgnk;

    move-object v1, p11

    iput-object v1, v0, Lgio;->o:Lghx;

    return-void
.end method

.method private final d(Leea;IILkeb;Lnqg;Lkou;Lfzy;)Lkou;
    .locals 10

    const/4 v6, 0x1

    sget-object v7, Lmpx;->a:Lmpx;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lgio;->a(Leea;IILkeb;Lnqg;ZLmqp;Lkou;Lfzy;)Lkou;

    move-result-object v0

    return-object v0
.end method

.method private final e(Leea;IILkou;J)V
    .locals 9

    sget-object v0, Lgio;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0xaa9

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lnah;

    add-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1}, Leea;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p1, Leea;->q:Lkll;

    const-string v3, "Marking frame %d of %d (frame %s) as invalid for shot %s (camera %s)."

    invoke-interface/range {v2 .. v8}, Lnah;->D(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lgio;->g:Lecd;

    iget-object v2, p1, Leea;->q:Lkll;

    sget-object v5, Lnqg;->a:Lnqg;

    const/4 v6, 0x0

    move-object v1, p1

    move v3, p2

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lecd;->C(Leea;Lkll;ILkou;Lnqg;Lkpb;)V

    return-void
.end method

.method private final f(Leea;)Z
    .locals 3

    iget-boolean v0, p0, Lgio;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Leea;->a()I

    iget-object v0, p0, Lgio;->q:Lgkr;

    iget-object v0, v0, Lgkr;->c:Ljava/lang/Object;

    new-instance v1, Ldoe;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ldoe;-><init>([B)V

    invoke-interface {v0, v1}, Lgxl;->w(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lgio;->g:Lecd;

    invoke-interface {v0, p1}, Lecd;->n(Leea;)V

    iget-object v0, p0, Lgio;->j:Lebv;

    iget-object p1, p1, Leea;->v:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object p1

    invoke-virtual {v0, p1}, Lebv;->d(Lgxy;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static final g(Lker;)V
    .locals 3

    :try_start_0
    invoke-interface {p0}, Lker;->c()Lkem;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkem;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkem;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {v0}, Lkem;->a()Lkfz;

    move-result-object v0

    invoke-interface {p0, v0}, Lker;->f(Lkfz;)Lkgn;

    move-result-object p0

    invoke-virtual {p0}, Lkgn;->close()V
    :try_end_0
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lgio;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Failed to unlock lens."

    const/16 v2, 0xaaa

    invoke-static {v0, v1, v2, p0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a(Leea;IILkeb;Lnqg;ZLmqp;Lkou;Lfzy;)Lkou;
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p4

    iget-object v0, v8, Lgio;->f:Lkbc;

    if-eqz p6, :cond_0

    const-string v1, "Frame"

    move/from16 v4, p3

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecondaryFrame"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "of"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v8, Lgio;->p:Lgue;

    invoke-virtual {v0, v9}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v0

    invoke-interface/range {p4 .. p4}, Lkeb;->c()Lkou;

    move-result-object v1

    if-eqz p6, :cond_5

    sget-object v2, Liux;->m:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface/range {p4 .. p4}, Lkeb;->c()Lkou;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v5, Liux;->m:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    if-eqz v1, :cond_2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    invoke-interface/range {p4 .. p4}, Lkeb;->close()V

    iget-object v0, v8, Lgio;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-object v3

    :cond_3
    :goto_2
    :try_start_1
    iget-boolean v2, v8, Lgio;->c:Z

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, v8, Lgio;->h:Lebl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lebl;->i(Z)V

    move-object/from16 v2, p9

    invoke-interface {v2, v3}, Lfzy;->f(Z)V

    iget-object v2, v8, Lgio;->j:Lebv;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3, v9}, Lebv;->e(Leea;Lkeb;)V

    invoke-virtual {v0}, Lgli;->a()Lkfj;

    move-result-object v2

    invoke-interface {v2}, Lkfj;->c()Lkll;

    move-result-object v2

    move-object v12, v2

    goto :goto_3

    :cond_5
    move-object/from16 v3, p1

    invoke-virtual {v0}, Lgli;->b()Lkfj;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lgli;->b()Lkfj;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lkfj;->c()Lkll;

    move-result-object v2

    move-object v12, v2

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lgli;->a()Lkfj;

    move-result-object v2

    invoke-interface {v2}, Lkfj;->c()Lkll;

    move-result-object v2

    move-object v12, v2

    :goto_3
    iget-object v2, v8, Lgio;->f:Lkbc;

    if-eqz p6, :cond_7

    const-string v5, "RetrievingImage"

    goto :goto_4

    :cond_7
    const-string v5, "RetrievingImageSecondary"

    :goto_4
    invoke-interface {v2, v5}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgli;->e()Lkpb;

    move-result-object v2

    iget-object v5, v8, Lgio;->f:Lkbc;

    invoke-interface {v5}, Lkbc;->f()V

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lgli;->d()Lkpb;

    move-result-object v17

    iget-object v10, v8, Lgio;->g:Lecd;

    move-object/from16 v11, p1

    move/from16 v13, p2

    move-object v14, v1

    move-object/from16 v15, p5

    move-object/from16 v16, v2

    move-object/from16 v18, p7

    invoke-interface/range {v10 .. v18}, Lecd;->o(Leea;Lkll;ILkou;Lnqg;Lkpb;Lkpb;Lmqp;)V

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    invoke-interface {v2}, Lkpb;->d()J

    invoke-interface {v1}, Lkou;->b()J

    goto :goto_7

    :cond_8
    if-eqz v2, :cond_9

    invoke-interface {v2}, Lkpb;->close()V

    :cond_9
    if-eqz v1, :cond_a

    move-object v0, v1

    goto :goto_5

    :cond_a
    move-object/from16 v0, p8

    :goto_5
    if-eqz v0, :cond_c

    invoke-interface/range {p4 .. p4}, Lkeb;->b()Lkeg;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-wide v1, v1, Lkeg;->c:J

    move-wide v6, v1

    goto :goto_6

    :cond_b
    const-wide/16 v1, -0x1

    move-wide v6, v1

    :goto_6
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v5, v0

    invoke-direct/range {v1 .. v7}, Lgio;->e(Leea;IILkou;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    move-object v1, v0

    :goto_7
    invoke-interface/range {p4 .. p4}, Lkeb;->close()V

    iget-object v0, v8, Lgio;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-interface/range {p4 .. p4}, Lkeb;->close()V

    iget-object v1, v8, Lgio;->f:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public final b(Leea;Lcom/google/googlex/gcam/BurstSpec;Lmqp;Lkou;Lfzy;Lkem;Lkgq;Lkad;Lhjc;IIIZLebb;)I
    .locals 26

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p7

    move-object/from16 v8, p14

    invoke-direct/range {p0 .. p1}, Lgio;->f(Leea;)Z

    move-result v1

    const/4 v13, 0x2

    if-eqz v1, :cond_0

    return v13

    :cond_0
    iget-object v1, v9, Lgio;->f:Lkbc;

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HdrPlusPayload"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/BurstSpec;->b()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v7

    sget-object v1, Lfnq;->n:Lfnq;

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object v14

    if-gtz p10, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    iget-object v1, v9, Lgio;->f:Lkbc;

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildPayloadRequests"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v1, v12, Lkgq;->c:Lmwn;

    invoke-virtual/range {p7 .. p7}, Lkgq;->a()Ljvs;

    move-result-object v1

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    iget-object v6, v9, Lgio;->i:Lgiz;

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    move-result v1

    int-to-long v4, v1

    sget-object v1, Liux;->l:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v14}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v14}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/gcam/FrameRequestVector;

    invoke-virtual {v1}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide v1

    long-to-int v2, v1

    move/from16 v16, v2

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    :goto_0
    move-object v1, v6

    move-object/from16 v2, p6

    const/4 v13, 0x0

    move-object/from16 v3, p5

    move-wide/from16 v18, v4

    move-object/from16 v4, p7

    move/from16 v5, p10

    move-object/from16 v20, v6

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lgiz;->c(Lkem;Lfzy;Lkgq;II)V

    move-object/from16 v1, v20

    move-wide/from16 v2, v18

    move-object/from16 v4, p6

    move-object v5, v7

    move-object/from16 v6, p4

    move/from16 v7, p10

    invoke-virtual/range {v1 .. v7}, Lgiz;->b(JLkem;Lcom/google/googlex/gcam/FrameRequestVector;Lkou;I)Ljava/util/List;

    move-result-object v7

    if-lez v16, :cond_3

    sget-object v1, Liux;->l:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v4, p6

    invoke-interface {v4, v1, v2}, Lkem;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v14}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/googlex/gcam/FrameRequestVector;

    move-object/from16 v1, v20

    move-wide/from16 v2, v18

    move-object/from16 v6, p4

    move-object v14, v7

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lgiz;->b(JLkem;Lcom/google/googlex/gcam/FrameRequestVector;Lkou;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v14, v13, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    :cond_3
    move-object v14, v7

    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int v2, p10, p12

    if-eq v1, v2, :cond_4

    sget-object v1, Lgio;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0xa9a

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Unexpected frameRequests length: %d != PSAF %d + payload %d"

    invoke-interface {v1, v4, v2, v3, v15}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    iget-object v1, v9, Lgio;->f:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    sget-object v1, Lngg;->d:Lngg;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iput-object v1, v9, Lgio;->e:Lnwn;

    :try_start_0
    iget-object v1, v9, Lgio;->g:Lecd;

    invoke-interface {v1, v10, v0}, Lecd;->r(Leea;Lcom/google/googlex/gcam/BurstSpec;)V

    iget-object v1, v9, Lgio;->j:Lebv;

    invoke-virtual {v1, v10, v0, v11}, Lebv;->f(Leea;Lcom/google/googlex/gcam/BurstSpec;Lkou;)V

    iget-object v0, v9, Lgio;->h:Lebl;

    invoke-virtual {v0}, Lebl;->l()Z

    move-result v0

    const/4 v15, 0x1

    if-nez v0, :cond_6

    iget-object v1, v9, Lgio;->l:Ldhi;

    sget-object v2, Ldhu;->i:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_7

    iget-object v1, v9, Lgio;->h:Lebl;

    invoke-virtual {v1, v15}, Lebl;->i(Z)V

    move-object/from16 v7, p5

    invoke-interface {v7, v15}, Lfzy;->f(Z)V

    goto :goto_3

    :cond_7
    move-object/from16 v7, p5

    :goto_3
    if-nez v0, :cond_8

    iget-object v1, v9, Lgio;->m:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgmr;

    invoke-virtual {v1, v10}, Lgmr;->k(Leea;)V

    :cond_8
    iget-object v1, v9, Lgio;->e:Lnwn;

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_9
    iget-object v1, v1, Lnwn;->b:Lnws;

    check-cast v1, Lngg;

    iget v2, v1, Lngg;->a:I

    or-int/2addr v2, v15

    iput v2, v1, Lngg;->a:I

    iput-boolean v0, v1, Lngg;->b:Z

    invoke-interface/range {p5 .. p5}, Lfzy;->h()V

    iget-object v0, v9, Lgio;->d:Lker;

    const/4 v1, 0x4

    if-nez v0, :cond_a

    const/4 v13, 0x4

    goto/16 :goto_1d

    :cond_a
    invoke-direct/range {p0 .. p1}, Lgio;->f(Leea;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_b

    const/4 v13, 0x2

    goto/16 :goto_1d

    :cond_b
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    invoke-virtual/range {p7 .. p7}, Lkgq;->a()Ljvs;

    move-result-object v0

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    invoke-static {v14}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lefv;->n:Lefv;

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lmtf;->a:Lj$/util/stream/Collector;

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmvv;

    if-eqz p13, :cond_d

    iget-object v2, v9, Lgio;->d:Lker;

    invoke-interface {v2}, Lker;->c()Lkem;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkfy;

    invoke-static {v4}, Lkfy;->g(Lkfy;)Lkfy;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lkem;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v11, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    if-eqz v5, :cond_c

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v11, v6}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-interface {v2, v5, v6}, Lkem;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_c
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lkem;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lkem;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {v2}, Lkem;->a()Lkfz;

    move-result-object v2

    invoke-interface {v4}, Lkem;->a()Lkfz;

    move-result-object v4

    invoke-static {v2, v4}, Lmvv;->m(Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v2

    goto :goto_4

    :cond_d
    const/16 v16, 0x2

    sget v2, Lmvv;->d:I

    sget-object v2, Lmyu;->a:Lmvv;

    :goto_4
    if-eqz p13, :cond_e

    move-object v4, v2

    check-cast v4, Lmyu;

    iget v4, v4, Lmyu;->c:I

    :cond_e
    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmvq;->h(Ljava/lang/Iterable;)V

    invoke-virtual {v4, v0}, Lmvq;->h(Ljava/lang/Iterable;)V

    invoke-virtual {v4}, Lmvq;->f()Lmvv;

    move-result-object v0

    iget-object v4, v9, Lgio;->d:Lker;

    invoke-interface {v4, v0}, Lker;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iget-object v0, v9, Lgio;->d:Lker;

    invoke-interface {v0}, Lker;->b()Lkem;

    move-result-object v4

    invoke-interface {v4}, Lkem;->a()Lkfz;

    move-result-object v4

    invoke-interface {v0, v4}, Lker;->g(Lkfz;)V

    iget-object v0, v9, Lgio;->o:Lghx;

    iget-object v4, v9, Lgio;->d:Lker;

    iget-object v5, v10, Leea;->v:Lgkr;

    iget-object v5, v5, Lgkr;->c:Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Lghx;->a(Lker;Lgxl;)V

    iget-object v0, v10, Leea;->v:Lgkr;

    iget-object v0, v0, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v0, v13}, Lgxl;->C(Z)V

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v17, 0x6

    if-eqz v0, :cond_f

    sget-object v0, Lgio;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0xa94

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Error submitting requests for shot %s"

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lnah;->p(Ljava/lang/String;I)V

    const/4 v13, 0x6

    goto/16 :goto_1d

    :cond_f
    move-object v0, v2

    check-cast v0, Lmyu;

    iget v0, v0, Lmyu;->c:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v6, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    check-cast v2, Lmyu;

    iget v0, v2, Lmyu;->c:I

    invoke-interface {v6, v13, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkgn;

    invoke-virtual {v2}, Lkgn;->close()V
    :try_end_1
    .catch Lkdf; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_5

    :cond_10
    if-nez v3, :cond_12

    if-eqz p13, :cond_11

    const/16 v18, 0x1

    goto :goto_6

    :cond_11
    const/16 v18, 0x0

    goto :goto_6

    :cond_12
    const/16 v18, 0x1

    :goto_6
    if-nez v18, :cond_13

    :try_start_2
    invoke-interface/range {p8 .. p8}, Lkad;->close()V

    const/16 v19, 0x1

    goto :goto_7

    :cond_13
    const/16 v19, 0x0

    :goto_7
    iget-object v0, v9, Lgio;->h:Lebl;

    invoke-virtual {v0}, Lebl;->l()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-boolean v0, v8, Lebb;->l:Z

    if-nez v0, :cond_14

    move-object/from16 p2, v5

    move-object/from16 v24, v6

    const/4 v3, 0x0

    const/16 v20, 0x0

    goto/16 :goto_e

    :cond_14
    iget-object v0, v9, Lgio;->k:Lgnk;

    if-nez v0, :cond_15

    sget-object v0, Lgio;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Ring buffer not provided."

    const/16 v2, 0xaa4

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    sget-object v0, Lmyu;->a:Lmvv;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_a

    :cond_15
    :try_start_3
    iget-object v0, v9, Lgio;->f:Lkbc;

    const-string v1, "HdrPlus#dumpRingBuffer"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, v9, Lgio;->k:Lgnk;

    invoke-interface {v0}, Lgnk;->a()Lgnj;

    move-result-object v0

    iget-object v1, v9, Lgio;->k:Lgnk;

    invoke-interface {v1}, Lgnk;->i()Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lmyu;

    iget v2, v2, Lmyu;->c:I

    invoke-interface {v0}, Lgnj;->a()V

    iget-object v0, v9, Lgio;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, v9, Lgio;->f:Lkbc;

    const-string v2, "HdrPlus#filterTbFrames"

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, v9, Lgio;->n:Lgno;

    invoke-virtual {v0, v1}, Lgno;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {v1}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v0

    goto :goto_9

    :cond_16
    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v2

    check-cast v1, Lmvv;

    invoke-virtual {v1}, Lmvv;->s()Lnad;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkeb;

    invoke-interface {v3}, Lkeb;->b()Lkeg;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {v2, v3}, Lmvq;->g(Ljava/lang/Object;)V

    goto :goto_8

    :cond_17
    invoke-interface {v3}, Lkeb;->close()V

    goto :goto_8

    :cond_18
    invoke-virtual {v2}, Lmvq;->f()Lmvv;

    move-result-object v0

    :goto_9
    invoke-virtual {v0}, Lmvv;->size()I

    iget-object v1, v9, Lgio;->f:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_a

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lmyu;->a:Lmvv;

    :goto_a
    invoke-virtual {v0}, Lmvv;->size()I

    move-result v20

    iget-object v1, v9, Lgio;->f:Lkbc;

    const-string v2, "HdrPlus_Frames#processZslFrames"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-boolean v1, v8, Lebb;->l:Z

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v21, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lkeb;

    add-int v4, v20, p11

    sget-object v22, Lnqg;->c:Lnqg;

    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v21

    move-object/from16 p2, v5

    move-object v5, v8

    move-object/from16 v24, v6

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lgio;->d(Leea;IILkeb;Lnqg;Lkou;Lfzy;)Lkou;

    move-result-object v1

    if-eqz v1, :cond_19

    add-int/lit8 v21, v21, 0x1

    :cond_19
    move-object/from16 v5, p2

    move-object/from16 v7, p5

    move-object/from16 v6, v24

    goto :goto_b

    :cond_1a
    move-object/from16 p2, v5

    move-object/from16 v24, v6

    move/from16 v3, v21

    goto :goto_d

    :cond_1b
    move-object/from16 p2, v5

    move-object/from16 v24, v6

    if-lez v20, :cond_1c

    iget-object v1, v9, Lgio;->m:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkeb;

    invoke-interface {v1}, Lkeb;->a()Lkeb;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v2, v9, Lgio;->m:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgmr;

    invoke-virtual {v2, v10, v1}, Lgmr;->e(Leea;Lkeb;)V

    :cond_1c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkeb;

    invoke-interface {v1}, Lkeb;->close()V

    goto :goto_c

    :cond_1d
    const/4 v3, 0x0

    :goto_d
    iget-object v0, v9, Lgio;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_e

    :cond_1e
    move-object/from16 p2, v5

    move-object/from16 v24, v6

    const/4 v3, 0x0

    const/16 v20, 0x0

    :goto_e
    :try_start_5
    iget-object v0, v9, Lgio;->f:Lkbc;

    const-string v1, "HdrPlus#payloadAwait"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move/from16 v21, v3

    const/4 v0, 0x0

    :goto_f
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    move-object/from16 v8, p2

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lkgn;

    invoke-virtual {v7, v12}, Lkgn;->a(Lkgq;)Lkeb;

    move-result-object v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v22, :cond_26

    :try_start_6
    iget-boolean v1, v9, Lgio;->c:Z

    if-eqz v1, :cond_1f

    invoke-interface/range {v22 .. v22}, Lkeb;->close()V

    goto/16 :goto_15

    :cond_1f
    invoke-static/range {v22 .. v22}, Lkfg;->y(Lkeb;)V

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgxb;

    iget-object v1, v1, Lgxb;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/googlex/gcam/FrameRequest;

    invoke-virtual {v1}, Lcom/google/googlex/gcam/FrameRequest;->a()Lnqg;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    add-int v4, p11, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v21

    move-object/from16 v5, v22

    move-object/from16 v23, v7

    move-object v7, v11

    move-object/from16 v25, v8

    move-object/from16 v8, p5

    :try_start_7
    invoke-direct/range {v1 .. v8}, Lgio;->d(Leea;IILkeb;Lnqg;Lkou;Lfzy;)Lkou;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_21

    add-int/lit8 v21, v21, 0x1

    :try_start_8
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v2}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    :cond_20
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v2}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v2}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v11, v1

    goto :goto_10

    :catch_1
    move-exception v0

    move-object v11, v1

    move/from16 v0, v21

    goto :goto_12

    :cond_21
    :goto_10
    :try_start_9
    invoke-virtual/range {v23 .. v23}, Lkgn;->close()V

    goto :goto_14

    :catch_2
    move-exception v0

    goto :goto_11

    :catch_3
    move-exception v0

    move-object/from16 v25, v8

    :goto_11
    move/from16 v0, v21

    :goto_12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    sget-object v1, Lgio;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0xa90

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Failed to awaitComplete on frame %s."

    invoke-interface {v1, v2, v0}, Lnah;->p(Ljava/lang/String;I)V

    invoke-interface/range {v22 .. v22}, Lkeb;->close()V

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkgn;

    invoke-virtual {v2}, Lkgn;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_13

    :cond_22
    if-nez v0, :cond_25

    :try_start_a
    iget-object v0, v9, Lgio;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iput-boolean v13, v9, Lgio;->c:Z

    if-eqz p13, :cond_23

    iget-object v0, v9, Lgio;->d:Lker;

    invoke-static {v0}, Lgio;->g(Lker;)V

    :cond_23
    if-nez v19, :cond_24

    invoke-interface/range {p8 .. p8}, Lkad;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_24
    const/4 v13, 0x6

    goto/16 :goto_1d

    :cond_25
    :try_start_b
    iget-object v1, v9, Lgio;->q:Lgkr;

    iget-object v1, v1, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v1}, Lfzz;->f()V

    move v3, v0

    goto :goto_16

    :cond_26
    move-object/from16 v25, v8

    :goto_14
    add-int/lit8 v0, v0, 0x1

    move-object/from16 p2, v25

    goto/16 :goto_f

    :cond_27
    :goto_15
    move/from16 v3, v21

    :goto_16
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkgn;

    invoke-virtual {v1}, Lkgn;->close()V

    goto :goto_17

    :cond_28
    if-eqz p13, :cond_29

    iget-object v0, v9, Lgio;->d:Lker;

    invoke-static {v0}, Lgio;->g(Lker;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v8, 0x0

    goto :goto_18

    :cond_29
    move/from16 v8, p13

    :goto_18
    if-eqz v18, :cond_2a

    :try_start_c
    invoke-interface/range {p8 .. p8}, Lkad;->close()V

    const/16 v19, 0x1

    goto :goto_19

    :catchall_0
    move-exception v0

    goto :goto_1c

    :cond_2a
    :goto_19
    if-nez v3, :cond_2b

    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_1a

    :cond_2b
    move-object v5, v11

    :goto_1a
    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p11

    move-object/from16 v6, p9

    invoke-virtual/range {v1 .. v7}, Lgio;->c(Leea;IILkou;Lhjc;Z)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eq v15, v0, :cond_2c

    const/4 v0, 0x7

    const/16 v16, 0x7

    goto :goto_1b

    :cond_2c
    :goto_1b
    :try_start_d
    iget-object v0, v9, Lgio;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iput-boolean v13, v9, Lgio;->c:Z

    if-eqz v8, :cond_2d

    iget-object v0, v9, Lgio;->d:Lker;

    invoke-static {v0}, Lgio;->g(Lker;)V

    :cond_2d
    if-nez v19, :cond_2e

    invoke-interface/range {p8 .. p8}, Lkad;->close()V

    :cond_2e
    move/from16 v13, v16

    goto :goto_1d

    :catchall_1
    move-exception v0

    move/from16 v8, p13

    :goto_1c
    iget-object v1, v9, Lgio;->f:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    iput-boolean v13, v9, Lgio;->c:Z

    if-eqz v8, :cond_2f

    iget-object v1, v9, Lgio;->d:Lker;

    invoke-static {v1}, Lgio;->g(Lker;)V

    :cond_2f
    if-nez v19, :cond_30

    invoke-interface/range {p8 .. p8}, Lkad;->close()V

    :cond_30
    throw v0

    :catch_4
    move-exception v0

    sget-object v0, Lgio;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0xa8d

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Failed to submit frame requests for shot %d."

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lnah;->p(Ljava/lang/String;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    const/4 v13, 0x4

    :goto_1d
    iget-object v0, v9, Lgio;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return v13

    :catchall_2
    move-exception v0

    iget-object v1, v9, Lgio;->f:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    goto :goto_1f

    :goto_1e
    throw v0

    :goto_1f
    goto :goto_1e
.end method

.method public final c(Leea;IILkou;Lhjc;Z)Z
    .locals 8

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    if-eqz p6, :cond_0

    invoke-interface {p5, p4, v0}, Lhjc;->c(Lkoq;Z)V

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_1

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lgio;->e(Leea;IILkou;J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_2

    iget-object p3, p1, Leea;->v:Lgkr;

    iget-object p3, p3, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {p3}, Lfzz;->d()Lfzy;

    move-result-object p3

    invoke-interface {p3}, Lfzy;->b()V

    iget-object p3, p0, Lgio;->e:Lnwn;

    invoke-virtual {p3}, Lnwn;->i()Lnws;

    move-result-object p3

    check-cast p3, Lngg;

    check-cast p5, Lhjd;

    iput-object p3, p5, Lhjd;->n:Lngg;

    :cond_2
    iget-object p3, p0, Lgio;->f:Lkbc;

    const-string p4, "HdrPlus#endPayload"

    invoke-interface {p3, p4}, Lkbc;->g(Ljava/lang/String;)V

    iget-object p3, p0, Lgio;->g:Lecd;

    invoke-interface {p3, p1}, Lecd;->x(Leea;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_6

    if-eqz p6, :cond_4

    iget-object p3, p0, Lgio;->j:Lebv;

    invoke-virtual {p3, p1}, Lebv;->h(Leea;)V

    iget-object p3, p1, Leea;->v:Lgkr;

    iget-object p3, p3, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p3}, Lgxl;->D()V

    invoke-virtual {p1}, Leea;->a()I

    iget-boolean p3, p0, Lgio;->c:Z

    if-eqz p3, :cond_4

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lgio;->f(Leea;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    iget-object p2, p0, Lgio;->g:Lecd;

    invoke-interface {p2, p1}, Lecd;->y(Leea;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Leea;->a()I

    return v0

    :cond_5
    sget-object p2, Lgio;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 p3, 0xaad

    invoke-interface {p2, p3}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    invoke-virtual {p1}, Leea;->a()I

    move-result p1

    const-string p3, "EndShotCapture failed for shot %d."

    invoke-interface {p2, p3, p1}, Lnah;->p(Ljava/lang/String;I)V

    return p4

    :cond_6
    sget-object p2, Lgio;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 p3, 0xaac

    invoke-interface {p2, p3}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    invoke-virtual {p1}, Leea;->a()I

    move-result p1

    const-string p3, "EndPayloadFrames failed for shot %d."

    invoke-interface {p2, p3, p1}, Lnah;->p(Ljava/lang/String;I)V

    return p4
.end method
