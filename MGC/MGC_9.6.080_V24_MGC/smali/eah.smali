.class final Leah;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final a:Leah;


# instance fields
.field public final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance v0, Leah;

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

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {v0}, Leah;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    sput-object v0, Leah;->a:Leah;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Leah;->c:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput-object v0, p0, Leah;->b:Ljava/util/Map;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/HashMap;

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
.end method

.method private static final d(Ljava/util/Map;Leag;Leap;Ljava/lang/Class;)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    :goto_0
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

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

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-object p0, p1, Leag;->b:Ljava/lang/reflect/Method;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1e

    nop

    nop

    :goto_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    :goto_9
    const-string v2, "Method "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x7

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

    :goto_e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_f
    const-string p0, ", new value "

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_12
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    :goto_14
    if-eq p2, v0, :cond_2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    :goto_15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    :goto_16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_1b

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    throw p1

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_1d
    return-void

    nop

    :goto_1e
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_6

    nop

    :goto_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_21
    const v1, 0x7

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

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_24
    const-string p0, " in "

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v0, Leap;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_26
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_27
    const-string p0, " already declared with different @OnLifecycleEvent value: previous value "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Leaf;
    .locals 11

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p2

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lt v2, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

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

    nop

    :goto_3
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Leah;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_6
    move v9, v3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_35

    nop

    nop

    :goto_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_9
    aget-object v5, p2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string p1, "cannot have more than 2 params"

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_72

    nop

    nop

    :goto_d
    if-nez v6, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-class v10, Leaw;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    const/4 v10, 0x2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    const-class v9, Leap;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_14
    array-length v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    if-gtz v7, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-gt v7, v8, :cond_3

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_18
    aget-object v4, v4, v8

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

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1a
    if-lt v4, v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1b
    throw p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_36

    nop

    nop

    :goto_1d
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1e
    goto :goto_1c

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_3b

    nop

    nop

    :goto_20
    const-string p1, "invalid parameter type. second arg must be an event"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move v4, v3

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_23
    aget-object v9, v4, v3

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

    :goto_24
    move v9, v10

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v1, v7, v6, p1}, Leah;->d(Ljava/util/Map;Leag;Leap;Ljava/lang/Class;)V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, v0}, Leah;->b(Ljava/lang/Class;)Leaf;

    move-result-object v0

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_28
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    :goto_29
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v4, Leap;->ON_ANY:Leap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, p1}, Leah;->c(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object p2

    nop

    :goto_2c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    aget-object v5, v0, v4

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move v4, v2

    nop

    nop

    :goto_2f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_31
    throw p0

    nop

    nop

    :goto_32
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_34
    move v9, v8

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_35
    invoke-interface {v6}, Landroidx/lifecycle/OnLifecycleEvent;->a()Leap;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_36
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_37
    array-length v0, p2

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_22

    nop

    :goto_39
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_3a
    if-nez v4, :cond_5

    nop

    goto/32 :goto_73

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_3d
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_6
    goto/32 :goto_5b

    nop

    :goto_3e
    array-length v7, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-direct {v4, v9, v5}, Leag;-><init>(ILjava/lang/reflect/Method;)V

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_40
    check-cast v6, Ljava/util/Map$Entry;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_41
    move v4, v8

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

    :goto_42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v5, v5, Leaf;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_44
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :goto_45
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_4a
    check-cast v7, Leag;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-le v7, v10, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_4c
    throw p0

    nop

    :goto_4d
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_4f
    new-instance v4, Leag;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_51
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_52
    invoke-static {v1, v4, v6, p1}, Leah;->d(Ljava/util/Map;Leag;Leap;Ljava/lang/Class;)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_53
    if-eqz p2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

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

    :goto_54
    move v2, v3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_55
    const-string p1, "invalid parameter type. Must be one and instanceof LifecycleOwner"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_56
    check-cast v6, Leap;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_57
    const-string p1, "Second arg is supported only for ON_ANY value"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_59
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

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

    :goto_5a
    if-nez v6, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_1

    nop

    nop

    :goto_5c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_4d

    nop

    :goto_5e
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_5f
    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_60
    check-cast v6, Landroidx/lifecycle/OnLifecycleEvent;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_61
    new-instance p2, Leaf;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_66
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v9, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_68
    invoke-direct {p2, v1}, Leaf;-><init>(Ljava/util/Map;)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_5c

    nop

    nop

    :goto_6a
    if-nez v9, :cond_a

    nop

    goto/32 :goto_64

    nop

    :cond_a
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_6b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    const-class v6, Landroidx/lifecycle/OnLifecycleEvent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-nez v0, :cond_b

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v0, v0, Leaf;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p0, v5}, Leah;->b(Ljava/lang/Class;)Leaf;

    move-result-object v5

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_70
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

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

    :goto_71
    if-eq v6, v4, :cond_c

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_72
    throw p0

    nop

    nop

    :goto_73
    goto/32 :goto_62

    nop

    nop

    :goto_74
    iget-object v0, p0, Leah;->c:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final b(Ljava/lang/Class;)Leaf;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Leaf;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, v0}, Leah;->a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Leaf;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    iget-object v0, p0, Leah;->c:Ljava/util/Map;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor."

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop
.end method
