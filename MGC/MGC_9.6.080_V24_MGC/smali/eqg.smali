.class public abstract Leqg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroidx/work/WorkerParameters;

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x14

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Leqg;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v1, -0x100

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string p1, "Application Context is null"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p2, p0, Leqg;->b:Landroidx/work/WorkerParameters;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    const v1, 0x1a

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Leqg;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_18
    const-string p1, "WorkerParameters is null"

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a()Lsui;
.end method

.method public final c()Lepu;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroidx/work/WorkerParameters;->b:Lepu;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Leqg;->b:Landroidx/work/WorkerParameters;

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final d()Ljava/util/concurrent/Executor;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Leqg;->b:Landroidx/work/WorkerParameters;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    iget-object p0, p0, Landroidx/work/WorkerParameters;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(I)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Leqg;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/16 v0, -0x100

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
.end method

.method public final f()Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Leqg;->c:Ljava/util/concurrent/atomic/AtomicInteger;

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

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v0, -0x100

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
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
