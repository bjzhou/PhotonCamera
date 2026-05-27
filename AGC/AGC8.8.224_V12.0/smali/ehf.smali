.class public final Lehf;
.super Ljava/lang/Object;

# interfaces
.implements Ledl;


# static fields
.field public static final b:Lnak;


# instance fields
.field public final c:Legz;

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public final e:Ldhi;

.field public final f:Z

.field public final g:Ljava/util/Map;

.field public final h:Leeo;

.field public final i:Ldzf;

.field public final j:Lfuz;

.field private final k:Lmqp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/hdrplus/portrait/PostProcessingPortraitImageSaverImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lehf;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Lmqp;Lfuz;Legz;Ldhi;ZLeeo;Ldzf;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lehf;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lehf;->k:Lmqp;

    iput-object p2, p0, Lehf;->j:Lfuz;

    iput-object p3, p0, Lehf;->c:Legz;

    iput-object p4, p0, Lehf;->e:Ldhi;

    iput-boolean p5, p0, Lehf;->f:Z

    iput-object p6, p0, Lehf;->h:Leeo;

    iput-object p7, p0, Lehf;->i:Ldzf;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lehf;->g:Ljava/util/Map;

    return-void
.end method

.method public static e(Lnou;)Lcom/google/googlex/gcam/InterleavedImageU16;
    .locals 3

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x64

    invoke-interface {p0, v1, v2, v0}, Lnou;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlex/gcam/InterleavedImageU16;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    new-instance p0, Lcom/google/googlex/gcam/InterleavedImageU16;

    invoke-direct {p0}, Lcom/google/googlex/gcam/InterleavedImageU16;-><init>()V

    goto :goto_1

    :catch_3
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Lcom/google/googlex/gcam/InterleavedImageU16;

    invoke-direct {p0}, Lcom/google/googlex/gcam/InterleavedImageU16;-><init>()V

    :goto_1
    return-object p0
.end method

.method private final f(Lgkr;)Lehe;
    .locals 9

    iget-object v0, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lgxl;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lehf;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lehe;

    if-nez v1, :cond_0

    iget-object v4, p1, Lgkr;->c:Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, Lgwx;

    iget-object v8, v1, Lgwx;->c:Lmqp;

    new-instance v1, Lehe;

    iget-object v5, p1, Lgkr;->a:Ljava/lang/Object;

    iget-object v6, p0, Lehf;->k:Lmqp;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lehe;-><init>(Lehf;Lgxl;Lgaa;Lmqp;Ljava/util/UUID;Lmqp;)V

    iget-object p1, p0, Lehf;->g:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Lgkr;)Lfyy;
    .locals 0

    invoke-direct {p0, p1}, Lehf;->f(Lgkr;)Lehe;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lgkr;)Lfyy;
    .locals 0

    invoke-direct {p0, p1}, Lehf;->f(Lgkr;)Lehe;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lgkr;)Ledm;
    .locals 0

    invoke-direct {p0, p1}, Lehf;->f(Lgkr;)Lehe;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lgkr;Lefz;)Ledm;
    .locals 0

    invoke-direct {p0, p1}, Lehf;->f(Lgkr;)Lehe;

    move-result-object p1

    return-object p1
.end method
