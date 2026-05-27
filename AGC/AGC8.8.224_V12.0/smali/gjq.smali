.class public final Lgjq;
.super Ljava/lang/Object;

# interfaces
.implements Lgam;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lken;

.field private final c:Ljvs;

.field private final d:Lgnk;

.field private final e:Lgjy;

.field private final f:Lkbc;

.field private final g:Lfvt;

.field private final h:Lghx;

.field private final i:Ljuf;

.field private final j:Lgue;

.field private final k:Lbkc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/commands/PckSingleHdrPlusImageCaptureCommand"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgjq;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lken;Ljvs;Lgnk;Lkbc;Lgjy;Lfvt;Lghx;Lgue;Ljuf;Lbkc;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgjq;->b:Lken;

    iput-object p2, p0, Lgjq;->c:Ljvs;

    iput-object p3, p0, Lgjq;->d:Lgnk;

    iput-object p4, p0, Lgjq;->f:Lkbc;

    iput-object p5, p0, Lgjq;->e:Lgjy;

    iput-object p6, p0, Lgjq;->g:Lfvt;

    iput-object p7, p0, Lgjq;->h:Lghx;

    iput-object p8, p0, Lgjq;->j:Lgue;

    iput-object p9, p0, Lgjq;->i:Ljuf;

    iput-object p10, p0, Lgjq;->k:Lbkc;

    return-void
.end method

