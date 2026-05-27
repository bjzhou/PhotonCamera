.class public final Llgp;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lkrn;

.field private static final b:Ljava/util/Random;

.field private static final c:Lnow;

.field private static final d:Ljava/lang/Object;

.field private static e:Lkte;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkrq;

    invoke-direct {v0}, Lkrq;-><init>()V

    sput-object v0, Llgp;->a:Lkrn;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Llgp;->b:Ljava/util/Random;

    new-instance v0, Lnaa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnaa;-><init>([B)V

    const-string v1, "PrimesBrellaExampleStore-%d"

    invoke-virtual {v0, v1}, Lnaa;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lnaa;->d(Lnaa;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lnsy;->p(Ljava/util/concurrent/ExecutorService;)Lnow;

    move-result-object v0

    sput-object v0, Llgp;->c:Lnow;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llgp;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lkte;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Llgp;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Llgp;->e:Lkte;

    if-nez v1, :cond_0

    new-instance v1, Lkte;

    new-instance v2, Ljks;

    sget-object v3, Llgp;->a:Lkrn;

    sget-object v4, Llgp;->b:Ljava/util/Random;

    sget-object v5, Llgp;->c:Lnow;

    invoke-direct {v2, p0, v3, v4, v5}, Ljks;-><init>(Landroid/content/Context;Lkrn;Ljava/util/Random;Ljava/util/concurrent/ExecutorService;)V

    const-class v3, Lcom/google/android/libraries/performance/primes/federatedlearning/PrimesExampleStoreDataTtlService;

    invoke-direct {v1, p0, v2, v5, v3}, Lkte;-><init>(Landroid/content/Context;Ljks;Ljava/util/concurrent/ExecutorService;Ljava/lang/Class;)V

    sput-object v1, Llgp;->e:Lkte;

    :cond_0
    sget-object p0, Llgp;->e:Lkte;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
