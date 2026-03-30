.class public Landroidx/constraintlayout/core/GoalRow;
.super Landroidx/constraintlayout/core/ArrayRow;
.source "GoalRow.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/Cache;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static FbozGXUhxiViWuVF(Landroidx/constraintlayout/core/ArrayRow;Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/SolverVariable;)V

    goto/32 :goto_1

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
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

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

    :goto_1
    invoke-static {p0, p1}, Landroidx/constraintlayout/core/GoalRow;->FbozGXUhxiViWuVF(Landroidx/constraintlayout/core/ArrayRow;Landroidx/constraintlayout/core/SolverVariable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput v0, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

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

    :goto_3
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
