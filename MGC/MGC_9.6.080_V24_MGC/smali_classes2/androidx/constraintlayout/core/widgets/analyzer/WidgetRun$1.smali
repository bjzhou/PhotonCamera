.class synthetic Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$1;
.super Ljava/lang/Object;
.source "WidgetRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const v1, 0x18

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

    :goto_1
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_5
    array-length v0, v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_7

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    :goto_7
    :try_start_0
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    nop

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

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

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_a

    nop

    :catch_1
    move-exception v0

    nop

    :goto_a
    :try_start_1
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

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

    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->values()[Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-array v0, v0, [I

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_f
    goto :goto_10

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    :goto_10
    :try_start_2
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

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

    const/4 v2, 0x4

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_12

    nop

    nop

    :catch_3
    move-exception v0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_14

    nop

    nop

    :catch_4
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    :try_start_3
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

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

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    aput v2, v0, v1

    nop
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    sput-object v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

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

    const/4 v2, 0x1

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method
