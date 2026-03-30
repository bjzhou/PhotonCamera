.class final Lthg;
.super Lthe;
.source "PG"


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x9

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lthe;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "java.lang.reflect.RecordComponent"

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_5
    const/4 v2, 0x0

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

    :goto_6
    const-string v1, "getType"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lthg;->a:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    const-string v1, "getName"

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

    :goto_a
    iput-object v0, p0, Lthg;->b:Ljava/lang/reflect/Method;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    const-class v0, Ljava/lang/Class;

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

    :goto_d
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    iput-object v1, p0, Lthg;->c:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    iput-object v0, p0, Lthg;->d:Ljava/lang/reflect/Method;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, "isRecord"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    const v0, 0xe

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-class v0, Ljava/lang/Class;

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

    :goto_1b
    const-string v1, "getRecordComponents"

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 6

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    goto/32 :goto_9

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Lthh;->a(Ljava/lang/ReflectiveOperationException;)Ljava/lang/RuntimeException;

    move-result-object p0

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

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    :try_start_0
    iget-object v0, p0, Lthg;->b:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, [Ljava/lang/Object;

    nop

    nop

    array-length v2, v0

    nop

    nop

    new-array v2, v2, [Ljava/lang/Class;

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    :goto_a
    array-length v4, v0

    nop

    nop

    nop

    nop

    nop

    if-ge v3, v4, :cond_1

    nop

    nop

    nop

    iget-object v4, p0, Lthg;->d:Ljava/lang/reflect/Method;

    nop

    nop

    aget-object v5, v0, v3

    nop

    nop

    nop

    invoke-virtual {v4, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Class;

    nop

    aput-object v4, v2, v3

    nop

    nop

    nop

    nop

    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_b

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

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const v1, 0x4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
    .locals 0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :catch_0
    move-exception p0

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

    :goto_1
    invoke-static {p0}, Lthh;->a(Ljava/lang/ReflectiveOperationException;)Ljava/lang/RuntimeException;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Class;)Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lthg;->a:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lthh;->a(Ljava/lang/ReflectiveOperationException;)Ljava/lang/RuntimeException;

    move-result-object p0

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
    return p0

    nop

    nop

    :catch_0
    move-exception p0

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

    :goto_2
    throw p0

    nop
.end method

.method public final d(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lthh;->a(Ljava/lang/ReflectiveOperationException;)Ljava/lang/RuntimeException;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    :try_start_0
    iget-object v0, p0, Lthg;->b:Ljava/lang/reflect/Method;

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

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, [Ljava/lang/Object;

    nop

    nop

    nop

    array-length v0, p1

    nop

    nop

    nop

    nop

    new-array v0, v0, [Ljava/lang/String;

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    array-length v3, p1

    nop

    nop

    nop

    nop

    if-ge v2, v3, :cond_1

    nop

    nop

    nop

    iget-object v3, p0, Lthg;->c:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    nop

    aget-object v4, p1, v2

    nop

    nop

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    aput-object v3, v0, v2

    nop
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_7

    nop

    nop

    :goto_4
    const v0, 0x9

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

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    const v1, 0xa

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

    :goto_7
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_b

    nop

    nop

    :goto_e
    goto/16 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop
.end method
