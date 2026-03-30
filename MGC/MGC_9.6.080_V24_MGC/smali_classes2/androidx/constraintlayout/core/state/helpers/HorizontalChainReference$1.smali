.class synthetic Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference$1;
.super Ljava/lang/Object;
.source "HorizontalChainReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$constraintlayout$core$state$State$Chain:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_d

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
    goto/32 :goto_2

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    const v1, 0x3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Chain:[I

    nop

    :try_start_0
    sget-object v1, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD:Landroidx/constraintlayout/core/state/State$Chain;

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Chain;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    aput v2, v0, v1

    nop
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_6

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_a

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    :goto_a
    :try_start_1
    sget-object v0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Chain:[I

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/state/State$Chain;->PACKED:Landroidx/constraintlayout/core/state/State$Chain;

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Chain;->ordinal()I

    move-result v1

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    aput v2, v0, v1

    nop

    nop
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_c

    nop

    :catch_2
    move-exception v0

    nop

    nop

    :goto_c
    :try_start_2
    sget-object v0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Chain:[I

    nop

    nop

    sget-object v1, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD_INSIDE:Landroidx/constraintlayout/core/state/State$Chain;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Chain;->ordinal()I

    move-result v1

    nop

    nop

    const/4 v2, 0x2

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1e

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {}, Landroidx/constraintlayout/core/state/State$Chain;->values()[Landroidx/constraintlayout/core/state/State$Chain;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    new-array v0, v0, [I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_13
    array-length v0, v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method
