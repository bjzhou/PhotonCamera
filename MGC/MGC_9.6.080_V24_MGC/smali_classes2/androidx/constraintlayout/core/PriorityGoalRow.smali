.class public Landroidx/constraintlayout/core/PriorityGoalRow;
.super Landroidx/constraintlayout/core/ArrayRow;
.source "PriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final NOT_FOUND:I = -0x1

.field private static final epsilon:F = 1.0E-4f


# instance fields
.field private TABLE_SIZE:I

.field accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

.field private arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

.field mCache:Landroidx/constraintlayout/core/Cache;

.field private numGoals:I

.field private sortArray:[Landroidx/constraintlayout/core/SolverVariable;


# direct methods
.method private final 012d40f6ff8e17d614df64c30e0dcf7dm(Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_21

    nop

    nop

    :goto_2
    if-eq v1, p1, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    :goto_4
    goto/32 :goto_19

    nop

    nop

    :goto_5
    if-lt v1, v3, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

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

    :goto_8
    iput v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v3, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_a
    const v0, 0x1f

    nop

    goto/32 :goto_14

    nop

    nop

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

    goto/32 :goto_0

    nop

    nop

    :goto_c
    if-lt v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean v1, p1, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_19
    iget v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    aput-object v3, v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v3, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    aget-object v3, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move v1, v0

    nop

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_17

    nop

    nop

    :goto_21
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aget-object v1, v1, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_23
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int/lit8 v2, v2, -0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method private final 70c3761320649f9c4dd81d3733a71985m(Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 5

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v0, v1

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

    :goto_1
    if-gt v2, v1, :cond_0

    nop

    goto/32 :goto_9

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
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sub-int/2addr v2, v1

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_5
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_39

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/core/SolverVariable;

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    aget-object v3, v3, v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_e
    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-gt v0, v2, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    :goto_10
    if-lt v0, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    invoke-direct {v4, p0}, Landroidx/constraintlayout/core/PriorityGoalRow$1;-><init>(Landroidx/constraintlayout/core/PriorityGoalRow;)V

    goto/32 :goto_2a

    nop

    nop

    :goto_12
    iget v0, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    :goto_15
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x4

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/core/SolverVariable;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_19
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1a
    iget v2, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

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

    :goto_1b
    new-instance v4, Landroidx/constraintlayout/core/PriorityGoalRow$1;

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

    nop

    :goto_1c
    invoke-static {v2, v0}, Landroidx/constraintlayout/core/PriorityGoalRow;->yTEqVWZVVOLWBYQe([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1d
    array-length v0, v2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    iput v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

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

    :goto_21
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

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

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    aput-object v3, v2, v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_25
    iput-boolean v1, p1, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0, v2}, Landroidx/constraintlayout/core/PriorityGoalRow;->VDPMjtYqoxyIezDi([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

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

    :goto_27
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

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

    nop

    :goto_28
    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/core/SolverVariable;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_29
    mul-int/lit8 v0, v0, 0x2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v0, v3, v2, v4}, Landroidx/constraintlayout/core/PriorityGoalRow;->FPbrqwwZrmFShbSA([Ljava/lang/Object;IILjava/util/Comparator;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    :goto_2d
    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_3b

    nop

    nop

    :goto_30
    aput-object p1, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_31
    array-length v2, v0

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_32
    aget-object v0, v0, v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_33
    invoke-static {p1, p0}, Landroidx/constraintlayout/core/PriorityGoalRow;->PoophxhFkdzHYLWW(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/ArrayRow;)V

    goto/32 :goto_6

    nop

    nop

    :goto_34
    if-lt v0, v2, :cond_4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    array-length v3, v2

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_36
    mul-int/lit8 v2, v2, 0x2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_37
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_15

    nop

    :goto_3b
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_3c
    aput-object v3, v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/core/SolverVariable;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3e
    aget-object v3, v3, v0

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

    :goto_3f
    iget v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_40
    add-int/2addr v2, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_41
    if-gt v0, v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_42
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/Cache;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

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

    :goto_1
    const v0, 0x13

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-array v1, v0, [Landroidx/constraintlayout/core/SolverVariable;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;-><init>(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/PriorityGoalRow;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

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

    :goto_b
    iput-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    const/16 v0, 0x80

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    goto/32 :goto_d

    nop

    nop

    :goto_11
    iput v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->TABLE_SIZE:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/core/SolverVariable;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_14
    new-array v0, v0, [Landroidx/constraintlayout/core/SolverVariable;

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

    :goto_15
    iput-object v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p1, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mCache:Landroidx/constraintlayout/core/Cache;

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
.end method

.method public static EMUVXzNaCnUsBMAb(Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;Landroidx/constraintlayout/core/SolverVariable;)V
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

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/core/SolverVariable;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static EsJbfhlCLeiRyJet(Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static FPbrqwwZrmFShbSA([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

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
.end method

.method public static HTGxvuVBVRlFWtDy(Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->reset()V

    goto/32 :goto_1

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
.end method

.method public static ITDYTbRFkfbrFQOo(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/PriorityGoalRow;->70c3761320649f9c4dd81d3733a71985m(Landroidx/constraintlayout/core/SolverVariable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static IVLydTnmqKWKuAHd(Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;I)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static JNEPrUjodEoCvFZQ(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static JtgRjjNNAvqrXVUp(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static PoophxhFkdzHYLWW(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    goto/32 :goto_1

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
.end method

.method public static QQdtqhMGkLUCHaGo(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static VDPMjtYqoxyIezDi([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static VKmIieuuOIpuaHmu(Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;I)Landroidx/constraintlayout/core/SolverVariable;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

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

.method public static XbQzJgrLpdsudmHc(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static YZywtgzZmMLMlnkZ(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static ZbcCxJZeDOIutxBU(Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/core/SolverVariable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ZywrOFYkjJabrGCZ(Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/core/SolverVariable;)V

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
.end method

.method public static aMydwYPgUJMSazzY(Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->isNegative()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$000(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/SolverVariable;)V
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

    nop

    :goto_1
    invoke-static {p0, p1}, Landroidx/constraintlayout/core/PriorityGoalRow;->lcaAcWUlbkVYGADX(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/SolverVariable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static fFVCLFLxMgVZrtKg(Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/core/SolverVariable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static gdbsKzVGyznoHylk(Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;Landroidx/constraintlayout/core/SolverVariable;F)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->addToGoal(Landroidx/constraintlayout/core/SolverVariable;F)Z

    move-result v0

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
.end method

.method public static hEFlCPshPHZCVxJa(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static habTxwPsHydqgqyL(Ljava/lang/StringBuilder;F)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

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

.method public static kCYuUtRNrNplzSYG(Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;Landroidx/constraintlayout/core/SolverVariable;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->isSmallerThan(Landroidx/constraintlayout/core/SolverVariable;)Z

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static lcaAcWUlbkVYGADX(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/PriorityGoalRow;->012d40f6ff8e17d614df64c30e0dcf7dm(Landroidx/constraintlayout/core/SolverVariable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static owWNAYPSDOsBTpxr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static pnfrDtHMLyPvcEnB(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static poGnvAqKifoKLhyo(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/PriorityGoalRow;->012d40f6ff8e17d614df64c30e0dcf7dm(Landroidx/constraintlayout/core/SolverVariable;)V

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
.end method

.method public static rsNBGMGlGWjUoGPL(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/PriorityGoalRow;->70c3761320649f9c4dd81d3733a71985m(Landroidx/constraintlayout/core/SolverVariable;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static yTEqVWZVVOLWBYQe([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

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
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const v1, 0x11

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

    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Landroidx/constraintlayout/core/PriorityGoalRow;->HTGxvuVBVRlFWtDy(Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aput v2, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iget-object v0, p1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, p1}, Landroidx/constraintlayout/core/PriorityGoalRow;->ITDYTbRFkfbrFQOo(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/SolverVariable;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1b

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

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, p1}, Landroidx/constraintlayout/core/PriorityGoalRow;->ZbcCxJZeDOIutxBU(Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;Landroidx/constraintlayout/core/SolverVariable;)V

    goto/32 :goto_7

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

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

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop
.end method

.method public clear()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->constantValue:F

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
    const/4 v0, 0x0

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

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public getPivotCandidate(Landroidx/constraintlayout/core/LinearSystem;[Z)Landroidx/constraintlayout/core/SolverVariable;
    .locals 5

    goto/32 :goto_20

    nop

    nop

    :goto_0
    move v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v3, v4}, Landroidx/constraintlayout/core/PriorityGoalRow;->kCYuUtRNrNplzSYG(Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;Landroidx/constraintlayout/core/SolverVariable;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_4
    invoke-static {v4, v2}, Landroidx/constraintlayout/core/PriorityGoalRow;->fFVCLFLxMgVZrtKg(Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;Landroidx/constraintlayout/core/SolverVariable;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_6
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_25

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x5

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

    :goto_b
    aget-object v1, v1, v0

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

    :goto_c
    if-nez v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

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

    :goto_d
    iget-object v4, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_17

    nop

    nop

    :goto_f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_11
    aget-boolean v4, p2, v4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v3, -0x1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_15
    if-eq v0, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    :goto_18
    if-eq v0, v3, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

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

    :goto_1a
    aget-object v2, v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    iget v4, v2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1d
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    iget-object v4, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_20
    const v0, 0x7

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lt v1, v2, :cond_4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_5

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_29

    nop

    :goto_24
    const/4 v1, 0x0

    nop

    nop

    :goto_25
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    aget-object v4, v4, v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v4, :cond_6

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v3}, Landroidx/constraintlayout/core/PriorityGoalRow;->aMydwYPgUJMSazzY(Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_29
    goto/32 :goto_2e

    nop

    :goto_2a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-object v1

    nop

    :goto_2c
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2d
    return-object v1

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public isEmpty()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

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
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    :goto_4
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    :goto_1
    invoke-static {v1}, Landroidx/constraintlayout/core/PriorityGoalRow;->XbQzJgrLpdsudmHc(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_17

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v1, v1, 0x1

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

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v2}, Landroidx/constraintlayout/core/PriorityGoalRow;->hEFlCPshPHZCVxJa(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v3, v4}, Landroidx/constraintlayout/core/PriorityGoalRow;->YZywtgzZmMLMlnkZ(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

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

    :goto_a
    return-object v0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    :goto_c
    invoke-static {v3, v4}, Landroidx/constraintlayout/core/PriorityGoalRow;->pnfrDtHMLyPvcEnB(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    invoke-static {v3}, Landroidx/constraintlayout/core/PriorityGoalRow;->JtgRjjNNAvqrXVUp(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_f
    if-lt v1, v2, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->constantValue:F

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

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

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

    :goto_13
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_14
    iget-object v4, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    :goto_16
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_27

    nop

    nop

    :goto_18
    const-string v4, " "

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

    :goto_19
    const-string v2, ") : "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    const-string v2, " goal -> ("

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v1, v0}, Landroidx/constraintlayout/core/PriorityGoalRow;->QQdtqhMGkLUCHaGo(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v3, v0}, Landroidx/constraintlayout/core/PriorityGoalRow;->owWNAYPSDOsBTpxr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    :goto_1f
    invoke-static {v1, v2}, Landroidx/constraintlayout/core/PriorityGoalRow;->habTxwPsHydqgqyL(Ljava/lang/StringBuilder;F)Ljava/lang/StringBuilder;

    move-result-object v1

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

    nop

    :goto_20
    aget-object v2, v2, v1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_21
    const-string v0, ""

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_22
    invoke-static {v3, v2}, Landroidx/constraintlayout/core/PriorityGoalRow;->ZywrOFYkjJabrGCZ(Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;Landroidx/constraintlayout/core/SolverVariable;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v1, v2}, Landroidx/constraintlayout/core/PriorityGoalRow;->JNEPrUjodEoCvFZQ(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public updateFromRow(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;Z)V
    .locals 8

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    invoke-static {v1}, Landroidx/constraintlayout/core/PriorityGoalRow;->EsJbfhlCLeiRyJet(Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    add-float/2addr v6, v7

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    if-lt v3, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v6, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->constantValue:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v6, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p2, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    goto :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    mul-float/2addr v7, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    :goto_e
    iget-object v6, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    invoke-static {v6, v4}, Landroidx/constraintlayout/core/PriorityGoalRow;->EMUVXzNaCnUsBMAb(Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;Landroidx/constraintlayout/core/SolverVariable;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v6, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

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

    :goto_11
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_1c

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    invoke-static {p0, v0}, Landroidx/constraintlayout/core/PriorityGoalRow;->poGnvAqKifoKLhyo(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/SolverVariable;)V

    goto/32 :goto_c

    nop

    nop

    :goto_17
    iget-object v0, p2, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

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

    :goto_18
    invoke-static {v6, v0, v5}, Landroidx/constraintlayout/core/PriorityGoalRow;->gdbsKzVGyznoHylk(Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;Landroidx/constraintlayout/core/SolverVariable;F)Z

    move-result v6

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

    :goto_19
    invoke-static {p0, v4}, Landroidx/constraintlayout/core/PriorityGoalRow;->rsNBGMGlGWjUoGPL(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/SolverVariable;)V

    :goto_1a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    :goto_1c
    goto/32 :goto_5

    nop

    nop

    :goto_1d
    iget v7, p2, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

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

    :goto_1e
    invoke-static {v1, v3}, Landroidx/constraintlayout/core/PriorityGoalRow;->VKmIieuuOIpuaHmu(Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1f
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v1, v3}, Landroidx/constraintlayout/core/PriorityGoalRow;->IVLydTnmqKWKuAHd(Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;I)F

    move-result v5

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x19

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v6, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->constantValue:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop
.end method
