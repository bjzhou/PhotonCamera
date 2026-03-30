.class public abstract Landroidx/work/CoroutineWorker;
.super Leqg;
.source "PG"


# instance fields
.field private final e:Landroidx/work/WorkerParameters;

.field private final f:Lufp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Landroidx/work/CoroutineWorker;->e:Landroidx/work/WorkerParameters;

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

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2}, Leqg;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Lept;->a:Lept;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    iput-object p1, p0, Landroidx/work/CoroutineWorker;->f:Lufp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 4

    goto/32 :goto_15

    nop

    nop

    :goto_0
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Lrt;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/work/CoroutineWorker;->f:Lufp;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/work/CoroutineWorker;->e:Landroidx/work/WorkerParameters;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v1, Lept;->a:Lept;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0, v1}, Luad;->plus(Luad;)Luad;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v1}, Landroidx/wear/ambient/WearableControllerProvider;->a(Luad;Lubo;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, p0, v2, v3}, Lrt;-><init>(Landroidx/work/CoroutineWorker;Ltzy;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    new-instance v1, Luha;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_14
    invoke-direct {v1, v2}, Luha;-><init>(Lugy;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x18

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

    nop

    :goto_16
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_17
    iget-object v0, p0, Landroidx/work/CoroutineWorker;->f:Lufp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_18
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_19
    const/16 v3, 0xa

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, v0, Landroidx/work/WorkerParameters;->d:Luad;

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_5

    nop

    nop
.end method

.method public abstract b(Ltzy;)Ljava/lang/Object;
.end method
