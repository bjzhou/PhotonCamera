.class Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;
.super Ljava/lang/Object;
.source "CLObject.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/parser/CLObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CLObjectIterator"
.end annotation


# instance fields
.field index:I

.field myObject:Landroidx/constraintlayout/core/parser/CLObject;

.field final synthetic this$0:Landroidx/constraintlayout/core/parser/CLObject;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/parser/CLObject;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->index:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->this$0:Landroidx/constraintlayout/core/parser/CLObject;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p2, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->myObject:Landroidx/constraintlayout/core/parser/CLObject;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->myObject:Landroidx/constraintlayout/core/parser/CLObject;

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

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->index:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_12

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    if-lt v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_b
    const v0, 0x8

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLObject;->size()I

    move-result v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->myObject:Landroidx/constraintlayout/core/parser/CLObject;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
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

    :goto_a
    iget v1, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->index:I

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

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_c
    iput v1, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->index:I

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    iget-object v0, v0, Landroidx/constraintlayout/core/parser/CLObject;->mElements:Ljava/util/ArrayList;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    iget v1, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->index:I

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    check-cast v0, Landroidx/constraintlayout/core/parser/CLKey;

    nop

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

    :goto_11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

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
.end method
