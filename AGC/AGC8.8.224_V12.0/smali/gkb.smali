.class public final Lgkb;
.super Ljava/lang/Object;

# interfaces
.implements Lgam;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lgam;

.field private final c:Ljava/util/Set;

.field private final d:Lgjl;

.field private final e:Lecd;

.field private final f:Lebv;

.field private final g:Lgjy;

.field private final h:Lkbc;

.field private final i:Lgue;

.field private final j:Lgkf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/commands/PckZslShastaImageCaptureCommand"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgkb;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lgam;Lmqp;Lecd;Lebv;Lgjy;Lgkf;Lgue;Lkbc;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgkb;->b:Lgam;

    iput-object p1, p0, Lgkb;->c:Ljava/util/Set;

    iput-object p6, p0, Lgkb;->g:Lgjy;

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgjl;

    iput-object p1, p0, Lgkb;->d:Lgjl;

    iput-object p4, p0, Lgkb;->e:Lecd;

    iput-object p5, p0, Lgkb;->f:Lebv;

    iput-object p7, p0, Lgkb;->j:Lgkf;

    iput-object p8, p0, Lgkb;->i:Lgue;

    iput-object p9, p0, Lgkb;->h:Lkbc;

    return-void
.end method

.method private static final d(Lgam;Ljava/util/List;Lgal;Lgkr;)V
    .locals 3

    sget-object v0, Lgkb;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Executing fallback"

    const/16 v2, 0xb53

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkeb;

    invoke-interface {v0}, Lkeb;->close()V

    goto :goto_0

    :cond_0
    iget-object p1, p3, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->k()Lhjc;

    move-result-object p1

    invoke-interface {p1}, Lhjc;->f()V

    iget-object p1, p3, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {p1}, Lfzz;->h()V

    invoke-interface {p0, p2, p3}, Lgam;->c(Lgal;Lgkr;)V

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Lgkb;->b:Lgam;

    invoke-interface {v0}, Lgam;->a()Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 1

    iget-object v0, p0, Lgkb;->c:Ljava/util/Set;

    invoke-static {v0}, Llyh;->C(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lfwt;->c(Ljava/util/List;)Lfwn;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lgal;Lgkr;)V
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    const-string v12, "Error getting ZSL frames"

    invoke-static {v12}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    const-string v13, "Failed to acquire metering frame."

    const-string v14, "Aborting HDR+ shot."

    const-string v15, "Final"

    iget-object v3, v1, Lgkb;->h:Lkbc;

    const-string v4, "PckZslShastaImageCaptureCommand#captureImage"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v3, v1, Lgkb;->h:Lkbc;

    const-string v4, "PckZslShastaImageCaptureCommand#getZslFramesAsync"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v3, v1, Lgkb;->d:Lgjl;

    iget-object v4, v11, Lgkr;->c:Ljava/lang/Object;

    iget-object v5, v3, Lgjl;->g:Lkbc;

    const-string v6, "getZslFramesAsync"

    invoke-interface {v5, v6}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v10, Lgjk;

    iget-object v5, v3, Lgjl;->d:Lgnk;

    invoke-direct {v10, v5}, Lgjk;-><init>(Lgnk;)V

    iget-object v5, v3, Lgjl;->l:Ljava/util/concurrent/Executor;

    iget-object v6, v3, Lgjl;->g:Lkbc;

    iget-object v7, v10, Lgjk;->b:Lgnk;

    invoke-interface {v7}, Lgnk;->a()Lgnj;

    move-result-object v7

    iput-object v7, v10, Lgjk;->d:Lgnj;

    iget-object v7, v10, Lgjk;->b:Lgnk;

    const-string v8, "Initial"

    invoke-interface {v7, v8}, Lgnk;->l(Ljava/lang/String;)V

    iget-object v7, v10, Lgjk;->b:Lgnk;

    invoke-interface {v7}, Lgnk;->n()Lkgq;

    move-result-object v7

    invoke-virtual {v7}, Lkgq;->a()Ljvs;

    move-result-object v7

    invoke-interface {v7}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v10, Lgjk;->b:Lgnk;

    invoke-interface {v8}, Lgnk;->j()Ljava/util/List;

    move-result-object v8

    iput-object v8, v10, Lgjk;->c:Ljava/util/List;

    const/4 v9, 0x1

    invoke-interface {v4, v9}, Lgxl;->C(Z)V

    iget-object v4, v10, Lgjk;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    iget-object v4, v10, Lgjk;->c:Ljava/util/List;

    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v4

    sget-object v8, Lefv;->r:Lefv;

    invoke-virtual {v4, v8}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v4

    sget v8, Lmvv;->d:I

    sget-object v8, Lmyu;->a:Lmvv;

    invoke-virtual {v4, v8}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v10, Lgjk;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    if-ge v7, v8, :cond_2

    rsub-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v7, :cond_1

    sget-object v8, Lgjl;->a:Lnak;

    invoke-virtual {v8}, Lnaf;->c()Lnaz;

    move-result-object v8

    check-cast v8, Lnah;

    const/16 v9, 0xade

    invoke-interface {v8, v9}, Lnah;->G(I)Lnaz;

    move-result-object v8

    check-cast v8, Lnah;

    const-string v9, "Capacity depleted, releasing %d buffers."

    invoke-interface {v8, v9, v7}, Lnah;->p(Ljava/lang/String;I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_0

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lkeb;

    invoke-interface/range {v16 .. v16}, Lkeb;->b()Lkeg;

    invoke-interface/range {v16 .. v16}, Lkeb;->close()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    move-object v4, v8

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    iput-object v4, v10, Lgjk;->c:Ljava/util/List;

    new-instance v4, Lfqt;

    const/16 v7, 0x10

    invoke-direct {v4, v10, v6, v7}, Lfqt;-><init>(Lgjk;Lkbc;I)V

    invoke-interface {v5, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v3, v3, Lgjl;->g:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    iget-object v3, v1, Lgkb;->h:Lkbc;

    const-string v4, "Shasta_pckZslHdrPlusProcessor#getLastGoodMetadata"

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v3, v10, Lgjk;->c:Ljava/util/List;

    const/16 v16, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/ListIterator;->previousIndex()I

    move-result v4

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkeb;

    if-nez v4, :cond_4

    invoke-static {v5}, Lkfg;->A(Lkeb;)V

    :cond_4
    invoke-interface {v5}, Lkeb;->c()Lkou;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_5
    move-object/from16 v5, v16

    :goto_2
    if-eqz v5, :cond_6

    invoke-interface {v5}, Lkeb;->c()Lkou;

    move-result-object v3

    move-object v8, v3

    goto :goto_3

    :cond_6
    move-object/from16 v8, v16

    :goto_3
    iget-object v3, v1, Lgkb;->h:Lkbc;

    const-string v4, "Shasta_pckZslHdrPlusProcessor#createZslShot"

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    if-eqz v5, :cond_7

    if-eqz v8, :cond_7

    :try_start_0
    iget-object v3, v1, Lgkb;->i:Lgue;

    invoke-virtual {v3, v5}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v3

    iget-object v4, v1, Lgkb;->g:Lgjy;

    invoke-virtual {v3}, Lgli;->a()Lkfj;

    move-result-object v3

    invoke-interface {v3}, Lkfj;->c()Lkll;

    move-result-object v5

    const/4 v6, -0x1

    iget-object v6, v10, Lgjk;->a:Lnph;

    invoke-virtual {v6}, Lnph;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lcom/Globals;->getZslBaseFrameCount(I)I

    move-result v6

    iget-object v3, v1, Lgkb;->j:Lgkf;

    invoke-virtual {v3}, Lgkf;->a()Lebb;

    move-result-object v19
    :try_end_0
    .catch Ldnw; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, p2

    move-object v7, v8

    move-object v9, v8

    const/16 v17, 0x0

    move-object/from16 v8, v19

    move-object/from16 v30, v9

    move/from16 v9, v20

    move-object/from16 v18, v10

    move/from16 v10, v21

    :try_start_1
    invoke-virtual/range {v3 .. v10}, Lgjy;->g(Lkll;Lgkr;ILkou;Lebb;ZZ)Leea;

    move-result-object v3
    :try_end_1
    .catch Ldnw; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, v3

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v30, v8

    move-object/from16 v18, v10

    const/16 v17, 0x0

    :goto_4
    move-object v3, v0

    sget-object v4, Lgkb;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->c()Lnaz;

    move-result-object v4

    const-string v5, "Error creating the HDR+ shot."

    const/16 v6, 0xb52

    invoke-static {v4, v5, v6, v3}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    move-object/from16 v9, v16

    goto :goto_5

    :cond_7
    move-object/from16 v30, v8

    move-object/from16 v18, v10

    const/16 v17, 0x0

    move-object/from16 v9, v16

    :goto_5
    iget-object v3, v1, Lgkb;->h:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    if-eqz v9, :cond_2f

    invoke-virtual/range {v18 .. v18}, Lgjk;->a()I

    move-result v3

    if-lez v3, :cond_2e

    iget-object v3, v11, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v3}, Lfzz;->c()Lfzy;

    move-result-object v3

    invoke-interface {v3}, Lfzy;->h()V

    iget-object v3, v1, Lgkb;->h:Lkbc;

    const-string v4, "PckShastaZslController#processPayload"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_2
    iget-object v8, v1, Lgkb;->d:Lgjl;

    iget-object v3, v1, Lgkb;->j:Lgkf;

    invoke-virtual {v3}, Lgkf;->a()Lebb;

    move-result-object v28

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v6, v30

    invoke-interface {v6, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;
    :try_end_2
    .catch Ldog; {:try_start_2 .. :try_end_2} :catch_19
    .catchall {:try_start_2 .. :try_end_2} :catchall_29

    if-eqz v3, :cond_8

    :try_start_3
    iget-object v4, v8, Lgjl;->f:Lebm;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lebm;->b(J)Lkeb;

    move-result-object v2

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v4, p1

    move-object v3, v0

    move-object v2, v1

    move-object/from16 v31, v10

    move-object v5, v14

    move-object/from16 v10, v18

    goto/16 :goto_42

    :catch_2
    move-exception v0

    move-object/from16 v4, p1

    move-object v3, v0

    move-object v2, v1

    move-object/from16 v31, v10

    move-object v5, v14

    move-object/from16 v10, v18

    goto/16 :goto_44

    :cond_8
    move-object/from16 v2, v16

    :goto_6
    if-eqz v2, :cond_a

    invoke-interface {v2}, Lkeb;->c()Lkou;

    move-result-object v3

    if-eqz v3, :cond_9

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3, v4}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v6, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    iget-object v7, v8, Lgjl;->k:Lnsc;

    invoke-virtual {v7, v3}, Lnsc;->b(Lkou;)F

    move-result v3

    iget-object v7, v8, Lgjl;->k:Lnsc;

    invoke-virtual {v7, v6}, Lnsc;->b(Lkou;)F

    move-result v7

    if-eqz v4, :cond_9

    invoke-virtual {v4, v5}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    cmpl-float v3, v3, v7

    if-gez v3, :cond_b

    :cond_9
    sget-object v3, Lgjl;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    const-string v4, "Skipping cached PSL frame from different source or wrong TeT."

    const/16 v5, 0xaf2

    invoke-static {v3, v4, v5}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-interface {v2}, Lkeb;->close()V
    :try_end_3
    .catch Ldog; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v2, v16

    goto :goto_7

    :cond_a
    move-object/from16 v2, v16

    :cond_b
    :goto_7
    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v8, Lgjl;->g:Lkbc;

    const-string v5, "Shasta_frameServer#acquireSession"

    invoke-interface {v4, v5}, Lkbc;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ldog; {:try_start_4 .. :try_end_4} :catch_18
    .catchall {:try_start_4 .. :try_end_4} :catchall_28

    :try_start_5
    iget-object v4, v8, Lgjl;->b:Lken;

    invoke-interface {v4}, Lken;->d()Lker;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Lkdf; {:try_start_5 .. :try_end_5} :catch_11
    .catchall {:try_start_5 .. :try_end_5} :catchall_20

    :try_start_6
    iget-object v4, v8, Lgjl;->g:Lkbc;

    invoke-interface {v4}, Lkbc;->f()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1d

    if-eqz v2, :cond_c

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Lgjk;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v30, v3

    move-object/from16 v31, v10

    move-object/from16 v32, v14

    move-object/from16 v4, v16

    move-object/from16 v29, v4

    const/4 v1, 0x0

    goto/16 :goto_14

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v3

    move-object v2, v7

    move-object/from16 v31, v10

    move-object/from16 v32, v14

    move-object/from16 v10, v18

    const/4 v12, 0x1

    move-object v14, v8

    goto/16 :goto_33

    :cond_c
    :try_start_8
    new-instance v4, Lkbb;

    iget-object v5, v8, Lgjl;->g:Lkbc;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1d

    move-object/from16 v30, v3

    :try_start_9
    const-string v3, "ShastaZslCtrlr_getMeteringFrame"

    invoke-direct {v4, v5, v3}, Lkbb;-><init>(Lkbc;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1c

    :try_start_a
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v8, Lgjl;->d:Lgnk;

    invoke-interface {v5}, Lgnk;->k()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object/from16 v5, v16

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v3

    move-object/from16 v3, v19

    check-cast v3, Lkeb;
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-object/from16 v31, v10

    :try_start_b
    iget-object v10, v8, Lgjl;->g:Lkbc;
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object/from16 v32, v14

    :try_start_c
    const-string v14, "meteringCandidate"

    invoke-interface {v10, v14}, Lkbc;->e(Ljava/lang/String;)V

    if-nez v5, :cond_d

    invoke-interface {v3}, Lkeb;->f()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, v8, Lgjl;->j:Lgno;

    invoke-virtual {v10, v3}, Lgno;->b(Lkeb;)Z

    move-result v10

    if-eqz v10, :cond_d

    move-object v5, v3

    goto :goto_9

    :cond_d
    invoke-interface {v3}, Lkeb;->close()V

    :goto_9
    iget-object v3, v8, Lgjl;->g:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    move-object/from16 v3, v20

    move-object/from16 v10, v31

    move-object/from16 v14, v32

    goto :goto_8

    :catchall_2
    move-exception v0

    goto/16 :goto_b

    :catch_3
    move-exception v0

    goto/16 :goto_d

    :cond_e
    move-object/from16 v31, v10

    move-object/from16 v32, v14

    if-eqz v5, :cond_f

    invoke-interface {v5}, Lkeb;->b()Lkeg;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_a
    :try_start_d
    invoke-virtual {v4}, Lkbb;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/16 :goto_10

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move-object v14, v8

    move-object/from16 v10, v18

    const/4 v12, 0x1

    goto/16 :goto_33

    :catchall_4
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_e

    :cond_f
    :try_start_e
    iget-object v3, v8, Lgjl;->g:Lkbc;

    const-string v5, "ShastaZslCtrlr_getOldestFrame"

    invoke-interface {v3, v5}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v3, v8, Lgjl;->d:Lgnk;

    invoke-interface {v3}, Lgnk;->d()Lkeb;

    move-result-object v5

    if-eqz v5, :cond_11

    iget-object v3, v8, Lgjl;->j:Lgno;

    new-instance v10, Lckt;

    const/4 v14, 0x2

    invoke-direct {v10, v3, v14}, Lckt;-><init>(Lgno;I)V

    invoke-static {v5, v10}, Lkfg;->w(Lkeb;Lkex;)V

    invoke-static {v5}, Lkfg;->y(Lkeb;)V

    iget-object v3, v8, Lgjl;->j:Lgno;

    invoke-virtual {v3, v5}, Lgno;->b(Lkeb;)Z

    move-result v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v3, :cond_10

    :try_start_f
    iget-object v3, v8, Lgjl;->g:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_a

    :cond_10
    :try_start_10
    sget-object v3, Lgjl;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v10, 0xaf5

    invoke-interface {v3, v10}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const-string v10, "Found older frame, but could not lock from binning."

    invoke-interface {v3, v10}, Lnah;->o(Ljava/lang/String;)V

    invoke-interface {v5}, Lkeb;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :cond_11
    :try_start_11
    iget-object v3, v8, Lgjl;->g:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object v3, v0

    iget-object v5, v8, Lgjl;->g:Lkbc;

    invoke-interface {v5}, Lkbc;->f()V

    throw v3
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :catchall_6
    move-exception v0

    move-object/from16 v31, v10

    :goto_b
    move-object/from16 v32, v14

    :goto_c
    move-object v1, v0

    move-object v2, v7

    move-object v14, v8

    move-object/from16 v10, v18

    const/4 v12, 0x1

    goto/16 :goto_2f

    :catch_5
    move-exception v0

    move-object/from16 v31, v10

    :goto_d
    move-object/from16 v32, v14

    :goto_e
    :try_start_12
    sget-object v3, Lgjl;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v5, 0xaf4

    invoke-interface {v3, v5}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    invoke-interface {v3, v13}, Lnah;->o(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_19

    :goto_f
    :try_start_13
    invoke-virtual {v4}, Lkbb;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_18

    move-object/from16 v5, v16

    :goto_10
    if-nez v5, :cond_12

    :try_start_14
    sget-object v3, Lgjl;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0xb07

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    invoke-interface {v3, v13}, Lnah;->o(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lgjk;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    move-object/from16 v29, v5

    move-object/from16 v4, v16

    const/4 v1, 0x0

    goto/16 :goto_14

    :catchall_7
    move-exception v0

    move-object v1, v0

    move-object/from16 v29, v5

    :goto_11
    move-object v2, v7

    move-object v14, v8

    move-object/from16 v10, v18

    const/4 v12, 0x1

    goto/16 :goto_2e

    :cond_12
    :try_start_15
    iget-object v3, v8, Lgjl;->n:Lgue;

    invoke-virtual {v3, v5}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v3

    new-instance v4, Lgjj;

    iget-object v10, v8, Lgjl;->g:Lkbc;

    iget-object v13, v8, Lgjl;->i:Lgnt;

    iget-object v14, v8, Lgjl;->c:Lglt;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_17

    move-object/from16 v29, v5

    :try_start_16
    iget-object v5, v8, Lgjl;->b:Lken;

    iget-object v1, v8, Lgjl;->m:Ljava/util/concurrent/Executor;

    move-object/from16 v19, v4

    move-object/from16 v20, v8

    move-object/from16 v21, v10

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v5

    move-object/from16 v25, v1

    move-object/from16 v26, v9

    move-object/from16 v27, v6

    invoke-direct/range {v19 .. v28}, Lgjj;-><init>(Lgjl;Lkbc;Lgnt;Lglt;Lken;Ljava/util/concurrent/Executor;Leea;Lkou;Lebb;)V

    iget-object v1, v4, Lgjj;->j:Lgjl;

    iget-object v5, v4, Lgjj;->g:Leea;

    iget-object v10, v4, Lgjj;->h:Lkou;

    iget-object v13, v4, Lgjj;->k:Lebb;

    invoke-virtual {v1, v5, v10, v3, v13}, Lgjl;->b(Leea;Lkou;Lgli;Lebb;)Lcom/google/googlex/gcam/BurstSpec;

    move-result-object v22

    if-nez v22, :cond_13

    const/4 v1, 0x0

    goto :goto_12

    :cond_13
    invoke-virtual/range {v22 .. v22}, Lcom/google/googlex/gcam/BurstSpec;->b()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/gcam/FrameRequestVector;->d()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    goto :goto_12

    :cond_14
    const/4 v1, 0x1

    :goto_12
    iput-boolean v1, v4, Lgjj;->i:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    if-eqz v1, :cond_15

    :try_start_17
    iget-object v1, v4, Lgjj;->f:Ljava/util/concurrent/Executor;

    new-instance v5, Lapv;

    const/16 v24, 0xc

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    move-object/from16 v21, v3

    move-object/from16 v23, v7

    invoke-direct/range {v19 .. v24}, Lapv;-><init>(Lgjj;Lgli;Lcom/google/googlex/gcam/BurstSpec;Lker;I)V

    invoke-interface {v1, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    goto :goto_13

    :catchall_8
    move-exception v0

    move-object v1, v0

    goto :goto_11

    :cond_15
    :try_start_18
    iget-object v1, v4, Lgjj;->a:Lnph;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnph;->e(Ljava/lang/Object;)Z

    :goto_13
    iget-boolean v1, v4, Lgjj;->i:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_16

    :goto_14
    :try_start_19
    iget-object v3, v8, Lgjl;->g:Lkbc;

    const-string v5, "afDebugMetadataFetcher#populateMetadata"

    invoke-interface {v3, v5}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v3, v8, Lgjl;->h:Lghx;

    iget-object v5, v11, Lgkr;->c:Ljava/lang/Object;

    invoke-virtual {v3, v7, v5}, Lghx;->a(Lker;Lgxl;)V

    iget-object v3, v8, Lgjl;->g:Lkbc;

    const-string v5, "zslFramesFuture#get"

    invoke-interface {v3, v5}, Lkbc;->g(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_15

    move-object/from16 v10, v18

    :try_start_1a
    iget-object v3, v10, Lgjk;->a:Lnph;

    invoke-virtual {v3}, Lnph;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1a .. :try_end_1a} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    goto :goto_16

    :catchall_9
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move-object v14, v8

    const/4 v12, 0x1

    goto/16 :goto_2c

    :catch_6
    move-exception v0

    goto :goto_15

    :catch_7
    move-exception v0

    :goto_15
    :try_start_1b
    sget-object v3, Lgjl;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    const/16 v5, 0xadd

    invoke-static {v3, v12, v5}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_16
    invoke-static {v3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/util/List;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_14

    :try_start_1c
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_13

    if-nez v3, :cond_18

    if-nez v1, :cond_17

    :try_start_1d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    :try_start_1e
    invoke-interface {v7}, Lker;->close()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1e} :catch_9
    .catch Lkdf; {:try_start_1e .. :try_end_1e} :catch_8
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    :try_start_1f
    invoke-virtual {v10}, Lgjk;->close()V

    iget-object v2, v8, Lgjl;->d:Lgnk;

    invoke-interface {v2, v15}, Lgnk;->l(Ljava/lang/String;)V

    if-eqz v29, :cond_16

    invoke-interface/range {v29 .. v29}, Lkeb;->close()V
    :try_end_1f
    .catch Ldog; {:try_start_1f .. :try_end_1f} :catch_13
    .catchall {:try_start_1f .. :try_end_1f} :catchall_22

    :cond_16
    :goto_17
    const/4 v12, 0x1

    goto/16 :goto_3d

    :catchall_a
    move-exception v0

    move-object v1, v0

    move-object v14, v8

    goto/16 :goto_26

    :catch_8
    move-exception v0

    goto :goto_18

    :catch_9
    move-exception v0

    :goto_18
    move-object v1, v0

    move-object v14, v8

    const/4 v12, 0x1

    goto/16 :goto_28

    :catchall_b
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move-object v14, v8

    :goto_19
    const/4 v12, 0x1

    goto/16 :goto_2a

    :cond_17
    const/4 v1, 0x1

    const/4 v3, 0x0

    :cond_18
    :try_start_20
    iget-object v5, v8, Lgjl;->g:Lkbc;

    const-string v14, "pckZslHdrPlusProcessor#beginPayload"

    invoke-interface {v5, v14}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v5, v8, Lgjl;->e:Lgjy;

    const/4 v14, 0x1

    invoke-virtual {v5, v9, v6, v14}, Lgjy;->d(Leea;Lkou;Z)V

    iget-object v5, v8, Lgjl;->g:Lkbc;

    const-string v14, "pckZslHdrPlusProcessor#processZslPayload"

    invoke-interface {v5, v14}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v5, v8, Lgjl;->e:Lgjy;

    sget-object v24, Lmpx;->a:Lmpx;

    const/16 v22, 0x1

    move-object/from16 v19, v5

    move-object/from16 v20, v13

    move-object/from16 v21, v9

    move/from16 v23, v3

    invoke-virtual/range {v19 .. v24}, Lgjy;->c(Ljava/util/List;Leea;ZILmqp;)I

    move-result v22
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_13

    if-lez v22, :cond_19

    :try_start_21
    iget-object v5, v8, Lgjl;->e:Lgjy;

    iget-object v14, v5, Lgjy;->b:Lebv;

    invoke-virtual {v14, v9}, Lebv;->i(Leea;)V

    iget-object v5, v5, Lgjy;->a:Lecd;

    invoke-interface {v5, v9}, Lecd;->s(Leea;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    :cond_19
    :try_start_22
    iget-object v5, v8, Lgjl;->g:Lkbc;

    const-string v14, "Shasta_Frames#awaitCompletePsl"

    invoke-interface {v5, v14}, Lkbc;->g(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_13

    if-eqz v1, :cond_1a

    :try_start_23
    iget-object v5, v4, Lgjj;->a:Lnph;

    invoke-virtual {v5}, Lnph;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;
    :try_end_23
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_23 .. :try_end_23} :catch_b
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_23} :catch_a
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    goto :goto_1b

    :catch_a
    move-exception v0

    goto :goto_1a

    :catch_b
    move-exception v0

    :goto_1a
    :try_start_24
    sget-object v5, Lgjl;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->b()Lnaz;

    move-result-object v5

    const/16 v14, 0xad7

    invoke-static {v5, v12, v14}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    :goto_1b
    iget-object v4, v4, Lgjj;->l:Lkgq;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    goto :goto_1c

    :cond_1a
    move-object/from16 v4, v16

    :goto_1c
    :try_start_25
    iget-object v12, v8, Lgjl;->g:Lkbc;

    const-string v14, "closingCaptureLock"

    invoke-interface {v12, v14}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {v7}, Lker;->close()V

    invoke-interface/range {p1 .. p1}, Lgal;->close()V

    iget-object v12, v8, Lgjl;->g:Lkbc;

    invoke-interface {v12}, Lkbc;->f()V

    iget-object v12, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_13

    if-eqz v1, :cond_1b

    :try_start_26
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    goto :goto_1d

    :cond_1b
    if-eqz v2, :cond_1c

    const/4 v14, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v14, 0x0

    :goto_1d
    add-int/2addr v14, v3

    if-nez v14, :cond_1d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    :try_start_27
    invoke-interface {v7}, Lker;->close()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_27} :catch_9
    .catch Lkdf; {:try_start_27 .. :try_end_27} :catch_8
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    :try_start_28
    invoke-virtual {v10}, Lgjk;->close()V

    iget-object v2, v8, Lgjl;->d:Lgnk;

    invoke-interface {v2, v15}, Lgnk;->l(Ljava/lang/String;)V

    if-eqz v29, :cond_16

    invoke-interface/range {v29 .. v29}, Lkeb;->close()V
    :try_end_28
    .catch Ldog; {:try_start_28 .. :try_end_28} :catch_13
    .catchall {:try_start_28 .. :try_end_28} :catchall_22

    goto/16 :goto_17

    :cond_1d
    if-eqz v1, :cond_23

    :try_start_29
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    const/4 v1, 0x0

    :goto_1e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgxb;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkgn;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    move-object/from16 v18, v7

    :try_start_2a
    iget-object v7, v8, Lgjl;->g:Lkbc;

    move-object/from16 v25, v12

    const-string v12, "getPslFrame"

    invoke-interface {v7, v12}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lkgn;->a(Lkgq;)Lkeb;

    move-result-object v7

    if-nez v7, :cond_1e

    iget-object v2, v8, Lgjl;->g:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    invoke-virtual {v3}, Lkgn;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    move-object/from16 v26, v4

    goto :goto_20

    :cond_1e
    :try_start_2b
    iget-object v12, v8, Lgjl;->g:Lkbc;

    move-object/from16 v26, v4

    const-string v4, "Frames#awaitComplete"

    invoke-interface {v12, v4}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {v7}, Lkfg;->y(Lkeb;)V

    iget-object v4, v8, Lgjl;->g:Lkbc;

    invoke-interface {v4}, Lkbc;->f()V

    invoke-interface {v7}, Lkeb;->b()Lkeg;

    move-result-object v4

    if-eqz v4, :cond_20

    invoke-interface {v7}, Lkeb;->h()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v2, v2, Lgxb;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/googlex/gcam/FrameRequest;

    invoke-virtual {v2}, Lcom/google/googlex/gcam/FrameRequest;->a()Lnqg;

    move-result-object v2

    sget-object v4, Lnqg;->e:Lnqg;

    if-ne v2, v4, :cond_1f

    iget-object v4, v8, Lgjl;->f:Lebm;

    invoke-interface {v7}, Lkeb;->a()Lkeb;

    move-result-object v12

    invoke-virtual {v4, v12}, Lebm;->c(Lkeb;)V

    :cond_1f
    iget-object v4, v8, Lgjl;->g:Lkbc;

    const-string v12, "processPslFrame"

    invoke-interface {v4, v12}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v4, v8, Lgjl;->e:Lgjy;

    move-object/from16 v19, v4

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    move/from16 v23, v14

    move-object/from16 v24, v2

    invoke-virtual/range {v19 .. v24}, Lgjy;->e(Lkeb;Leea;IILnqg;)I

    move-result v2

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v22, v2

    goto :goto_1f

    :cond_20
    sget-object v2, Lgjl;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v4, 0xb02

    invoke-interface {v2, v4}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v4, "Failed to acquire PSL frame."

    invoke-interface {v2, v4}, Lnah;->o(Ljava/lang/String;)V

    invoke-interface {v7}, Lkeb;->close()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2b} :catch_c
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c

    :goto_1f
    :try_start_2c
    iget-object v2, v8, Lgjl;->g:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    invoke-virtual {v3}, Lkgn;->close()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_d

    :goto_20
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v7, v18

    move-object/from16 v12, v25

    move-object/from16 v4, v26

    goto/16 :goto_1e

    :catchall_c
    move-exception v0

    move-object v1, v0

    goto :goto_22

    :catch_c
    move-exception v0

    move-object v2, v0

    :try_start_2d
    sget-object v4, Lgjl;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    invoke-interface {v4, v2}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v4, 0xb03

    invoke-interface {v2, v4}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v4, "Failed to awaitComplete, aborting wait."

    invoke-interface {v2, v4}, Lnah;->o(Ljava/lang/String;)V

    :goto_21
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkgn;

    invoke-virtual {v2}, Lkgn;->close()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_21
    :try_start_2e
    iget-object v1, v8, Lgjl;->g:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    invoke-virtual {v3}, Lkgn;->close()V

    goto :goto_23

    :goto_22
    iget-object v2, v8, Lgjl;->g:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    invoke-virtual {v3}, Lkgn;->close()V

    throw v1

    :cond_22
    move-object/from16 v18, v7

    :goto_23
    invoke-virtual {v10}, Lgjk;->close()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_d

    const/4 v12, 0x1

    goto :goto_25

    :catchall_d
    move-exception v0

    move-object v1, v0

    move-object v14, v8

    move-object/from16 v2, v18

    goto/16 :goto_19

    :cond_23
    move-object/from16 v18, v7

    if-eqz v2, :cond_24

    :try_start_2f
    iget-object v1, v8, Lgjl;->e:Lgjy;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_f

    const/4 v12, 0x1

    add-int/lit8 v23, v3, 0x1

    :try_start_30
    sget-object v24, Lnqg;->e:Lnqg;

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v9

    invoke-virtual/range {v19 .. v24}, Lgjy;->e(Lkeb;Leea;IILnqg;)I

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_e

    goto :goto_25

    :catchall_e
    move-exception v0

    goto :goto_24

    :catchall_f
    move-exception v0

    const/4 v12, 0x1

    :goto_24
    move-object v1, v0

    move-object v14, v8

    move-object/from16 v2, v18

    goto :goto_2a

    :cond_24
    const/4 v12, 0x1

    :goto_25
    :try_start_31
    iget-object v1, v8, Lgjl;->g:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    iget-object v3, v8, Lgjl;->e:Lgjy;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_12

    const/4 v1, 0x1

    move-object/from16 v5, p2

    move-object/from16 v2, v18

    move-object v7, v9

    move-object v14, v8

    move v8, v1

    :try_start_32
    invoke-virtual/range {v3 .. v8}, Lgjy;->f(ILgkr;Lkou;Leea;Z)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_11

    :try_start_33
    invoke-interface {v2}, Lker;->close()V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_33} :catch_e
    .catch Lkdf; {:try_start_33 .. :try_end_33} :catch_d
    .catchall {:try_start_33 .. :try_end_33} :catchall_10

    :try_start_34
    invoke-virtual {v10}, Lgjk;->close()V

    iget-object v1, v14, Lgjl;->d:Lgnk;

    invoke-interface {v1, v15}, Lgnk;->l(Ljava/lang/String;)V

    if-eqz v29, :cond_25

    invoke-interface/range {v29 .. v29}, Lkeb;->close()V
    :try_end_34
    .catch Ldog; {:try_start_34 .. :try_end_34} :catch_13
    .catchall {:try_start_34 .. :try_end_34} :catchall_22

    :cond_25
    move-object v1, v13

    goto/16 :goto_3d

    :catchall_10
    move-exception v0

    move-object v1, v0

    :goto_26
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v32

    goto/16 :goto_40

    :catch_d
    move-exception v0

    goto :goto_27

    :catch_e
    move-exception v0

    :goto_27
    move-object v1, v0

    :goto_28
    move-object v3, v13

    goto/16 :goto_3a

    :catchall_11
    move-exception v0

    goto :goto_29

    :catchall_12
    move-exception v0

    move-object v14, v8

    move-object/from16 v2, v18

    goto :goto_29

    :catchall_13
    move-exception v0

    move-object v2, v7

    move-object v14, v8

    const/4 v12, 0x1

    :goto_29
    move-object v1, v0

    :goto_2a
    move-object v3, v13

    move-object/from16 v5, v29

    goto/16 :goto_34

    :catchall_14
    move-exception v0

    move-object v2, v7

    move-object v14, v8

    goto :goto_2b

    :catchall_15
    move-exception v0

    move-object v2, v7

    move-object v14, v8

    move-object/from16 v10, v18

    :goto_2b
    const/4 v12, 0x1

    move-object v1, v0

    :goto_2c
    move-object/from16 v5, v29

    move-object/from16 v3, v30

    goto :goto_34

    :catchall_16
    move-exception v0

    goto :goto_2d

    :catchall_17
    move-exception v0

    move-object/from16 v29, v5

    :goto_2d
    move-object v2, v7

    move-object v14, v8

    move-object/from16 v10, v18

    const/4 v12, 0x1

    move-object v1, v0

    :goto_2e
    move-object/from16 v5, v29

    move-object/from16 v3, v30

    goto :goto_34

    :catchall_18
    move-exception v0

    move-object v2, v7

    move-object v14, v8

    move-object/from16 v10, v18

    const/4 v12, 0x1

    goto :goto_32

    :catchall_19
    move-exception v0

    move-object v2, v7

    move-object v14, v8

    move-object/from16 v10, v18

    const/4 v12, 0x1

    move-object v1, v0

    :goto_2f
    :try_start_35
    invoke-virtual {v4}, Lkbb;->close()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1a

    goto :goto_30

    :catchall_1a
    move-exception v0

    move-object v3, v0

    :try_start_36
    invoke-static {v1, v3}, Lgji;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_30
    throw v1
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1b

    :catchall_1b
    move-exception v0

    goto :goto_32

    :catchall_1c
    move-exception v0

    goto :goto_31

    :catchall_1d
    move-exception v0

    move-object/from16 v30, v3

    :goto_31
    move-object v2, v7

    move-object/from16 v31, v10

    move-object/from16 v32, v14

    move-object/from16 v10, v18

    const/4 v12, 0x1

    move-object v14, v8

    :goto_32
    move-object v1, v0

    :goto_33
    move-object/from16 v5, v16

    move-object/from16 v3, v30

    :goto_34
    :try_start_37
    invoke-interface {v2}, Lker;->close()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1e

    goto :goto_35

    :catchall_1e
    move-exception v0

    move-object v2, v0

    :try_start_38
    invoke-static {v1, v2}, Lgji;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_35
    throw v1
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_38} :catch_10
    .catch Lkdf; {:try_start_38 .. :try_end_38} :catch_f
    .catchall {:try_start_38 .. :try_end_38} :catchall_1f

    :catchall_1f
    move-exception v0

    move-object v1, v0

    goto :goto_37

    :catch_f
    move-exception v0

    goto :goto_36

    :catch_10
    move-exception v0

    :goto_36
    move-object v1, v0

    goto :goto_38

    :goto_37
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v29, v5

    move-object/from16 v5, v32

    goto/16 :goto_40

    :goto_38
    move-object/from16 v29, v5

    goto :goto_3a

    :catchall_20
    move-exception v0

    move-object/from16 v31, v10

    move-object/from16 v32, v14

    move-object/from16 v10, v18

    move-object v14, v8

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v29, v16

    move-object/from16 v5, v32

    goto/16 :goto_40

    :catch_11
    move-exception v0

    goto :goto_39

    :catch_12
    move-exception v0

    :goto_39
    move-object/from16 v30, v3

    move-object/from16 v31, v10

    move-object/from16 v32, v14

    move-object/from16 v10, v18

    const/4 v12, 0x1

    move-object v14, v8

    move-object v1, v0

    move-object/from16 v29, v16

    move-object/from16 v3, v30

    :goto_3a
    :try_start_39
    sget-object v2, Lgjl;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-interface {v2, v1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0xaff

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Failed to acquire FrameServer session "

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_26

    if-eqz v2, :cond_26

    :try_start_3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkeb;

    invoke-interface {v2}, Lkeb;->close()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_21

    goto :goto_3b

    :catchall_21
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object v1, v0

    move-object/from16 v5, v32

    goto/16 :goto_40

    :cond_26
    :try_start_3b
    invoke-virtual {v10}, Lgjk;->close()V

    iget-object v1, v14, Lgjl;->d:Lgnk;

    invoke-interface {v1, v15}, Lgnk;->l(Ljava/lang/String;)V
    :try_end_3b
    .catch Ldog; {:try_start_3b .. :try_end_3b} :catch_16
    .catchall {:try_start_3b .. :try_end_3b} :catchall_25

    if-eqz v29, :cond_27

    :try_start_3c
    invoke-interface/range {v29 .. v29}, Lkeb;->close()V
    :try_end_3c
    .catch Ldog; {:try_start_3c .. :try_end_3c} :catch_13
    .catchall {:try_start_3c .. :try_end_3c} :catchall_22

    goto :goto_3c

    :catchall_22
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object v3, v0

    move-object/from16 v5, v32

    goto/16 :goto_42

    :catch_13
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object v3, v0

    move-object/from16 v5, v32

    goto/16 :goto_44

    :cond_27
    :goto_3c
    :try_start_3d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_3d
    .catch Ldog; {:try_start_3d .. :try_end_3d} :catch_16
    .catchall {:try_start_3d .. :try_end_3d} :catchall_25

    :goto_3d
    move-object/from16 v2, p0

    :try_start_3e
    iget-object v3, v2, Lgkb;->h:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3
    :try_end_3e
    .catch Ldog; {:try_start_3e .. :try_end_3e} :catch_15
    .catchall {:try_start_3e .. :try_end_3e} :catchall_24

    if-gtz v3, :cond_28

    :try_start_3f
    sget-object v3, Lgkb;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0xb48

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const-string v4, "Can\'t execute command, not enough images."

    invoke-interface {v3, v4}, Lnah;->o(Ljava/lang/String;)V
    :try_end_3f
    .catch Ldog; {:try_start_3f .. :try_end_3f} :catch_14
    .catchall {:try_start_3f .. :try_end_3f} :catchall_23

    goto :goto_3e

    :catchall_23
    move-exception v0

    move-object/from16 v4, p1

    move-object v3, v0

    move-object/from16 v5, v32

    goto/16 :goto_47

    :catch_14
    move-exception v0

    move-object/from16 v4, p1

    move-object v3, v0

    move-object/from16 v5, v32

    goto/16 :goto_45

    :cond_28
    const/16 v17, 0x1

    :goto_3e
    invoke-virtual {v10}, Lgjk;->close()V

    if-nez v17, :cond_29

    invoke-virtual {v10}, Lgjk;->b()V

    sget-object v3, Lgkb;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    const/16 v4, 0xb4a

    move-object/from16 v5, v32

    invoke-static {v3, v5, v4}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v3, v2, Lgkb;->e:Lecd;

    invoke-interface {v3, v9}, Lecd;->n(Leea;)V

    iget-object v3, v2, Lgkb;->f:Lebv;

    iget-object v4, v9, Leea;->v:Lgkr;

    iget-object v4, v4, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v4}, Lgxl;->h()Lgxy;

    move-result-object v4

    invoke-virtual {v3, v4}, Lebv;->d(Lgxy;)V

    iget-object v3, v2, Lgkb;->b:Lgam;

    move-object/from16 v4, p1

    invoke-static {v3, v1, v4, v11}, Lgkb;->d(Lgam;Ljava/util/List;Lgal;Lgkr;)V

    goto :goto_3f

    :cond_29
    move-object/from16 v4, p1

    :goto_3f
    goto/16 :goto_46

    :catchall_24
    move-exception v0

    move-object/from16 v4, p1

    move-object/from16 v5, v32

    move-object v3, v0

    goto/16 :goto_47

    :catch_15
    move-exception v0

    move-object/from16 v4, p1

    move-object/from16 v5, v32

    move-object v3, v0

    goto/16 :goto_45

    :catchall_25
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v32

    goto :goto_41

    :catch_16
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v32

    goto :goto_43

    :catchall_26
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v32

    move-object v1, v0

    :goto_40
    :try_start_40
    invoke-virtual {v10}, Lgjk;->close()V

    iget-object v3, v14, Lgjl;->d:Lgnk;

    invoke-interface {v3, v15}, Lgnk;->l(Ljava/lang/String;)V

    if-eqz v29, :cond_2a

    invoke-interface/range {v29 .. v29}, Lkeb;->close()V

    :cond_2a
    throw v1
    :try_end_40
    .catch Ldog; {:try_start_40 .. :try_end_40} :catch_17
    .catchall {:try_start_40 .. :try_end_40} :catchall_27

    :catchall_27
    move-exception v0

    goto :goto_41

    :catch_17
    move-exception v0

    goto :goto_43

    :catchall_28
    move-exception v0

    move-object/from16 v4, p1

    move-object v2, v1

    move-object/from16 v31, v10

    move-object v5, v14

    move-object/from16 v10, v18

    goto :goto_41

    :catch_18
    move-exception v0

    move-object/from16 v4, p1

    move-object v2, v1

    move-object/from16 v31, v10

    move-object v5, v14

    move-object/from16 v10, v18

    goto :goto_43

    :catchall_29
    move-exception v0

    move-object v4, v2

    move-object/from16 v31, v10

    move-object v5, v14

    move-object/from16 v10, v18

    move-object v2, v1

    :goto_41
    move-object v3, v0

    :goto_42
    move-object/from16 v1, v31

    goto/16 :goto_47

    :catch_19
    move-exception v0

    move-object v4, v2

    move-object/from16 v31, v10

    move-object v5, v14

    move-object/from16 v10, v18

    move-object v2, v1

    :goto_43
    move-object v3, v0

    :goto_44
    move-object/from16 v1, v31

    :goto_45
    :try_start_41
    instance-of v6, v3, Ldod;

    if-eqz v6, :cond_2b

    sget-object v6, Lgkb;->a:Lnak;

    invoke-virtual {v6}, Lnaf;->c()Lnaz;

    move-result-object v6

    check-cast v6, Lnah;

    const/16 v7, 0xb50

    invoke-interface {v6, v7}, Lnah;->G(I)Lnaz;

    move-result-object v6

    check-cast v6, Lnah;

    const-string v7, "HDR+ shot aborted."

    invoke-interface {v6, v7}, Lnah;->o(Ljava/lang/String;)V

    move-object/from16 v9, v16

    :cond_2b
    sget-object v6, Lgkb;->a:Lnak;

    invoke-virtual {v6}, Lnaf;->b()Lnaz;

    move-result-object v7

    check-cast v7, Lnah;

    const/16 v8, 0xb4b

    invoke-interface {v7, v8}, Lnah;->G(I)Lnaz;

    move-result-object v7

    check-cast v7, Lnah;

    const-string v8, "Error executing ZSl command: %s"

    invoke-virtual {v3}, Ldog;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v8, v3}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_2a

    invoke-virtual {v10}, Lgjk;->close()V

    invoke-virtual {v10}, Lgjk;->b()V

    if-eqz v9, :cond_2c

    invoke-virtual {v6}, Lnaf;->c()Lnaz;

    move-result-object v3

    const/16 v6, 0xb4d

    invoke-static {v3, v5, v6}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v3, v2, Lgkb;->e:Lecd;

    invoke-interface {v3, v9}, Lecd;->n(Leea;)V

    iget-object v3, v2, Lgkb;->f:Lebv;

    iget-object v5, v9, Leea;->v:Lgkr;

    iget-object v5, v5, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v5}, Lgxl;->h()Lgxy;

    move-result-object v5

    invoke-virtual {v3, v5}, Lebv;->d(Lgxy;)V

    :cond_2c
    iget-object v3, v2, Lgkb;->b:Lgam;

    invoke-static {v3, v1, v4, v11}, Lgkb;->d(Lgam;Ljava/util/List;Lgal;Lgkr;)V

    :goto_46
    iget-object v1, v2, Lgkb;->h:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    goto/16 :goto_49

    :catchall_2a
    move-exception v0

    move-object v3, v0

    :goto_47
    invoke-virtual {v10}, Lgjk;->close()V

    invoke-virtual {v10}, Lgjk;->b()V

    if-eqz v9, :cond_2d

    sget-object v6, Lgkb;->a:Lnak;

    invoke-virtual {v6}, Lnaf;->c()Lnaz;

    move-result-object v6

    const/16 v7, 0xb4f

    invoke-static {v6, v5, v7}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v5, v2, Lgkb;->e:Lecd;

    invoke-interface {v5, v9}, Lecd;->n(Leea;)V

    iget-object v5, v2, Lgkb;->f:Lebv;

    iget-object v6, v9, Leea;->v:Lgkr;

    iget-object v6, v6, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v6}, Lgxl;->h()Lgxy;

    move-result-object v6

    invoke-virtual {v5, v6}, Lebv;->d(Lgxy;)V

    :cond_2d
    iget-object v5, v2, Lgkb;->b:Lgam;

    invoke-static {v5, v1, v4, v11}, Lgkb;->d(Lgam;Ljava/util/List;Lgal;Lgkr;)V

    iget-object v1, v2, Lgkb;->h:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    throw v3

    :cond_2e
    move-object v4, v2

    move-object/from16 v10, v18

    move-object/from16 v6, v30

    move-object v2, v1

    goto :goto_48

    :cond_2f
    move-object v4, v2

    move-object/from16 v10, v18

    move-object/from16 v6, v30

    move-object v2, v1

    :goto_48
    invoke-virtual {v10}, Lgjk;->a()I

    move-result v1

    if-nez v1, :cond_30

    sget-object v1, Lgkb;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v3, "No ZSL frames found."

    const/16 v5, 0xb47

    invoke-static {v1, v3, v5}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_30
    if-nez v6, :cond_31

    sget-object v1, Lgkb;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v3, "No good metadata found."

    const/16 v5, 0xb46

    invoke-static {v1, v3, v5}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_31
    invoke-virtual {v10}, Lgjk;->b()V

    iget-object v1, v2, Lgkb;->b:Lgam;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v3, v4, v11}, Lgkb;->d(Lgam;Ljava/util/List;Lgal;Lgkr;)V

    iget-object v1, v2, Lgkb;->h:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    :goto_49
    invoke-interface/range {p1 .. p1}, Lgal;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lmoz;->y(Ljava/lang/Object;)Lmqo;

    move-result-object v0

    iget-object v1, p0, Lgkb;->b:Lgam;

    const-string v2, "fallback"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
