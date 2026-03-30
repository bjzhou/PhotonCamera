.class public final Lthm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/reflect/Type;

.field private final c:I


# direct methods
.method protected constructor <init>()V
    .locals 3

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_0
    const-string v1, "type-token-raw"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_30

    nop

    nop

    :goto_2
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5
    if-eqz v1, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    invoke-static {v1}, Lshf;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lthm;->b:Ljava/lang/reflect/Type;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    const-class v2, Lthm;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    const-string v0, "Must only create direct subclasses of TypeToken"

    nop

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

    nop

    :goto_f
    iput v0, p0, Lthm;->c:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eq v1, v2, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_14
    if-eq v0, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Lthm;->a(Ljava/lang/reflect/Type;)V

    :goto_16
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    :goto_18
    invoke-static {v0}, Ltee;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_19
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_1c
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0}, Ltee;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    aget-object v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x11

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_22
    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

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

    :goto_23
    const-string v0, "TypeToken must be created with a type argument: new TypeToken<...>() {}; When using code shrinkers (ProGuard, R8, ...) make sure that generic signatures are preserved.\nSee "

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

    :goto_24
    iput-object v1, p0, Lthm;->a:Ljava/lang/Class;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_29
    const v0, 0x18

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    :goto_2b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v0}, Ljava/lang/reflect/Type;->hashCode()I

    move-result v0

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

    :goto_2d
    const-string v1, "gson.allowCapturingTypeVariables"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2e
    const-string v2, "true"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-object v0, p0, Lthm;->a:Ljava/lang/Class;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Ltee;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

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

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Ltee;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lthm;->b:Ljava/lang/reflect/Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1}, Ljava/lang/reflect/Type;->hashCode()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput p1, p0, Lthm;->c:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method private static a(Ljava/lang/reflect/Type;)V
    .locals 5

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_2
    goto/32 :goto_51

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1a

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "TypeToken captured `null` as type argument; probably a compiler / runtime bug"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_a
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_0
    :goto_b
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lt v1, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    :goto_d
    const-string p0, "\nSee "

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_e
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    array-length v0, p0

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    const-string p0, "typetoken-type-variable"

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, " declared by "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aget-object v2, p0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1b
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1d
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object p0

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_1f
    if-lt v3, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    array-length v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

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

    :goto_23
    return-void

    nop

    :goto_24
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0x20

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

    :goto_26
    array-length v0, p0

    nop

    :goto_27
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast p0, Ljava/lang/reflect/WildcardType;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_30
    invoke-static {v2}, Lthm;->a(Ljava/lang/reflect/Type;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_31
    const-string v3, "TypeToken type argument must not contain a type variable; captured type variable "

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_32
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v0}, Lthm;->a(Ljava/lang/reflect/Type;)V

    :goto_35
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_36
    aget-object v2, p0, v1

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_37
    invoke-static {v2}, Lthm;->a(Ljava/lang/reflect/Type;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_39
    if-lt v1, v0, :cond_6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_41

    nop

    nop

    :goto_3c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    :goto_3d
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3f
    throw p0

    nop

    nop

    :goto_40
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_42
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_43
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {p0}, Lshf;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_47
    aget-object v4, v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move v3, v1

    nop

    :goto_49
    goto/32 :goto_1f

    nop

    nop

    :goto_4a
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p0}, Lthm;->a(Ljava/lang/reflect/Type;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_4c
    goto :goto_49

    nop

    nop

    :goto_4d
    goto/32 :goto_4

    nop

    nop

    :goto_4e
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_4f
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_50
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_53
    if-lez v0, :cond_9

    nop

    goto/32 :goto_3

    nop

    :cond_9
    goto/32 :goto_2

    nop

    :goto_54
    invoke-static {v4}, Lthm;->a(Ljava/lang/reflect/Type;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_55
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, p1}, Ltee;->g(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p0

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
    iget-object p1, p1, Lthm;->b:Ljava/lang/reflect/Type;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lthm;->b:Ljava/lang/reflect/Type;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    instance-of v0, p1, Lthm;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    check-cast p1, Lthm;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lthm;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lthm;->b:Ljava/lang/reflect/Type;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ltee;->b(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
