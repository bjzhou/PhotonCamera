.class synthetic Landroidx/constraintlayout/core/state/State$1;
.super Ljava/lang/Object;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$constraintlayout$core$state$State$Helper:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_14

    nop

    nop

    :goto_0
    new-array v0, v0, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-static {}, Landroidx/constraintlayout/core/state/State$Helper;->values()[Landroidx/constraintlayout/core/state/State$Helper;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3
    goto :goto_4

    nop

    :catch_0
    move-exception v0

    nop

    nop

    :goto_4
    :try_start_0
    sget-object v0, Landroidx/constraintlayout/core/state/State$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Helper:[I

    nop

    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->ALIGN_HORIZONTALLY:Landroidx/constraintlayout/core/state/State$Helper;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Helper;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    goto/32 :goto_12

    nop

    nop

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

    :goto_6
    :try_start_1
    sget-object v0, Landroidx/constraintlayout/core/state/State$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Helper:[I

    nop

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->BARRIER:Landroidx/constraintlayout/core/state/State$Helper;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Helper;->ordinal()I

    move-result v1

    nop

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_c
    goto :goto_d

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sput-object v0, Landroidx/constraintlayout/core/state/State$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Helper:[I

    nop

    nop

    nop

    :try_start_2
    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Helper;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    goto/32 :goto_15

    nop

    nop

    :goto_11
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :catch_3
    move-exception v0

    nop

    nop

    :goto_13
    :try_start_3
    sget-object v0, Landroidx/constraintlayout/core/state/State$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Helper:[I

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/core/state/State$Helper;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Helper;->ordinal()I

    move-result v1

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x1f

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_16

    nop

    :catch_4
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    :try_start_4
    sget-object v0, Landroidx/constraintlayout/core/state/State$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Helper:[I

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Helper;->ordinal()I

    move-result v1

    nop

    const/4 v2, 0x2

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

    nop
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    array-length v0, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
