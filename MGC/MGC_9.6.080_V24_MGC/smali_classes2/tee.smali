.class public final Ltee;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:[Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

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
    new-array v0, v0, [Ljava/lang/reflect/Type;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    sput-object v0, Ltee;->a:[Ljava/lang/reflect/Type;

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
.end method

.method public static a(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_5
    check-cast p0, Ljava/lang/reflect/WildcardType;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_6
    check-cast p0, Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v3, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    :goto_c
    if-nez v0, :cond_2

    nop

    goto/32 :goto_32

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    :goto_d
    invoke-static {p0}, Ltee;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    const-string v0, "null"

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0}, Ljava/lang/reflect/Type;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    throw v1

    nop

    :goto_17
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0}, Ltee;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    nop

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

    :goto_1b
    instance-of v0, p0, Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    aget-object p0, p0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_20
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string p0, "> is of type "

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    :goto_23
    const-class p0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    :goto_29
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x0

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

    nop

    :goto_2b
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2c
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2d
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return-object p0

    nop

    nop

    :goto_32
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto :goto_29

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_13

    nop

    nop

    :goto_35
    const v1, 0x4

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3b
    instance-of v0, p0, Ljava/lang/Class;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_37

    nop

    :goto_3d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_40
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop
.end method

.method public static b(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/lang/reflect/Type;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    instance-of v0, p0, Ljava/lang/Class;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    goto :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

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

    nop

    :goto_1
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    nop

    nop

    goto/32 :goto_13

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

    nop

    :goto_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_9
    invoke-direct {v0, p0}, Lteb;-><init>(Ljava/lang/reflect/Type;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lted;

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

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1, v2, p0}, Ltec;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_11
    check-cast p0, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    new-instance v0, Ltec;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

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

    :goto_14
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_15
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    if-lez v0, :cond_3

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    :goto_17
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, p0}, Lteb;-><init>(Ljava/lang/reflect/Type;)V

    goto/32 :goto_6

    nop

    nop

    :goto_1a
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0, v1, p0}, Lted;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0}, Ltee;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1e
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_28

    nop

    :goto_20
    check-cast p0, Ljava/lang/reflect/WildcardType;

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

    :goto_21
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v0, Lteb;

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
    return-object p0

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v0, Lteb;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_26
    instance-of v0, p0, Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_5

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

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

    nop

    :goto_2b
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_10

    nop

    nop

    :goto_2e
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2f
    return-object v0

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

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

    nop
.end method

