.class public Lgol;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgph;
.implements Lgpi;


# static fields
.field public static final a:Lsdb;

.field private static final i:Lj$/time/Duration;

.field private static final j:Lj$/time/Duration;


# instance fields
.field public final b:Lsuk;

.field public final c:Lsuk;

.field public final d:Ljava/lang/Object;

.field public final e:Lsuu;

.field public f:I

.field public g:Lgok;

.field public h:Lgoq;

.field private final k:Lgpg;

.field private final l:Ljava/nio/ByteBuffer;

.field private final m:Lows;

.field private final n:I

.field private o:Lgpj;

.field private p:Lgoo;


# direct methods
.method private final 3fd9578e124c68aa49885b22b61b4ec8m()V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lgol;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

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

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_4
    const v1, 0x7

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const/16 v2, 0x253

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    :try_start_0
    iget-object p0, p0, Lgol;->e:Lsuu;

    nop

    nop

    nop

    sget-object v0, Lgol;->j:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    invoke-virtual {p0, v0, v1, v2}, Lsuu;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    return-void

    nop

    :catch_0
    move-exception p0

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

    :goto_f
    const-string v1, "Failed to get the process completed."

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(Lgok;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgol;->d:Ljava/lang/Object;

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

    nop

    :goto_1
    monitor-enter v0

    nop

    :try_start_0
    iput-object p1, p0, Lgol;->g:Lgok;

    nop

    nop

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

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

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

    :goto_4
    sput-object v0, Lgol;->i:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    const-wide/16 v0, 0xbb8

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    const-string v0, "gol"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

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
    goto/32 :goto_b

    nop

    nop

    :goto_e
    sput-object v0, Lgol;->a:Lsdb;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sput-object v0, Lgol;->j:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_11
    const-wide/16 v0, 0x2bc

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

    :goto_12
    const v1, 0x7

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public constructor <init>(Lgpg;)V
    .locals 4

    goto/32 :goto_16

    nop

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1
    invoke-static {v1}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

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

    :goto_2
    iput-object v1, p0, Lgol;->c:Lsuk;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lows;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_4
    const-string v1, "BatAPipeOutEx"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Lsgj;->H(Ljava/util/concurrent/ExecutorService;)Lsuk;

    move-result-object v0

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

    nop

    :goto_6
    iput-object p1, p0, Lgol;->k:Lgpg;

    nop

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

    :goto_7
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_24

    nop

    nop

    :goto_8
    iput-object v0, p0, Lgol;->b:Lsuk;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v2, p0, Lgol;->e:Lsuu;

    nop

    nop

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

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, p0, v1}, Lgox;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_d
    new-instance v2, Lsuu;

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

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    invoke-static {v1}, Lsgj;->H(Ljava/util/concurrent/ExecutorService;)Lsuk;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    iput v0, p0, Lgol;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lows;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    :goto_14
    invoke-direct {v2}, Lsuu;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1}, Lgpg;->b()I

    move-result v0

    nop

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

    :goto_16
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "BatAPipeInEx"

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_18
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_19
    new-instance v0, Lgox;

    nop

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

    nop

    :goto_1a
    iput-object v0, p0, Lgol;->m:Lows;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v0, p0, Lgol;->l:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v3, Lgok;->a:Lgok;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_20
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

    :goto_21
    new-instance v3, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v3, p0, Lgol;->g:Lgok;

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

    :goto_23
    invoke-interface {p1, v0}, Lgpg;->f(Lgpf;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v3, p0, Lgol;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public static final i(Ljava/lang/Runnable;Lsuk;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1, p0}, Lsuk;->a(Ljava/lang/Runnable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Lgoy;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-static {p0, p1, v0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1, v0}, Lgoy;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lgpj;
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lgol;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    const v0, 0x18

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

    :goto_4
    if-lez v0, :cond_0

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

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x13

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lgol;->g:Lgok;

    nop

    sget-object v2, Lgok;->b:Lgok;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lgok;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    const-string v2, "Cannot get output from %s"

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lgol;->g:Lgok;

    nop

    nop

    invoke-static {v1, v2, v3}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lgol;->h:Lgoq;

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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
.end method

.method public final b()Lgpk;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgol;->k:Lgpg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lgpg;->c()Lgpk;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Lgol;->51550bab6b6440a4fd45f825c221b363m(Lgok;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lgol;->k:Lgpg;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-interface {v0}, Lgpg;->close()V

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iget-object v0, p0, Lgol;->c:Lsuk;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Lsuk;->shutdown()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Lsuk;->shutdown()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lgol;->m:Lows;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    sget-object v0, Lgok;->f:Lgok;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lgol;->b:Lsuk;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lows;->close()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 4

    goto/32 :goto_13

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgol;->b:Lsuk;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, v1}, Lgmu;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lgok;->c:Lgok;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    :try_start_1
    iget-object v1, p0, Lgol;->g:Lgok;

    nop

    sget-object v2, Lgok;->b:Lgok;

    nop

    invoke-virtual {v1, v2}, Lgok;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    const-string v2, "Cannot start from %s"

    nop

    nop

    iget-object v3, p0, Lgol;->g:Lgok;

    nop

    nop

    invoke-static {v1, v2, v3}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_12

    nop

    nop

    :goto_6
    invoke-static {v0, p0}, Lgol;->i(Ljava/lang/Runnable;Lsuk;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

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

    :goto_8
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

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
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    :goto_e
    invoke-interface {v0}, Lgpg;->g()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lgmu;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    :goto_11
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lgol;->k:Lgpg;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, v0}, Lgol;->51550bab6b6440a4fd45f825c221b363m(Lgok;)V

    goto/32 :goto_f

    nop

    nop

    :goto_15
    iget-object v0, p0, Lgol;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lgol;->o:Lgpj;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop
.end method

.method public final e()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lgol;->3fd9578e124c68aa49885b22b61b4ec8m()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lgol;->51550bab6b6440a4fd45f825c221b363m(Lgok;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lgok;->e:Lgok;

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

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    invoke-direct {p0, v0}, Lgol;->51550bab6b6440a4fd45f825c221b363m(Lgok;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lgol;->k:Lgpg;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Lgpg;->h()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lgok;->d:Lgok;

    nop

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

    nop
.end method

.method public final f(I)V
    .locals 5

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    div-int/2addr p1, v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    :goto_2
    iget-object v2, p0, Lgol;->k:Lgpg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lgol;->o:Lgpj;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Lgol;->l:Ljava/nio/ByteBuffer;

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

    :goto_5
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

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
    monitor-exit v1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lgol;->p:Lgoo;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_22

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    const v1, 0x9

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    const-string v2, "Read buffer from audio stream, but the audio packet is null."

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Lgol;->n:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    invoke-interface {v1, v2, v3}, Lgpj;->a(Ljava/nio/ByteBuffer;I)Lpic;

    move-result-object v1

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

    nop

    :goto_10
    check-cast v1, Lscz;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Lgol;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_13
    sget-object v1, Lgol;->a:Lsdb;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    goto/32 :goto_22

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_17
    invoke-interface {v1}, Lppp;->c()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    :goto_1c
    monitor-enter v2

    nop

    nop

    :try_start_1
    iget-object v3, p0, Lgol;->g:Lgok;

    nop

    nop

    nop

    sget-object v4, Lgok;->c:Lgok;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lgok;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    sget-object p1, Lgol;->a:Lsdb;

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    const/16 v0, 0x24d

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    check-cast p1, Lscz;

    nop

    const-string v0, "Skip processing audio frame since state(%s) != STARTED."

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lgol;->g:Lgok;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v2

    nop

    nop

    return-void

    nop

    :cond_1
    monitor-exit v2

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1e
    goto/16 :goto_2d

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    :try_start_2
    monitor-exit v2

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v2, v1}, Lgpg;->k(Lpic;)V

    :goto_20
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v2, 0x24f

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

    :goto_25
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    :goto_26
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object v2, p0, Lgol;->g:Lgok;

    nop

    nop

    sget-object v3, Lgok;->c:Lgok;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lgok;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_3
    monitor-exit v1

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, p0, Lgol;->l:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_29
    if-eq v1, v2, :cond_4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, v1, Lgoo;->a:Lppp;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lt v0, p1, :cond_5

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, p0, Lgol;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop
.end method

.method public final g(Lgpj;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgol;->o:Lgpj;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Lgoo;)V
    .locals 6

    goto/32 :goto_23

    nop

    nop

    :goto_0
    sget-object p1, Lgok;->b:Lgok;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    :goto_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lgol;->i:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    iget v0, v0, Lozc;->f:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lgol;->m:Lows;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lozc;->b:Lozc;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    iget-object v0, p1, Lgoo;->a:Lppp;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    div-long/2addr v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_f
    mul-int/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    new-instance p1, Ljava/io/UncheckedIOException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, p0}, Lgoo;->a(Lgpi;)Lpci;

    move-result-object p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    mul-int/2addr v1, v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, p1}, Lows;->d(Lpci;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lgol;->k:Lgpg;

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

    :goto_17
    iput-object p1, p0, Lgol;->p:Lgoo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0}, Lppp;->d()Landroid/media/AudioFormat;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, p1}, Lgol;->51550bab6b6440a4fd45f825c221b363m(Lgok;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    const-wide/16 v2, 0x3e8

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

    nop

    :goto_1b
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1c
    div-int/lit8 v0, v1, 0x8

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

    nop

    :goto_1d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0, v1}, Lgpg;->d(Landroid/media/MicrophoneDirection;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    goto/32 :goto_1

    nop

    nop

    :goto_20
    int-to-long v4, v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_21
    long-to-int v0, v4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_22
    iput v0, p0, Lgol;->f:I

    nop

    :try_start_0
    new-instance v2, Lgoq;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v1, v0}, Lgoq;-><init>(II)V

    iput-object v2, p0, Lgol;->h:Lgoq;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x17

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_24
    mul-long/2addr v4, v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, p1, Lgoo;->a:Lppp;

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

    :goto_26
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_27
    mul-int/lit8 v1, v1, 0x8

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop
.end method
