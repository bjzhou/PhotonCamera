.class public final enum Landroidx/constraintlayout/core/SolverVariable$Type;
.super Ljava/lang/Enum;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/SolverVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/core/SolverVariable$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum CONSTANT:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum UNKNOWN:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v7, v9, v10}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_20

    nop

    nop

    :goto_1
    invoke-direct {v3, v5, v6}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x20

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3
    aput-object v5, v9, v8

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

    :goto_4
    goto/32 :goto_d

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    const-string v1, "UNRESTRICTED"

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_7
    const-string v7, "ERROR"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    new-instance v3, Landroidx/constraintlayout/core/SolverVariable$Type;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v5, v7, v8}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aput-object v3, v9, v6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_24

    nop

    nop

    :goto_e
    sput-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    const/4 v6, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v7, Landroidx/constraintlayout/core/SolverVariable$Type;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_12
    new-array v9, v9, [Landroidx/constraintlayout/core/SolverVariable$Type;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v5, Landroidx/constraintlayout/core/SolverVariable$Type;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    aput-object v1, v9, v4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v5, "SLACK"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    sput-object v5, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_19
    new-instance v1, Landroidx/constraintlayout/core/SolverVariable$Type;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sput-object v9, Landroidx/constraintlayout/core/SolverVariable$Type;->$VALUES:[Landroidx/constraintlayout/core/SolverVariable$Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    aput-object v0, v9, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1c
    aput-object v7, v9, v10

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1d
    const/4 v8, 0x3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v9, "UNKNOWN"

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

    :goto_20
    sput-object v7, Landroidx/constraintlayout/core/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/core/SolverVariable$Type;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_22
    const v1, 0xb

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

    :goto_23
    invoke-direct {v1, v3, v4}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v0, Landroidx/constraintlayout/core/SolverVariable$Type;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v3, "CONSTANT"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v10, 0x4

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

    :goto_27
    sput-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->CONSTANT:Landroidx/constraintlayout/core/SolverVariable$Type;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v9, 0x5

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

    :goto_29
    sput-object v3, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_e

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    goto/32 :goto_1

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

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable$Type;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    check-cast v0, Landroidx/constraintlayout/core/SolverVariable$Type;

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

    :goto_2
    const-class v0, Landroidx/constraintlayout/core/SolverVariable$Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static values()[Landroidx/constraintlayout/core/SolverVariable$Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->$VALUES:[Landroidx/constraintlayout/core/SolverVariable$Type;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    :goto_2
    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable$Type;

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

    :goto_3
    invoke-virtual {v0}, [Landroidx/constraintlayout/core/SolverVariable$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
