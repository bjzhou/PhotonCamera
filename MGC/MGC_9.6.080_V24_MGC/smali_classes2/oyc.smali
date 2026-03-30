.class public final Loyc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loyd;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-static {p1}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object p1

    nop

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

    :goto_3
    iput-object p1, p0, Loyc;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;
    .locals 4

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_0
    new-instance v0, Loyb;

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

    :goto_1
    invoke-interface {v3, v2, p2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

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

    :goto_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Lodu;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_6
    check-cast v3, Loyd;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const/16 p1, 0xd

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    if-lt v1, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

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

    :goto_a
    invoke-direct {v0, p0, p1, p2}, Loyb;-><init>(Loyc;Lpcm;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    new-instance v2, Loya;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_10
    invoke-direct {p0, p1}, Lncl;-><init>(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p1}, Lows;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    new-instance p2, Loyo;

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

    :goto_15
    invoke-direct {p0, p1, v0, v1}, Lodu;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v0, 0x13

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v3, p0, Loyc;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Loyc;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p0, Lncl;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1f
    return-object p1

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1e

    nop

    nop

    :goto_22
    invoke-direct {p2}, Loyo;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Loyc;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v2, v0, v1}, Loya;-><init>(Loyb;I)V

    goto/32 :goto_17

    nop

    nop

    :goto_25
    const v0, 0x10

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

    :goto_26
    invoke-virtual {p1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_29
    new-instance p1, Lows;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop
.end method

.method public final bridge synthetic cM()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Loyc;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

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

    nop

    :goto_c
    if-nez v1, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_12
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v1, Loyd;

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

    :goto_14
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method
