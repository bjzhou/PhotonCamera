.class public final Lpdc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpdf;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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

    nop

    :goto_2
    sput-object v0, Lpdc;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lpdc;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const-string v0, ""

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

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method

.method private static j()Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

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

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    :catchall_0
    :goto_3
    goto/32 :goto_4

    nop

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
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lpdh;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    new-instance p0, Lpda;

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

    :goto_2
    sget-object v0, Lpdc;->a:Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_3
    invoke-direct {p0, v0, p1}, Lpda;-><init>(ILjava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop
.end method

.method public final b(Ljava/lang/String;)Lpdj;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lpdb;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Lpdb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    return-object p2

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0xd

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x15

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    invoke-static {}, Lpdc;->j()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    if-eqz v0, :cond_0

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

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lmcf;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p0, p1, p2, v1}, Lmcf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

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

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, p1, p2, v1}, Leze;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x15

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    invoke-static {}, Lpdc;->j()Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Leze;

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

    :goto_8
    return-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x14

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

    :goto_d
    goto/32 :goto_4

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final synthetic e(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_1

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
    invoke-static {p0, p1, p2}, Lpuq;->bL(Lpdf;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    const v0, 0x6

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lpdc;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    nop

    :goto_c
    goto/32 :goto_9

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    xor-int/lit8 v0, v0, 0x1

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

    nop

    :goto_f
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    const-string v1, "Empty sectionName."

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1

    nop

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

.method public final h(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lpdc;->f(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final varargs i()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method
