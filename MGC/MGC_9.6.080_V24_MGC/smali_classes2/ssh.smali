.class Lssh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# direct methods
.method public constructor <init>()V
    .locals 0

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic run()Ljava/lang/Object;
    .locals 5

    goto/32 :goto_10

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    :goto_2
    const v1, 0x4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    aget-object v3, v0, v2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    check-cast p0, Lsun/misc/Unsafe;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p0, Ljava/lang/NoSuchFieldError;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    throw p0

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-class p0, Lsun/misc/Unsafe;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "the Unsafe"

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

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    :goto_10
    const v0, 0x15

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    array-length v1, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    :goto_13
    if-lt v2, v1, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    :goto_15
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0, v0}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    :goto_17
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_1e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_20
    if-nez v4, :cond_2

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop
.end method