.method public static d(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

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

    :goto_1
    invoke-static {p0, p1, p2}, Ltee;->e(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aget-object p0, p0, v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    check-cast p0, Ljava/lang/reflect/WildcardType;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1, p2}, Ltee;->h(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_9
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

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

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static e(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1, p2, v0}, Ltee;->i(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

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

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method static f(Ljava/lang/reflect/Type;)V
    .locals 6

    goto/32 :goto_12

    nop

    nop

    :goto_0
    check-cast p0, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_2
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v4, v5, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_c

    nop

    nop

    :goto_4
    if-lez v0, :cond_2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_5
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    instance-of v0, p0, Ljava/lang/Class;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    const/16 v4, 0x246

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

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

    :goto_f
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    :goto_12
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    aput-object v3, v2, v5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_15
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    :goto_18
    new-array v2, v2, [Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop
.end method

.method public static g(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 4

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Ljava/lang/reflect/Type;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_2
    invoke-interface {v1, v3}, Ljava/lang/reflect/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v1, :cond_2

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p0, Ljava/lang/reflect/WildcardType;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_b
    return v2

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_d
    return v0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_12
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_14
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_15
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_4
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_6
    goto/32 :goto_46

    nop

    nop

    :goto_1a
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

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

    :goto_1b
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_7
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_21
    return p0

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_23
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_25
    return v2

    nop

    nop

    :goto_26
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_28
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_29
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2a
    if-nez v1, :cond_8

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_a

    nop

    nop

    :goto_2e
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2f
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_30
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v1, :cond_9

    nop

    goto/32 :goto_24

    nop

    :cond_9
    goto/32 :goto_47

    nop

    nop

    :goto_32
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_34
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

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

    :goto_35
    if-nez p0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz v1, :cond_b

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_37
    instance-of v1, p0, Ljava/lang/Class;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_38
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_3b
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3c
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_3d
    return v2

    nop

    nop

    :goto_3e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_40
    return v2

    nop

    :goto_41
    goto/32 :goto_57

    nop

    nop

    :goto_42
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast p1, Ljava/lang/reflect/WildcardType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_44
    if-lez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_32

    nop

    :goto_45
    if-nez v1, :cond_d

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2f

    nop

    nop

    :goto_46
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_48
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_3f

    nop

    nop

    :goto_4a
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez p0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_d

    nop

    nop

    :goto_4c
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4d
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

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

    :goto_50
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v1, :cond_f

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_f
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_52
    return v0

    nop

    :goto_53
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_54
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_55
    invoke-static {p0, p1}, Ltee;->g(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_56
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_57
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_58
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_59
    return v0

    nop

    :goto_5a
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_5b
    if-eq p0, p1, :cond_10

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_59

    nop

    nop

    :goto_5c
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

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

    nop

    :goto_5d
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_5e
    if-eqz v1, :cond_11

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

    :cond_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method private static h(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aget-object p0, p0, v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    :goto_5
    array-length v0, p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_4

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    :goto_d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lt v1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p1

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

    :goto_10
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    :goto_12
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object p2

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_36

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    :goto_17
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    nop

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

    :goto_18
    move-object p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x16

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

    :goto_1b
    if-eq v2, p2, :cond_2

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    :goto_1c
    aget-object v2, p0, v1

    nop

    nop

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

    :goto_1d
    goto/16 :goto_2e

    nop

    :goto_1e
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1f
    aget-object p1, p1, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eq p0, p2, :cond_3

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v2, :cond_4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p1, p0, p2}, Ltee;->h(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v0, :cond_5

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

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_29
    if-eq p2, p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-ne p1, p0, :cond_7

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

    :cond_7
    goto/32 :goto_17

    nop

    nop

    :goto_2b
    return-object p0

    nop

    nop

    :goto_2c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz p0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_8
    :goto_2e
    goto/32 :goto_34

    nop

    nop

    :goto_2f
    invoke-static {p1, p0, p2}, Ltee;->h(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_30
    const v0, 0x16

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

    nop

    nop

    :goto_31
    aget-object p0, p0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

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

    :goto_33
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_34
    const-class p0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_36
    goto/32 :goto_23

    nop

    nop

    :goto_37
    if-nez p0, :cond_9

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method private static i(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 10

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_40

    nop

    :goto_1
    goto/32 :goto_58

    nop

    nop

    :goto_2
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_3
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_4
    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object p2

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_5
    aget-object v9, v7, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v4, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_b
    check-cast p0, Ljava/lang/reflect/WildcardType;

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_c
    aput-object v0, p1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_87

    nop

    nop

    :goto_10
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_11
    return-object v4

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a1

    nop

    nop

    :goto_13
    aget-object p1, v4, v3

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

    :goto_14
    aget-object v8, v7, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_15
    const-class v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_17
    new-instance p2, Lteb;

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_18
    array-length v5, p2

    nop

    :goto_19
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Ljava/lang/reflect/WildcardType;

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a7

    nop

    :goto_1c
    new-instance p2, Lted;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1d
    if-eqz v9, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_1
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a6

    nop

    :goto_1f
    if-nez v4, :cond_3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-array p1, v2, [Ljava/lang/reflect/Type;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aput-object p0, p1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p2, p0}, Lteb;-><init>(Ljava/lang/reflect/Type;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_23
    if-ne p0, p1, :cond_4

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p0, Ljava/util/NoSuchElementException;

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-object p2, v0

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_70

    nop

    :goto_29
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_2a
    goto :goto_27

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2c
    instance-of v2, p2, Ljava/lang/reflect/TypeVariable;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_2d
    if-eq v0, v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :cond_5
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2e
    array-length v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_2f
    new-instance p2, Lteb;

    nop

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

    :goto_30
    aget-object p1, v0, v3

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_31
    array-length v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget-object p1, Ltee;->a:[Ljava/lang/reflect/Type;

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_34
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_35
    aget-object v0, v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast p2, Ljava/lang/reflect/WildcardType;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_37
    move-object v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-eq p2, v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_39
    aget-object p2, p2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {p2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move-object p0, p1

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_3f
    throw p0

    nop

    nop

    :goto_40
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_41
    if-nez p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_42
    move-object v1, v0

    nop

    nop

    :goto_43
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {p0, p1, v0, p3}, Ltee;->i(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_46
    move v5, v2

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_48
    instance-of v0, p2, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_49
    invoke-static {v0, p0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4a
    move-object v2, p2

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_4b
    instance-of v0, p2, Ljava/lang/reflect/WildcardType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_84

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {p2, p1, p0}, Lted;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast v0, Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_50
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move-object v7, v5

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_54
    if-ne p0, p1, :cond_8

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {p0, p1, v0, p3}, Ltee;->i(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_56
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_58
    invoke-static {p0, p1, p2}, Ltee;->h(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-eq v4, p0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_b3

    nop

    nop

    :goto_5a
    new-array p1, v2, [Ljava/lang/reflect/Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_5b
    if-eq v5, v2, :cond_a

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    new-array p1, v2, [Ljava/lang/reflect/Type;

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

    nop

    :goto_5d
    invoke-static {p0, p1, v4, p3}, Ltee;->i(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    check-cast v7, [Ljava/lang/reflect/Type;

    nop

    :goto_60
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-nez v5, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :cond_b
    :goto_62
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_63
    aput-object p0, p1, v3

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_79

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_66
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_67
    invoke-interface {p2}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_68
    if-lt v3, v6, :cond_c

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_69
    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_6a
    move-object v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-interface {p3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_89

    nop

    nop

    :goto_6d
    invoke-static {p0, p1, p2, p3}, Ltee;->i(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez v0, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    move v5, v3

    nop

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_68

    nop

    nop

    :goto_71
    if-nez v2, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_72
    if-nez v0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_73
    return-object p2

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-lt v3, v5, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    :cond_10
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    if-nez v5, :cond_11

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_11
    goto/32 :goto_25

    nop

    nop

    :goto_77
    if-nez v6, :cond_12

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_78
    move-object p2, v2

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_7a
    new-instance p2, Ltec;

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto :goto_84

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_7d
    invoke-static {p0, p1, v0, p3}, Ltee;->i(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7e
    instance-of p1, p0, Ljava/lang/reflect/WildcardType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_7f
    check-cast v2, Ljava/lang/reflect/TypeVariable;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_80
    if-nez p1, :cond_13

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_81
    goto/16 :goto_84

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-direct {p2, p0, p1}, Lted;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    :goto_84
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-static {v8, v9}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_86
    move-object p0, p1

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_1c

    nop

    nop

    :goto_88
    array-length v6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_89
    if-eqz v1, :cond_14

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_8a
    instance-of p1, p0, Ljava/lang/reflect/WildcardType;

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_8b
    if-nez v2, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    :cond_15
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_8c
    if-nez v0, :cond_16

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :cond_16
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    if-nez v1, :cond_17

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :cond_17
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_90
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    aget-object v4, v0, v3

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    if-eqz p2, :cond_18

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_93
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_94
    new-instance p2, Lted;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_95
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_96
    goto/16 :goto_84

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_31

    nop

    nop

    :goto_98
    if-nez v0, :cond_19

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_19
    goto/32 :goto_34

    nop

    nop

    :goto_99
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_9b
    if-eqz v5, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :cond_1a
    goto/32 :goto_a4

    nop

    nop

    :goto_9c
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

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

    :goto_9d
    invoke-direct {p2, p0}, Lteb;-><init>(Ljava/lang/reflect/Type;)V

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    aput-object v8, v7, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_a1
    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_a2
    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a3
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v7}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v5

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

    :goto_a5
    invoke-static {p2, p0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_a6
    goto/32 :goto_74

    nop

    :goto_a7
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_a9
    check-cast p2, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_aa
    instance-of v4, p2, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_ab
    move-object v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_ac
    if-nez p1, :cond_1b

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    move-object p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    check-cast v4, Ljava/lang/reflect/Type;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_af
    if-nez v0, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_37

    nop

    nop

    :goto_b0
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_24

    nop

    nop

    :goto_b2
    if-nez v4, :cond_1d

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    return-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_11

    nop

    nop

    :goto_b5
    goto/16 :goto_84

    nop

    :goto_b6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    aget-object v6, p2, v3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b8
    invoke-static {p0, p1, v8, p3}, Ltee;->i(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v8

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b9
    invoke-direct {p2, v4, p0, v7}, Ltec;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    goto/32 :goto_7b

    nop

    nop

    nop
.end method
