.class final Ltfh;
.super Ltdx;
.source "PG"


# static fields
.field static final a:Ltdy;


# instance fields
.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Ltfh;->a:Ltdy;

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

    :goto_6
    new-instance v0, Ltfg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Ltfg;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    const v0, 0x11

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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 11

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ltdx;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    const v0, 0x14

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4
    new-instance p1, Ljava/lang/AssertionError;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_a
    iput-object v0, p0, Ltfh;->d:Ljava/util/Map;

    nop

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    nop

    nop

    nop

    array-length v0, p1

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    move v2, v1

    nop

    nop

    nop

    nop

    move v3, v2

    nop

    :goto_b
    if-ge v2, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    aget-object v4, p1, v2

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_1

    nop

    add-int/lit8 v5, v3, 0x1

    nop

    nop

    aput-object v4, p1, v3

    nop

    nop

    nop

    nop

    nop

    move v3, v5

    nop

    nop

    nop

    :cond_1
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    :cond_2
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, [Ljava/lang/reflect/Field;

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    array-length v0, p1

    nop

    nop

    move v2, v1

    nop

    nop

    :goto_c
    if-ge v2, v0, :cond_4

    nop

    nop

    nop

    aget-object v3, p1, v2

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Enum;

    nop

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    nop

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    const-class v7, Ltea;

    nop

    nop

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Ltea;

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ltea;->a()Ljava/lang/String;

    move-result-object v5

    nop

    invoke-interface {v3}, Ltea;->b()[Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    array-length v7, v3

    nop

    nop

    nop

    nop

    move v8, v1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ge v8, v7, :cond_3

    nop

    aget-object v9, v3, v8

    nop

    nop

    nop

    nop

    iget-object v10, p0, Ltfh;->b:Ljava/util/Map;

    nop

    nop

    invoke-interface {v10, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    :cond_3
    iget-object v3, p0, Ltfh;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Ltfh;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Ltfh;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw p1

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/util/HashMap;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Ltfh;->c:Ljava/util/Map;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    :goto_16
    iput-object v0, p0, Ltfh;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_14

    nop

    nop

    :goto_1b
    const v1, 0x13

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Lthn;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    const v1, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_4
    invoke-virtual {p1}, Lthn;->t()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    move-object p0, v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    if-eq v0, v1, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Ltfh;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    :goto_b
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Ltfh;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    goto :goto_6

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    :goto_13
    check-cast p0, Ljava/lang/Enum;

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

    :goto_14
    return-object p0

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Lthn;->p()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x17

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 p0, 0x0

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

    :goto_1a
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Ljava/lang/Enum;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Lthn;->j()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method
