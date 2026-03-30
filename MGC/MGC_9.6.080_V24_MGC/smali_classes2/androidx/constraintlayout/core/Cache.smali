.class public Landroidx/constraintlayout/core/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# instance fields
.field arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/constraintlayout/core/Pools$Pool<",
            "Landroidx/constraintlayout/core/ArrayRow;",
            ">;"
        }
    .end annotation
.end field

.field mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

.field optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/constraintlayout/core/Pools$Pool<",
            "Landroidx/constraintlayout/core/ArrayRow;",
            ">;"
        }
    .end annotation
.end field

.field solverVariablePool:Landroidx/constraintlayout/core/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/constraintlayout/core/Pools$Pool<",
            "Landroidx/constraintlayout/core/SolverVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    new-array v0, v0, [Landroidx/constraintlayout/core/SolverVariable;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

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

    :goto_2
    const/16 v1, 0x100

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    new-instance v0, Landroidx/constraintlayout/core/Pools$SimplePool;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/Pools$SimplePool;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iput-object v0, p0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Landroidx/constraintlayout/core/Pools$Pool;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    :goto_b
    const v0, 0x14

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_d
    iput-object v0, p0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    new-instance v0, Landroidx/constraintlayout/core/Pools$SimplePool;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    new-instance v0, Landroidx/constraintlayout/core/Pools$SimplePool;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v0, 0x20

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/Pools$SimplePool;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    :goto_15
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/Pools$SimplePool;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0xb

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method
