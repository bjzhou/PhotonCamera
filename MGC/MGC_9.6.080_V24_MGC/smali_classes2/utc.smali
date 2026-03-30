.class public final Lutc;
.super Lusq;
.source "PG"


# static fields
.field private static final g:Ljava/lang/String; = "utc"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:I

.field public final d:Lusy;

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Luss;)V
    .locals 13

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lutc;->f:Landroid/content/Context;

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

    :goto_2
    new-instance v10, Lpvp;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    int-to-long v1, v1

    nop

    nop

    :try_start_0
    new-instance p0, Lusu;

    nop

    nop

    iget-boolean v4, p1, Luss;->d:Z

    nop

    nop

    nop

    iget-object v3, p1, Luss;->g:Lusr;

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Lusr;->a:Lusr;

    nop

    invoke-virtual {v3}, Lusr;->ordinal()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v12, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_3

    nop

    if-eq v3, v12, :cond_2

    nop

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    nop

    if-eq v3, v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    if-ne v3, v11, :cond_0

    nop

    nop

    nop

    nop

    move v6, v12

    nop

    goto :goto_5

    nop

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    const-string p1, "Unknown internal builder cache mode"

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    :cond_1
    move v6, v5

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    move v6, v11

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    :cond_3
    move v6, v10

    nop

    nop

    nop

    :goto_5
    iget-object v7, p1, Luss;->h:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lucu;->x()J

    move-result-wide v8

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    move-object v3, p0

    nop

    invoke-direct/range {v3 .. v9}, Lusu;-><init>(ZZILjava/lang/String;J)V

    invoke-static {}, Lorg/chromium/net/impl/ImplVersion;->getCronetVersionWithLastChange()Ljava/lang/String;

    move-result-object p1

    nop

    const-string v3, "CronetHttpURLConnection/"

    nop

    nop

    nop

    nop

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    const-string v3, "/"

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    aget-object p1, p1, v12

    nop

    const-string v3, "@"

    nop

    nop

    nop

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    aget-object p1, p1, v10

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lusx;

    nop

    invoke-direct {v3, p1}, Lusx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, p0, v3}, Lusy;->d(JLusu;Lusx;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v6, 0x32

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

    :goto_8
    invoke-static {v0, v2}, Lusz;->a(Landroid/content/Context;I)Lusy;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_9
    const/16 v5, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    const-string p1, "using the fallback Cronet Engine implementation. Performance will suffer and many HTTP client features, including caching, will not work."

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_18

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_22

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    move-object v3, v2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Lusq;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "Error while trying to log JavaCronetEngine creation: "

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_21

    nop

    nop

    :goto_15
    invoke-direct {v10, v11}, Lpvp;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v11, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, p1, Luss;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1c
    iput-object v2, p0, Lutc;->b:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

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

    :goto_1e
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    iput v1, p0, Lutc;->c:I

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_20
    sget-object p1, Lutc;->g:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_21
    return-void

    nop

    :goto_22
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v0, p0, Lutc;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_24
    const v1, 0x7

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

    nop

    :goto_25
    move v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p1, Luss;->c:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v0, p0, Lutc;->d:Lusy;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_29
    sget-object p0, Lutc;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2a
    iput-object v2, p0, Lutc;->a:Ljava/lang/String;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    :goto_2c
    goto/32 :goto_f

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

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

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Lrrf;Ljava/util/concurrent/Executor;)Lucu;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {v0, p1, p2, p3, p0}, Lutp;-><init>(Ljava/lang/String;Lrrf;Ljava/util/concurrent/Executor;Lusq;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lutp;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lutc;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
