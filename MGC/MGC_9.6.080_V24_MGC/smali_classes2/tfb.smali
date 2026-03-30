.class public abstract Ltfb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final c:Ltfb;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :catch_0
    :try_start_0
    const-class v1, Ljava/io/ObjectInputStream;

    nop

    const-class v3, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    const-class v4, Ljava/lang/Class;

    nop

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v5, Ltez;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v0}, Ltez;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :catch_1
    :try_start_1
    const-class v3, Ljava/io/ObjectStreamClass;

    nop

    nop

    nop

    const-string v4, "getConstructorId"

    nop

    nop

    nop

    nop

    nop

    const-class v5, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    nop

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-class v4, Ljava/lang/Object;

    nop

    nop

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    const-class v3, Ljava/io/ObjectStreamClass;

    nop

    nop

    nop

    nop

    const-class v4, Ljava/lang/Class;

    nop

    nop

    nop

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v5, Ltey;

    nop

    nop

    nop

    nop

    invoke-direct {v5, v3, v1}, Ltey;-><init>(Ljava/lang/reflect/Method;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_4

    nop

    nop

    :goto_6
    const/4 v2, 0x1

    nop

    :try_start_2
    const-string v3, "sun.misc.Unsafe"

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    const-string v4, "theUnsafe"

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    nop

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    const-string v5, "allocateInstance"

    nop

    nop

    nop

    nop

    const-class v6, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    nop

    nop

    nop

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    nop

    new-instance v5, Ltex;

    nop

    invoke-direct {v5, v3, v4}, Ltex;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    sput-object v5, Ltfb;->c:Ltfb;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_d
    invoke-direct {v5}, Ltfa;-><init>()V

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x8

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :catch_2
    goto/32 :goto_11

    nop

    nop

    :goto_11
    new-instance v5, Ltfa;

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

    :goto_12
    const-string v0, "newInstance"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static b(Ljava/lang/Class;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    new-instance v0, Ljava/lang/AssertionError;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    :goto_5
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "UnsafeAllocator is used for non-instantiable type: "

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Lteh;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

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
    const v1, 0x2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

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

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a(Ljava/lang/Class;)Ljava/lang/Object;
.end method
