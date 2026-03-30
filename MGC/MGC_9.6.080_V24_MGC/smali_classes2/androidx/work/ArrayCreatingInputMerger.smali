.class public final Landroidx/work/ArrayCreatingInputMerger;
.super Leqa;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Leqa;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lepu;
    .locals 10

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v2, v7

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, p0}, Landroidx/wear/ambient/SharedLibraryVersion;->c(Ljava/util/Map;Ljava/util/Map;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    :goto_4
    goto/32 :goto_3d

    nop

    nop

    :goto_5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_7
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_22

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v4, v6, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    :goto_10
    goto/16 :goto_4c

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v4, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_13
    add-int v9, v4, v8

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_18
    invoke-static {v4, v7, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/32 :goto_35

    nop

    nop

    :goto_19
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1b
    invoke-static {p0}, Landroidx/wear/ambient/SharedLibraryVersion;->b(Ljava/util/Map;)Lepu;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_1d
    throw p0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v3, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v8, v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_24
    goto/32 :goto_47

    nop

    nop

    :goto_25
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_4

    nop

    nop

    :goto_27
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v1, Lepu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v7, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v2, :cond_3

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

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_33
    invoke-static {v7, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v5, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_21

    nop

    nop

    :goto_36
    invoke-static {v5, v6, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v7, :cond_5

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    :goto_39
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_22

    nop

    nop

    :goto_3b
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v2, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_3d
    new-instance p0, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_40
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v8, :cond_6

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

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

    :goto_44
    invoke-static {v2, v6, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_46
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_7
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_47
    move-object v2, v4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v5, v6, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_18

    nop

    nop

    :goto_49
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {v7, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_4b
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_4f
    const-class v4, Ljava/lang/String;

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_52
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v1}, Lepu;->c()Ljava/util/Map;

    move-result-object v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_56
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_57
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-eqz v4, :cond_8

    nop

    nop

    goto/32 :goto_50

    nop

    :cond_8
    :goto_59
    goto/32 :goto_4f

    nop

    nop

    nop
.end method
