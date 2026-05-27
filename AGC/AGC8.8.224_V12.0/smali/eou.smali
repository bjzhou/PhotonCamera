.class public final Leou;
.super Ljava/lang/Object;

# interfaces
.implements Lgam;


# static fields
.field public static final a:Lnak;


# instance fields
.field private final b:Lgnk;

.field private final c:Lgam;

.field private final d:Ljvs;

.field private final e:Leqd;

.field private final f:Ljuf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/lasagna/MotionBlurCaptureCommand"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leou;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lgnk;Ljvs;Ljuf;Lmqp;Leop;Ljvs;Ljvs;Loiw;Lebw;Lgam;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lmoz;->e(Z)V

    iput-object p1, p0, Leou;->b:Lgnk;

    iput-object p10, p0, Leou;->c:Lgam;

    check-cast p4, Lmqt;

    iget-object p4, p4, Lmqt;->a:Ljava/lang/Object;

    check-cast p4, Leqd;

    iput-object p4, p0, Leou;->e:Leqd;

    iput-object p3, p0, Leou;->f:Ljuf;

    invoke-interface {p1}, Lgnk;->f()Lkef;

    move-result-object p1

    invoke-virtual {p9}, Lebw;->b()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    add-int/lit8 p4, p4, 0x9

    invoke-interface {p8}, Loiw;->get()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lglt;

    invoke-interface {p8}, Lglt;->b()Ljvs;

    move-result-object p8

    new-instance p9, Ljvk;

    const/4 p10, 0x0

    invoke-static {p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p9, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v2, Lfel;

    invoke-direct {v2, v1, p1, p9, v0}, Lfel;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lkef;Ljvk;I)V

    invoke-interface {p1, v2}, Lkef;->k(Lkee;)V

    new-instance v1, Ldsk;

    const/4 v2, 0x5

    invoke-direct {v1, p9, v2}, Ldsk;-><init>(Ljvk;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-interface {p2, v1, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljuf;->d(Lkad;)V

    new-instance p2, Libl;

    invoke-direct {p2, p4, v0}, Libl;-><init>(II)V

    invoke-static {p7, p2}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object p2

    sget-object p4, Ldeo;->m:Ldeo;

    invoke-static {p2, p4}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object p4

    new-instance p7, Lcjn;

    invoke-direct {p7, p8, p4, p2}, Lcjn;-><init>(Ljvs;Ljvs;Ljvs;)V

    new-instance p2, Ldsk;

    const/4 p4, 0x6

    invoke-direct {p2, p8, p4}, Ldsk;-><init>(Ljvs;I)V

    sget-object p8, Lnnv;->a:Lnnv;

    invoke-interface {p7, p2, p8}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljuf;->d(Lkad;)V

    const/4 p2, 0x2

    new-array p8, p2, [Ljvs;

    aput-object p7, p8, p10

    aput-object p9, p8, v0

    invoke-static {p8}, Ljvw;->d([Ljvs;)Ljvs;

    move-result-object p7

    new-array p2, p2, [Ljvs;

    aput-object p7, p2, p10

    aput-object p6, p2, v0

    invoke-static {p2}, Ljvw;->d([Ljvs;)Ljvs;

    move-result-object p2

    iput-object p2, p0, Leou;->d:Ljvs;

    invoke-interface {p1, p5}, Lkef;->k(Lkee;)V

    new-instance p2, Leid;

    invoke-direct {p2, p1, p5, p4}, Leid;-><init>(Lkef;Leop;I)V

    invoke-virtual {p3, p2}, Ljuf;->d(Lkad;)V

    invoke-virtual {p3, p5}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method private final d(Lgxy;Lgnj;)V
    .locals 0

    invoke-interface {p2}, Lgnj;->a()V

    iget-object p2, p0, Leou;->e:Leqd;

    invoke-interface {p2, p1}, Leqd;->d(Lgxy;)V

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Leou;->d:Ljvs;

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 1

    iget-object v0, p0, Leou;->c:Lgam;

    invoke-interface {v0}, Lgam;->b()Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lgal;Lgkr;)V
    .locals 5

    iget-object v0, p2, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lfzz;->b()Lfzy;

    iget-object v0, p0, Leou;->b:Lgnk;

    invoke-interface {v0}, Lgnk;->a()Lgnj;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Leou;->e:Leqd;

    invoke-interface {v1, p2}, Leqd;->n(Lgkr;)Ljava/util/concurrent/Future;

    move-result-object v1

    iget-object v2, p0, Leou;->f:Ljuf;

    new-instance v3, Ledg;

    const/4 v4, 0x7

    invoke-direct {v3, v1, v4}, Ledg;-><init>(Ljava/util/concurrent/Future;I)V

    invoke-virtual {v2, v3}, Ljuf;->d(Lkad;)V

    iget-object v2, p2, Lgkr;->c:Ljava/lang/Object;

    new-instance v3, Leot;

    invoke-direct {v3, v1}, Leot;-><init>(Ljava/util/concurrent/Future;)V

    invoke-interface {v2, v3}, Lgxl;->u(Lgxw;)V

    iget-object v2, p0, Leou;->c:Lgam;

    sget-object v3, Lgjn;->b:Lgjn;

    invoke-interface {v2, v3, p2}, Lgam;->c(Lgal;Lgkr;)V

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lgnj;->a()V

    invoke-interface {p1}, Lgal;->close()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    iget-object p2, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p2}, Lgxl;->h()Lgxy;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Leou;->d(Lgxy;Lgnj;)V

    throw v1

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_0
    iget-object p2, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p2}, Lgxl;->h()Lgxy;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Leou;->d(Lgxy;Lgnj;)V

    new-instance p2, Ljava/lang/InterruptedException;

    const-string v1, "Error executing capture command."

    invoke-direct {p2, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-interface {v0}, Lgnj;->a()V

    invoke-interface {p1}, Lgal;->close()V

    throw p2
.end method
