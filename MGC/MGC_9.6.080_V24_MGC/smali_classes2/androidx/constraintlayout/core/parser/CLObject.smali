.class public Landroidx/constraintlayout/core/parser/CLObject;
.super Landroidx/constraintlayout/core/parser/CLContainer;
.source "CLObject.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/constraintlayout/core/parser/CLContainer;",
        "Ljava/lang/Iterable<",
        "Landroidx/constraintlayout/core/parser/CLKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([C)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;-><init>([C)V

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

.method public static allocate([C)Landroidx/constraintlayout/core/parser/CLObject;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroidx/constraintlayout/core/parser/CLObject;

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

    nop

    :goto_1
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLObject;-><init>([C)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;-><init>(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/parser/CLObject;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop
.end method

.method public toFormattedJSON()Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, v0}, Landroidx/constraintlayout/core/parser/CLObject;->toFormattedJSON(II)Ljava/lang/String;

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

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop
.end method

.method public toFormattedJSON(II)Ljava/lang/String;
    .locals 6

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const-string v2, "\n"

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v5, p2, -0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget v4, Landroidx/constraintlayout/core/parser/CLObject;->BASE_INDENT:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_b
    const-string v1, "{\n"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v3, Landroidx/constraintlayout/core/parser/CLElement;

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

    nop

    :goto_d
    const-string v2, "}"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_e
    return-object v2

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_11

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    :goto_15
    goto/32 :goto_26

    nop

    nop

    :goto_16
    const v0, 0x2

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

    :goto_17
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/core/parser/CLObject;->addIndent(Ljava/lang/StringBuilder;I)V

    goto/32 :goto_d

    nop

    nop

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

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

    :goto_1a
    const-string v4, ",\n"

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/parser/CLElement;->toFormattedJSON(II)Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Landroidx/constraintlayout/core/parser/CLObject;->mElements:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_22
    add-int/2addr v4, p1

    nop

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

    :goto_23
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

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

    nop

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLObject;->getDebugName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop
.end method

.method public toJSON()Ljava/lang/String;
    .locals 5

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    const-string v4, ", "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_23

    nop

    nop

    :goto_a
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_b
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLObject;->getDebugName()Ljava/lang/String;

    move-result-object v2

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

    :goto_d
    goto :goto_18

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    :goto_f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_1
    goto/32 :goto_26

    nop

    :goto_11
    iget-object v2, p0, Landroidx/constraintlayout/core/parser/CLObject;->mElements:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_12
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

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

    :goto_14
    check-cast v3, Landroidx/constraintlayout/core/parser/CLElement;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v2, "{ "

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->toJSON()Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v2, " }"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop
.end method