.method private final d(Lkeb;)Z
    .locals 7

    invoke-static {p1}, Lkfg;->z(Lkeb;)V

    invoke-interface {p1}, Lkeb;->b()Lkeg;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, v0, Lkeg;->b:J

    :goto_0
    iget-object v2, p0, Lgjq;->j:Lgue;

    invoke-virtual {v2, p1}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v2

    invoke-virtual {v2}, Lgli;->e()Lkpb;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v5, p0, Lgjq;->k:Lbkc;

    invoke-virtual {v5, v0, v1}, Lbkc;->q(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lkpb;->close()V

    return v3

    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {p1}, Lkeb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lkpb;->close()V

    :cond_3
    return v4

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_4

    :try_start_2
    invoke-interface {v2}, Lkpb;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_3
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "addSuppressed"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    aput-object v6, v5, v4

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_4
    :goto_2
    throw p1
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Lgjq;->c:Ljvs;

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
    .locals 9

    iget-object v0, p0, Lgjq;->f:Lkbc;

    const-string v1, "pckSingleHdr#acquiringFrame"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lgjq;->d:Lgnk;

    invoke-interface {v0}, Lgnk;->a()Lgnj;

    move-result-object v0

    iget-object v1, p0, Lgjq;->h:Lghx;

    iget-object v2, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lghx;->b(Lgxl;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lgjq;->g:Lfvt;

    invoke-virtual {v2}, Lfvt;->j()J

    move-result-wide v2

    const-wide/32 v4, -0x3b9aca00

    add-long/2addr v2, v4

    new-instance v4, Lgnr;

    new-instance v5, Lgnx;

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {v5, v6, v2, v3}, Lgnx;-><init>(Landroid/hardware/camera2/CaptureResult$Key;J)V

    invoke-static {v5}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v2

    invoke-direct {v4, v2}, Lgnr;-><init>(Ljava/util/Set;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ge v3, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    iget-object v7, p0, Lgjq;->d:Lgnk;

    invoke-interface {v7}, Lgnk;->e()Lkeb;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v8, v6}, Lgxl;->C(Z)V

    invoke-virtual {v4, v7}, Lgnr;->a(Lkeb;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v7}, Lkeb;->b()Lkeg;

    invoke-interface {v7}, Lkeb;->close()V

    move-object v7, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v7}, Lgjq;->d(Lkeb;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_2
    move-object v7, v1

    :goto_0
    invoke-interface {v0}, Lgnj;->a()V

    if-nez v7, :cond_5

    sget-object v3, Lgjq;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0xb17

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const-string v4, "ZSL frame not available, submitting request with available capacity %s."

    iget-object v7, p0, Lgjq;->d:Lgnk;

    invoke-interface {v7}, Lgnk;->n()Lkgq;

    move-result-object v7

    invoke-virtual {v7}, Lkgq;->a()Ljvs;

    move-result-object v7

    invoke-interface {v7}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lgjq;->d:Lgnk;

    move-object v7, v1

    const/4 v4, 0x0

    :cond_3
    if-ge v4, v5, :cond_4

    invoke-interface {v3}, Lgnk;->n()Lkgq;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    iget-object v8, v7, Lkgq;->c:Lmwn;

    invoke-virtual {v7}, Lkgq;->a()Ljvs;

    move-result-object v8

    invoke-interface {v8}, Ljvs;->bm()Ljava/lang/Object;

    iget-object v8, p0, Lgjq;->b:Lken;

    invoke-interface {v8, v7}, Lken;->q(Lkgq;)Lkeb;

    move-result-object v7

    invoke-direct {p0, v7}, Lgjq;->d(Lkeb;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    invoke-static {v7}, Lkfg;->y(Lkeb;)V

    invoke-interface {v7}, Lkeb;->b()Lkeg;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v7}, Lkeb;->h()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v7}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v2

    iget-object v3, p2, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v3}, Lfzz;->e()Lfzy;

    move-result-object v3

    invoke-interface {v3}, Lfzy;->h()V

    iget-object v3, p0, Lgjq;->f:Lkbc;

    const-string v4, "pckSingleHdr#process"

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v3, p0, Lgjq;->e:Lgjy;

    invoke-virtual {v3, v2, p1, p2}, Lgjy;->i(Ljava/util/List;Lgal;Lgkr;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    sget-object v3, Lgjq;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0xb14

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const-string v4, "Frame aborted."

    invoke-interface {v3, v4}, Lnah;->o(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ldog; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-interface {p1}, Lgal;->close()V

    invoke-interface {v0}, Lgnj;->a()V

    if-nez v2, :cond_7

    iget-object p1, p2, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {p1}, Lfzz;->f()V

    iget-object p1, p2, Lgkr;->c:Ljava/lang/Object;

    new-instance p2, Ldoe;

    invoke-direct {p2, v1}, Ldoe;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-interface {p1, p2}, Lgxl;->w(Ljava/lang/Throwable;)V

    :cond_7
    return-void

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-interface {p1}, Lgal;->close()V

    invoke-interface {v0}, Lgnj;->a()V

    iget-object p1, p2, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {p1}, Lfzz;->f()V

    iget-object p1, p2, Lgkr;->c:Ljava/lang/Object;

    iget-object p2, p0, Lgjq;->i:Ljuf;

    invoke-virtual {p2}, Ljuf;->b()Z

    move-result p2

    if-eqz p2, :cond_8

    new-instance p2, Ldoe;

    invoke-direct {p2, v1}, Ldoe;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    new-instance p2, Ldog;

    invoke-direct {p2, v1}, Ldog;-><init>(Ljava/lang/Throwable;)V

    sget-object v0, Ligh;->a:Ligf;

    invoke-interface {p1, v0, p2}, Lgxl;->B(Ligf;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    :goto_3
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    :goto_4
    invoke-interface {p1}, Lgal;->close()V

    invoke-interface {v0}, Lgnj;->a()V

    iget-object p1, p2, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {p1}, Lfzz;->f()V

    iget-object p1, p2, Lgkr;->c:Ljava/lang/Object;

    iget-object p2, p0, Lgjq;->i:Ljuf;

    invoke-virtual {p2}, Ljuf;->b()Z

    move-result p2

    if-nez p2, :cond_a

    new-instance p2, Ldog;

    if-eqz v1, :cond_9

    invoke-direct {p2, v1}, Ldog;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    const-string v0, "Image capture failed. Aborting capture!"

    invoke-direct {p2, v0}, Ldog;-><init>(Ljava/lang/String;)V

    :goto_5
    sget-object v0, Ligh;->a:Ligf;

    invoke-interface {p1, v0, p2}, Lgxl;->B(Ligf;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    new-instance p2, Ldoe;

    invoke-direct {p2, v1}, Ldoe;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, p2}, Lgxl;->w(Ljava/lang/Throwable;)V

    :goto_6
    goto :goto_8

    :goto_7
    throw v2

    :goto_8
    goto :goto_7
.end method
