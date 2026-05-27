.class public final Lgjh;
.super Ljava/lang/Object;

# interfaces
.implements Lgms;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lecd;

.field private final c:Lkli;

.field private final d:Lkbc;

.field private final e:Lgip;

.field private final f:Lgdd;

.field private final g:Lgue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/commands/PckSecondaryHdrPlusProcessor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgjh;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lecd;Lkli;Lgdd;Lkbc;Lgip;Lgue;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgjh;->b:Lecd;

    iput-object p2, p0, Lgjh;->c:Lkli;

    iput-object p3, p0, Lgjh;->f:Lgdd;

    iput-object p4, p0, Lgjh;->d:Lkbc;

    iput-object p5, p0, Lgjh;->e:Lgip;

    iput-object p6, p0, Lgjh;->g:Lgue;

    return-void
.end method

.method private static c(Ljava/util/List;)V
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkeb;

    invoke-interface {v0}, Lkeb;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkll;Ljava/util/List;Lgal;Lgkr;ILkou;Lebb;Lmqp;)V
    .locals 11

    const/4 v0, 0x1

    invoke-static {v0}, Lmoz;->e(Z)V

    const/4 v7, 0x0

    sget-object v8, Lmpx;->a:Lmpx;

    const/4 v10, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Lgjh;->b(Ljava/util/List;Lgkr;ILkou;Lebb;Lcom/google/googlex/gcam/BurstSpec;Lmqp;Lmqp;I)V

    return-void
.end method

