.class final Lruq;
.super Lrun;
.source "PG"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field final synthetic f:Lrur;


# direct methods
.method public constructor <init>(Lrur;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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
    invoke-direct {p0, p1, p2, p3, v0}, Lrun;-><init>(Lrur;Ljava/lang/Object;Ljava/util/Collection;Lrun;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lruq;->f:Lrur;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Lruq;->f:Lrur;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sub-int/2addr v1, v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    const v1, 0x19

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

    :goto_5
    const v0, 0x19

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

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lruq;->b:Ljava/util/Collection;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    :goto_c
    if-nez p1, :cond_0

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_d
    iget v0, v2, Lrur;->b:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lruq;->b:Ljava/util/Collection;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    iput v0, v2, Lrur;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lrun;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    invoke-static {v1, p1}, Lsgj;->r(Ljava/util/Set;Ljava/util/Collection;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_17
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    check-cast v1, Ljava/util/Set;

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

    :goto_1b
    invoke-virtual {p0}, Lrun;->c()V

    :goto_1c
    goto/32 :goto_0

    nop

    nop

    nop
.end method
