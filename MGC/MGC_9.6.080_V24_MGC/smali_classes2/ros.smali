.class final Lros;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lros;


# instance fields
.field private final b:Ljava/util/UUID;

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v1, Lros;

    nop

    nop

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/security/SecureRandom;

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    nop

    nop

    invoke-direct {v1, v2, v3, v4}, Lros;-><init>(Ljava/util/UUID;J)V

    sput-object v1, Lros;->a:Lros;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    throw v1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/UUID;J)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lros;->b:Ljava/util/UUID;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    xor-long p1, p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lros;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    const-wide v0, 0xffffffffffffL

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p3, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-direct {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    and-long/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    const-wide v0, 0x5deece66dL

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop
.end method


# virtual methods
.method final a()J
    .locals 11

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    and-long/2addr v2, v9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 p0, 0x10

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    invoke-virtual {v6, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    const-wide/16 v7, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    long-to-int p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_f
    const-wide v9, 0xffffffffffffL

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    int-to-long v0, v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    and-long/2addr v4, v9

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    mul-long/2addr v2, v4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    add-long/2addr v2, v7

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    mul-long v4, v0, v2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    shl-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_16
    const-wide v2, 0x5deece66dL

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    ushr-long v0, v4, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lros;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v2, 0x20

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    add-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    long-to-int v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1d
    add-long/2addr v4, v7

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    ushr-long/2addr v2, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1f
    iget-object v6, p0, Lros;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_21
    int-to-long v2, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop
.end method

.method public final b()Ljava/util/UUID;
    .locals 8

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v5, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    xor-long/2addr v0, v6

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v5, Ljava/util/UUID;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    and-long/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_6
    return-object v5

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lros;->a()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    const-wide/32 v2, -0xf001

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lros;->b:Ljava/util/UUID;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    iget-object v4, p0, Lros;->b:Ljava/util/UUID;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    xor-long/2addr v2, v6

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0xe

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lros;->a()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v4, 0x2

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    ushr-long/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method
