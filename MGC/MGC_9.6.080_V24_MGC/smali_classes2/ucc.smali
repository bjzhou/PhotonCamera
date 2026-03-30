.class public final Lucc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:[Ljava/lang/Object;


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
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lucc;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static final a(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 3
    .annotation runtime Ltxo;
    .end annotation

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lucc;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2
    array-length v2, v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    ushr-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_8
    aput-object v2, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    sget-object p0, Lucc;->a:[Ljava/lang/Object;

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

    nop

    :goto_a
    move-object p0, v0

    nop

    nop

    nop

    goto/32 :goto_13

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

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    if-ge v1, v2, :cond_0

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

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p0, Ljava/lang/OutOfMemoryError;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    mul-int/lit8 v2, v1, 0x3

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

    :goto_12
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    goto :goto_10

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    goto :goto_19

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    :goto_19
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

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

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1c
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-le v2, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_10

    nop

    nop

    :goto_26
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_28
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_29
    const v2, 0x7ffffffd

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_10

    nop

    :goto_2c
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    :goto_2e
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

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

    :goto_2f
    goto/32 :goto_c

    nop

    :goto_30
    goto/32 :goto_22

    nop

    nop

    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_32
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_35
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-lt v1, v2, :cond_7

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_23

    nop

    nop

    nop

    nop
.end method

.method public static final b(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation runtime Ltxo;
    .end annotation

    goto/32 :goto_43

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_9
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_a
    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    :goto_b
    array-length p0, p1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_c
    mul-int/lit8 v3, v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    if-le v3, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p0, Ljava/lang/OutOfMemoryError;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v3, 0x7ffffffd

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-le v0, v3, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    :goto_16
    ushr-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_17
    goto/16 :goto_9

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_28

    nop

    nop

    :goto_19
    array-length v3, p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1a
    if-lt v2, v3, :cond_4

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_5

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_34

    nop

    nop

    :goto_1f
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aput-object v3, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eq v0, p1, :cond_6

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_38

    nop

    nop

    :goto_24
    aput-object v1, p1, v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_26
    goto/16 :goto_9

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

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

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2a
    if-ge v2, v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_2c
    array-length v3, v0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move-object v0, p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_12

    nop

    nop

    :goto_31
    goto :goto_3c

    nop

    nop

    :goto_32
    goto/32 :goto_e

    nop

    nop

    :goto_33
    if-gtz p0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_8
    :goto_34
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_35
    array-length p0, p1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_36
    return-object p1

    nop

    :goto_37
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_38
    aput-object v1, p1, v2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3a
    const/4 v2, 0x0

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_3b
    throw p0

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3d
    if-gtz p0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v1, 0x0

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

    nop

    :goto_3f
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v0, :cond_b

    nop

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

    :cond_b
    goto/32 :goto_b

    nop

    nop

    :goto_42
    move-object p1, v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_43
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_45
    check-cast v0, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_2e

    nop

    nop

    :goto_47
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method
