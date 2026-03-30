.class public Landroidx/constraintlayout/core/parser/CLKey;
.super Landroidx/constraintlayout/core/parser/CLContainer;
.source "CLKey.java"


# static fields
.field private static sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "KeyPositions"

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, "ConstraintSets"

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "Generate"

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_7
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "KeyFrames"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

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

    :goto_c
    const-string v1, "KeyAttributes"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_17

    nop

    nop

    :goto_e
    const-string v1, "Variables"

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    const-string v1, "Transitions"

    nop

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

    nop

    :goto_10
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sput-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_19
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

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

    nop

    :goto_1a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1c
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v1, "KeyCycles"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_0

    nop

    nop

    :goto_21
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v0, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([C)V
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

    :goto_1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;-><init>([C)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static allocate(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)Landroidx/constraintlayout/core/parser/CLElement;
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    int-to-long v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/parser/CLKey;-><init>([C)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/parser/CLKey;->setStart(J)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

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

    :goto_6
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/parser/CLKey;->set(Landroidx/constraintlayout/core/parser/CLElement;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_b
    new-instance v0, Landroidx/constraintlayout/core/parser/CLKey;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/parser/CLKey;->setEnd(J)V

    goto/32 :goto_6

    nop

    nop

    :goto_f
    return-object v0

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    const v1, 0x1b

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

    nop

    :goto_12
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method public static allocate([C)Landroidx/constraintlayout/core/parser/CLElement;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Landroidx/constraintlayout/core/parser/CLKey;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object v0

    nop

    :goto_2
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLKey;-><init>([C)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public getName()Ljava/lang/String;
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

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

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

.method public getValue()Landroidx/constraintlayout/core/parser/CLElement;
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    if-gtz v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

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

    :goto_8
    const v1, 0x10

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Landroidx/constraintlayout/core/parser/CLElement;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_13
    const v0, 0x16

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public set(Landroidx/constraintlayout/core/parser/CLElement;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_c

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

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

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x9

    nop

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

    nop

    :goto_9
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-gtz v0, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_10
    goto/32 :goto_5

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected toFormattedJSON(II)Ljava/lang/String;
    .locals 6

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    check-cast v2, Landroidx/constraintlayout/core/parser/CLElement;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_34

    nop

    nop

    :goto_8
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object v2

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    :goto_14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_18
    iget-object v2, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

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
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLKey;->getDebugName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-gtz v2, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/core/parser/CLKey;->addIndent(Ljava/lang/StringBuilder;I)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v2, Landroidx/constraintlayout/core/parser/CLKey;->sections:Ljava/util/ArrayList;

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

    :goto_1e
    check-cast v2, Landroidx/constraintlayout/core/parser/CLElement;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 p2, 0x3

    nop

    :goto_20
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lt v4, v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    :goto_23
    const-string v3, ": <> "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_24
    add-int/lit8 v3, p2, -0x1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2c

    nop

    nop

    :goto_26
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_27
    new-instance v0, Ljava/lang/StringBuilder;

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

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v2, :cond_3

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

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v2, p1, v3}, Landroidx/constraintlayout/core/parser/CLElement;->toFormattedJSON(II)Ljava/lang/String;

    move-result-object v2

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

    :goto_2b
    if-gtz p2, :cond_4

    nop

    goto/32 :goto_8

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v2, ": "

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v3, Landroidx/constraintlayout/core/parser/CLElement;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2e
    add-int/2addr v4, p1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v3, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_30
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v2, p1, v4}, Landroidx/constraintlayout/core/parser/CLElement;->toFormattedJSON(II)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_34
    goto/32 :goto_f

    nop

    nop

    :goto_35
    add-int/lit8 v4, p2, -0x1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    nop

    :goto_37
    goto :goto_34

    nop

    :goto_38
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v4, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3a
    return-object v2

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_9

    nop

    nop

    :goto_3c
    sget v5, Landroidx/constraintlayout/core/parser/CLKey;->MAX_LINE:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3d
    iget-object v3, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->toJSON()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method protected toJSON()Ljava/lang/String;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, ": "

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v1, Landroidx/constraintlayout/core/parser/CLElement;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    const v0, 0x17

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLKey;->getDebugName()Ljava/lang/String;

    move-result-object v1

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

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    :goto_f
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLKey;->getDebugName()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->toJSON()Ljava/lang/String;

    move-result-object v1

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

    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_f

    nop

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
    const-string v1, ": <> "

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1b
    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_19

    nop

    :goto_1f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    return-object v0

    nop

    nop

    :goto_21
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop
.end method
