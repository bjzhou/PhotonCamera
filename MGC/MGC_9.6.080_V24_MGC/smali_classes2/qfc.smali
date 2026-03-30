.class public final Lqfc;
.super Lqez;
.source "PG"

# interfaces
.implements Ljava/util/List;
.implements Lqfb;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
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

    nop

    :goto_1
    invoke-direct {p0, p1}, Lqez;-><init>(Ljava/util/List;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_9
    iget-object p0, p0, Lqez;->a:Ljava/util/List;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/RuntimeException;->addSuppressed(Ljava/lang/Throwable;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_11
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_4
    :try_start_0
    invoke-interface {v1}, Lqfb;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x14

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x19

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

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

    :goto_18
    goto :goto_16

    nop

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1b
    check-cast v1, Lqfb;

    nop

    nop

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

    :goto_1c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lqfc;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-direct {v0, p0}, Lqfc;-><init>(Ljava/util/List;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    :goto_3
    invoke-super {p0, p1, p2}, Lqez;->subList(II)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
