.class public final Lhdk;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfuz;Logd;Logd;Logd;Ljava/util/concurrent/Executor;Lkap;Lkbc;Limq;Ldhi;Ljvs;)V
    .locals 8

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lhdk;->c:Ljava/lang/Object;

    move-object v4, p3

    iput-object v4, v0, Lhdk;->a:Ljava/lang/Object;

    move-object v5, p4

    iput-object v5, v0, Lhdk;->h:Ljava/lang/Object;

    move-object v1, p6

    iput-object v1, v0, Lhdk;->d:Ljava/lang/Object;

    move-object v2, p7

    iput-object v2, v0, Lhdk;->f:Ljava/lang/Object;

    move-object/from16 v1, p8

    iput-object v1, v0, Lhdk;->g:Ljava/lang/Object;

    move-object/from16 v1, p9

    iput-object v1, v0, Lhdk;->b:Ljava/lang/Object;

    move-object/from16 v1, p10

    iput-object v1, v0, Lhdk;->e:Ljava/lang/Object;

    new-instance v7, Lapv;

    const/16 v6, 0xb

    move-object v1, v7

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lapv;-><init>(Lkbc;Logd;Logd;Logd;I)V

    move-object v1, p5

    invoke-interface {p5, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lhdt;Lhcz;Ljew;Ldbf;Lgft;Ligx;Lkbc;Lell;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhdk;->a:Ljava/lang/Object;

    iput-object p2, p0, Lhdk;->b:Ljava/lang/Object;

    iput-object p3, p0, Lhdk;->h:Ljava/lang/Object;

    iput-object p4, p0, Lhdk;->c:Ljava/lang/Object;

    iput-object p5, p0, Lhdk;->d:Ljava/lang/Object;

    iput-object p6, p0, Lhdk;->e:Ljava/lang/Object;

    iput-object p7, p0, Lhdk;->f:Ljava/lang/Object;

    iput-object p8, p0, Lhdk;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljew;Lcdx;Lhlw;Lhlu;Loiw;Logd;Ljuh;[B[B[B)V
    .locals 8

    move-object v6, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcdc;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcdc;-><init>(Lhdk;I[B[B[B)V

    iput-object v7, v6, Lhdk;->b:Ljava/lang/Object;

    move-object v0, p2

    iput-object v0, v6, Lhdk;->c:Ljava/lang/Object;

    move-object v0, p1

    iput-object v0, v6, Lhdk;->g:Ljava/lang/Object;

    move-object v0, p3

    iput-object v0, v6, Lhdk;->d:Ljava/lang/Object;

    move-object v0, p4

    iput-object v0, v6, Lhdk;->e:Ljava/lang/Object;

    move-object v0, p5

    iput-object v0, v6, Lhdk;->h:Ljava/lang/Object;

    move-object v0, p6

    iput-object v0, v6, Lhdk;->a:Ljava/lang/Object;

    move-object v0, p7

    iput-object v0, v6, Lhdk;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lken;Lkgq;Lkfj;Lfyz;Lggm;Lkbc;Lhdk;Lghx;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhdk;->e:Ljava/lang/Object;

    iput-object p2, p0, Lhdk;->f:Ljava/lang/Object;

    iput-object p3, p0, Lhdk;->h:Ljava/lang/Object;

    iput-object p4, p0, Lhdk;->c:Ljava/lang/Object;

    iput-object p5, p0, Lhdk;->g:Ljava/lang/Object;

    iput-object p6, p0, Lhdk;->a:Ljava/lang/Object;

    iput-object p7, p0, Lhdk;->b:Ljava/lang/Object;

    iput-object p8, p0, Lhdk;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lhdk;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lhdk;->g:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lhdk;->b:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lhdk;->h:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lhdk;->e:Ljava/lang/Object;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p0, Lhdk;->c:Ljava/lang/Object;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Lhdk;->d:Ljava/lang/Object;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p8, p0, Lhdk;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lhdk;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lhdk;->g:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lhdk;->d:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lhdk;->f:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lhdk;->h:Ljava/lang/Object;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p0, Lhdk;->a:Ljava/lang/Object;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Lhdk;->b:Ljava/lang/Object;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p8, p0, Lhdk;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lhdk;->d:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lhdk;->b:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lhdk;->a:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lhdk;->h:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lhdk;->f:Ljava/lang/Object;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p0, Lhdk;->g:Ljava/lang/Object;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Lhdk;->c:Ljava/lang/Object;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p8, p0, Lhdk;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(JLkef;Lmrl;I)Lgil;
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v10, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    new-instance v18, Lgil;

    move-object/from16 v1, v18

    iget-object v2, v0, Lhdk;->a:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljuf;

    move-object v2, v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lhdk;->g:Ljava/lang/Object;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lfvt;

    move-object v3, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lhdk;->b:Ljava/lang/Object;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v0, Lhdk;->h:Ljava/lang/Object;

    check-cast v5, Lgnp;

    invoke-virtual {v5}, Lgnp;->a()Lgno;

    move-result-object v5

    iget-object v6, v0, Lhdk;->e:Ljava/lang/Object;

    check-cast v6, Logo;

    invoke-virtual {v6}, Logo;->a()Ljava/util/Set;

    move-result-object v7

    move-object v6, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v0, Lhdk;->c:Ljava/lang/Object;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lbkc;

    move-object v7, v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v0, Lhdk;->d:Ljava/lang/Object;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lken;

    move-object v8, v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Lhdk;->f:Ljava/lang/Object;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lkbc;

    move-object v9, v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lgil;-><init>(Ljuf;Lfvt;Lnou;Lgno;Ljava/util/Set;Lbkc;Lken;Lkbc;JLkef;Lmrl;I[B[B[B)V

    return-object v18
.end method

.method public final b(I)Lgam;
    .locals 12

    new-instance v0, Lgai;

    new-instance v11, Lgid;

    iget-object v2, p0, Lhdk;->e:Ljava/lang/Object;

    iget-object v3, p0, Lhdk;->h:Ljava/lang/Object;

    iget-object v1, p0, Lhdk;->f:Ljava/lang/Object;

    iget-object v5, p0, Lhdk;->c:Ljava/lang/Object;

    new-instance v7, Lghl;

    invoke-direct {v7}, Lghl;-><init>()V

    iget-object v4, p0, Lhdk;->g:Ljava/lang/Object;

    invoke-static {}, Lkfh;->a()Lkff;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lkff;->c(I)V

    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Lkff;->b(I)V

    invoke-virtual {v6, v9}, Lkff;->e(I)V

    invoke-virtual {v6, v8}, Lkff;->d(Z)V

    invoke-virtual {v6}, Lkff;->a()Lkfh;

    move-result-object v9

    iget-object v10, p0, Lhdk;->a:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Lggm;

    move-object v4, v1

    check-cast v4, Lkgq;

    move-object v1, v11

    move v6, p1

    invoke-direct/range {v1 .. v10}, Lgid;-><init>(Lken;Lkfj;Lkgq;Lfyz;ILghh;Lggm;Lkfh;Lkbc;)V

    const/4 p1, 0x3

    const/4 v1, 0x0

    invoke-direct {v0, v11, p1, v1}, Lgai;-><init>(Lgam;IZ)V

    return-object v0
.end method

.method public final c(Lkef;Lgam;)Lgam;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lhdk;->b:Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lkef;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Llkj;->E(Ljava/lang/Object;)Lmrl;

    move-result-object v7

    move-object v3, v1

    check-cast v3, Lhdk;

    const-wide/32 v4, 0x3b9aca00

    const/4 v8, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v3 .. v8}, Lhdk;->a(JLkef;Lmrl;I)Lgil;

    move-result-object v10

    new-instance v11, Lghy;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v11, v2, v1}, Lghy;-><init>(Lgam;Lkef;)V

    new-instance v1, Lgai;

    new-instance v2, Lgju;

    sget-object v3, Liuu;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v3, :cond_0

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/Globals;->getEdgeMode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v3

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/Globals;->getNoiseMode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7, v4}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v4

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7, v6}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v7

    sget-object v8, Liuu;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8, v6}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v6

    invoke-static {v3, v4, v7, v6}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    move-object v12, v3

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/Globals;->getEdgeMode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v3

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/Globals;->getNoiseMode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7, v4}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v4

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7, v6}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v3

    move-object v12, v3

    :goto_0
    iget-object v13, v0, Lhdk;->c:Ljava/lang/Object;

    iget-object v3, v0, Lhdk;->h:Ljava/lang/Object;

    invoke-interface {v3}, Lkfj;->a()I

    move-result v14

    iget-object v15, v0, Lhdk;->a:Ljava/lang/Object;

    iget-object v3, v0, Lhdk;->d:Ljava/lang/Object;

    move-object/from16 v16, v3

    check-cast v16, Lghx;

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lgju;-><init>(Lgil;Lgam;Ljava/util/Set;Lfyz;ILkbc;Lghx;)V

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v5}, Lgai;-><init>(Lgam;IZ)V

    return-object v1
.end method

.method public final d(Lgam;)Lgae;
    .locals 14

    new-instance v13, Lgae;

    sget-object v2, Lmpx;->a:Lmpx;

    iget-object v0, p0, Lhdk;->c:Ljava/lang/Object;

    iget-object v4, p0, Lhdk;->a:Ljava/lang/Object;

    iget-object v5, p0, Lhdk;->h:Ljava/lang/Object;

    iget-object v8, p0, Lhdk;->d:Ljava/lang/Object;

    iget-object v9, p0, Lhdk;->f:Ljava/lang/Object;

    iget-object v1, p0, Lhdk;->g:Ljava/lang/Object;

    iget-object v11, p0, Lhdk;->b:Ljava/lang/Object;

    iget-object v12, p0, Lhdk;->e:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Limq;

    move-object v3, v0

    check-cast v3, Lfuz;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v13

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Lgae;-><init>(Lgam;Lmqp;Lfuz;Logd;Logd;ZZLkap;Lkbc;Limq;Ldhi;Ljvs;)V

    return-object v13
.end method

.method public final e(Lgam;Lgam;)Lgae;
    .locals 15

    move-object v0, p0

    new-instance v14, Lgae;

    invoke-static/range {p2 .. p2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iget-object v1, v0, Lhdk;->c:Ljava/lang/Object;

    iget-object v5, v0, Lhdk;->a:Ljava/lang/Object;

    iget-object v6, v0, Lhdk;->h:Ljava/lang/Object;

    iget-object v9, v0, Lhdk;->d:Ljava/lang/Object;

    iget-object v10, v0, Lhdk;->f:Ljava/lang/Object;

    iget-object v2, v0, Lhdk;->g:Ljava/lang/Object;

    iget-object v12, v0, Lhdk;->b:Ljava/lang/Object;

    iget-object v13, v0, Lhdk;->e:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Limq;

    move-object v4, v1

    check-cast v4, Lfuz;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v13}, Lgae;-><init>(Lgam;Lmqp;Lfuz;Logd;Logd;ZZLkap;Lkbc;Limq;Ldhi;Ljvs;)V

    return-object v14
.end method

.method public final f(Lgam;Lgam;)Lgae;
    .locals 15

    move-object v0, p0

    new-instance v14, Lgae;

    invoke-static/range {p2 .. p2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iget-object v1, v0, Lhdk;->c:Ljava/lang/Object;

    iget-object v5, v0, Lhdk;->a:Ljava/lang/Object;

    iget-object v6, v0, Lhdk;->h:Ljava/lang/Object;

    iget-object v9, v0, Lhdk;->d:Ljava/lang/Object;

    iget-object v10, v0, Lhdk;->f:Ljava/lang/Object;

    iget-object v2, v0, Lhdk;->g:Ljava/lang/Object;

    iget-object v12, v0, Lhdk;->b:Ljava/lang/Object;

    iget-object v13, v0, Lhdk;->e:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Limq;

    move-object v4, v1

    check-cast v4, Lfuz;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v13}, Lgae;-><init>(Lgam;Lmqp;Lfuz;Logd;Logd;ZZLkap;Lkbc;Limq;Ldhi;Ljvs;)V

    return-object v14
.end method

.method public final g()V
    .locals 8

    iget-object v0, p0, Lhdk;->d:Ljava/lang/Object;

    check-cast v0, Lhlw;

    invoke-virtual {v0}, Lhlw;->a()Lnou;

    move-result-object v0

    new-instance v7, Lcig;

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcig;-><init>(Lhdk;I[B[B[B)V

    iget-object v1, p0, Lhdk;->f:Ljava/lang/Object;

    invoke-static {v0, v7, v1}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lhdk;->e:Ljava/lang/Object;

    sget-object v1, Lhlv;->a:Lhlv;

    check-cast v0, Lhlu;

    iput-object v1, v0, Lhlu;->b:Lhlv;

    iget-object v0, v0, Lhlu;->c:Lhlw;

    return-void
.end method
