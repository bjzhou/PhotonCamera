.class public final Lgke;
.super Ljava/lang/Object;

# interfaces
.implements Lgam;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/Object;

.field public d:Lgkd;

.field public e:Lkef;

.field public f:Lfzy;

.field private final g:Lken;

.field private final h:Lgnk;

.field private final i:Lgjy;

.field private final j:Lkbc;

.field private final k:Lggm;

.field private final l:Lghh;

.field private final m:Leda;

.field private final n:Lmqp;

.field private final o:Ldhi;

.field private final p:Lghx;

.field private final q:Lecd;

.field private final r:Ljuf;

.field private final s:Ljvs;

.field private final t:Lgam;

.field private final u:Z

.field private final v:Ljvs;

.field private final w:Lgue;

.field private final x:Lgkf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/commands/PckZslTorchHdrPlusImageCaptureCommand"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgke;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lken;Lgnk;Lkbc;Lgjy;Lggm;Leda;Lmqp;Lgkf;Lgue;Ldhi;Lghx;Lecd;Ljuf;Ljvs;Ljvs;Lghh;ILgam;[B[B)V
    .locals 4

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lgke;->c:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lgke;->g:Lken;

    move-object v2, p2

    iput-object v2, v0, Lgke;->h:Lgnk;

    move-object v3, p3

    iput-object v3, v0, Lgke;->j:Lkbc;

    move-object v3, p4

    iput-object v3, v0, Lgke;->i:Lgjy;

    move-object v3, p5

    iput-object v3, v0, Lgke;->k:Lggm;

    move/from16 v3, p17

    iput v3, v0, Lgke;->b:I

    invoke-interface {p2}, Lgnk;->f()Lkef;

    move-result-object v2

    iput-object v2, v0, Lgke;->e:Lkef;

    move-object v2, p6

    iput-object v2, v0, Lgke;->m:Leda;

    move-object v2, p7

    iput-object v2, v0, Lgke;->n:Lmqp;

    move-object v2, p8

    iput-object v2, v0, Lgke;->x:Lgkf;

    move-object v2, p9

    iput-object v2, v0, Lgke;->w:Lgue;

    move-object v2, p10

    iput-object v2, v0, Lgke;->o:Ldhi;

    move-object v2, p11

    iput-object v2, v0, Lgke;->p:Lghx;

    move-object/from16 v2, p12

    iput-object v2, v0, Lgke;->q:Lecd;

    move-object/from16 v2, p13

    iput-object v2, v0, Lgke;->r:Ljuf;

    move-object/from16 v2, p14

    iput-object v2, v0, Lgke;->s:Ljvs;

    move-object/from16 v2, p16

    iput-object v2, v0, Lgke;->l:Lghh;

    move-object/from16 v2, p18

    iput-object v2, v0, Lgke;->t:Lgam;

    move-object/from16 v2, p15

    iput-object v2, v0, Lgke;->v:Ljvs;

    invoke-interface {p1}, Lken;->c()Lkeo;

    move-result-object v1

    invoke-interface {v1}, Lkeo;->d()Lkli;

    move-result-object v1

    invoke-interface {v1}, Lkli;->k()Lklv;

    move-result-object v1

    sget-object v2, Lklv;->b:Lklv;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lgke;->u:Z

    return-void
.end method

