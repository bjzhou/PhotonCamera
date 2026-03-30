.class Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
.super Ljava/lang/Object;
.source "RunGroup.java"


# static fields
.field public static final BASELINE:I = 0x2

.field public static final END:I = 0x1

.field public static final START:I

.field public static index:I


# instance fields
.field direction:I

.field public dual:Z

.field firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

.field groupIndex:I

.field lastRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

.field public position:I

.field runs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private 13e3c4b93d7abf41f8788f7c792d8e3fm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J
    .locals 10

    goto/32 :goto_13

    nop

    nop

    :goto_0
    if-lt v4, v3, :cond_0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v6, v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->13e3c4b93d7abf41f8788f7c792d8e3fm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v6

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    nop

    nop

    :goto_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v6, v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->13e3c4b93d7abf41f8788f7c792d8e3fm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_1b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_c
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    :goto_d
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_29

    nop

    nop

    :goto_f
    int-to-long v7, v7

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    add-long/2addr v7, p2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_12
    move-object v6, v5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_14
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-wide p2

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    move-wide v1, p2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1c
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_e

    nop

    :goto_1e
    int-to-long v8, v8

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1f
    add-long v7, p2, v4

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

    nop

    :goto_20
    if-eq p1, v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-wide v1

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_23
    const v1, 0x1f

    nop

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

    :goto_24
    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_27
    sub-long/2addr v6, v8

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_28
    if-nez v6, :cond_4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_29
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2a
    goto :goto_31

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-long v6, p2, v4

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2f
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_32
    if-eq v7, v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_34
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_36
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    goto/32 :goto_13

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->dual:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->groupIndex:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->groupIndex:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->runs:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iput p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->direction:I

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

    nop

    :goto_7
    sget v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->index:I

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

    :goto_8
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    const v0, 0x4

    nop

    nop

    goto/32 :goto_8

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

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_d
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    sput v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->index:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_1b
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->position:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method private d1d3ea43e73986b1e966c9a44334ba35m(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J
    .locals 10

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-long/2addr v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    :goto_3
    if-eq v7, v0, :cond_0

    nop

    goto/32 :goto_31

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    nop

    :goto_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_7
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-long/2addr v7, p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v6, v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->d1d3ea43e73986b1e966c9a44334ba35m(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v7

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

    :goto_c
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_10
    goto/16 :goto_2d

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_15
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0, v6, v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->d1d3ea43e73986b1e966c9a44334ba35m(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_17
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1c
    const v1, 0x2

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

    :goto_1d
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    :goto_20
    int-to-long v7, v7

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

    :goto_21
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_22
    move-wide v1, p2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_23
    move-object v6, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_24
    if-eq p1, v4, :cond_4

    nop

    goto/32 :goto_27

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_25
    sub-long v7, p2, v4

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_33

    nop

    nop

    :goto_28
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

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

    :goto_2a
    return-wide p2

    nop

    :goto_2b
    goto/32 :goto_22

    nop

    nop

    :goto_2c
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lt v4, v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_5

    nop

    nop

    :goto_31
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sub-long v6, p2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_33
    return-wide v1

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_2

    nop

    nop

    :goto_35
    iget v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_36
    int-to-long v8, v8

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method private e504fc897c2d549fcb509ff384b5ff20m(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z
    .locals 7

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_0
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_55

    nop

    :goto_5
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_6
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    :goto_9
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_d
    if-eqz v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_45

    nop

    nop

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_10
    if-nez v6, :cond_2

    nop

    goto/32 :goto_3e

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aget-boolean v0, v0, p2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_13
    move-object v4, p1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_14
    invoke-direct {p0, v4, p2}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->e504fc897c2d549fcb509ff384b5ff20m(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    :goto_15
    goto/32 :goto_50

    nop

    nop

    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    move-object v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_18
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return v1

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eq v3, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_1e
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_23
    move-object v3, v2

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_24
    if-nez v4, :cond_5

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->e504fc897c2d549fcb509ff384b5ff20m(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_26
    if-eq v4, p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_65

    nop

    nop

    :goto_27
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

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

    nop

    :goto_28
    aput-boolean v1, v4, p2

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0, v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->e504fc897c2d549fcb509ff384b5ff20m(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2c
    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2d
    move-object v3, v2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2f
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return v1

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_48

    nop

    nop

    :goto_32
    if-nez v3, :cond_7

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_7
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v2, :cond_8

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1f

    nop

    nop

    :goto_35
    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v4, :cond_9

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3a
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-eqz v4, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_a
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3d
    goto :goto_41

    nop

    :goto_3e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_40
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    :goto_41
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_43
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_69

    nop

    nop

    :goto_48
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    :goto_4a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4b
    if-nez v3, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_29

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_50
    goto :goto_47

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_53
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_56
    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-direct {p0, v4, p2}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->e504fc897c2d549fcb509ff384b5ff20m(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    :goto_58
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5d
    goto/16 :goto_4a

    nop

    nop

    :goto_5e
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_5f
    aput-boolean v1, v4, p2

    nop

    nop

    :goto_60
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-nez v2, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_63
    if-eq v4, p1, :cond_d

    nop

    goto/32 :goto_8

    nop

    :cond_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-eq v3, v4, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_6a

    nop

    nop

    :goto_67
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-nez v6, :cond_f

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_6a
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_6c
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

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
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

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

    :goto_2
    return-void

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->runs:Ljava/util/ArrayList;

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
.end method

.method public computeWrapSize(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)J
    .locals 26

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_0
    if-gez v5, :cond_0

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_1
    add-long/2addr v3, v9

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_2
    add-float v6, v6, v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_3
    return-wide v5

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    add-long v1, v1, v20

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_6
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    instance-of v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    int-to-long v3, v15

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_b
    sub-float/2addr v15, v5

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    int-to-long v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6c

    nop

    :goto_e
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_f
    int-to-long v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    int-to-long v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v3, :cond_1

    nop

    nop

    goto/32 :goto_90

    nop

    :cond_1
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_13
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_14
    int-to-long v3, v3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_90

    nop

    nop

    :goto_17
    goto/32 :goto_1d

    nop

    nop

    :goto_18
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_19
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v17, v4

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_1b
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_1c
    add-long/2addr v3, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1d
    if-eqz v2, :cond_2

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

    :cond_2
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_1e
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_1f
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_6e

    nop

    :goto_21
    goto/32 :goto_2e

    nop

    nop

    :goto_22
    add-float/2addr v6, v1

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0, v13, v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->d1d3ea43e73986b1e966c9a44334ba35m(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_25
    int-to-long v3, v3

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_26
    int-to-long v5, v5

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v6, 0x0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_28
    invoke-interface {v8, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->d1d3ea43e73986b1e966c9a44334ba35m(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_2a
    long-to-float v1, v13

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_2b
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    neg-int v15, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_2e
    move-object/from16 v16, v3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_30
    sub-long v13, v11, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0x1a

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_32
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_33
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_34
    if-gtz v6, :cond_3

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-wide/16 v20, 0x0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_37
    goto/16 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_7d

    nop

    nop

    :goto_39
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_3a
    cmpl-float v6, v5, v6

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_3c
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    int-to-long v5, v15

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_3e
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_a8

    nop

    nop

    :goto_41
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_43
    div-float v1, v1, v22

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_44
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_45
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_46
    if-eqz v2, :cond_4

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_48
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    float-to-long v13, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_4a
    long-to-float v6, v1

    nop

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

    :goto_4b
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_4c
    add-long v20, v3, v9

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_4d
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_4e
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

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

    :goto_4f
    invoke-direct {v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->13e3c4b93d7abf41f8788f7c792d8e3fm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_51
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v7, :cond_5

    nop

    goto/32 :goto_59

    nop

    nop

    :cond_5
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_53
    mul-float/2addr v6, v5

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_54
    move-object/from16 v17, v4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_55
    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    :cond_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_57
    int-to-long v2, v2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_6e

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_76

    nop

    nop

    :goto_5a
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_5b
    iget v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_8a

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_5f
    cmp-long v5, v3, v5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_64
    long-to-float v6, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_65
    sub-long/2addr v1, v3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-direct {v0, v11, v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->13e3c4b93d7abf41f8788f7c792d8e3fm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v11

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_68
    sub-long/2addr v3, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_69
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    instance-of v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_6b
    return-wide v1

    nop

    :goto_6c
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6d
    sub-long/2addr v1, v3

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_6b

    nop

    nop

    :goto_6f
    invoke-virtual {v5, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBiasPercent(I)F

    move-result v5

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_70
    const/high16 v15, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_71
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_72
    int-to-long v1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_73
    cmp-long v3, v13, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_74
    move-object/from16 v16, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_76
    if-nez v8, :cond_7

    nop

    goto/32 :goto_ae

    nop

    :cond_7
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_77
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_78
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    sub-long/2addr v3, v5

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-eqz v2, :cond_8

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    div-float/2addr v6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_7d
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_7e
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_7f
    if-nez v7, :cond_9

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

    :cond_9
    goto/32 :goto_80

    nop

    nop

    nop

    :goto_80
    if-nez v8, :cond_a

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_9

    nop

    nop

    :goto_81
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_82
    neg-int v3, v3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_83
    sub-float v22, v15, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_84
    move-wide/from16 v22, v1

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_86
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_87
    if-gez v3, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    :cond_b
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_89
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    int-to-long v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    int-to-long v2, v2

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_8f
    return-wide v5

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_91
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_94
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_95
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_97
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    const/high16 v20, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_99
    long-to-float v6, v1

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_9a
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_9b
    if-ne v4, v2, :cond_c

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    add-long/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_9d
    move/from16 v2, p2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_9e
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_9f
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_a0
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_a1
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_a2
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    float-to-long v1, v6

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_a4
    add-long/2addr v13, v3

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    add-long v20, v20, v13

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    move-wide/from16 v1, v20

    nop

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_99

    nop

    nop

    nop

    :goto_aa
    if-lez v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_d
    goto/32 :goto_d

    nop

    :goto_ab
    iget v15, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    sub-long/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_ad
    goto/16 :goto_6e

    nop

    :goto_ae
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b0
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_b1
    int-to-long v3, v3

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_b2
    return-wide v5

    nop

    :goto_b3
    goto/32 :goto_16

    nop

    nop

    :goto_b4
    move-wide/from16 v24, v3

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_b5
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    neg-long v5, v1

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_b7
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_b8
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_b9
    if-nez v4, :cond_e

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_bb
    add-float v6, v6, v20

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    :goto_bd
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_be
    float-to-long v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_bf
    move-wide/from16 v18, v5

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_c0
    neg-long v3, v5

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_c1
    iget v15, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_c2
    mul-float/2addr v6, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_c3
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_c4
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public defineTerminalWidgets(ZZ)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p2, :cond_0

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

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_1
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    :goto_7
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_4
    goto/32 :goto_10

    nop

    :goto_9
    const/4 v1, 0x1

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

    nop

    :goto_a
    const v0, 0x2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->e504fc897c2d549fcb509ff384b5ff20m(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    :goto_e
    goto/32 :goto_0

    nop

    nop

    :goto_f
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    :goto_12
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

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

    nop

    :goto_14
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->e504fc897c2d549fcb509ff384b5ff20m(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
