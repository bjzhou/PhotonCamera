.class final Lmni;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lmni;


# instance fields
.field private final b:Ljava/util/UUID;

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    new-instance v1, Lmni;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lmni;-><init>(Ljava/util/UUID;J)V

    sput-object v1, Lmni;->a:Lmni;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public constructor <init>(Ljava/util/UUID;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmni;->b:Ljava/util/UUID;

    const-wide v0, 0x5deece66dL

    xor-long/2addr p2, v0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v0, 0xffffffffffffL

    and-long/2addr p2, v0

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lmni;->c:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method final a()J
    .locals 11

    :cond_0
    iget-object v0, p0, Lmni;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x5deece66dL

    mul-long v4, v0, v2

    iget-object v6, p0, Lmni;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v7, 0xb

    add-long/2addr v4, v7

    const-wide v9, 0xffffffffffffL

    and-long/2addr v4, v9

    mul-long v2, v2, v4

    add-long/2addr v2, v7

    and-long/2addr v2, v9

    invoke-virtual {v6, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    ushr-long/2addr v4, v0

    ushr-long v0, v2, v0

    long-to-int v1, v0

    long-to-int v0, v4

    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final b()Ljava/util/UUID;
    .locals 7

    invoke-virtual {p0}, Lmni;->a()J

    move-result-wide v0

    const-wide/32 v2, -0xf001

    and-long/2addr v0, v2

    invoke-virtual {p0}, Lmni;->a()J

    move-result-wide v2

    const/4 v4, 0x2

    ushr-long/2addr v2, v4

    new-instance v4, Ljava/util/UUID;

    iget-object v5, p0, Lmni;->b:Ljava/util/UUID;

    invoke-virtual {v5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    xor-long/2addr v0, v5

    iget-object v5, p0, Lmni;->b:Ljava/util/UUID;

    invoke-virtual {v5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    xor-long/2addr v2, v5

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object v4
.end method