.method private final d(Leea;Ljava/util/List;Lebb;Lkgq;Lker;)Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lgke;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "No ZSL frames found, requesting a single PSL frame."

    const/16 p3, 0xb5a

    invoke-static {p1, p2, p3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :try_start_0
    invoke-interface {p5}, Lker;->c()Lkem;

    move-result-object p1

    invoke-interface {p1, p4}, Lkem;->b(Lkgq;)V

    invoke-interface {p1}, Lkem;->a()Lkfz;

    move-result-object p1

    invoke-interface {p5, p1}, Lker;->f(Lkfz;)Lkgn;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    sget-object p2, Lgke;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    const-string p3, "Couldn\'t acquire session for PSL request"

    const/16 p4, 0xb5b

    invoke-static {p2, p3, p4, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lgke;->n:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkeb;

    invoke-static {p2}, Lkfg;->y(Lkeb;)V

    invoke-interface {p2}, Lkeb;->c()Lkou;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lkeb;->c()Lkou;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lgke;->m:Leda;

    iget-object v1, v1, Leda;->a:Lkou;

    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_2

    iget-object v1, p0, Lgke;->w:Lgue;

    invoke-virtual {v1, p2}, Lgue;->a(Lkeb;)Lgli;

    move-result-object p2

    iget-object v1, p0, Lgke;->n:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgjl;

    invoke-virtual {v1, p1, v4, p2, p3}, Lgjl;->b(Leea;Lkou;Lgli;Lebb;)Lcom/google/googlex/gcam/BurstSpec;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/google/googlex/gcam/BurstSpec;->b()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/googlex/gcam/FrameRequestVector;->d()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lgke;->n:Lmqp;

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lgjl;

    move-object v3, p1

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v2 .. v7}, Lgjl;->a(Leea;Lkou;Lkgq;Lker;Lcom/google/googlex/gcam/BurstSpec;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static final e(Lkeb;Ljvs;)V
    .locals 1

    invoke-interface {p0}, Lkeb;->b()Lkeg;

    invoke-interface {p0}, Lkeb;->j()Lkgq;

    invoke-interface {p0}, Lkeb;->c()Lkou;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_0
    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-void
.end method

.method private static final f(Lgam;Lgal;Lgkr;)V
    .locals 3

    sget-object v0, Lgke;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Executing fallback"

    const/16 v2, 0xb64

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-interface {p0, p1, p2}, Lgam;->c(Lgal;Lgkr;)V

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Lgke;->s:Ljvs;

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 1

    invoke-static {}, Lfwt;->e()Lfwn;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lgal;Lgkr;)V
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v6, p2

    sget-object v20, Lmpx;->a:Lmpx;

    iget-object v1, v7, Lgke;->j:Lkbc;

    const-string v2, "PckZslTorch#acquiring3A"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    const/4 v5, 0x1

    :try_start_0
    iget-boolean v1, v7, Lgke;->u:Z
    :try_end_0
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_43
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_41
    .catch Ldog; {:try_start_0 .. :try_end_0} :catch_40
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, v7, Lgke;->g:Lken;

    invoke-interface {v1}, Lken;->d()Lker;

    move-result-object v1

    invoke-interface {v1}, Lker;->a()Lkdz;

    move-result-object v2

    check-cast v2, Lkhs;

    invoke-virtual {v2}, Lkhs;->d()Lkht;

    move-result-object v2
    :try_end_1
    .catch Lkdf; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ldog; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v9, v7, Lgke;->l:Lghh;

    invoke-interface {v9, v1}, Lghh;->a(Lker;)Lghg;

    move-result-object v9

    iget-object v10, v7, Lgke;->k:Lggm;

    invoke-interface {v9}, Lghg;->a()Lkfh;

    move-result-object v9

    invoke-virtual {v10, v1, v9}, Lggm;->b(Lker;Lkfh;)Lfub;

    move-result-object v9

    iget-object v10, v7, Lgke;->g:Lken;

    invoke-interface {v1}, Lker;->a()Lkdz;

    move-result-object v11

    check-cast v11, Lkhs;

    invoke-virtual {v11}, Lkhs;->d()Lkht;

    move-result-object v11

    invoke-interface {v10, v11}, Lken;->n(Lkea;)V

    check-cast v9, Lggn;

    iget-wide v9, v9, Lggn;->a:J

    invoke-interface {v1}, Lker;->close()V

    iget-object v1, v7, Lgke;->h:Lgnk;

    invoke-interface {v1}, Lgnk;->a()Lgnj;

    move-result-object v1
    :try_end_2
    .catch Lkdf; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ldog; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v11, v7, Lgke;->g:Lken;

    invoke-interface {v11}, Lken;->d()Lker;

    move-result-object v11
    :try_end_3
    .catch Lkdf; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ldog; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v21, v1

    move-wide v14, v9

    move-object v1, v11

    const/16 v22, 0x0

    const/16 v23, 0x0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v5, v0

    move-object v9, v5

    move-object v3, v6

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v10, v5

    move-object v3, v6

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    move-object v9, v0

    move-object v5, v2

    move-object v3, v6

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v5, v0

    move-object v9, v5

    move-object v3, v6

    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v5, v2

    const/4 v2, 0x0

    goto/16 :goto_3a

    :catch_4
    move-exception v0

    move-object v5, v0

    move-object v10, v5

    move-object v3, v6

    const/4 v1, 0x0

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object v6, v2

    const/4 v2, 0x0

    goto/16 :goto_33

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    :goto_3
    move-object v9, v0

    move-object v5, v2

    move-object v3, v6

    const/4 v1, 0x0

    :goto_4
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    goto/16 :goto_36

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v3, v6

    const/4 v5, 0x0

    const/16 v25, 0x0

    goto/16 :goto_31

    :catch_8
    move-exception v0

    move-object v1, v0

    move-object v3, v6

    const/4 v5, 0x0

    const/16 v25, 0x0

    goto/16 :goto_32

    :catch_9
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v0

    goto :goto_5

    :catch_b
    move-exception v0

    :goto_5
    move-object v9, v0

    move-object v3, v6

    const/4 v5, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    goto/16 :goto_35

    :cond_0
    :try_start_4
    iget-object v1, v7, Lgke;->h:Lgnk;

    invoke-interface {v1}, Lgnk;->a()Lgnj;

    move-result-object v1
    :try_end_4
    .catch Lkdf; {:try_start_4 .. :try_end_4} :catch_43
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_41
    .catch Ldog; {:try_start_4 .. :try_end_4} :catch_40
    .catchall {:try_start_4 .. :try_end_4} :catchall_12

    :try_start_5
    iget-object v2, v7, Lgke;->g:Lken;

    invoke-interface {v2}, Lken;->d()Lker;

    move-result-object v11
    :try_end_5
    .catch Lkdf; {:try_start_5 .. :try_end_5} :catch_3f
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3e
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3d
    .catch Ldog; {:try_start_5 .. :try_end_5} :catch_3c
    .catchall {:try_start_5 .. :try_end_5} :catchall_11

    :try_start_6
    iget-object v2, v7, Lgke;->l:Lghh;

    invoke-interface {v2, v11}, Lghh;->a(Lker;)Lghg;

    move-result-object v2
    :try_end_6
    .catch Lkdf; {:try_start_6 .. :try_end_6} :catch_3b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_39
    .catch Ldog; {:try_start_6 .. :try_end_6} :catch_38
    .catchall {:try_start_6 .. :try_end_6} :catchall_10

    :try_start_7
    iget-object v9, v7, Lgke;->k:Lggm;

    invoke-interface {v2}, Lghg;->a()Lkfh;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Lggm;->b(Lker;Lkfh;)Lfub;

    move-result-object v9
    :try_end_7
    .catch Lkdf; {:try_start_7 .. :try_end_7} :catch_37
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_36
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_35
    .catch Ldog; {:try_start_7 .. :try_end_7} :catch_34
    .catchall {:try_start_7 .. :try_end_7} :catchall_f

    :try_start_8
    move-object v10, v9

    check-cast v10, Lggn;

    iget-wide v12, v10, Lggn;->a:J
    :try_end_8
    .catch Lkdf; {:try_start_8 .. :try_end_8} :catch_33
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_31
    .catch Ldog; {:try_start_8 .. :try_end_8} :catch_30
    .catchall {:try_start_8 .. :try_end_8} :catchall_e

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v9

    move-object v1, v11

    move-wide v14, v12

    const/4 v2, 0x0

    :goto_6
    :try_start_9
    iget-object v9, v7, Lgke;->j:Lkbc;

    const-string v10, "PckZslTorch#takePayload"

    invoke-interface {v9, v10}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v9, v6, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v9}, Lfzz;->a()Lfzy;

    move-result-object v9

    iput-object v9, v7, Lgke;->f:Lfzy;

    invoke-interface {v9}, Lfzy;->h()V

    iget-object v9, v7, Lgke;->h:Lgnk;

    invoke-interface {v9}, Lgnk;->c()Lkeb;

    move-result-object v9
    :try_end_9
    .catch Lkdf; {:try_start_9 .. :try_end_9} :catch_2f
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2e
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2d
    .catch Ldog; {:try_start_9 .. :try_end_9} :catch_2c
    .catchall {:try_start_9 .. :try_end_9} :catchall_d

    if-eqz v9, :cond_1

    :try_start_a
    iget-object v10, v7, Lgke;->w:Lgue;

    invoke-virtual {v10, v9}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v10

    invoke-static {v10, v5}, Lgmq;->a(Lgli;Z)Lkou;

    move-result-object v11

    invoke-virtual {v10}, Lgli;->a()Lkfj;

    move-result-object v10

    invoke-interface {v10}, Lkfj;->c()Lkll;

    move-result-object v10

    invoke-interface {v9}, Lkeb;->close()V
    :try_end_a
    .catch Lkdf; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ldog; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v17, v10

    move-object v13, v11

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v4, v1

    move-object v3, v6

    const/4 v5, 0x0

    :goto_7
    const/16 v25, 0x0

    move-object v1, v0

    move-object v6, v2

    goto/16 :goto_22

    :catch_c
    move-exception v0

    move-object v4, v1

    move-object v3, v6

    const/4 v5, 0x0

    :goto_8
    const/16 v25, 0x0

    move-object v1, v0

    move-object v6, v2

    goto/16 :goto_24

    :catch_d
    move-exception v0

    goto :goto_9

    :catch_e
    move-exception v0

    goto :goto_9

    :catch_f
    move-exception v0

    :goto_9
    move-object v9, v0

    move-object v4, v1

    move-object v3, v6

    const/4 v5, 0x0

    const/16 v24, 0x1

    :goto_a
    const/16 v25, 0x0

    move-object v6, v2

    goto/16 :goto_27

    :cond_1
    const/4 v13, 0x0

    const/16 v17, 0x0

    :goto_b
    :try_start_b
    iget-object v9, v7, Lgke;->o:Ldhi;

    sget-object v10, Ldhq;->L:Ldhj;

    invoke-interface {v9, v10}, Ldhi;->l(Ldhj;)Z

    move-result v9
    :try_end_b
    .catch Lkdf; {:try_start_b .. :try_end_b} :catch_2f
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_2e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2d
    .catch Ldog; {:try_start_b .. :try_end_b} :catch_2c
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    if-eqz v9, :cond_2

    if-eqz v13, :cond_2

    :try_start_c
    iget-object v9, v7, Lgke;->i:Lgjy;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, -0x1

    iget-object v10, v7, Lgke;->x:Lgkf;

    invoke-virtual {v10}, Lgkf;->a()Lebb;

    move-result-object v16

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v10, v17

    move-object/from16 v11, p2

    move-wide v3, v14

    move-object/from16 v14, v16

    move/from16 v15, v18

    move/from16 v16, v19

    invoke-virtual/range {v9 .. v16}, Lgjy;->g(Lkll;Lgkr;ILkou;Lebb;ZZ)Leea;

    move-result-object v9
    :try_end_c
    .catch Lkdf; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ldog; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object v15, v9

    goto :goto_c

    :cond_2
    move-wide v3, v14

    const/4 v15, 0x0

    :goto_c
    :try_start_d
    sget-object v11, Lgjn;->c:Lgjn;

    iget-object v9, v7, Lgke;->f:Lfzy;

    iget v10, v7, Lgke;->b:I

    invoke-interface {v9, v10}, Lfzy;->e(I)V

    iget-object v9, v7, Lgke;->j:Lkbc;

    const-string v10, "PckZslTorch#waitForImages"

    invoke-interface {v9, v10}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v9, v7, Lgke;->c:Ljava/lang/Object;

    monitor-enter v9
    :try_end_d
    .catch Lkdf; {:try_start_d .. :try_end_d} :catch_2b
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_29
    .catch Ldog; {:try_start_d .. :try_end_d} :catch_28
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    :try_start_e
    iget-object v10, v7, Lgke;->h:Lgnk;

    invoke-interface {v10}, Lgnk;->f()Lkef;

    move-result-object v10

    iput-object v10, v7, Lgke;->e:Lkef;

    new-instance v10, Lgkd;

    invoke-direct {v10, v7, v3, v4}, Lgkd;-><init>(Lgke;J)V

    iput-object v10, v7, Lgke;->d:Lgkd;

    iget-object v3, v7, Lgke;->e:Lkef;

    invoke-interface {v3, v10}, Lkef;->k(Lkee;)V

    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :try_start_f
    invoke-virtual {v10}, Lgkd;->a()Ljava/util/List;

    move-result-object v9

    iget-object v3, v7, Lgke;->h:Lgnk;

    invoke-interface {v3}, Lgnk;->f()Lkef;

    move-result-object v3

    invoke-interface {v3}, Lkef;->q()Lkgq;

    move-result-object v3

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v6, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lgxl;->C(Z)V

    sget v4, Lmvv;->d:I

    sget-object v4, Lmyu;->a:Lmvv;

    invoke-virtual {v3}, Lkgq;->a()Ljvs;

    move-result-object v12

    invoke-interface {v12}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12
    :try_end_f
    .catch Lkdf; {:try_start_f .. :try_end_f} :catch_2b
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_29
    .catch Ldog; {:try_start_f .. :try_end_f} :catch_28
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    if-le v12, v5, :cond_3

    :try_start_10
    iget-object v4, v7, Lgke;->g:Lken;

    invoke-virtual {v3}, Lkgq;->c()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v3}, Lkgq;->b()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v4, v12, v3}, Lken;->v(Ljava/util/Set;Ljava/util/Set;)Lkgq;

    move-result-object v12

    invoke-virtual {v12}, Lkgq;->a()Ljvs;

    move-result-object v3

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    iget-object v3, v7, Lgke;->x:Lgkf;

    invoke-virtual {v3}, Lgkf;->a()Lebb;

    move-result-object v4
    :try_end_10
    .catch Lkdf; {:try_start_10 .. :try_end_10} :catch_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_11
    .catch Ldog; {:try_start_10 .. :try_end_10} :catch_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object v14, v1

    move-object/from16 v1, p0

    move-object v13, v2

    move-object v2, v15

    move-object v3, v9

    move-object/from16 v16, v13

    const/4 v13, 0x0

    const/16 v24, 0x1

    move-object v5, v12

    move-object v13, v6

    move-object v6, v14

    :try_start_11
    invoke-direct/range {v1 .. v6}, Lgke;->d(Leea;Ljava/util/List;Lebb;Lkgq;Lker;)Ljava/util/List;

    move-result-object v4
    :try_end_11
    .catch Lkdf; {:try_start_11 .. :try_end_11} :catch_19
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ldog; {:try_start_11 .. :try_end_11} :catch_16
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    move-object v3, v12

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object v4, v1

    move-object v3, v6

    move-object v5, v15

    goto/16 :goto_7

    :catch_10
    move-exception v0

    move-object v4, v1

    move-object v3, v6

    move-object v5, v15

    goto/16 :goto_8

    :catch_11
    move-exception v0

    goto :goto_d

    :catch_12
    move-exception v0

    goto :goto_d

    :catch_13
    move-exception v0

    :goto_d
    const/16 v24, 0x1

    move-object v9, v0

    move-object v4, v1

    move-object v3, v6

    move-object v5, v15

    goto/16 :goto_a

    :cond_3
    move-object v14, v1

    move-object/from16 v16, v2

    move-object v13, v6

    const/16 v24, 0x1

    :try_start_12
    invoke-virtual {v3}, Lkgq;->c()Ljava/util/Set;

    const/4 v3, 0x0

    :goto_e
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_12
    .catch Lkdf; {:try_start_12 .. :try_end_12} :catch_23
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_21
    .catch Ldog; {:try_start_12 .. :try_end_12} :catch_20
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    if-eqz v5, :cond_5

    :try_start_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkeb;
    :try_end_13
    .catch Lkdf; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_17
    .catch Ldog; {:try_start_13 .. :try_end_13} :catch_16
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    invoke-static {v5}, Lkfg;->y(Lkeb;)V

    invoke-interface {v5}, Lkeb;->c()Lkou;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Lkeb;->c()Lkou;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_15
    .catch Lkdf; {:try_start_14 .. :try_end_14} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_17
    .catch Ldog; {:try_start_14 .. :try_end_14} :catch_16
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :try_start_15
    iget-object v6, v7, Lgke;->v:Ljvs;

    invoke-static {v5, v6}, Lgke;->e(Lkeb;Ljvs;)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_14
    .catch Lkdf; {:try_start_15 .. :try_end_15} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_17
    .catch Ldog; {:try_start_15 .. :try_end_15} :catch_16
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto :goto_f

    :catch_14
    move-exception v0

    goto :goto_10

    :cond_4
    :try_start_16
    sget-object v6, Lgke;->a:Lnak;

    invoke-virtual {v6}, Lnaf;->c()Lnaz;

    move-result-object v6

    check-cast v6, Lnah;

    const/16 v9, 0xb70

    invoke-interface {v6, v9}, Lnah;->G(I)Lnaz;

    move-result-object v6

    check-cast v6, Lnah;

    const-string v9, "Invalid metadata for frame %s."

    invoke-interface {v5}, Lkeb;->b()Lkeg;

    move-result-object v12

    invoke-interface {v6, v9, v12}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v5}, Lkeb;->close()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_15
    .catch Lkdf; {:try_start_16 .. :try_end_16} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_17
    .catch Ldog; {:try_start_16 .. :try_end_16} :catch_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    goto :goto_f

    :catch_15
    move-exception v0

    :goto_10
    :try_start_17
    sget-object v6, Lgke;->a:Lnak;

    invoke-virtual {v6}, Lnaf;->c()Lnaz;

    move-result-object v6

    const-string v9, "Interrupted when waiting for frame %s to complete."

    invoke-interface {v5}, Lkeb;->b()Lkeg;

    move-result-object v5

    const/16 v12, 0xb71

    invoke-static {v6, v9, v5, v12}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V
    :try_end_17
    .catch Lkdf; {:try_start_17 .. :try_end_17} :catch_19
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_17
    .catch Ldog; {:try_start_17 .. :try_end_17} :catch_16
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    const/16 v25, 0x0

    goto/16 :goto_22

    :catch_16
    move-exception v0

    move-object v1, v0

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    const/16 v25, 0x0

    goto/16 :goto_24

    :catch_17
    move-exception v0

    goto :goto_11

    :catch_18
    move-exception v0

    goto :goto_11

    :catch_19
    move-exception v0

    :goto_11
    move-object v9, v0

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    const/16 v25, 0x0

    goto/16 :goto_27

    :cond_5
    :try_start_18
    iget-object v1, v7, Lgke;->p:Lghx;

    iget-object v5, v13, Lgkr;->c:Ljava/lang/Object;

    invoke-virtual {v1, v14, v5}, Lghx;->a(Lker;Lgxl;)V

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_18
    .catch Lkdf; {:try_start_18 .. :try_end_18} :catch_23
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_21
    .catch Ldog; {:try_start_18 .. :try_end_18} :catch_20
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    if-eqz v1, :cond_6

    :try_start_19
    sget-object v1, Lgke;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v5, 0xb6f

    invoke-interface {v1, v5}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v5, "Unable to get any completed ZSL frame for this capture. %s PSL frames to arrive."

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v1, v5, v6}, Lnah;->p(Ljava/lang/String;I)V
    :try_end_19
    .catch Lkdf; {:try_start_19 .. :try_end_19} :catch_19
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_17
    .catch Ldog; {:try_start_19 .. :try_end_19} :catch_16
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :cond_6
    :try_start_1a
    invoke-interface {v10}, Ljava/util/List;->size()I

    invoke-interface {v4}, Ljava/util/List;->size()I

    iget-object v1, v7, Lgke;->m:Leda;

    iget-object v1, v1, Leda;->a:Lkou;
    :try_end_1a
    .catch Lkdf; {:try_start_1a .. :try_end_1a} :catch_23
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1a} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_21
    .catch Ldog; {:try_start_1a .. :try_end_1a} :catch_20
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    if-eqz v1, :cond_7

    :try_start_1b
    iget-object v1, v7, Lgke;->m:Leda;

    iget-object v2, v1, Leda;->a:Lkou;
    :try_end_1b
    .catch Lkdf; {:try_start_1b .. :try_end_1b} :catch_19
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_17
    .catch Ldog; {:try_start_1b .. :try_end_1b} :catch_16
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    :cond_7
    :try_start_1c
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_1c
    .catch Lkdf; {:try_start_1c .. :try_end_1c} :catch_23
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1c} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_21
    .catch Ldog; {:try_start_1c .. :try_end_1c} :catch_20
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    if-eqz v5, :cond_b

    :try_start_1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkgn;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v3}, Lkgn;->a(Lkgq;)Lkeb;

    move-result-object v6
    :try_end_1d
    .catch Lkdf; {:try_start_1d .. :try_end_1d} :catch_19
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_17
    .catch Ldog; {:try_start_1d .. :try_end_1d} :catch_16
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    if-nez v6, :cond_8

    :try_start_1e
    sget-object v9, Lgke;->a:Lnak;

    invoke-virtual {v9}, Lnaf;->c()Lnaz;

    move-result-object v9

    check-cast v9, Lnah;

    const/16 v12, 0xb6e

    invoke-interface {v9, v12}, Lnah;->G(I)Lnaz;

    move-result-object v9

    check-cast v9, Lnah;

    const-string v12, "Received invalid PSL frame."

    invoke-interface {v9, v12}, Lnah;->o(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1e} :catch_1b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    :try_start_1f
    invoke-virtual {v5}, Lkgn;->close()V
    :try_end_1f
    .catch Lkdf; {:try_start_1f .. :try_end_1f} :catch_19
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_17
    .catch Ldog; {:try_start_1f .. :try_end_1f} :catch_16
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    goto :goto_12

    :cond_8
    :try_start_20
    invoke-static {v6}, Lkfg;->y(Lkeb;)V

    invoke-interface {v6}, Lkeb;->c()Lkou;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Lkeb;->c()Lkou;

    move-result-object v2
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_20} :catch_1b
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    :try_start_21
    iget-object v9, v7, Lgke;->v:Ljvs;

    invoke-static {v6, v9}, Lgke;->e(Lkeb;Ljvs;)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_21} :catch_1a
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    move-object/from16 v19, v1

    goto :goto_13

    :catch_1a
    move-exception v0

    move-object v1, v0

    goto :goto_14

    :cond_9
    :try_start_22
    sget-object v9, Lgke;->a:Lnak;

    invoke-virtual {v9}, Lnaf;->c()Lnaz;

    move-result-object v9

    check-cast v9, Lnah;

    const/16 v12, 0xb6c

    invoke-interface {v9, v12}, Lnah;->G(I)Lnaz;

    move-result-object v9

    check-cast v9, Lnah;

    const-string v12, "Invalid metadata for PSL frame %s."

    move-object/from16 v19, v1

    invoke-interface {v6}, Lkeb;->b()Lkeg;

    move-result-object v1

    invoke-interface {v9, v12, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v6}, Lkeb;->close()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_22} :catch_1b
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    :goto_13
    :try_start_23
    invoke-virtual {v5}, Lkgn;->close()V
    :try_end_23
    .catch Lkdf; {:try_start_23 .. :try_end_23} :catch_19
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_23} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_17
    .catch Ldog; {:try_start_23 .. :try_end_23} :catch_16
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    move-object/from16 v1, v19

    goto :goto_12

    :catchall_6
    move-exception v0

    move-object v1, v0

    goto :goto_16

    :catch_1b
    move-exception v0

    move-object v1, v0

    :goto_14
    :try_start_24
    sget-object v3, Lgke;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    invoke-interface {v3, v1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v3, 0xb6d

    invoke-interface {v1, v3}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v3, "Failed to awaitComplete "

    invoke-interface {v1, v3}, Lnah;->o(Ljava/lang/String;)V

    invoke-interface {v6}, Lkeb;->close()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkgn;

    invoke-virtual {v3}, Lkgn;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    goto :goto_15

    :cond_a
    :try_start_25
    invoke-virtual {v5}, Lkgn;->close()V

    goto :goto_17

    :goto_16
    invoke-virtual {v5}, Lkgn;->close()V

    throw v1
    :try_end_25
    .catch Lkdf; {:try_start_25 .. :try_end_25} :catch_19
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_25} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_17
    .catch Ldog; {:try_start_25 .. :try_end_25} :catch_16
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    :cond_b
    :goto_17
    :try_start_26
    iget-object v1, v7, Lgke;->j:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    invoke-interface/range {v21 .. v21}, Lgnj;->a()V

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    if-eqz v2, :cond_d

    iget-object v1, v7, Lgke;->j:Lkbc;

    const-string v3, "PckZslTorch#processFrames"

    invoke-interface {v1, v3}, Lkbc;->e(Ljava/lang/String;)V
    :try_end_26
    .catch Lkdf; {:try_start_26 .. :try_end_26} :catch_23
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_26} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_21
    .catch Ldog; {:try_start_26 .. :try_end_26} :catch_20
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    if-nez v17, :cond_c

    :try_start_27
    iget-object v1, v7, Lgke;->w:Lgue;

    const/4 v3, 0x0

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkeb;

    invoke-virtual {v1, v4}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v1

    invoke-virtual {v1}, Lgli;->a()Lkfj;

    move-result-object v1

    invoke-interface {v1}, Lkfj;->c()Lkll;

    move-result-object v1
    :try_end_27
    .catch Lkdf; {:try_start_27 .. :try_end_27} :catch_19
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_27} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_17
    .catch Ldog; {:try_start_27 .. :try_end_27} :catch_16
    .catchall {:try_start_27 .. :try_end_27} :catchall_5

    move-object/from16 v18, v1

    goto :goto_18

    :cond_c
    const/4 v3, 0x0

    move-object/from16 v18, v17

    :goto_18
    :try_start_28
    iget-object v9, v7, Lgke;->i:Lgjy;

    iget-object v1, v7, Lgke;->x:Lgkf;

    invoke-virtual {v1}, Lgkf;->a()Lebb;

    move-result-object v1

    sget-object v19, Lmpx;->a:Lmpx;
    :try_end_28
    .catch Lkdf; {:try_start_28 .. :try_end_28} :catch_23
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_28} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_21
    .catch Ldog; {:try_start_28 .. :try_end_28} :catch_20
    .catchall {:try_start_28 .. :try_end_28} :catchall_8

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object/from16 v12, p2

    move-object v3, v13

    move-object/from16 v6, v16

    const/16 v25, 0x0

    move v13, v4

    move-object v4, v14

    move v14, v5

    move-object v5, v15

    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v5

    :try_start_29
    invoke-virtual/range {v9 .. v19}, Lgjy;->j(Ljava/util/List;Lgal;Lgkr;IZLkou;Lebb;Leea;Lkll;Lmqp;)V

    iget-object v1, v7, Lgke;->j:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    const/4 v1, 0x1

    goto :goto_1a

    :cond_d
    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    const/16 v25, 0x0

    sget-object v1, Lgke;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "No known good metadata."

    const/16 v9, 0xb69

    invoke-static {v1, v2, v9}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_e

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkeb;

    invoke-interface {v9}, Lkeb;->close()V
    :try_end_29
    .catch Lkdf; {:try_start_29 .. :try_end_29} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_25
    .catch Ldog; {:try_start_29 .. :try_end_29} :catch_24
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_e
    const/4 v1, 0x0

    :goto_1a
    :try_start_2a
    iget-object v2, v7, Lgke;->j:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V
    :try_end_2a
    .catch Lkdf; {:try_start_2a .. :try_end_2a} :catch_1f
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2a} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_1d
    .catch Ldog; {:try_start_2a .. :try_end_2a} :catch_1c
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    if-eqz v23, :cond_f

    invoke-interface/range {v23 .. v23}, Lfub;->close()V

    :cond_f
    if-eqz v22, :cond_10

    invoke-interface/range {v22 .. v22}, Lghg;->close()V

    :cond_10
    iget-object v2, v7, Lgke;->l:Lghh;

    invoke-interface {v2}, Lghh;->b()V

    invoke-interface {v4}, Lker;->close()V

    if-eqz v6, :cond_11

    iget-object v2, v7, Lgke;->g:Lken;

    invoke-interface {v2, v6}, Lken;->o(Lkea;)V

    :cond_11
    if-eqz v21, :cond_12

    invoke-interface/range {v21 .. v21}, Lgnj;->a()V

    :cond_12
    if-nez v1, :cond_15

    if-eqz v5, :cond_13

    iget-object v1, v7, Lgke;->q:Lecd;

    invoke-interface {v1, v5}, Lecd;->n(Leea;)V

    :cond_13
    iget-object v1, v3, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v1}, Lfzz;->f()V

    iget-object v1, v3, Lgkr;->c:Ljava/lang/Object;

    iget-object v2, v7, Lgke;->r:Ljuf;

    invoke-virtual {v2}, Ljuf;->b()Z

    move-result v2

    if-nez v2, :cond_14

    :goto_1b
    iget-object v1, v7, Lgke;->t:Lgam;

    invoke-static {v1, v8, v3}, Lgke;->f(Lgam;Lgal;Lgkr;)V

    return-void

    :cond_14
    new-instance v2, Ldoe;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Ldoe;-><init>(Ljava/lang/Throwable;)V

    :goto_1c
    invoke-interface {v1, v2}, Lgxl;->w(Ljava/lang/Throwable;)V

    return-void

    :cond_15
    invoke-interface/range {p1 .. p1}, Lgal;->close()V

    return-void

    :catchall_7
    move-exception v0

    move-object v2, v0

    move/from16 v25, v1

    move-object v9, v2

    move-object v2, v5

    move-object v5, v6

    move-object/from16 v1, v21

    goto/16 :goto_39

    :catch_1c
    move-exception v0

    move-object v2, v0

    move v9, v1

    move-object v10, v2

    move-object v2, v5

    move-object/from16 v1, v21

    move-object/from16 v5, v23

    goto/16 :goto_33

    :catch_1d
    move-exception v0

    goto :goto_1d

    :catch_1e
    move-exception v0

    goto :goto_1d

    :catch_1f
    move-exception v0

    :goto_1d
    move-object v9, v0

    move-object v2, v5

    move-object v5, v6

    move v6, v1

    move-object/from16 v1, v21

    goto/16 :goto_36

    :cond_16
    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    const/16 v25, 0x0

    :try_start_2b
    sget-object v1, Lgke;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Unable to get any completed frame for this capture."

    const/16 v9, 0xb6b

    invoke-static {v1, v2, v9}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    new-instance v1, Ldnr;

    const-string v2, "Unable to get any completed frame for this capture."

    invoke-direct {v1, v2}, Ldnr;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2b
    .catch Lkdf; {:try_start_2b .. :try_end_2b} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2b} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_25
    .catch Ldog; {:try_start_2b .. :try_end_2b} :catch_24
    .catchall {:try_start_2b .. :try_end_2b} :catchall_a

    :catchall_8
    move-exception v0

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    const/16 v25, 0x0

    goto/16 :goto_21

    :catch_20
    move-exception v0

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    const/16 v25, 0x0

    goto/16 :goto_23

    :catch_21
    move-exception v0

    goto :goto_1e

    :catch_22
    move-exception v0

    goto :goto_1e

    :catch_23
    move-exception v0

    :goto_1e
    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    const/16 v25, 0x0

    goto/16 :goto_26

    :catchall_9
    move-exception v0

    move-object v4, v1

    move-object v3, v6

    move-object v5, v15

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object v6, v2

    :goto_1f
    move-object v1, v0

    :try_start_2c
    monitor-exit v9
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_b

    :try_start_2d
    throw v1
    :try_end_2d
    .catch Lkdf; {:try_start_2d .. :try_end_2d} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_2d} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_25
    .catch Ldog; {:try_start_2d .. :try_end_2d} :catch_24
    .catchall {:try_start_2d .. :try_end_2d} :catchall_a

    :catchall_a
    move-exception v0

    goto :goto_21

    :catch_24
    move-exception v0

    goto/16 :goto_23

    :catch_25
    move-exception v0

    goto/16 :goto_26

    :catch_26
    move-exception v0

    goto/16 :goto_26

    :catch_27
    move-exception v0

    goto/16 :goto_26

    :catchall_b
    move-exception v0

    goto :goto_1f

    :catchall_c
    move-exception v0

    move-object v4, v1

    move-object v3, v6

    move-object v5, v15

    const/16 v25, 0x0

    move-object v6, v2

    goto :goto_21

    :catch_28
    move-exception v0

    move-object v4, v1

    move-object v3, v6

    move-object v5, v15

    const/16 v25, 0x0

    move-object v6, v2

    goto :goto_23

    :catch_29
    move-exception v0

    goto :goto_20

    :catch_2a
    move-exception v0

    goto :goto_20

    :catch_2b
    move-exception v0

    :goto_20
    move-object v4, v1

    move-object v3, v6

    move-object v5, v15

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object v6, v2

    goto :goto_26

    :catchall_d
    move-exception v0

    move-object v4, v1

    move-object v3, v6

    const/4 v5, 0x0

    const/16 v25, 0x0

    move-object v6, v2

    :goto_21
    move-object v1, v0

    :goto_22
    move-object v9, v1

    move-object v2, v5

    move-object v5, v6

    move-object/from16 v1, v21

    const/16 v24, 0x0

    goto/16 :goto_3a

    :catch_2c
    move-exception v0

    move-object v4, v1

    move-object v3, v6

    const/4 v5, 0x0

    const/16 v25, 0x0

    move-object v6, v2

    :goto_23
    move-object v1, v0

    :goto_24
    move-object v10, v1

    move-object v2, v5

    move-object/from16 v1, v21

    move-object/from16 v5, v23

    const/4 v9, 0x0

    goto/16 :goto_33

    :catch_2d
    move-exception v0

    goto :goto_25

    :catch_2e
    move-exception v0

    goto :goto_25

    :catch_2f
    move-exception v0

    :goto_25
    move-object v4, v1

    move-object v3, v6

    const/4 v5, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object v6, v2

    :goto_26
    move-object v9, v0

    :goto_27
    move-object v2, v5

    move-object v5, v6

    move-object/from16 v1, v21

    const/4 v6, 0x0

    goto/16 :goto_36

    :catchall_e
    move-exception v0

    move-object v3, v6

    const/4 v5, 0x0

    const/16 v25, 0x0

    move-object v4, v0

    move-object/from16 v22, v2

    move-object v2, v5

    move-object/from16 v23, v9

    const/16 v24, 0x0

    move-object v9, v4

    move-object v4, v11

    goto/16 :goto_3a

    :catch_30
    move-exception v0

    move-object v3, v6

    const/4 v5, 0x0

    const/16 v25, 0x0

    move-object v4, v0

    move-object/from16 v22, v2

    move-object v10, v4

    move-object v2, v5

    move-object v6, v2

    move-object v5, v9

    goto/16 :goto_2b

    :catch_31
    move-exception v0

    goto :goto_28

    :catch_32
    move-exception v0

    goto :goto_28

    :catch_33
    move-exception v0

    :goto_28
    move-object v3, v6

    const/4 v5, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object v4, v0

    move-object/from16 v22, v2

    move-object v2, v5

    move-object/from16 v23, v9

    const/4 v6, 0x0

    move-object v9, v4

    move-object v4, v11

    goto/16 :goto_36

    :catchall_f
    move-exception v0

    move-object v3, v6

    const/4 v5, 0x0

    const/16 v25, 0x0

    move-object v4, v0

    move-object/from16 v22, v2

    move-object v9, v4

    move-object v2, v5

    move-object/from16 v23, v2

    goto :goto_2a

    :catch_34
    move-exception v0

    move-object v3, v6

    const/4 v5, 0x0

    const/16 v25, 0x0

    move-object v4, v0

    move-object/from16 v22, v2

    move-object v10, v4

    move-object v2, v5

    move-object v6, v2

    goto :goto_2b

    :catch_35
    move-exception v0

    goto :goto_29

    :catch_36
    move-exception v0

    goto :goto_29

    :catch_37
    move-exception v0

    :goto_29
    move-object v3, v6

    const/4 v5, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object v9, v0

    move-object/from16 v22, v2

    move-object v2, v5

    move-object/from16 v23, v2

    goto :goto_2d

    :catchall_10
    move-exception v0

    move-object v3, v6

    const/4 v5, 0x0

    const/16 v25, 0x0

    move-object v2, v0

    move-object v9, v2

    move-object v2, v5

    move-object/from16 v22, v2

    move-object/from16 v23, v22

    :goto_2a
    move-object v4, v11

    goto/16 :goto_39

    :catch_38
    move-exception v0

    move-object v3, v6

    const/4 v5, 0x0

    const/16 v25, 0x0

    move-object v2, v0

    move-object v10, v2

    move-object v2, v5

    move-object v6, v2

    move-object/from16 v22, v6

    :goto_2b
    move-object v4, v11

    goto :goto_2e

    :catch_39
    move-exception v0

    goto :goto_2c

    :catch_3a
    move-exception v0

    goto :goto_2c

    :catch_3b
    move-exception v0

    :goto_2c
    move-object v3, v6

    const/4 v5, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object v9, v0

    move-object v2, v5

    move-object/from16 v22, v2

    move-object/from16 v23, v22

    :goto_2d
    move-object v4, v11

    goto :goto_30

    :catchall_11
    move-exception v0

    move-object v3, v6

    const/4 v5, 0x0

    const/16 v25, 0x0

    move-object v2, v0

    move-object v9, v2

    move-object v2, v5

    move-object v4, v2

    move-object/from16 v22, v4

    move-object/from16 v23, v22

    goto/16 :goto_39

    :catch_3c
    move-exception v0

    move-object v3, v6

    const/4 v5, 0x0

    const/16 v25, 0x0

    move-object v2, v0

    move-object v10, v2

    move-object v2, v5

    move-object v4, v2

    move-object v6, v4

    move-object/from16 v22, v6

    :goto_2e
    const/4 v9, 0x0

    goto :goto_33

    :catch_3d
    move-exception v0

    goto :goto_2f

    :catch_3e
    move-exception v0

    goto :goto_2f

    :catch_3f
    move-exception v0

    :goto_2f
    move-object v3, v6

    const/4 v5, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object v9, v0

    move-object v2, v5

    move-object v4, v2

    move-object/from16 v22, v4

    move-object/from16 v23, v22

    :goto_30
    const/4 v6, 0x0

    goto/16 :goto_36

    :catchall_12
    move-exception v0

    move-object v3, v6

    const/4 v5, 0x0

    const/16 v25, 0x0

    move-object v1, v0

    :goto_31
    move-object v9, v1

    move-object v1, v5

    move-object v2, v1

    move-object v4, v2

    move-object/from16 v22, v4

    move-object/from16 v23, v22

    const/16 v24, 0x0

    goto/16 :goto_3a

    :catch_40
    move-exception v0

    move-object v3, v6

    const/4 v5, 0x0

    const/16 v25, 0x0

    move-object v1, v0

    :goto_32
    move-object v10, v1

    move-object v1, v5

    move-object v2, v1

    move-object v4, v2

    move-object v6, v4

    move-object/from16 v22, v6

    const/4 v9, 0x0

    :goto_33
    :try_start_2e
    invoke-static {v10}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v10
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_13

    if-eqz v5, :cond_17

    invoke-interface {v5}, Lfub;->close()V

    :cond_17
    if-eqz v22, :cond_18

    invoke-interface/range {v22 .. v22}, Lghg;->close()V

    :cond_18
    iget-object v5, v7, Lgke;->l:Lghh;

    invoke-interface {v5}, Lghh;->b()V

    if-eqz v4, :cond_19

    invoke-interface {v4}, Lker;->close()V

    :cond_19
    if-eqz v6, :cond_1a

    iget-object v4, v7, Lgke;->g:Lken;

    invoke-interface {v4, v6}, Lken;->o(Lkea;)V

    :cond_1a
    if-eqz v1, :cond_1b

    invoke-interface {v1}, Lgnj;->a()V

    :cond_1b
    if-nez v9, :cond_15

    if-eqz v2, :cond_1c

    iget-object v1, v7, Lgke;->q:Lecd;

    invoke-interface {v1, v2}, Lecd;->n(Leea;)V

    :cond_1c
    iget-object v1, v3, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v1}, Lfzz;->f()V

    iget-object v1, v3, Lgkr;->c:Ljava/lang/Object;

    iget-object v2, v7, Lgke;->r:Ljuf;

    invoke-virtual {v2}, Ljuf;->b()Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_1b

    :cond_1d
    new-instance v2, Ldoe;

    check-cast v10, Lmqt;

    iget-object v3, v10, Lmqt;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v2, v3}, Ldoe;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    :catchall_13
    move-exception v0

    move-object/from16 v23, v5

    move-object v5, v6

    move/from16 v25, v9

    const/16 v24, 0x0

    move-object v9, v0

    goto :goto_3a

    :catch_41
    move-exception v0

    goto :goto_34

    :catch_42
    move-exception v0

    goto :goto_34

    :catch_43
    move-exception v0

    :goto_34
    move-object v3, v6

    const/4 v5, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object v9, v0

    :goto_35
    move-object v1, v5

    move-object v2, v1

    move-object v4, v2

    move-object/from16 v22, v4

    move-object/from16 v23, v22

    const/4 v6, 0x0

    :goto_36
    :try_start_2f
    invoke-static {v9}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v20
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_16

    :try_start_30
    instance-of v10, v9, Ljava/lang/InterruptedException;

    if-nez v10, :cond_1f

    instance-of v10, v9, Lkdf;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_15

    if-eqz v10, :cond_1e

    goto :goto_37

    :cond_1e
    const/16 v24, 0x0

    goto :goto_37

    :cond_1f
    :goto_37
    :try_start_31
    throw v9
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_14

    :catchall_14
    move-exception v0

    move-object v9, v0

    move/from16 v25, v6

    goto :goto_3a

    :catchall_15
    move-exception v0

    move-object v9, v0

    goto :goto_38

    :catchall_16
    move-exception v0

    move-object v9, v0

    :goto_38
    move/from16 v25, v6

    :goto_39
    const/16 v24, 0x0

    :goto_3a
    if-eqz v23, :cond_20

    invoke-interface/range {v23 .. v23}, Lfub;->close()V

    :cond_20
    if-eqz v22, :cond_21

    invoke-interface/range {v22 .. v22}, Lghg;->close()V

    :cond_21
    iget-object v6, v7, Lgke;->l:Lghh;

    invoke-interface {v6}, Lghh;->b()V

    if-eqz v4, :cond_22

    invoke-interface {v4}, Lker;->close()V

    :cond_22
    if-eqz v5, :cond_23

    iget-object v4, v7, Lgke;->g:Lken;

    invoke-interface {v4, v5}, Lken;->o(Lkea;)V

    :cond_23
    if-eqz v1, :cond_24

    invoke-interface {v1}, Lgnj;->a()V

    :cond_24
    if-nez v25, :cond_28

    if-eqz v2, :cond_25

    iget-object v1, v7, Lgke;->q:Lecd;

    invoke-interface {v1, v2}, Lecd;->n(Leea;)V

    :cond_25
    iget-object v1, v3, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v1}, Lfzz;->f()V

    iget-object v1, v3, Lgkr;->c:Ljava/lang/Object;

    iget-object v2, v7, Lgke;->r:Ljuf;

    invoke-virtual {v2}, Ljuf;->b()Z

    move-result v2

    if-nez v2, :cond_27

    if-eqz v24, :cond_26

    invoke-virtual/range {v20 .. v20}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_3b

    :cond_26
    iget-object v1, v7, Lgke;->t:Lgam;

    invoke-static {v1, v8, v3}, Lgke;->f(Lgam;Lgal;Lgkr;)V

    goto :goto_3c

    :cond_27
    :goto_3b
    new-instance v2, Ldoe;

    invoke-virtual/range {v20 .. v20}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v2, v3}, Ldoe;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lgxl;->w(Ljava/lang/Throwable;)V

    goto :goto_3c

    :cond_28
    invoke-interface/range {p1 .. p1}, Lgal;->close()V

    :goto_3c
    goto :goto_3e

    :goto_3d
    throw v9

    :goto_3e
    goto :goto_3d
.end method
