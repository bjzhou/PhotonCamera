.class synthetic Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

.field static final synthetic $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_1

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    :goto_1
    :try_start_0
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    nop

    aput v2, v0, v1

    nop
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    nop

    nop

    nop

    nop

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v4

    nop

    nop

    nop

    aput v2, v3, v4

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    :try_start_2
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    aput v3, v4, v5

    nop
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    goto/32 :goto_14

    nop

    nop

    :goto_5
    goto :goto_6

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    :try_start_3
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    aput v0, v2, v3

    nop

    nop
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    :goto_a
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    :goto_c
    goto :goto_d

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    :try_start_5
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    nop

    nop

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->NONE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    nop

    nop

    const/16 v2, 0x9

    nop

    nop

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :catch_3
    move-exception v3

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :catch_4
    move-exception v2

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    :goto_12
    new-array v0, v0, [I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    sput-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_14
    goto :goto_15

    nop

    :catch_5
    move-exception v4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_16
    array-length v0, v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_18

    nop

    :catch_6
    move-exception v0

    nop

    nop

    nop

    :goto_18
    :try_start_6
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    aput v3, v0, v1

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    goto/32 :goto_0

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1a
    sput-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    nop

    nop

    :try_start_7
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    nop

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v5

    nop

    nop

    nop

    nop

    aput v1, v4, v5

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_1c

    nop

    nop

    :catch_7
    move-exception v0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_1e

    nop

    nop

    :catch_8
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    :try_start_8
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    nop

    nop

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    aput v0, v1, v4

    nop
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->values()[Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_20
    goto :goto_21

    nop

    :catch_9
    move-exception v0

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->values()[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

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

    nop

    :goto_23
    new-array v4, v4, [I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_24
    goto :goto_25

    nop

    nop

    nop

    :catch_a
    move-exception v0

    nop

    :goto_25
    :try_start_9
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    nop

    const/16 v2, 0x8

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop

    nop
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_26
    array-length v4, v4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

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

    nop

    :goto_28
    goto :goto_29

    nop

    nop

    :catch_b
    move-exception v0

    nop

    nop

    nop

    nop

    :goto_29
    :try_start_a
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    nop

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    nop

    nop

    nop

    const/4 v2, 0x6

    nop

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_c

    goto/32 :goto_2b

    nop

    nop

    :goto_2a
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2b
    goto :goto_2c

    nop

    nop

    nop

    nop

    nop

    :catch_c
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    :try_start_b
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    nop

    nop

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x7

    nop

    nop

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_a

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v1, 0x1

    nop

    nop

    :try_start_c
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    aput v1, v0, v2

    nop

    nop

    nop

    nop
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_9

    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method
