.class abstract Lqol;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/Object;)Ltlq;
.end method

.method public abstract b(Ltlq;Ltlq;)Ltlq;
.end method

.method public abstract c(Ltlq;)Ljava/lang/String;
.end method

.method final d(Ljava/util/Map;)Ljava/util/List;
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    check-cast v1, Ljava/util/Map$Entry;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v2, v1}, Lqol;->a(Ljava/lang/String;Ljava/lang/Object;)Ltlq;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x2

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

    nop

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

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

    nop

    nop

    :goto_b
    if-nez v1, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    :goto_16
    goto :goto_f

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

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

    :goto_1c
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

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

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

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

    :goto_5
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    :goto_9
    return-object p1

    nop

    nop

    :goto_a
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    const v0, 0xb

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    invoke-virtual {p0, v1}, Lqol;->c(Ltlq;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v1, v4}, Lqol;->b(Ltlq;Ltlq;)Ltlq;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    check-cast v4, Ltlq;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v4, :cond_3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_14
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    goto/32 :goto_27

    nop

    nop

    :goto_18
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v4}, Lqol;->c(Ltlq;)Ljava/lang/String;

    move-result-object v5

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

    :goto_1b
    const v1, 0x9

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_16

    nop

    nop

    :goto_23
    add-int v0, v0, v1

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

    :goto_24
    goto :goto_22

    nop

    nop

    :goto_25
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1d

    nop

    nop

    :goto_27
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_28
    check-cast v1, Ltlq;

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
.end method
