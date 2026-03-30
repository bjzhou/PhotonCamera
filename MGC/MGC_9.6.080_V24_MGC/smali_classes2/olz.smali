.class public final Lolz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/reflect/Method;

.field public static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    :try_start_0
    const-class v0, Landroid/os/WorkSource;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "isEmpty"

    nop

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    goto/32 :goto_9

    nop

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

    :catch_0
    move-exception v1

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

    :goto_3
    goto/16 :goto_c

    nop

    nop

    :catch_1
    move-exception v1

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

    :goto_4
    sput-object v1, Lolz;->a:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    :try_start_1
    const-class v1, Landroid/os/WorkSource;

    nop

    nop

    const-string v3, "get"

    nop

    nop

    nop

    nop

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    :try_start_2
    const-class v1, Landroid/os/WorkSource;

    nop

    const-string v3, "getName"

    nop

    nop

    nop

    nop

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    :try_start_3
    const-class v1, Landroid/os/WorkSource;

    nop

    const-string v3, "createWorkChain"

    nop

    nop

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v2, Lolz;->e:Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v1, v2

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "add"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    goto :goto_7

    nop

    nop

    :catch_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    :try_start_5
    const-string v1, "android.os.WorkSource$WorkChain"

    nop

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    const-string v3, "addNode"

    nop

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    const-class v5, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    nop

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xe

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

    :goto_e
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sput-object v1, Lolz;->d:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    const-class v1, Landroid/os/WorkSource;

    nop

    const-string v3, "size"

    nop

    nop

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    nop
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_13

    nop

    nop

    nop

    :catch_5
    goto/32 :goto_12

    nop

    nop

    :goto_11
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v3, v2

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_14
    const-string v3, "Missing WorkChain API createWorkChain"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_1f

    nop

    nop

    :catch_6
    goto/32 :goto_1e

    nop

    nop

    :goto_16
    move-object v0, v2

    nop

    nop

    nop

    :catch_7
    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    sput-object v0, Lolz;->b:Ljava/lang/reflect/Method;

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

    :goto_19
    invoke-static {}, Landroid/os/Process;->myUid()I

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :catch_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v2, 0x0

    nop

    nop

    :try_start_7
    const-class v3, Landroid/os/WorkSource;

    nop

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    :goto_22
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v3, "Missing WorkChain class"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_25
    sput-object v3, Lolz;->c:Ljava/lang/reflect/Method;

    nop

    nop

    :try_start_8
    const-class v3, Landroid/os/WorkSource;

    nop

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    const-class v5, Ljava/lang/String;

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

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_26
    const-string v0, "WorkSourceUtil"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/os/WorkSource;ILjava/lang/String;)V
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lolz;->d:Ljava/lang/reflect/Method;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "Unable to assign blame through WorkSource"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string p2, ""

    nop

    nop

    nop

    nop

    nop

    :goto_5
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    nop

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_7
    invoke-static {v2, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    goto/32 :goto_11

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    goto/32 :goto_14

    nop

    nop

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

    :goto_c
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
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

    :goto_10
    const-string v2, "WorkSourceUtil"

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_12

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p2, Lolz;->c:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    invoke-static {v2, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_d

    nop

    nop
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Z
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const v1, 0x16

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

    :goto_5
    return v1

    nop

    nop

    nop

    nop

    :goto_6
    :try_start_1
    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    nop

    nop

    nop

    invoke-static {p0, v2}, Ldtk;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    nop

    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    sput-object p0, Lolz;->e:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    :goto_d
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    monitor-enter v0

    nop

    nop

    :try_start_2
    sget-object v1, Lolz;->e:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_10
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    const-class v0, Lolz;

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method
