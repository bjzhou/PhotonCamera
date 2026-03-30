.class public abstract Landroidx/work/Worker;
.super Leqg;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

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
    invoke-direct {p0, p1, p2}, Leqg;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

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
    invoke-virtual {p0}, Leqg;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, p0, v2}, Leot;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

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
    new-instance v1, Leot;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_c
    invoke-direct {p0, v0, v1, v2}, Leqr;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_f

    nop

    nop

    :goto_d
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, La;->aq(Ldqq;)Lsui;

    move-result-object p0

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

    :goto_10
    new-instance p0, Leqr;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    const/4 v2, 0x0

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

    nop
.end method

.method public abstract b()Landroidx/wear/ambient/WearableControllerProvider;
.end method
