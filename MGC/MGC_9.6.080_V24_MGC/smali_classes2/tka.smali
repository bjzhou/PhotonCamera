.class public abstract Ltka;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
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

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method static b(Ljava/lang/Class;)Ltjv;
    .locals 11

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-class v0, Ltjv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    check-cast p0, Ltjv;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_b
    new-instance v2, Ljava/util/ArrayList;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

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

    :goto_d
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    nop

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

    :goto_10
    if-nez v4, :cond_0

    nop

    goto/32 :goto_3f

    nop

    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ltka;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltka;->a()Ltjv;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ltjv;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    throw v0

    nop

    nop

    :catch_0
    move-exception p0

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

    :goto_13
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_1

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, "%s.BlazeGenerated%sLoader"

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_19
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_44

    nop

    nop

    nop

    :catch_2
    move-exception v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1b
    const-string v0, "tja"

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1c
    move-object v10, v4

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_1d
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Ljava/lang/IllegalStateException;

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

    :goto_1f
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_21
    throw v0

    nop

    :goto_22
    goto/32 :goto_1d

    nop

    nop

    :goto_23
    const/4 v1, 0x1

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

    :goto_24
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_25
    add-int v0, v0, v1

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

    nop

    :goto_26
    const-class v0, Ltna;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_28
    const-class v1, Ltka;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

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

    nop

    nop

    :goto_2a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_2b
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2c
    const-string v7, "Unable to load "

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2e
    const/4 v3, 0x0

    nop

    nop

    nop

    :try_start_1
    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7

    :try_start_2
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    nop

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ltka;

    nop

    nop
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7

    :try_start_3
    invoke-virtual {v0}, Ltka;->a()Ltjv;

    move-result-object v0

    nop

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Ltjv;

    nop

    nop

    nop

    return-object v0

    nop

    :catch_3
    move-exception v0

    nop

    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    nop

    nop

    nop

    nop

    :catch_4
    move-exception v0

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    nop

    :catch_5
    move-exception v0

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    nop

    :catch_6
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7

    :catch_7
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-string v8, "load"

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_32
    return-object v3

    nop

    nop

    :goto_33
    :try_start_4
    const-string v0, "combine"

    nop

    const-class v1, Ljava/util/Collection;

    nop

    nop

    nop

    nop

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    nop

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    nop

    nop

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    check-cast p0, Ltjv;

    nop
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_4e

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_3e

    nop

    nop

    :goto_37
    if-eq v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    throw v0

    nop

    :catch_8
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_39
    const-string v7, "com.google.protobuf.GeneratedExtensionRegistryLoader"

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3a
    const v0, 0x10

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3b
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3c
    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3e
    goto :goto_44

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_40
    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const-class v4, Ltjs;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_44
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_46
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_49
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    throw v0

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_4

    nop

    nop

    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4d
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

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

    :goto_50
    if-lez v0, :cond_5

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_47

    nop
.end method


# virtual methods
.method protected abstract a()Ltjv;
.end method
