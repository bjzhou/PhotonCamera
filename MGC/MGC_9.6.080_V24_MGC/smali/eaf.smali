.class final Leaf;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final a:Ljava/util/Map;

.field final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 4

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_1
    new-instance v0, Ljava/util/HashMap;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, p0, Leaf;->a:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    check-cast v2, Ljava/util/List;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_18

    nop

    nop

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    :goto_8
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Leaf;->b:Ljava/util/Map;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    :goto_12
    iget-object v3, p0, Leaf;->a:Ljava/util/Map;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_19

    nop

    nop

    :goto_15
    const v1, 0x17

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

    :goto_16
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v0, Leag;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Leaf;->a:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1b
    goto/16 :goto_b

    nop

    :goto_1c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    :goto_1e
    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_20
    check-cast v1, Leap;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_23
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_f

    nop

    nop
.end method

.method public static a(Ljava/util/List;Leaw;Leap;Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    check-cast v1, Leag;

    nop

    nop

    :try_start_0
    iget v2, v1, Leag;->a:I

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    const/4 v3, 0x1

    nop

    if-eq v2, v3, :cond_0

    nop

    nop

    nop

    iget-object v1, v1, Leag;->b:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    nop

    nop

    nop

    :cond_0
    iget-object v1, v1, Leag;->b:Ljava/lang/reflect/Method;

    nop

    nop

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v1, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    nop

    nop

    nop

    :cond_1
    iget-object v1, v1, Leag;->b:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

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

    :goto_7
    const v1, 0x3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_13

    nop

    :goto_a
    new-instance p1, Ljava/lang/RuntimeException;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_2

    nop

    nop

    :goto_d
    goto :goto_6

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    const-string p2, "Failed to call observer method"

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    throw p1

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    if-gez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

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
.end method
