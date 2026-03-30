.class public Landroidx/constraintlayout/core/Metrics;
.super Ljava/lang/Object;
.source "Metrics.java"


# instance fields
.field public additionalMeasures:J

.field public barrierConnectionResolved:J

.field public bfs:J

.field public centerConnectionResolved:J

.field public chainConnectionResolved:J

.field public constraints:J

.field public determineGroups:J

.field public errors:J

.field public extravariables:J

.field public fullySolved:J

.field public graphOptimizer:J

.field public graphSolved:J

.field public grouping:J

.field public infeasibleDetermineGroups:J

.field public iterations:J

.field public lastTableSize:J

.field public layouts:J

.field public linearSolved:J

.field public matchConnectionResolved:J

.field public maxRows:J

.field public maxTableSize:J

.field public maxVariables:J

.field public measuredMatchWidgets:J

.field public measuredWidgets:J

.field public measures:J

.field public measuresLayoutDuration:J

.field public measuresWidgetsDuration:J

.field public measuresWrap:J

.field public measuresWrapInfeasible:J

.field public minimize:J

.field public minimizeGoal:J

.field public nonresolvedWidgets:J

.field public oldresolvedWidgets:J

.field public optimize:J

.field public pivots:J

.field public problematicLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public resolutions:J

.field public resolvedWidgets:J

.field public simpleconstraints:J

.field public slackvariables:J

.field public tableSizeIncrease:J

.field public variables:J

.field public widgets:J


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Landroidx/constraintlayout/core/Metrics;->problematicLayouts:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

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

.method public static AOhIOpCAIxpGFARo(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

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

.method public static DftSQVRRiGtlGjjr(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

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

    nop
.end method

.method public static FFdIyfsmqmoGFcFH(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static LhOEoHuixGYhSfEb(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static MhPgjRrumutqoyyH(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
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

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static QQolippJqsBWBDjR(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

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

.method public static QRfmABcDYPbzlLue(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
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

    nop
.end method

.method public static XoUZBQXRbczttueO(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
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

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static ZJsmkTosqFeJrfNV(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
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
.end method

.method public static ZaIMIzxNcFzCJxpo(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static cpLOQLPKbtehazvD(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
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

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static evvPHfYHHimsxods(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
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
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

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

.method public static fQLgFJmZMcsPLFJs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
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

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static fkzilnmwsSdnnlTh(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static hMlmyelhBPevShrE(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

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

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static iBGwOogclgRvvfcz(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
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

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static iCaKqVKBwgSDjaDt(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
.end method

.method public static iKagskBperNmXidJ(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
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
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static inyXdaIMbfzIzoDL(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
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

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static udtNGVYtFfzQYMdr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

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

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static yTeSbAONgYbxgpBQ(Ljava/util/ArrayList;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

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
.end method


# virtual methods
.method public reset()V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->extravariables:J

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

    :goto_1
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->resolutions:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->matchConnectionResolved:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->barrierConnectionResolved:J

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->constraints:J

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->graphSolved:J

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

    :goto_7
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->widgets:J

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

    nop

    nop

    :goto_8
    const v1, 0x5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->optimize:J

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->resolvedWidgets:J

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->nonresolvedWidgets:J

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->maxVariables:J

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0}, Landroidx/constraintlayout/core/Metrics;->yTeSbAONgYbxgpBQ(Ljava/util/ArrayList;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->chainConnectionResolved:J

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

    nop

    :goto_15
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->simpleconstraints:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_17
    const v0, 0x17

    nop

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

    :goto_18
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->maxRows:J

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->oldresolvedWidgets:J

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_a

    nop

    nop

    :goto_1b
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->additionalMeasures:J

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->lastTableSize:J

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

    :goto_1d
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->minimize:J

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1e
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->errors:J

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1f
    iget-object v0, p0, Landroidx/constraintlayout/core/Metrics;->problematicLayouts:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_20
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->iterations:J

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_21
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_22
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->fullySolved:J

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_23
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->variables:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->tableSizeIncrease:J

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->centerConnectionResolved:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_26
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->minimizeGoal:J

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->bfs:J

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_28
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_29
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->pivots:J

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2a
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->measures:J

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2b
    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->slackvariables:J

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

.method public toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/Metrics;->FFdIyfsmqmoGFcFH(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/Metrics;->fQLgFJmZMcsPLFJs(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->measuresWrap:J

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/Metrics;->XoUZBQXRbczttueO(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    :goto_4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, "\ninfeasibleDetermineGroups: "

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/Metrics;->udtNGVYtFfzQYMdr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/Metrics;->AOhIOpCAIxpGFARo(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_8
    const-string v1, "\nmeasuresWrapInfeasible: "

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_a
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/Metrics;->QQolippJqsBWBDjR(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/Metrics;->ZaIMIzxNcFzCJxpo(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v0

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

    :goto_c
    return-object v0

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "\ndetermineGroups: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/Metrics;->cpLOQLPKbtehazvD(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->determineGroups:J

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/Metrics;->evvPHfYHHimsxods(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/Metrics;->DftSQVRRiGtlGjjr(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/Metrics;->MhPgjRrumutqoyyH(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_18
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/Metrics;->hMlmyelhBPevShrE(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_19
    const-string v1, "\n*** Metrics ***\nmeasures: "

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v1, "\nmeasuresWrap: "

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->graphSolved:J

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1d
    const-string v1, "\ngraphSolved: "

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1e
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->infeasibleDetermineGroups:J

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1f
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/Metrics;->iKagskBperNmXidJ(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v0}, Landroidx/constraintlayout/core/Metrics;->iCaKqVKBwgSDjaDt(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_21
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/Metrics;->QRfmABcDYPbzlLue(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_22
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/Metrics;->fkzilnmwsSdnnlTh(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->measuresWrapInfeasible:J

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

    :goto_24
    const-string v1, "\nlinearSolved: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

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

    :goto_26
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->linearSolved:J

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_28
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/Metrics;->ZJsmkTosqFeJrfNV(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/Metrics;->LhOEoHuixGYhSfEb(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v1, "\nwidgets: "

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/Metrics;->inyXdaIMbfzIzoDL(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2c
    const-string v1, "\n"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2d
    const v0, 0xc

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2e
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->widgets:J

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->measures:J

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_30
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/Metrics;->iBGwOogclgRvvfcz(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_31
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_32
    const-string v1, "\ngraphOptimizer: "

    nop

    goto/32 :goto_28

    nop

    nop

    nop
.end method