.method public final b(Ljava/util/List;Lgkr;ILkou;Lebb;Lcom/google/googlex/gcam/BurstSpec;Lmqp;Lmqp;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v1, Lgjh;->g:Lgue;

    const/4 v13, 0x0

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkeb;

    invoke-virtual {v0, v3}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v0

    invoke-virtual {v0}, Lgli;->b()Lkfj;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lgli;->b()Lkfj;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lkfj;->c()Lkll;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgli;->a()Lkfj;

    move-result-object v0

    invoke-interface {v0}, Lkfj;->c()Lkll;

    move-result-object v0

    move-object v4, v0

    :goto_0
    :try_start_0
    iget-object v0, v1, Lgjh;->c:Lkli;

    iget-object v3, v1, Lgjh;->f:Lgdd;

    invoke-static {v0, v3}, Lebe;->b(Lkli;Lgdd;)Lcom/google/googlex/gcam/PostviewParams;

    move-result-object v6

    iget-object v0, v1, Lgjh;->d:Lkbc;

    const-string v3, "pckHdrZsl#startShot"

    invoke-interface {v0, v3}, Lkbc;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v12, 0x0

    :try_start_1
    iget-object v3, v1, Lgjh;->b:Lecd;

    move-object/from16 v0, p5

    iget-object v7, v0, Lebb;->g:Lgcc;

    const/4 v10, 0x1

    sget-object v0, Lega;->a:Lega;
    :try_end_1
    .catch Lkdf; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    move/from16 v9, p3

    move/from16 v11, p9

    move-object/from16 v12, p7

    const/16 v17, 0x0

    move-object v13, v0

    :try_start_2
    invoke-interface/range {v3 .. v13}, Lecd;->G(Lkll;Lgkr;Lcom/google/googlex/gcam/PostviewParams;Lgcc;Lkou;IZILmqp;Lega;)Leea;

    move-result-object v12
    :try_end_2
    .catch Lkdf; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, v1, Lgjh;->d:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v12

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    const/16 v17, 0x0

    :goto_1
    :try_start_4
    sget-object v3, Lgjh;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    invoke-interface {v3, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v3, 0xad1

    invoke-interface {v0, v3}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v3, "Unable to start PSL shot "

    invoke-interface {v0, v3}, Lnah;->o(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, v1, Lgjh;->d:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    if-eqz v15, :cond_5

    iget-object v3, v1, Lgjh;->e:Lgip;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v14, v4}, Lgip;->b(Lker;Lgkr;Lgnk;)Lgio;

    move-result-object v13

    invoke-virtual/range {p6 .. p6}, Lcom/google/googlex/gcam/BurstSpec;->b()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide v3

    long-to-int v11, v3

    iget-object v3, v1, Lgjh;->b:Lecd;

    invoke-interface {v3, v0, v15}, Lecd;->r(Leea;Lcom/google/googlex/gcam/BurstSpec;)V

    move-object/from16 v15, p4

    const/4 v10, 0x0

    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v10, v3, :cond_3

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lkeb;

    sget-object v3, Lnqg;->c:Lnqg;

    int-to-long v4, v10

    invoke-virtual {v12}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide v8

    cmp-long v6, v4, v8

    if-gez v6, :cond_1

    invoke-virtual {v12, v10}, Lcom/google/googlex/gcam/FrameRequestVector;->b(I)Lcom/google/googlex/gcam/FrameRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/gcam/FrameRequest;->a()Lnqg;

    move-result-object v3

    move-object v8, v3

    goto :goto_4

    :cond_1
    move-object v8, v3

    :goto_4
    const/4 v9, 0x0

    new-instance v16, Lfzw;

    invoke-direct/range {v16 .. v16}, Lfzw;-><init>()V

    move-object v3, v13

    move-object v4, v0

    move/from16 v5, v17

    move v6, v11

    move/from16 v18, v10

    move-object/from16 v10, p8

    move/from16 v19, v11

    move-object v11, v15

    move-object/from16 v20, v12

    move-object/from16 v12, v16

    invoke-virtual/range {v3 .. v12}, Lgio;->a(Leea;IILkeb;Lnqg;ZLmqp;Lkou;Lfzy;)Lkou;

    move-result-object v3

    if-eqz v3, :cond_2

    add-int/lit8 v17, v17, 0x1

    move-object v15, v3

    :cond_2
    add-int/lit8 v10, v18, 0x1

    move/from16 v11, v19

    move-object/from16 v12, v20

    goto :goto_3

    :cond_3
    move/from16 v19, v11

    iget-object v3, v14, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v3}, Lgxl;->k()Lhjc;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 p2, v13

    move-object/from16 p3, v0

    move/from16 p4, v17

    move/from16 p5, v19

    move-object/from16 p6, v15

    move-object/from16 p7, v3

    move/from16 p8, v4

    invoke-virtual/range {p2 .. p8}, Lgio;->c(Leea;IILkou;Lhjc;Z)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_4

    invoke-static/range {p1 .. p1}, Lgjh;->c(Ljava/util/List;)V

    return-void

    :cond_4
    :try_start_6
    invoke-virtual {v0}, Leea;->a()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error finishing the HDR+ payload, aborting shot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lgjh;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const/16 v5, 0xad3

    invoke-interface {v4, v5}, Lnah;->G(I)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const-string v5, "%s"

    invoke-interface {v4, v5, v3}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v1, Lgjh;->b:Lecd;

    invoke-interface {v4, v0}, Lecd;->n(Leea;)V

    new-instance v0, Ldod;

    invoke-direct {v0, v3}, Ldod;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sget-object v0, Lgjh;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v3, 0xad4

    invoke-interface {v0, v3}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v3, "Missing burst spec."

    invoke-interface {v0, v3}, Lnah;->o(Ljava/lang/String;)V

    new-instance v0, Ldnw;

    const-string v3, "Burst spec not provided."

    invoke-direct {v0, v3}, Ldnw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    sget-object v0, Lgjh;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v3, 0xad5

    invoke-interface {v0, v3}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v3, "Failed to initiate HDR+ shot capture."

    invoke-interface {v0, v3}, Lnah;->o(Ljava/lang/String;)V

    new-instance v0, Ldnw;

    const-string v3, "Invalid shot received from HdrPlusSession."

    invoke-direct {v0, v3}, Ldnw;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_5
    iget-object v3, v1, Lgjh;->d:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static/range {p1 .. p1}, Lgjh;->c(Ljava/util/List;)V

    throw v0

    :cond_7
    sget-object v0, Lgjh;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "Zero frames to process."

    const/16 v3, 0xad6

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    new-instance v0, Ldnw;

    invoke-direct {v0, v2}, Ldnw;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method
