.class public Lgpa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lppq;
.implements Lgpm;


# static fields
.field public static final a:Lsdb;

.field private static final h:Lj$/time/Duration;

.field private static final i:Lj$/time/Duration;

.field private static final j:Lj$/time/Duration;


# instance fields
.field public final b:Lsuk;

.field public final c:Lsuk;

.field public final d:Ljava/lang/Object;

.field public final e:Lsuu;

.field public f:I

.field public g:Lgoq;

.field private final k:Lgpg;

.field private final l:Ljava/nio/ByteBuffer;

.field private final m:I

.field private n:Lppp;

.field private o:Lgoz;

.field private final p:Lgom;


# direct methods
.method private final 7ecc92917e9c4556cc19f457ddc41af8m()V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const v1, 0x20

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    const-string v1, "Failed to get the process completed."

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

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    :goto_8
    sget-object v0, Lgpa;->a:Lsdb;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    const/16 v2, 0x26a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    :try_start_0
    iget-object p0, p0, Lgpa;->e:Lsuu;

    nop

    nop

    nop

    sget-object v0, Lgpa;->j:Lj$/time/Duration;

    nop

    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    nop

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0, v1, v2}, Lsuu;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_b

    nop

    nop

    :goto_e
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
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

    nop

    :goto_2
    sput-object v0, Lgpa;->i:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_11

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

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    goto/32 :goto_8

    nop

    :goto_5
    sput-object v0, Lgpa;->h:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "gpa"

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    sput-object v0, Lgpa;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-wide/16 v0, 0x2bc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/16 v0, 0xbb8

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_13
    sput-object v0, Lgpa;->j:Lj$/time/Duration;

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

    nop

    :goto_14
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-wide/16 v0, 0x3e8

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lgpg;Lgom;)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v2, p0, Lgpa;->e:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    new-instance p2, Lgox;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lgpa;->l:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v2, Lgoz;->a:Lgoz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "AProcInput"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_9
    iput-object p1, p0, Lgpa;->k:Lgpg;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v2, Lsuu;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_d
    invoke-direct {v2}, Lsuu;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v2, Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10
    const v0, 0xe

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v1}, Lsgj;->H(Ljava/util/concurrent/ExecutorService;)Lsuk;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    iput p2, p0, Lgpa;->m:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p2, p0, Lgpa;->p:Lgom;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_20

    nop

    nop

    :goto_15
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_16
    iput-object v1, p0, Lgpa;->c:Lsuk;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_18
    invoke-static {v0}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    const-string v1, "AProcOutput"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1a
    check-cast p1, Lmhs;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0}, Lsgj;->H(Ljava/util/concurrent/ExecutorService;)Lsuk;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v0, p0, Lgpa;->b:Lsuk;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p1}, Lgpg;->b()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    iput-object v2, p0, Lgpa;->d:Ljava/lang/Object;

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

    :goto_21
    iput-object p2, p1, Lmhs;->c:Lgpf;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_23
    iput-object v2, p0, Lgpa;->o:Lgoz;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p2, p0, v0}, Lgox;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v1}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final e(Ljava/lang/Runnable;Lsuk;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p1, v0}, Lgoy;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lstd;->a:Lstd;

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

    :goto_3
    new-instance p1, Lgoy;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, p1, v0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1, p0}, Lsuk;->a(Ljava/lang/Runnable;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lppp;)Lppp;
    .locals 7

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Lozc;->f:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    mul-long/2addr v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    mul-int/lit8 v1, v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_4
    int-to-long v4, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lgpa;->n:Lppp;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v1, v0, Lgom;->g:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_7
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-wide v5, 0x1dcd65000L

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1, v2}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_c
    iput v0, p0, Lgpa;->f:I

    nop

    nop

    :try_start_0
    new-instance v2, Lgoq;

    nop

    nop

    nop

    invoke-direct {v2, v1, v0}, Lgoq;-><init>(II)V

    iput-object v2, p0, Lgpa;->g:Lgoq;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    sget-object v0, Lozc;->b:Lozc;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Lgpa;->h:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_11
    mul-int/2addr v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    iget v2, p0, Lgpa;->m:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-wide/16 v2, 0x3e8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    int-to-long v3, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    int-to-long v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v1, Lgoz;->b:Lgoz;

    nop

    iput-object v1, p0, Lgpa;->o:Lgoz;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lgpa;->g:Lgoq;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x11

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    new-instance p1, Ljava/io/UncheckedIOException;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    div-long/2addr v1, v3

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

    nop

    :goto_1c
    div-long/2addr v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    mul-int/2addr v1, v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Lgov;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    :goto_20
    iget-object v0, p0, Lgpa;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_21
    throw p0

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-object v0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_2
    monitor-exit v0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_21

    nop

    nop

    :goto_23
    throw p1

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_25
    div-int/lit8 v0, v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_26
    iget-object v0, p0, Lgpa;->p:Lgom;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {p1}, Lppp;->d()Landroid/media/AudioFormat;

    move-result-object v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    long-to-int v0, v4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_29
    mul-long/2addr v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_24

    nop

    :goto_2b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2d
    invoke-direct {v0, p1, p0, v1}, Lgov;-><init>(Lppp;Lgpm;Lgpj;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 7

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v2

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw p0

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x17

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v1, p0, Lgpa;->o:Lgoz;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lgoz;->b:Lgoz;

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_1

    nop

    nop

    nop

    move v2, v3

    nop

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    :cond_1
    move v2, v4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v5, "Cannot start from %s"

    nop

    nop

    nop

    nop

    invoke-static {v2, v5, v1}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lgpa;->n:Lppp;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lppp;->e()V

    iget-object v1, p0, Lgpa;->k:Lgpg;

    nop

    invoke-interface {v1}, Lgpg;->g()V

    iget-object v1, p0, Lgpa;->p:Lgom;

    nop

    nop

    nop

    iget-object v2, v1, Lgom;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v2

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput v4, v1, Lgom;->d:I

    nop

    nop

    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-wide v5, v1, Lgom;->f:J

    nop

    nop

    nop

    nop

    nop

    iput v4, v1, Lgom;->e:I

    nop

    nop

    nop

    iput-wide v5, v1, Lgom;->h:J

    nop

    iget-object v1, v1, Lgom;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v1, Lgpt;

    nop

    invoke-direct {v1, p0, v3}, Lgpt;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Lgpa;->b:Lsuk;

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Lgpa;->e(Ljava/lang/Runnable;Lsuk;)V

    sget-object v1, Lgoz;->c:Lgoz;

    nop

    nop

    nop

    iput-object v1, p0, Lgpa;->o:Lgoz;

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lgpa;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 5

    goto/32 :goto_c

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lgpa;->c:Lsuk;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lgpa;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_1e

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Lgpg;->h()V

    goto/32 :goto_19

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Lsuk;->shutdown()V

    :try_start_0
    iget-object v0, p0, Lgpa;->c:Lsuk;

    nop

    nop

    sget-object v1, Lgpa;->i:Lj$/time/Duration;

    nop

    nop

    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    nop

    nop

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2, v3, v4}, Lsuk;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lgpa;->b:Lsuk;

    nop

    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    nop

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    invoke-interface {v0, v1, v2, v3}, Lsuk;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_12

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    :try_start_1
    iget-object v1, p0, Lgpa;->o:Lgoz;

    nop

    nop

    nop

    nop

    sget-object v2, Lgoz;->c:Lgoz;

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    sget-object v1, Lgoz;->d:Lgoz;

    nop

    nop

    nop

    iput-object v1, p0, Lgpa;->o:Lgoz;

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x11

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_2
    monitor-exit v0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_e
    monitor-enter v1

    nop

    nop

    nop

    :try_start_3
    sget-object v0, Lgoz;->e:Lgoz;

    nop

    nop

    nop

    iput-object v0, p0, Lgpa;->o:Lgoz;

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0}, Lppp;->f()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    const-string v2, "Failed to await termination for input and output executors."

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v3, 0x266

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_2

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lgpa;->k:Lgpg;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Lsuk;->shutdown()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Lgpa;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_17
    sget-object v1, Lgpa;->a:Lsdb;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0}, Lgpa;->7ecc92917e9c4556cc19f457ddc41af8m()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lgpa;->b:Lsuk;

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

    :goto_1b
    iget-object v0, p0, Lgpa;->n:Lppp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_6

    nop

    nop

    :goto_1d
    throw p0

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

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
    iget-object v0, p0, Lgpa;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_4
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lgpa;->o:Lgoz;

    nop

    nop

    sget-object v2, Lgoz;->f:Lgoz;

    nop

    if-eq v1, v2, :cond_1

    nop

    invoke-virtual {p0}, Lgpa;->c()V

    iget-object v1, p0, Lgpa;->n:Lppp;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lppp;->close()V

    iget-object v1, p0, Lgpa;->k:Lgpg;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lgpg;->close()V

    sget-object v1, Lgoz;->f:Lgoz;

    nop

    nop

    iput-object v1, p0, Lgpa;->o:Lgoz;

    nop

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    const v1, 0x19

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final d(I)V
    .locals 17

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0xe

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    div-int v1, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v4, v5, v6}, Lppp;->g(Ljava/nio/ByteBuffer;I)Lpic;

    move-result-object v4

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
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v5, "Read buffer from audio stream, but the audio packet is null."

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v4, v0, Lgpa;->n:Lppp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v4, v0, Lgpa;->n:Lppp;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    iget-object v5, v0, Lgpa;->p:Lgom;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1d

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_c
    move v3, v2

    nop

    nop

    :goto_d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v5, 0x3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v4}, Lppp;->c()I

    move-result v4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    iget-object v5, v0, Lgpa;->k:Lgpg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    iget v1, v0, Lgpa;->m:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v8, v5, Lgom;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    iget-object v4, v0, Lgpa;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_18
    monitor-enter v8

    nop

    :try_start_0
    iget-wide v9, v5, Lgom;->f:J

    nop

    nop

    const-wide/16 v11, 0x1

    nop

    nop

    nop

    add-long/2addr v9, v11

    nop

    nop

    nop

    iput-wide v9, v5, Lgom;->f:J

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v5, Lgom;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v9, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    iget-wide v9, v5, Lgom;->h:J

    nop

    nop

    nop

    sub-long v9, v6, v9

    nop

    invoke-static {v9, v10}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v4

    nop

    nop

    nop

    iget-object v9, v5, Lgom;->g:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lj$/time/Duration;->toNanos()J

    move-result-wide v9

    nop

    nop

    nop

    long-to-float v9, v9

    nop

    nop

    nop

    nop

    const v10, 0x3e4ccccd    # 0.2f

    nop

    nop

    nop

    nop

    mul-float/2addr v9, v10

    nop

    nop

    float-to-long v9, v9

    nop

    nop

    invoke-static {v9, v10}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v9

    nop

    nop

    iget-object v10, v5, Lgom;->g:Lj$/time/Duration;

    nop

    invoke-virtual {v4, v9}, Lj$/time/Duration;->minus(Lj$/time/Duration;)Lj$/time/Duration;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v9}, Lj$/time/Duration;->toNanos()J

    move-result-wide v11

    nop

    nop

    nop

    invoke-virtual {v10}, Lj$/time/Duration;->toNanos()J

    move-result-wide v9

    nop

    nop

    nop

    div-long/2addr v11, v9

    nop

    nop

    long-to-int v9, v11

    nop

    nop

    nop

    nop

    if-lez v9, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget v10, v5, Lgom;->e:I

    nop

    nop

    nop

    add-int/2addr v10, v9

    nop

    iput v10, v5, Lgom;->e:I

    nop

    nop

    sget-object v10, Lgom;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Lscs;->c()Lsdo;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    const/16 v11, 0x254

    nop

    nop

    invoke-interface {v10, v11}, Lscz;->M(I)Lsdo;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    move-object v11, v10

    nop

    check-cast v11, Lscz;

    nop

    nop

    const-string v12, "Audio packet timestamp: %d. Expected frame duration: %d ns. Elapsed time: %d ns. Possible frame loss counts: %d"

    nop

    nop

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v5, Lgom;->g:Lj$/time/Duration;

    nop

    nop

    invoke-virtual {v10}, Lj$/time/Duration;->toNanos()J

    move-result-wide v14

    nop

    nop

    nop

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    nop

    invoke-virtual {v4}, Lj$/time/Duration;->toNanos()J

    move-result-wide v15

    nop

    nop

    nop

    nop

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    nop

    nop

    invoke-interface/range {v11 .. v16}, Lscz;->H(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iget v4, v5, Lgom;->d:I

    nop

    nop

    nop

    if-le v9, v4, :cond_2

    nop

    nop

    nop

    iput v9, v5, Lgom;->d:I

    nop

    nop

    nop

    :cond_2
    monitor-exit v8

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v4, v0, Lgpa;->l:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v5, v4}, Lgpg;->k(Lpic;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x16

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

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    :goto_1e
    check-cast v4, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_21
    if-lt v3, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    :goto_23
    iget-object v5, v0, Lgpa;->l:Ljava/nio/ByteBuffer;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_24
    iput-wide v6, v5, Lgom;->h:J

    nop

    nop

    :goto_25
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_25

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_12

    nop

    nop

    :goto_28
    goto/16 :goto_d

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit v8

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v4}, Lpic;->g()J

    move-result-wide v6

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit v4

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_1f

    nop

    nop

    :goto_2c
    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2d
    monitor-enter v4

    nop

    nop

    :try_start_3
    iget-object v5, v0, Lgpa;->o:Lgoz;

    nop

    nop

    sget-object v6, Lgoz;->c:Lgoz;

    nop

    if-eq v5, v6, :cond_5

    nop

    nop

    nop

    monitor-exit v4

    nop

    nop

    return-void

    nop

    nop

    :cond_5
    monitor-exit v4

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v4, Lgpa;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

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

    :goto_30
    invoke-interface {v4, v5}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/16 v5, 0x265

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_33
    if-eq v4, v5, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop
.end method
