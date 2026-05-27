.class public final Lghx;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lken;

.field public final c:Lkbc;

.field private final d:Z

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Ldhi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/commands/AfDebugMetadataFetcherShutterAsap"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lghx;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lken;Ldhi;Lkbc;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lghx;->b:Lken;

    iput-object p3, p0, Lghx;->c:Lkbc;

    iput-object p4, p0, Lghx;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lghx;->f:Ldhi;

    sget-object p1, Ldhq;->a:Ldhk;

    invoke-interface {p2, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    sget-object p2, Lefv;->m:Lefv;

    invoke-virtual {p1, p2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lghx;->d:Z

    return-void
.end method

.method public static c(Lker;Lgxl;)V
    .locals 2

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object v0

    iget v0, v0, Lgxy;->a:I

    sget-object v0, Liuw;->g:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v0

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    new-instance v1, Lghw;

    invoke-direct {v1, p1}, Lghw;-><init>(Lgxl;)V

    invoke-interface {p0, v0, v1}, Lker;->j(Ljava/util/Set;Lkfg;)V

    return-void
.end method

.method private final d()Z
    .locals 1

    iget-boolean v0, p0, Lghx;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Liuw;->g:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final e()Z
    .locals 2

    iget-object v0, p0, Lghx;->f:Ldhi;

    sget-object v1, Ldho;->aC:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Livb;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lker;Lgxl;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lgxl;->O(Z)V

    invoke-direct {p0}, Lghx;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lghx;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lghx;->c:Lkbc;

    const-string v1, "AfDebugFetch#request"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p2}, Lghx;->c(Lker;Lgxl;)V
    :try_end_0
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lghx;->c:Lkbc;

    :goto_0
    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    sget-object p2, Lghx;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    invoke-interface {p2, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 p2, 0xa71

    invoke-interface {p1, p2}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string p2, "Error submitting 3A debug metadata request."

    invoke-interface {p1, p2}, Lnah;->o(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lghx;->c:Lkbc;

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lghx;->c:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method public final b(Lgxl;)V
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lgxl;->O(Z)V

    invoke-direct {p0}, Lghx;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lghx;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lghx;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lfqt;

    const/16 v2, 0xf

    invoke-direct {v1, p0, p1, v2}, Lfqt;-><init>(Lghx;Lgxl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
