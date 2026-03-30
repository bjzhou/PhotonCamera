.class public final Lcom/android/app/Application$2;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsun/misc/Unsafe;

.field private static final b:J

.field private static final c:J

.field private static final d:J

.field private static final e:J

.field private static final f:J

.field private static final g:J

.field private static final h:J

.field private static final i:J

.field private static final j:J

.field private static final k:J

.field private static final l:J

.field private static final m:J

.field private static final n:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    goto/32 :goto_11

    nop

    nop

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    sput-object v0, Lcom/android/app/Application$2;->n:Ljava/util/Set;

    nop

    nop

    nop

    :try_start_0
    const-class v0, Lsun/misc/Unsafe;

    nop

    nop

    const-string v1, "getUnsafe"

    nop

    const/4 v2, 0x0

    nop

    new-array v3, v2, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    new-array v3, v2, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lsun/misc/Unsafe;

    nop

    nop

    sput-object v0, Lcom/android/app/Application$2;->a:Lsun/misc/Unsafe;

    nop

    nop

    nop

    nop

    nop

    const-class v1, Lcom/android/app/Application$8;

    nop

    nop

    nop

    const-string v3, "artMethod"

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    sput-wide v3, Lcom/android/app/Application$2;->b:J

    nop

    const-class v1, Lcom/android/app/Application$8;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "declaringClass"

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    nop

    nop

    sput-wide v3, Lcom/android/app/Application$2;->c:J

    nop

    nop

    nop

    const-class v1, Lcom/android/app/Application$5;

    nop

    nop

    nop

    const-string v3, "artFieldOrMethod"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    nop

    nop

    sput-wide v3, Lcom/android/app/Application$2;->d:J

    nop

    nop

    nop

    nop

    const-class v1, Lcom/android/app/Application$4;

    nop

    const-string v5, "info"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    nop

    nop

    nop

    sput-wide v5, Lcom/android/app/Application$2;->e:J

    nop

    nop

    const-class v1, Lcom/android/app/Application$9;

    nop

    nop

    nop

    nop

    nop

    const-string v5, "methods"

    nop

    nop

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    nop

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    nop

    nop

    nop

    sput-wide v5, Lcom/android/app/Application$2;->f:J

    nop

    nop

    nop

    nop

    nop

    const-class v1, Lcom/android/app/Application$9;

    nop

    nop

    nop

    nop

    nop

    const-string v7, "iFields"

    nop

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    nop

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    nop

    nop

    nop

    nop

    sput-wide v7, Lcom/android/app/Application$2;->g:J

    nop

    const-class v1, Lcom/android/app/Application$9;

    nop

    const-string v9, "sFields"

    nop

    invoke-virtual {v1, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    nop

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    nop

    sput-wide v9, Lcom/android/app/Application$2;->h:J

    nop

    nop

    const-class v1, Lcom/android/app/Application$7;

    nop

    const-string v9, "member"

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    nop

    nop

    nop

    sput-wide v9, Lcom/android/app/Application$2;->i:J

    nop

    nop

    nop

    nop

    const-class v1, Lcom/android/app/Application$3;

    nop

    nop

    const-string v9, "a"

    nop

    nop

    new-array v10, v2, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    nop

    nop

    nop

    const-class v9, Lcom/android/app/Application$3;

    nop

    nop

    nop

    nop

    const-string v10, "b"

    nop

    nop

    nop

    nop

    new-array v2, v2, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v10, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    nop

    nop

    const/4 v9, 0x1

    nop

    nop

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v10

    nop

    nop

    nop

    invoke-virtual {v10, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    nop

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v10

    nop

    nop

    nop

    invoke-virtual {v10, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v0, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    const-class v12, Lcom/android/app/Application$3;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v12, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    nop

    nop

    sub-long/2addr v1, v10

    nop

    nop

    nop

    nop

    nop

    sput-wide v1, Lcom/android/app/Application$2;->j:J

    nop

    nop

    sub-long/2addr v10, v5

    nop

    nop

    nop

    sub-long/2addr v10, v1

    nop

    nop

    nop

    sput-wide v10, Lcom/android/app/Application$2;->k:J

    nop

    const-class v1, Lcom/android/app/Application$3;

    nop

    nop

    const-string v2, "i"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    nop

    nop

    nop

    nop

    const-class v2, Lcom/android/app/Application$3;

    nop

    const-string v5, "j"

    nop

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v5

    nop

    invoke-virtual {v5, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    nop

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v5

    nop

    invoke-virtual {v5, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    nop

    invoke-virtual {v0, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    nop

    nop

    invoke-virtual {v0, v2, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    nop

    const-class v3, Lcom/android/app/Application$3;

    nop

    nop

    nop

    invoke-virtual {v0, v3, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    nop

    nop

    sub-long/2addr v1, v5

    nop

    nop

    sput-wide v1, Lcom/android/app/Application$2;->l:J

    nop

    nop

    nop

    nop

    sub-long/2addr v5, v3

    nop

    nop

    sput-wide v5, Lcom/android/app/Application$2;->m:J

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    const-string v2, "Initialize error"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

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

    :goto_8
    throw v1

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_b
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    const-string v1, "HiddenApiBypass"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1a

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method static a([Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_0
    aget-object v1, p0, v0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1
    if-eq v1, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aget-object v1, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_4
    if-ne v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_1
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_6
    return v2

    nop

    nop

    :goto_7
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    :goto_9
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_60

    nop

    nop

    :goto_b
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_2
    goto/32 :goto_4c

    nop

    nop

    :goto_c
    return v2

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return v2

    nop

    nop

    :goto_f
    goto/32 :goto_51

    nop

    nop

    :goto_10
    aget-object v1, p0, v0

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return v2

    nop

    :goto_12
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_13
    return p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    aget-object v1, p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    instance-of v1, v1, Ljava/lang/Short;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_17
    aget-object v1, p1, v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v1, :cond_3

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    instance-of v1, v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eq v1, v3, :cond_5

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lt v0, v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_1f
    aget-object v3, p1, v0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    aget-object v1, p1, v0

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

    :goto_21
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    instance-of v1, v1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_23
    if-eq v1, v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :cond_7
    goto/32 :goto_2a

    nop

    nop

    :goto_24
    if-eq v1, v3, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_8
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_25
    const/4 p0, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_26
    instance-of v1, v1, Ljava/lang/Byte;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_27
    instance-of v1, v1, Ljava/lang/Double;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_28
    if-eqz v1, :cond_9

    nop

    goto/32 :goto_f

    nop

    :cond_9
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_29
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2a
    aget-object v1, p1, v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    aget-object v1, p0, v0

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

    :goto_2c
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    array-length v1, p1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_31
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_32
    aget-object v1, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_9

    nop

    nop

    :goto_34
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_35
    if-lez v0, :cond_a

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_5f

    nop

    :goto_36
    if-eq v1, v3, :cond_b

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_b
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v2, 0x0

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

    :goto_39
    return v2

    nop

    :goto_3a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v1, 0x4

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

    :goto_3d
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3e
    aget-object v1, p1, v0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    array-length v1, p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_41
    if-eqz v1, :cond_d

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_d
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-eq v1, v3, :cond_e

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_43
    if-eq v1, v3, :cond_f

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_44
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_46
    if-eqz v1, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    aget-object v1, p0, v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    instance-of v1, v1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_49
    if-eqz v1, :cond_11

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    aget-object v1, p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_4b
    instance-of v1, v1, Ljava/lang/Character;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4c
    return v2

    nop

    :goto_4d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    aget-object v1, p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4f
    aget-object v1, p0, v0

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_50
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_51
    aget-object v1, p0, v0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_52
    if-eqz v1, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    :cond_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-eq v1, v3, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_13
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_55
    aget-object v1, p0, v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_56
    aget-object v1, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_57
    array-length v0, p0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_58
    instance-of v1, v1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_59
    if-eqz v1, :cond_14

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    return v2

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    aget-object v1, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_5f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-nez v1, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_62
    aget-object v1, p1, v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop
.end method

.method public static varargs addHiddenApiExemptions([Ljava/lang/String;)Z
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lcom/android/app/Application$2;->setHiddenApiExemptions([Ljava/lang/String;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Ljava/util/HashSet;

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

    :goto_4
    sget-object v0, Lcom/android/app/Application$2;->n:Ljava/util/Set;

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

    :goto_5
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :goto_7
    new-array p0, p0, [Ljava/lang/String;

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

    :goto_8
    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public static clearHiddenApiExemptions()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lcom/android/app/Application$2;->n:Ljava/util/Set;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Ljava/util/HashSet;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Lcom/android/app/Application$2;->setHiddenApiExemptions([Ljava/lang/String;)Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    new-array v0, v0, [Ljava/lang/String;

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public static varargs getDeclaredConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 5

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Ljava/lang/reflect/Executable;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    aget-object v3, p1, v2

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

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    if-lt v2, v3, :cond_1

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_3

    nop

    nop

    :goto_a
    goto/32 :goto_11

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

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne v2, v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_d
    goto :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xe

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Lcom/android/app/Application$2;->getDeclaredMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_12
    return-object v0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    :goto_16
    array-length v3, p1

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

    nop

    nop

    :goto_17
    goto :goto_15

    nop

    nop

    :goto_18
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_3
    goto/32 :goto_23

    nop

    :goto_1a
    new-instance p0, Ljava/lang/NoSuchMethodException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    const-string p1, "Cannot find matching constructor"

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1c
    throw p0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Ljava/lang/reflect/Constructor;

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

    :goto_1f
    array-length v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_20
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_25
    aget-object v4, v1, v2

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

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-ne v3, v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0xe

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    array-length v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_14

    nop

    nop
.end method

.method public static varargs getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5

    goto/32 :goto_e

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    array-length v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    const-string p1, "Cannot find matching method"

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_3

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lt v2, v3, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    array-length v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    aget-object v4, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/lang/reflect/Executable;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p0, Ljava/lang/NoSuchMethodException;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x3

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v2, v2, 0x1

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

    :goto_14
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-ne v2, v3, :cond_4

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_18
    invoke-static {p0}, Lcom/android/app/Application$2;->getDeclaredMethods(Ljava/lang/Class;)Ljava/util/List;

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

    :goto_19
    check-cast v0, Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1a
    if-ne v3, v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    nop

    nop

    :goto_1c
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    instance-of v1, v0, Ljava/lang/reflect/Method;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1f
    return-object v0

    nop

    :goto_20
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_3

    nop

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
    goto/32 :goto_2c

    nop

    nop

    :goto_24
    throw p0

    nop

    nop

    :goto_25
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v2, 0x0

    nop

    :goto_28
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Ljava/lang/reflect/Executable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

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

    :goto_2b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    aget-object v3, p2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_6

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
    goto/32 :goto_2b

    nop

    :goto_2f
    goto/16 :goto_3

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

    :goto_31
    array-length v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop
.end method

.method public static getDeclaredMethods(Ljava/lang/Class;)Ljava/util/List;
    .locals 12

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

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

    :goto_1
    invoke-virtual {v2, v4, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

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

    :goto_2
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    int-to-long v4, v3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    const/4 v6, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_6
    sget-wide v4, Lcom/android/app/Application$2;->e:J

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    cmp-long p0, v10, v4

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    :goto_b
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_d
    move-object v5, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    goto/16 :goto_31

    nop

    :goto_f
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-wide v4, Lcom/android/app/Application$2;->f:J

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->revealDirect(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    move-object v4, v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/32 :goto_6

    nop

    nop

    :goto_15
    goto :goto_16

    nop

    nop

    nop

    :catchall_0
    move-exception v2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    return-object v0

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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

    :goto_1b
    if-eqz p0, :cond_1

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_19

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    sget-wide v6, Lcom/android/app/Application$2;->j:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1f
    add-long/2addr v4, v10

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

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_21
    sget-wide v6, Lcom/android/app/Application$2;->k:J

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_22
    sget-wide v4, Lcom/android/app/Application$2;->e:J

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_23
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto :goto_25

    nop

    :catch_0
    move-exception p0

    nop

    nop

    :goto_25
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2, p0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_27
    sget-wide v5, Lcom/android/app/Application$2;->i:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_29
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2a
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2b
    return-object v0

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2d
    sget-object v2, Lcom/android/app/Application$2;->a:Lsun/misc/Unsafe;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2e
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    :goto_2f
    sget-wide v6, Lcom/android/app/Application$2;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v2, v10, v11}, Lsun/misc/Unsafe;->getInt(J)I

    move-result p0

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v2, Lcom/android/app/Application$2;->a:Lsun/misc/Unsafe;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-lt v3, p0, :cond_4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_25

    nop

    nop

    :goto_35
    :try_start_1
    const-class v1, Lcom/android/app/Application$3;

    nop

    nop

    nop

    const-string v2, "a"

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    new-array v4, v3, [Ljava/lang/Class;

    nop

    nop

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_36
    mul-long v4, v4, v6

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_37
    check-cast v4, Ljava/lang/invoke/MethodHandleInfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_38
    sget-object v2, Lcom/android/app/Application$2;->a:Lsun/misc/Unsafe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-long v8, v4, v6

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

    :goto_3a
    check-cast v2, Ljava/lang/reflect/Executable;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop
.end method

.method public static getInstanceFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 12

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v3, v11

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
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    sget-wide v5, Lcom/android/app/Application$2;->l:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_5
    sget-object v2, Lcom/android/app/Application$2;->a:Lsun/misc/Unsafe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_6
    sget-wide v5, Lcom/android/app/Application$2;->i:J

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    goto :goto_8

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_27

    nop

    nop

    :goto_9
    sget-wide v3, Lcom/android/app/Application$2;->e:J

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_c
    sget-wide v5, Lcom/android/app/Application$2;->m:J

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-long/2addr v3, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    move-object v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_f
    if-lt v2, p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v11, v1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->revealDirect(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_11
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    :try_start_1
    const-class v1, Lcom/android/app/Application$3;

    nop

    const-string v2, "i"

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_1
    goto/32 :goto_3a

    nop

    :goto_14
    invoke-virtual {v3, v4, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2, v9, v10}, Lsun/misc/Unsafe;->getInt(J)I

    move-result p0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_17
    int-to-long v3, v2

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

    :goto_18
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_19
    cmp-long p0, v9, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-wide v4, Lcom/android/app/Application$2;->e:J

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, p0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1e
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v5, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v4, Ljava/lang/invoke/MethodHandleInfo;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v11, Lcom/android/app/Application$2;->a:Lsun/misc/Unsafe;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz p0, :cond_3

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_3
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_26
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_27
    return-object v0

    nop

    nop

    :goto_28
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-long v7, v3, v5

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

    :goto_2b
    mul-long v3, v3, v5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int/lit8 v2, v2, 0x1

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

    :goto_2d
    invoke-virtual {v3, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0x1

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

    :goto_2f
    if-nez v1, :cond_4

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v3, Lcom/android/app/Application$2;->a:Lsun/misc/Unsafe;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_33
    sget-wide v3, Lcom/android/app/Application$2;->g:J

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

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-wide v5, Lcom/android/app/Application$2;->d:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_36
    check-cast v3, Ljava/lang/reflect/Field;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_38
    return-object v0

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public static getStaticFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 12

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_0
    check-cast v4, Ljava/lang/invoke/MethodHandleInfo;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    mul-long v3, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3, v4, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5
    int-to-long v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    :try_start_0
    const-class v1, Lcom/android/app/Application$3;

    nop

    const-string v2, "s"

    nop

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    nop
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    invoke-virtual {v3, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2, p0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_d
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-long v7, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_10
    sget-wide v5, Lcom/android/app/Application$2;->d:J

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

    nop

    :goto_11
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

    nop

    nop

    nop

    :goto_12
    sget-wide v5, Lcom/android/app/Application$2;->l:J

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

    :goto_13
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_15
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    sget-wide v3, Lcom/android/app/Application$2;->e:J

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-long/2addr v3, v9

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_19
    goto :goto_1a

    nop

    :catch_1
    move-exception p0

    nop

    :goto_1a
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1b
    goto :goto_1c

    nop

    :catchall_0
    move-exception v3

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1f
    if-lt v2, p0, :cond_3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_29

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move-object v4, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_24
    check-cast v3, Ljava/lang/reflect/Field;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_25
    sget-wide v5, Lcom/android/app/Application$2;->i:J

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

    :goto_26
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_27
    if-eqz v1, :cond_4

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

    :cond_4
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_28
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_14

    nop

    nop

    :goto_2b
    invoke-virtual {v2, v9, v10}, Lsun/misc/Unsafe;->getInt(J)I

    move-result p0

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2c
    sget-object v3, Lcom/android/app/Application$2;->a:Lsun/misc/Unsafe;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2d
    move-object v3, v11

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

    :goto_2e
    sget-wide v4, Lcom/android/app/Application$2;->e:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2f
    sget-wide v3, Lcom/android/app/Application$2;->h:J

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

    :goto_30
    const v1, 0x1d

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

    :goto_31
    const v0, 0x18

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_32
    sget-object v11, Lcom/android/app/Application$2;->a:Lsun/misc/Unsafe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_33
    cmp-long p0, v9, v3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v11, v1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :try_start_1
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v3

    nop

    nop

    invoke-virtual {v3, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->revealDirect(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    :goto_36
    return-object v0

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_38
    return-object v0

    nop

    nop

    :goto_39
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    sget-wide v5, Lcom/android/app/Application$2;->m:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3b
    sget-object v2, Lcom/android/app/Application$2;->a:Lsun/misc/Unsafe;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop
.end method

.method public static varargs invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_0
    sget-object v2, Lcom/android/app/Application$2;->a:Lsun/misc/Unsafe;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-wide v8, Lcom/android/app/Application$2;->k:J

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

    :goto_2
    invoke-direct {v0, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v8, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-long v11, v6, v8

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2d

    nop

    nop

    :goto_a
    mul-long v6, v6, v8

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1d

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v7, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    cmp-long v8, v13, v6

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, p0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-class v4, Lcom/android/app/Application$6;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    invoke-static {v6, v1}, Lcom/android/app/Application$2;->a([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v6

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_12
    move-object v4, p0

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

    nop

    :goto_13
    goto/16 :goto_45

    nop

    nop

    :goto_14
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw v0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    throw v0

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v4, "Cannot find matching method"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v4, v6, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v6, "invoke"

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

    :goto_1c
    if-lt v5, v2, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_2c

    nop

    :goto_22
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_23
    move-object v8, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_25
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_4
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_26
    aput-object v4, v3, v5

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object/from16 v0, p1

    nop

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

    :goto_28
    add-int/lit8 v5, v5, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2a
    sget-wide v6, Lcom/android/app/Application$2;->f:J

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v0, Ljava/lang/NoSuchMethodException;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-object v0

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_30
    new-array v3, v2, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3a

    nop

    nop

    :goto_32
    sget-object v7, Lcom/android/app/Application$2;->a:Lsun/misc/Unsafe;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_33
    const-wide/16 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_34
    sget-wide v8, Lcom/android/app/Application$2;->j:J

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_35
    add-long/2addr v6, v13

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v6, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v6, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_38
    sget-wide v9, Lcom/android/app/Application$2;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_39
    int-to-long v6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3a
    throw v0

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3d
    const-class v4, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3e
    const v0, 0xe

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

    nop

    nop

    :goto_3f
    invoke-virtual/range {p0 .. p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_40
    goto :goto_3b

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_42
    move-object/from16 v1, p3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-instance v0, Ljava/lang/NoSuchMethodException;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v2, v13, v14}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v2

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_46
    const-string v1, "this object is not an instance of the given class"

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
.end method

.method public static varargs newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v7, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-long v15, v7, v9

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2
    if-nez v9, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_3
    sget-wide v9, Lcom/android/app/Application$2;->j:J

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    new-instance v0, Ljava/lang/NoSuchMethodException;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_8
    add-long/2addr v7, v13

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_9
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

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

    :goto_a
    invoke-virtual {v2, v13, v14}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v2

    nop

    nop

    :goto_b
    goto/32 :goto_3f

    nop

    nop

    :goto_c
    invoke-virtual {v2, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_10
    throw v0

    nop

    :goto_11
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_12
    const-string v8, "<init>"

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_13
    mul-long v7, v7, v9

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    move-object v8, v4

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_15
    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object/from16 v7, v19

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_18
    sget-wide v6, Lcom/android/app/Application$2;->f:J

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    const-class v6, Lcom/android/app/Application$6;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_1a
    sget-wide v9, Lcom/android/app/Application$2;->k:J

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

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v6, "invoke"

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_1d
    sget-wide v7, Lcom/android/app/Application$2;->c:J

    nop

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

    :goto_1e
    sget-object v2, Lcom/android/app/Application$2;->a:Lsun/misc/Unsafe;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    aput-object v6, v4, v5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_22
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_23
    const-class v4, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_25
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_28
    move-object/from16 v19, v11

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

    :goto_29
    new-array v3, v2, [Ljava/lang/Class;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v7, v1}, Lcom/android/app/Application$2;->a([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v7

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

    :goto_2b
    return-object v0

    nop

    nop

    :goto_2c
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2d
    if-nez v7, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2f
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_31
    const v1, 0x1f

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

    :goto_32
    const-string v6, "Cannot find matching constructor"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_33
    int-to-long v7, v5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    add-int/lit8 v5, v5, 0x1

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

    :goto_35
    move-wide/from16 v9, v17

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v9, v4, v7, v8, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_37
    new-array v4, v2, [Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v0, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    cmp-long v9, v13, v7

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object v7, v11

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v11, Lcom/android/app/Application$2;->a:Lsun/misc/Unsafe;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3c
    move-object/from16 v9, v19

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    aput-object v4, v3, v5

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    goto/32 :goto_1e

    nop

    nop

    :goto_3f
    if-lt v5, v2, :cond_4

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

    nop

    :cond_4
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const-class v4, Lcom/android/app/Application$6;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move-object v8, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v6, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_46
    sget-wide v17, Lcom/android/app/Application$2;->b:J

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v4, v6, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_48
    move-wide/from16 v9, v17

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_49
    move-wide v11, v15

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    new-instance v0, Ljava/lang/NoSuchMethodException;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const-class v6, [Ljava/lang/Object;

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

    :goto_4c
    move-wide v11, v15

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static varargs setHiddenApiExemptions([Ljava/lang/String;)Z
    .locals 6

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    return v4

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x12

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    const v0, 0x11

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    :goto_a
    const-string v2, "HiddenApiBypass"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "setHiddenApiExemptions"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :try_start_0
    const-class v2, Ldalvik/system/VMRuntime;

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    const-string v4, "getRuntime"

    nop

    nop

    nop

    nop

    new-array v5, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3, v4, v5}, Lcom/android/app/Application$2;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    const-class v3, Ldalvik/system/VMRuntime;

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    new-array v5, v4, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    aput-object p0, v5, v1

    nop

    invoke-static {v3, v2, v0, v5}, Lcom/android/app/Application$2;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
