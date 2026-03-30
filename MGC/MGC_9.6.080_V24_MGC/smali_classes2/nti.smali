.class public Lnti;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;

.field private static final f:Lj$/time/Duration;

.field private static final g:Lj$/time/Duration;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Loqu;

.field public d:I

.field public final e:Lohe;

.field private final h:Ljava/util/concurrent/Executor;

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Ljava/util/concurrent/Executor;

.field private final k:Lcom/google/android/gms/wearable/MessageOptions;

.field private final l:Lcom/google/android/gms/wearable/MessageOptions;

.field private final m:Lohe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    :goto_0
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-wide/16 v0, 0x5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lnti;->g:Lj$/time/Duration;

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

    nop

    :goto_8
    if-lez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    sput-object v0, Lnti;->f:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lnti;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-wide/16 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    const-string v0, "nti"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    :goto_12
    const v0, 0x1c

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

.method public constructor <init>(Ljava/util/concurrent/Executor;Lohe;Lohe;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnti;->h:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

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

    :goto_4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_8
    new-instance v0, Lcom/google/android/gms/wearable/MessageOptions;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    iput-object v0, p0, Lnti;->l:Lcom/google/android/gms/wearable/MessageOptions;

    nop

    nop

    nop

    goto/32 :goto_19

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

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/MessageOptions;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lnti;->k:Lcom/google/android/gms/wearable/MessageOptions;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    iput-object p3, p0, Lnti;->m:Lohe;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/MessageOptions;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    :goto_10
    iput-object v0, p0, Lnti;->i:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p2, p0, Lnti;->e:Lohe;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    iput-object v0, p0, Lnti;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Lcom/google/android/gms/wearable/MessageOptions;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Lnti;->j:Ljava/util/concurrent/Executor;

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

    :goto_18
    const v1, 0x1

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

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm()Ljava/util/Set;
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    const-string v1, "getNodesByCapabilitySync() - Fail to getCapability"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnti;->i:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    new-instance v0, Lsuu;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    nop

    :goto_4
    new-instance v2, Lota;

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

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    invoke-direct {v1}, Lote;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v2, 0x1458

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    iget-object v1, v1, Lohe;->h:Lohh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    invoke-static {v1}, La;->au(Z)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v2, Lnth;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v2, v1}, Lota;-><init>(Lohh;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    const v0, 0x1d

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, p0, v2}, Loqy;->i(Ljava/util/concurrent/Executor;Loqt;)V

    :try_start_0
    sget-object p0, Lnti;->g:Lj$/time/Duration;

    nop

    invoke-virtual {p0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v1

    nop

    nop

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2, p0}, Lsuu;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Ljava/util/Set;

    nop
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_20

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v2}, Lohh;->a(Lohz;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v2, v0}, Lnth;-><init>(Lsuu;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    sget-object v0, Lnti;->a:Lsdb;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v2, v1}, Lolx;->ai(Lohk;Lolb;)Loqy;

    move-result-object v1

    nop

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

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lnti;->m:Lohe;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c
    new-instance v1, Lote;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Set;->size()I

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, v1, Love;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v2, v1, Love;->a:Ljava/lang/String;

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

    :goto_7
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_a
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

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

    :goto_c
    check-cast v1, Love;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v3, v1, Love;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    :goto_15
    iget-boolean v3, v1, Love;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_18
    goto :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1b
    const v0, 0x2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1c
    goto :goto_12

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, v1, Love;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_20
    if-eqz v0, :cond_6

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :goto_22
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

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

    :goto_24
    invoke-direct {p0}, Lnti;->d5484163cd8d335e6b17663474ff5f2bm()Ljava/util/Set;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnti;->h:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const/16 v1, 0x8

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lnii;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p0, p1, v1}, Lnii;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnti;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

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

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/String;[B)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, p1, p2}, Lnti;->e(Ljava/lang/String;Ljava/lang/String;[B)V

    goto/32 :goto_f

    nop

    nop

    :goto_3
    const v1, 0xc

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

    :goto_4
    invoke-virtual {p0}, Lnti;->a()Ljava/lang/String;

    move-result-object v0

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

    nop

    nop

    :goto_5
    return-void

    nop

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

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lnti;->b:Ljava/lang/String;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lnti;->b:Ljava/lang/String;

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lnti;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lnti;->f:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    move-object v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    move-object v2, p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x6

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    invoke-virtual/range {v1 .. v6}, Lnti;->f(Ljava/lang/String;Ljava/lang/String;[BJ)V

    goto/32 :goto_7

    nop

    nop

    :goto_6
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v5

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

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object v4, p3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x10

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method final f(Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 9

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_1
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    invoke-virtual {v0, p4, p5, p0}, Lsuu;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lnti;->k:Lcom/google/android/gms/wearable/MessageOptions;

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Lnti;->e:Lohe;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    const v0, 0x1e

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-array p1, v7, [Logb;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_a
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_b
    iput p1, v4, Loji;->c:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_e
    iput-object p1, v4, Loji;->b:[Logb;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    iget-object v1, p0, Lnti;->l:Lcom/google/android/gms/wearable/MessageOptions;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_35

    nop

    nop

    :goto_13
    const v2, -0x9fdf47

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_14
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v1, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->fXxiSpkkilSYtp:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    const/4 v1, -0x1

    nop

    :goto_17
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v4}, Loji;->a()Lojj;

    move-result-object p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, p1}, Lohe;->d(Lojj;)Loqy;

    move-result-object p1

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1a
    move v1, v4

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1b
    invoke-direct {v1, v0, p2}, Lntg;-><init>(Lsuu;Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v8, p1, p2, p3, v1}, Lova;-><init>(Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/wearable/MessageOptions;)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1d
    if-ne v1, v7, :cond_1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1f
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v4, Loji;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_22
    const-string v6, "/sending_time"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_23
    if-ne v1, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_2
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v1, :cond_3

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_47

    nop

    :goto_26
    invoke-virtual {p1, p3, v1}, Loqy;->i(Ljava/util/concurrent/Executor;Loqt;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v8, v4, Loji;->a:Lojf;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v4}, Loji;-><init>()V

    goto/32 :goto_38

    nop

    nop

    :goto_29
    aput-object p3, p1, v3

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

    :goto_2a
    const v1, 0x16

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz p0, :cond_5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p3, p0, Lnti;->c:Loqu;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p3, p0, Lnti;->j:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2f
    const/4 v7, 0x1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_41

    nop

    nop

    :goto_31
    if-ne v1, v4, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_17

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_6

    nop

    nop

    :goto_37
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_38
    new-instance v8, Lova;

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

    :goto_39
    if-nez p3, :cond_9

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_9
    goto/32 :goto_42

    nop

    nop

    :goto_3a
    goto/16 :goto_17

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object p3, Losi;->x:Logb;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3d
    if-ne v1, v2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-ne v1, v2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const v2, 0x3b537707

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_40
    const v2, -0x1522f5bf

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move v1, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_42
    iget-object p0, p0, Lnti;->j:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move v1, v3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_17

    nop

    nop

    :goto_45
    goto/32 :goto_c

    nop

    nop

    :goto_46
    const/16 p1, 0x5dd4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_12

    nop

    :goto_48
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_3b

    nop

    :goto_4a
    goto/32 :goto_1e

    nop

    nop

    :goto_4b
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    new-instance v1, Lntg;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1, p0, p3}, Loqy;->k(Ljava/util/concurrent/Executor;Loqu;)V

    :goto_4e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const-string v5, "/preview"

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop
.end method
