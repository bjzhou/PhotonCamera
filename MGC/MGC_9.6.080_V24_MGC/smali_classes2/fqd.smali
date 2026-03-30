.class public final Lfqd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static final b:Ljava/io/File;

.field private static volatile c:Lfqd;


# instance fields
.field private d:I

.field private e:Z


# direct methods
.method private final declared-synchronized 33f5b80483094659737b73d90f80a8a4m()Z
    .locals 7

    goto/32 :goto_a

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget v0, p0, Lfqd;->d:I

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    add-int/2addr v0, v1

    nop

    nop

    iput v0, p0, Lfqd;->d:I

    nop

    nop

    nop

    nop

    const/16 v2, 0x32

    nop

    nop

    nop

    if-lt v0, v2, :cond_1

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    iput v0, p0, Lfqd;->d:I

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lfqd;->b:Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    array-length v2, v2

    nop

    nop

    nop

    nop

    int-to-long v3, v2

    nop

    nop

    nop

    nop

    const-wide/16 v5, 0x4e20

    nop

    nop

    cmp-long v3, v3, v5

    nop

    nop

    nop

    nop

    if-gez v3, :cond_0

    nop

    nop

    nop

    goto :goto_4

    nop

    :cond_0
    move v1, v0

    nop

    nop

    nop

    :goto_4
    iput-boolean v1, p0, Lfqd;->e:Z

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    sget-object v0, Lcom/google/android/apps/camera/ui/remotecontrol/Gizr/bXyemjIV;->CNx:Ljava/lang/String;

    nop

    const/4 v1, 0x5

    nop

    nop

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    nop

    nop

    const-string v0, "Excluding HARDWARE bitmap config because we\'re over the file descriptor limit, file descriptors "

    nop

    nop

    nop

    nop

    const-string v1, ", limit 20000"

    nop

    invoke-static {v2, v0, v1}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    const-string v1, "Downsampler"

    nop

    nop

    nop

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lfqd;->e:Z

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_a
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Lfqd;->b:Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    :goto_c
    const-string v1, "/proc/self/fd"

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Lfqd;->e:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a()Lfqd;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    throw v1

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    :try_start_0
    sget-object v1, Lfqd;->c:Lfqd;

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    new-instance v1, Lfqd;

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Lfqd;-><init>()V

    sput-object v1, Lfqd;->c:Lfqd;

    nop

    :cond_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_1

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lfqd;->c:Lfqd;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    const v1, 0x3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_8
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1d

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    nop

    :goto_d
    const-class v0, Lfqd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lfqd;->c:Lfqd;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(IIZZ)Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    if-nez p3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ltz p2, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    if-gez p1, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p4, :cond_3

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Lfqd;->33f5b80483094659737b73d90f80a8a4m()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
