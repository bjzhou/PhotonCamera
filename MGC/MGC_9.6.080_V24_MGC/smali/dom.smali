.class public final Ldom;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation runtime Ltxo;
.end annotation


# static fields
.field public static final a:Ldom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    new-instance v0, Ldom;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ldom;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Ldom;->a:Ldom;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public static final varargs a(Ljava/lang/String;Ljava/lang/String;Lblm;[Ljava/lang/Object;)V
    .locals 6

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "PreviewLogger"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    const-string v0, "Composable "

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    invoke-static {p1, p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 p0, 0x27

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

    :goto_a
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_b
    const-string v0, "Failed to invoke Composable Method \'"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    throw p2

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v1, 0x2e

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

    :goto_f
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    :goto_13
    new-instance p3, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    array-length v4, p3

    nop

    invoke-static {p3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-static {v3, p1, v5}, Ldom;->c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v5

    nop

    nop

    if-eqz v5, :cond_1

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    nop

    nop

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    invoke-static {p3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    invoke-static {v5, v2, p2, p3}, Ldom;->d(Ljava/lang/reflect/Method;Ljava/lang/Object;Lblm;[Ljava/lang/Object;)V

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    invoke-static {p3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    invoke-static {v5, v0, p2, p3}, Ldom;->d(Ljava/lang/reflect/Method;Ljava/lang/Object;Lblm;[Ljava/lang/Object;)V

    return-void

    nop

    nop

    nop

    nop

    :cond_1
    new-instance p2, Ljava/lang/NoSuchMethodException;

    nop

    nop

    nop

    nop

    new-instance p3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    invoke-direct {p2, p3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_17
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final b(II)I
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    add-int/2addr p0, p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    nop

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

    nop

    :goto_5
    int-to-double p0, p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x11

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    :goto_a
    const v1, 0x3

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    div-double/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_11
    return p0

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    double-to-int p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method private static final varargs c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 17

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    aget-object v7, v1, v5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    :goto_4
    move v5, v4

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x5

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

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

    nop

    :goto_8
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_9
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    move-object/from16 v1, p2

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

    :goto_c
    if-nez v7, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v4, 0x0

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

    :goto_e
    add-int/lit8 v4, v4, 0x1

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

    nop

    nop

    :goto_f
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object v6

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    :goto_12
    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_28

    nop

    nop

    :goto_16
    add-int v0, v0, v1

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

    :goto_17
    check-cast v1, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    if-lt v5, v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    array-length v3, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v2, 0x2d

    nop

    nop

    nop

    nop

    :try_start_0
    array-length v3, v1

    nop

    nop

    nop

    nop

    invoke-static {v3, v4}, Ldom;->b(II)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    invoke-static {v4, v3}, Lucd;->n(II)Ludl;

    move-result-object v3

    nop

    nop

    new-instance v7, Ljava/util/ArrayList;

    nop

    invoke-static {v3}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result v8

    nop

    nop

    nop

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ludk;->a()Ltzb;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean v8, v3, Ltzb;->a:Z

    nop

    nop

    nop

    if-eqz v8, :cond_3

    nop

    nop

    invoke-virtual {v3}, Ltzb;->a()I

    invoke-interface {v7, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    nop

    nop

    :cond_3
    new-array v3, v4, [Ljava/lang/Class;

    nop

    nop

    nop

    invoke-interface {v7, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    nop

    nop

    nop

    nop

    new-instance v7, Ljava/util/ArrayList;

    nop

    nop

    nop

    const/4 v8, 0x3

    nop

    nop

    nop

    nop

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, v7}, Luch;->d(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const-class v1, Lblm;

    nop

    nop

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v7}, Luch;->d(Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    nop

    new-array v1, v1, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, [Ljava/lang/Class;

    nop

    nop

    array-length v3, v5

    nop

    nop

    nop

    nop

    move v7, v4

    nop

    nop

    nop

    nop

    :goto_1c
    if-ge v7, v3, :cond_b

    nop

    nop

    nop

    nop

    aget-object v8, v5, v7

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-static {v0, v9}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    nop

    if-nez v9, :cond_4

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    new-instance v10, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-static {v9, v10}, Luch;->E(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_a

    nop

    nop

    nop

    :cond_4
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    array-length v10, v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    nop

    check-cast v10, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    array-length v11, v9

    nop

    nop

    array-length v12, v10

    nop

    nop

    if-ne v11, v12, :cond_a

    nop

    nop

    nop

    new-instance v12, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    move v13, v4

    nop

    nop

    nop

    nop

    nop

    move v14, v13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-ge v13, v11, :cond_7

    nop

    nop

    aget-object v15, v9, v13

    nop

    nop

    add-int/lit8 v16, v14, 0x1

    nop

    nop

    aget-object v14, v10, v14

    nop

    nop

    invoke-static {v15}, Lucd;->c(Ljava/lang/Class;)Ludp;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v14}, Lucd;->c(Ljava/lang/Class;)Ludp;

    move-result-object v6

    nop

    nop

    nop

    invoke-static {v4, v6}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    if-nez v4, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_5

    nop

    goto :goto_1e

    nop

    nop

    nop

    nop

    :cond_5
    const/4 v6, 0x0

    nop

    :cond_6
    :goto_1e
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-interface {v12, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    nop

    nop

    nop

    nop

    nop

    move/from16 v14, v16

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_7
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto :goto_1f

    nop

    nop

    nop

    nop

    :cond_8
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    if-eqz v6, :cond_c

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    nop

    nop

    if-nez v6, :cond_9

    nop

    nop

    nop

    nop

    :cond_a
    add-int/lit8 v7, v7, 0x1

    nop

    const/4 v4, 0x0

    nop

    nop

    goto/16 :goto_1c

    nop

    :cond_b
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    :cond_c
    :goto_1f
    if-eqz v8, :cond_d

    nop

    move-object v6, v8

    nop

    nop

    nop

    nop

    goto/16 :goto_31

    nop

    nop

    :cond_d
    new-instance v1, Ljava/lang/NoSuchMethodException;

    nop

    nop

    nop

    const-string v3, " not found"

    nop

    nop

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-direct {v1, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    nop

    nop

    array-length v3, v1

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    :goto_20
    if-ge v4, v3, :cond_10

    nop

    aget-object v5, v1, v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    if-nez v6, :cond_e

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    invoke-static {v6, v7}, Luch;->E(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-array v1, v4, [Ljava/lang/Class;

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

    :goto_22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_20

    nop

    :cond_e
    :goto_24
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v6, 0x0

    nop

    nop

    :goto_26
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_11

    nop

    :goto_28
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_29
    if-nez v6, :cond_f

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move-object/from16 v0, p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto :goto_31

    nop

    nop

    nop

    nop

    nop

    :catch_1
    :cond_10
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto :goto_26

    nop

    nop

    :goto_2d
    goto/32 :goto_25

    nop

    nop

    :goto_2e
    new-instance v2, Ljava/util/ArrayList;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2f
    if-nez v6, :cond_11

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

    :cond_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move-object v6, v5

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_33
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method private static final varargs d(Ljava/lang/reflect/Method;Ljava/lang/Object;Lblm;[Ljava/lang/Object;)V
    .locals 10

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq v6, v2, :cond_0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v7, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v7, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    :goto_6
    const v7, 0x1fffff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_76

    nop

    nop

    :goto_8
    goto/32 :goto_50

    nop

    nop

    :goto_9
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_16

    nop

    nop

    :sswitch_0
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v3, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_76

    nop

    :goto_f
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_16

    nop

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v7, 0x0

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

    nop

    :goto_12
    throw p0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_7c

    nop

    nop

    :goto_17
    add-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_18
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_76

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_76

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

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

    :goto_1e
    add-int/2addr v1, v3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_98

    nop

    nop

    :goto_20
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_61

    nop

    nop

    :goto_23
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v7, :cond_3

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

    :cond_3
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_25
    if-le v6, v7, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_79

    nop

    nop

    :goto_26
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int/2addr v5, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1

    nop

    nop

    :goto_2b
    const-string v9, "boolean"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2c
    const-class v5, Lblm;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-ltz v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    :cond_5
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-ne v4, v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_6
    goto/32 :goto_43

    nop

    nop

    :goto_2f
    array-length v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_30
    if-lt v6, v2, :cond_7

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_7
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    nop

    nop

    nop

    nop

    sparse-switch v9, :sswitch_data_0

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_32
    const-string v9, "double"

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_33
    aget-object v7, v7, v6

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_16

    nop

    :sswitch_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-object v7, p2

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_76

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_39
    if-gez v6, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_8
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_3c
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_3e
    const-string v9, "float"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    int-to-double v5, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    :goto_47
    goto/32 :goto_82

    nop

    nop

    :goto_48
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_67

    nop

    nop

    :goto_4a
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_84

    nop

    :goto_4c
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4e
    double-to-int v5, v5

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v4, :cond_9

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_51
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-nez p1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_53
    if-lt v6, v4, :cond_b

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_54
    if-lt v6, v1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_2d

    nop

    nop

    :goto_57
    throw p0

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_6
        0x197ef -> :sswitch_5
        0x2e6108 -> :sswitch_0
        0x2e9356 -> :sswitch_1
        0x32c67c -> :sswitch_4
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_3
        0x685847c -> :sswitch_7
    .end sparse-switch

    :goto_58
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_59
    div-double/2addr v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_5a
    move-object v7, v8

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const-wide/high16 v7, 0x403f000000000000L    # 31.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    new-array v5, v4, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {v2, v1}, Ldom;->b(II)I

    move-result v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_60
    move v6, v0

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_85

    nop

    nop

    :goto_62
    move v1, v3

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_76

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-static {v4, v5}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_66
    if-gez v1, :cond_d

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_d
    :goto_67
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_69
    const-string v9, "char"

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_16

    nop

    nop

    :goto_6b
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_6c
    const-string p1, "Unexpected index"

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_6d
    const-string p1, "params don\'t add up to total params"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6e
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    add-int/lit8 v3, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_72
    const/4 v2, -0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_73
    rem-int v0, v0, v1

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_5a

    nop

    nop

    :goto_77
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_78
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    :goto_79
    aget-object v7, p3, v6

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_7a
    array-length v4, v4

    nop

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

    :goto_7b
    goto/16 :goto_16

    nop

    :sswitch_6
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    aput-object v7, v5, v6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-static {p3}, Lrkm;->aV([Ljava/lang/Object;)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_7e
    if-eqz v7, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_7f
    if-eqz v7, :cond_f

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_82
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_83
    move v5, v0

    nop

    :goto_84
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_85
    if-lt v6, v4, :cond_10

    nop

    goto/32 :goto_13

    nop

    :cond_10
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_87
    const-string v9, "byte"

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_88
    if-eqz v7, :cond_11

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_11
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_8a
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    const-string v9, "long"

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_8d
    if-le v3, v6, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_8f
    if-le v1, v6, :cond_13

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

    :cond_13
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_90
    if-lez v0, :cond_14

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_9f

    nop

    :goto_91
    goto/16 :goto_76

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_93
    if-eqz v7, :cond_15

    nop

    goto/32 :goto_92

    nop

    :cond_15
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_95
    const-string v9, "short"

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_96
    aget-object v4, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_97
    move v1, v0

    nop

    nop

    :goto_98
    goto/32 :goto_71

    nop

    nop

    :goto_99
    const-string v9, "int"

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_9a
    goto/16 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_9c
    if-nez v7, :cond_16

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

    :cond_16
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    goto/16 :goto_76

    nop

    nop

    nop

    nop

    nop

    :sswitch_7
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_9e
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_9f
    goto/32 :goto_58

    nop

    nop

    :goto_a0
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_a2
    if-eq v5, v4, :cond_17

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_a4
    if-eqz v7, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
