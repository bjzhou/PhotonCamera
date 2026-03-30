.class public final Ltmu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ltmt;

.field public static final b:Z

.field public static final c:Z

.field static final d:J

.field public static final e:J

.field static final f:Z

.field private static final g:Lsun/misc/Unsafe;

.field private static final h:Ljava/lang/Class;

.field private static final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ltmu;->y(Ljava/lang/Class;)I

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Ltmu;->A(Ljava/lang/Class;)V

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_2
    sput-boolean v2, Ltmu;->f:Z

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_63

    nop

    nop

    :goto_5
    sget-object v1, Ltmu;->a:Ltmt;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v3, Ltmr;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Ltmu;->y(Ljava/lang/Class;)I

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v3, Ltmu;->a:Ltmt;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_c
    sput-boolean v3, Ltmu;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_d
    goto :goto_b

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    invoke-direct {v3, v0}, Ltmr;-><init>(Lsun/misc/Unsafe;)V

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_11
    move v0, v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    const-class v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_13
    invoke-static {v0}, Ltmu;->j(Ljava/lang/Throwable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0}, Ltmu;->y(Ljava/lang/Class;)I

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sput-object v1, Ltmu;->h:Ljava/lang/Class;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_18
    goto :goto_f

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move v0, v4

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-class v0, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    const-class v0, [D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v1}, Ltmu;->t(Ljava/lang/Class;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_21
    move v2, v4

    nop

    :goto_22
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_23
    move v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0}, Ltmu;->y(Ljava/lang/Class;)I

    move-result v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-class v1, Llibcore/io/Memory;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_28
    invoke-static {v0}, Ltmu;->A(Ljava/lang/Class;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_29
    sput-boolean v0, Ltmu;->c:Z

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-class v0, [Ljava/lang/Object;

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

    :goto_2b
    int-to-long v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_1
    :goto_2d
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2f
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_30
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sput-object v0, Ltmu;->g:Lsun/misc/Unsafe;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_32
    invoke-static {v2}, Ltmu;->t(Ljava/lang/Class;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_33
    new-instance v3, Ltms;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v0}, Ltmu;->A(Ljava/lang/Class;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {}, Ltmu;->h()Ljava/lang/reflect/Field;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_b

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v3, v3, Ltmt;->a:Lsun/misc/Unsafe;

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    const-class v5, Ljava/lang/reflect/Field;

    nop

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    nop

    invoke-virtual {v3, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "arrayBaseOffset"

    nop

    nop

    nop

    const-class v5, Ljava/lang/Class;

    nop

    nop

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v3, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "arrayIndexScale"

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

    nop

    invoke-virtual {v3, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "getInt"

    nop

    nop

    const-class v5, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    nop

    nop

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v3, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putInt"

    nop

    const-class v5, Ljava/lang/Object;

    nop

    nop

    nop

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    nop

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    filled-new-array {v5, v6, v7}, [Ljava/lang/Class;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-class v1, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v1, v5}, [Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putLong"

    nop

    nop

    nop

    const-class v1, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v1, v5, v6}, [Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    nop

    nop

    sget-object v0, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->BAOnhIHDbxdL:Ljava/lang/String;

    nop

    nop

    const-class v1, Ljava/lang/Object;

    nop

    nop

    nop

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    filled-new-array {v1, v5}, [Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putObject"

    nop

    nop

    const-class v1, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    const-class v6, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v1, v5, v6}, [Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v0}, Ltmu;->A(Ljava/lang/Class;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_62

    nop

    nop

    :catchall_1
    move-exception v3

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_3c
    sput-wide v0, Ltmu;->d:J

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-class v0, [J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sput-boolean v1, Ltmu;->i:Z

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

    :goto_3f
    const-class v0, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_40
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_41
    const-class v0, [Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_42
    const v0, 0x2

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v3}, Ltmu;->j(Ljava/lang/Throwable;)V

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_44
    iget-object v3, v3, Ltmt;->a:Lsun/misc/Unsafe;

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    const-class v5, Ljava/lang/reflect/Field;

    nop

    nop

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v3, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-class v5, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    nop

    nop

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v3, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Ltmu;->h()Ljava/lang/reflect/Field;

    move-result-object v3

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_45
    const-string v1, "objectFieldOffset"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_2d

    nop

    nop

    :goto_47
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_48
    sput-wide v5, Ltmu;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v0}, Ltmu;->y(Ljava/lang/Class;)I

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_4a
    invoke-static {v0}, Ltmu;->y(Ljava/lang/Class;)I

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v0}, Ltmu;->y(Ljava/lang/Class;)I

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_22

    nop

    nop

    :goto_4d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v0}, Ltmu;->A(Ljava/lang/Class;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v0, :cond_3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_50
    return-void

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_1e

    nop

    nop

    :goto_52
    const-class v0, [I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_19

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

    :goto_54
    if-nez v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move v3, v4

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

    :goto_56
    if-eqz v3, :cond_6

    nop

    goto/32 :goto_38

    nop

    :cond_6
    :goto_57
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_58
    const-string v0, "getLong"

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_59
    if-eqz v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_5a
    invoke-direct {v3, v0}, Ltms;-><init>(Lsun/misc/Unsafe;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5b
    const v1, 0x1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_5c
    sget-object v3, Ltmu;->a:Ltmt;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const-wide/16 v5, -0x1

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

    :goto_5e
    if-eq v0, v1, :cond_8

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_5f
    const/4 v4, 0x0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_60
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_61
    goto/16 :goto_2d

    nop

    nop

    :goto_62
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v1, v1, Ltmt;->a:Lsun/misc/Unsafe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_64
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_9
    goto/32 :goto_65

    nop

    :goto_65
    goto/32 :goto_51

    nop

    :goto_66
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-static {}, Ltmu;->i()Lsun/misc/Unsafe;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {v0}, Ltmu;->A(Ljava/lang/Class;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_53

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

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

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method private static A(Ljava/lang/Class;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    sget-boolean v0, Ltmu;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Ltmt;->a:Lsun/misc/Unsafe;

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

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

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

    :goto_6
    sget-object v0, Ltmu;->a:Ltmt;

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
.end method

.method static a(J)B
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Ltmu;->a:Ltmt;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0, p1}, Ltmt;->a(J)B

    move-result p0

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

    :goto_2
    return p0

    nop

    nop
.end method

.method static b(Ljava/lang/Object;J)D
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    sget-object v0, Ltmu;->a:Ltmt;

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
    invoke-virtual {v0, p0, p1, p2}, Ltmt;->b(Ljava/lang/Object;J)D

    move-result-wide p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-wide p0

    nop
.end method

.method static c(Ljava/lang/Object;J)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0, p1, p2}, Ltmt;->c(Ljava/lang/Object;J)F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    sget-object v0, Ltmu;->a:Ltmt;

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

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method static d(Ljava/lang/Object;J)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    sget-object v0, Ltmu;->a:Ltmt;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0, p1, p2}, Ltmt;->j(Ljava/lang/Object;J)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method static e(Ljava/lang/Object;J)J
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0, p1, p2}, Ltmt;->k(Ljava/lang/Object;J)J

    move-result-wide p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-wide p0

    nop

    nop

    nop

    :goto_2
    sget-object v0, Ltmu;->a:Ltmt;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method static f(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object v0, Ltmu;->g:Lsun/misc/Unsafe;

    nop

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    nop
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    throw v0

    nop

    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
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

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static g(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Ltmt;->a:Lsun/misc/Unsafe;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Ltmu;->a:Ltmt;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static h()Ljava/lang/reflect/Field;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v1, v2, :cond_0

    nop

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

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_11

    nop

    :goto_d
    invoke-static {v0, v1}, Ltmu;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

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

    :goto_10
    const-class v0, Ljava/nio/Buffer;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-class v0, Ljava/nio/Buffer;

    nop

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

    nop

    :goto_14
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "address"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    sget-object v1, Landroidx/viewpager2/widget/jY/lIiWb;->NgejTIE:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    invoke-static {v0, v1}, Ltmu;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method static i()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Ltmq;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ltmq;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lsun/misc/Unsafe;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static j(Ljava/lang/Throwable;)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v3, Lcom/google/vr/ndk/base/qbMr/qVSTXuYNqkCvm;->NHL:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    const-class v0, Ltmu;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    goto/32 :goto_11

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_7
    const v1, 0x1e

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    const v0, 0x1e

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

    :goto_9
    return-void

    nop

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

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    const-string v2, "com.google.protobuf.UnsafeUtil"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

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

    :goto_14
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method static k(Ljava/lang/Object;JZ)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Ltmu;->a:Ltmt;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {v0, p0, p1, p2, p3}, Ltmt;->d(Ljava/lang/Object;JZ)V

    goto/32 :goto_1

    nop

    nop
.end method

.method static l([BJB)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    :goto_0
    sget-wide v1, Ltmu;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x13

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Ltmu;->a:Ltmt;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0, v1, v2, p3}, Ltmt;->e(Ljava/lang/Object;JB)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    const v0, 0x5

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    add-long/2addr v1, p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public static m(Ljava/lang/Object;JB)V
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    and-int/2addr p3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Ltmu;->d(Ljava/lang/Object;J)I

    move-result v3

    nop

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

    :goto_2
    shl-int/2addr p3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    shl-int/lit8 v0, v0, 0x3

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    const-wide/16 v3, -0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    long-to-int v0, p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    or-int/2addr p3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    :goto_c
    not-int v2, v2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    and-long/2addr p1, v3

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

    :goto_e
    and-int/lit8 v0, v0, 0x3

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

    :goto_f
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    shl-int v2, v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    const/16 v1, 0xff

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    invoke-static {p0, p1, p2, p3}, Ltmu;->q(Ljava/lang/Object;JI)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    not-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_15
    and-int/2addr v2, v3

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

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop
.end method

.method public static n(Ljava/lang/Object;JB)V
    .locals 5

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    not-int v2, v2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    const/16 v1, 0xff

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1, p2}, Ltmu;->d(Ljava/lang/Object;J)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    shl-int/lit8 v0, v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    and-int/lit8 v0, v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    shl-int/2addr p3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

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
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    and-int/2addr p3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    and-long/2addr p1, v3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    long-to-int v0, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_11
    or-int/2addr p3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    const-wide/16 v3, -0x4

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

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    shl-int v2, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    invoke-static {p0, p1, p2, p3}, Ltmu;->q(Ljava/lang/Object;JI)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    and-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method static o(Ljava/lang/Object;JD)V
    .locals 6

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    move-wide v4, p3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    move-wide v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-virtual/range {v0 .. v5}, Ltmt;->f(Ljava/lang/Object;JD)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Ltmu;->a:Ltmt;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xd

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method static p(Ljava/lang/Object;JF)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Ltmu;->a:Ltmt;

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
    invoke-virtual {v0, p0, p1, p2, p3}, Ltmt;->g(Ljava/lang/Object;JF)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method static q(Ljava/lang/Object;JI)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    sget-object v0, Ltmu;->a:Ltmt;

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

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0, p1, p2, p3}, Ltmt;->l(Ljava/lang/Object;JI)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method static r(Ljava/lang/Object;JJ)V
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    move-wide v4, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    move-wide v2, p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_5

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
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual/range {v0 .. v5}, Ltmt;->m(Ljava/lang/Object;JJ)V

    goto/32 :goto_8

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_d
    const v0, 0x11

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

    :goto_e
    sget-object v0, Ltmu;->a:Ltmt;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public static s(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    sget-object v0, Ltmu;->a:Ltmt;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Ltmt;->a:Lsun/misc/Unsafe;

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
.end method

.method static t(Ljava/lang/Class;)Z
    .locals 5

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    :goto_1
    const-class v0, [B

    nop

    nop

    :try_start_0
    sget-object v1, Ltmu;->h:Ljava/lang/Class;

    nop

    const-string v2, "peekLong"

    nop

    nop

    nop

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    filled-new-array {p0, v3}, [Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeLong"

    nop

    nop

    nop

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    nop

    nop

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    nop

    nop

    filled-new-array {p0, v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeInt"

    nop

    nop

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    filled-new-array {p0, v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekInt"

    nop

    nop

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    filled-new-array {p0, v3}, [Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeByte"

    nop

    nop

    nop

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    filled-new-array {p0, v3}, [Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekByte"

    nop

    nop

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeByteArray"

    nop

    nop

    nop

    nop

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {p0, v0, v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekByteArray"

    nop

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    filled-new-array {p0, v0, v3, v4}, [Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7

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

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    return p0

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1e

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
.end method

.method static u(Ljava/lang/Object;J)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    sget-object v0, Ltmu;->a:Ltmt;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0, p1, p2}, Ltmt;->h(Ljava/lang/Object;J)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop
.end method

.method public static v(Ljava/lang/Object;J)Z
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x9

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/16 v2, -0x4

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

    :goto_5
    shl-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    const-wide/16 v2, 0x3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    int-to-byte p0, p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    and-long/2addr p1, v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_e
    not-long v0, p1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    long-to-int p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_10
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

    :goto_11
    const/4 v2, 0x3

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

    :goto_12
    and-int/lit16 p0, p0, 0xff

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

    :goto_13
    invoke-static {p0, p1, p2}, Ltmu;->d(Ljava/lang/Object;J)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    :goto_16
    and-long/2addr v0, v2

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

    :goto_17
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    const v1, 0x15

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    ushr-int/2addr p0, p1

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

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop
.end method

.method public static w(Ljava/lang/Object;J)Z
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    long-to-int p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    int-to-byte p0, p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    :goto_3
    const/4 p0, 0x1

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

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

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

    :goto_9
    shl-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    and-long/2addr v0, p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    and-long/2addr p1, v2

    nop

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

    nop

    :goto_f
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_11
    const-wide/16 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    const v0, 0x10

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

    :goto_16
    ushr-int/2addr p0, p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    const-wide/16 v2, -0x4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0, p1, p2}, Ltmu;->d(Ljava/lang/Object;J)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    and-int/lit16 p0, p0, 0xff

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
.end method

.method static x(J[BJ)V
    .locals 6

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1d

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Ltmu;->a:Ltmt;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    move-object v3, p2

    nop

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

    :goto_6
    invoke-virtual/range {v0 .. v5}, Ltmt;->i(J[BJ)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-wide v1, p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

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

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-wide v4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop
.end method

.method private static y(Ljava/lang/Class;)I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

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

    :goto_1
    iget-object v0, v0, Ltmt;->a:Lsun/misc/Unsafe;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    sget-boolean v0, Ltmu;->c:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    sget-object v0, Ltmu;->a:Ltmt;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    const/4 p0, -0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

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

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop
.end method

.method private static z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

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

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_1

    nop

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop
.end method
