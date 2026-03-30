.class synthetic Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;
.super Ljava/lang/Object;
.source "BarrierReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/helpers/BarrierReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    sput-object v0, Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I

    nop

    nop

    :try_start_0
    sget-object v1, Landroidx/constraintlayout/core/state/State$Direction;->LEFT:Landroidx/constraintlayout/core/state/State$Direction;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Direction;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    :goto_1
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    :goto_2
    :try_start_1
    sget-object v0, Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/state/State$Direction;->START:Landroidx/constraintlayout/core/state/State$Direction;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Direction;->ordinal()I

    move-result v1

    nop

    const/4 v2, 0x2

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    new-array v0, v0, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    :goto_8
    :try_start_2
    sget-object v0, Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/state/State$Direction;->BOTTOM:Landroidx/constraintlayout/core/state/State$Direction;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Direction;->ordinal()I

    move-result v1

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
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_19

    nop

    nop

    :goto_c
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    :goto_e
    :try_start_3
    sget-object v0, Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I

    nop

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/state/State$Direction;->RIGHT:Landroidx/constraintlayout/core/state/State$Direction;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Direction;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_11

    nop

    nop

    nop

    :catch_3
    move-exception v0

    nop

    :goto_11
    :try_start_4
    sget-object v0, Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/state/State$Direction;->END:Landroidx/constraintlayout/core/state/State$Direction;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Direction;->ordinal()I

    move-result v1

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

    nop
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    array-length v0, v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    invoke-static {}, Landroidx/constraintlayout/core/state/State$Direction;->values()[Landroidx/constraintlayout/core/state/State$Direction;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    goto :goto_16

    nop

    nop

    :catch_4
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_18

    nop

    nop

    nop

    nop

    nop

    :catch_5
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    :try_start_5
    sget-object v0, Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/state/State$Direction;->TOP:Landroidx/constraintlayout/core/state/State$Direction;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Direction;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    const/4 v2, 0x5

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
