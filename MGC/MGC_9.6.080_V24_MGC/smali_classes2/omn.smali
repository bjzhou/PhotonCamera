.class public final Lomn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Ljava/lang/Boolean; = null

.field public static b:I = -0x1

.field public static final c:Ljava/lang/ThreadLocal;

.field public static final d:Ljava/lang/ThreadLocal;

.field public static final e:Loml;

.field public static f:Lomp;

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static i:Ljava/lang/Boolean;

.field private static k:Lomo;


# instance fields
.field private final j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lomn;->e:Loml;

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

    :goto_1
    invoke-direct {v0}, Lomh;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lomi;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lomn;->d:Ljava/lang/ThreadLocal;

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

    :goto_6
    sput-object v0, Lomn;->c:Ljava/lang/ThreadLocal;

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

    :goto_7
    new-instance v0, Lomh;

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

    :goto_8
    invoke-direct {v0}, Lomi;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lomn;->j:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "DynamiteModule"

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

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

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lomn;->i:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    return v1

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    const-string p0, "com.google.android.gms"

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

    :goto_a
    sput-boolean v1, Lomn;->h:Z

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_38

    nop

    nop

    :goto_f
    goto/32 :goto_1f

    nop

    nop

    :goto_10
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_11
    return v2

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "Invalid GmsCore APK, remote loading disabled."

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_3
    goto/32 :goto_37

    nop

    nop

    :goto_16
    const v4, 0x989680

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_17
    const/high16 v4, 0x10000000

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_18
    sget-object v3, Loge;->d:Loge;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1c
    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v2, Lomn;->i:Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_12

    nop

    nop

    :goto_1f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0xb

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

    :goto_21
    return v1

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v3, p0, v4}, Loge;->f(Landroid/content/Context;I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_25
    if-eqz p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_4
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_27
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    :goto_28
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2

    nop

    nop

    :goto_2a
    if-nez v0, :cond_6

    nop

    goto/32 :goto_8

    nop

    :cond_6
    goto/32 :goto_7

    nop

    nop

    :goto_2b
    and-int/lit16 p0, p0, 0x81

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

    :goto_2c
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2f
    if-nez v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v0, :cond_8

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

    :cond_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v0, :cond_9

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_21

    nop

    nop

    :goto_32
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sput-object p0, Lomn;->i:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_34
    if-nez p0, :cond_a

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_35
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_36
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_37
    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string v3, "com.google.android.gms.chimera"

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method public static b(Landroid/content/Context;Z)I
    .locals 9

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    return v5

    nop

    nop

    nop

    :catch_0
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    nop

    nop

    nop

    :goto_3
    monitor-exit v4

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    monitor-exit v4

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw v1

    nop
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :catch_1
    move-exception v1

    nop

    nop

    nop

    :try_start_2
    const-string v4, "DynamiteModule"

    nop

    const-string v5, "Failed to load module via V2: "

    nop

    nop

    nop

    invoke-static {v1, v5}, Lmf;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v1, Lomn;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit v0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_8
    :try_start_4
    const-string v0, "DynamiteModule"

    nop

    nop

    nop

    const-string v1, "Failed to retrieve remote module version."

    nop

    nop

    nop

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_1
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    :catch_2
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_6
    const-string v0, "DynamiteModule"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lomk;->getMessage()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to retrieve remote module version: "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    nop

    nop

    :goto_b
    invoke-static {p0}, Lomn;->d(Landroid/content/Context;)Lomo;

    move-result-object v0

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/32 :goto_23

    nop

    nop

    :goto_c
    const/4 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_e
    :try_start_7
    const-class v0, Lomn;

    nop

    nop

    nop

    nop

    monitor-enter v0

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    sget-object v1, Lomn;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    nop

    if-nez v0, :cond_3

    nop

    goto/16 :goto_8

    nop

    nop

    :cond_3
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-lez v0, :cond_17

    nop

    nop

    invoke-static {p1}, Lomn;->f(Landroid/database/Cursor;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xb

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v5, :cond_4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_4
    :try_start_a
    invoke-static {v5}, Lomn;->e(Ljava/lang/ClassLoader;)V
    :try_end_a
    .catch Lomk; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_3
    :try_start_b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    nop

    nop

    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0}, Lomn;->a(Landroid/content/Context;)Z

    move-result v5

    nop

    nop

    if-nez v5, :cond_c

    nop

    nop

    nop

    monitor-exit v4

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object v2, p1

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

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

    :goto_18
    if-nez v2, :cond_5

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

    :cond_5
    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_19
    return v3

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    goto/16 :goto_27

    nop

    nop

    nop

    :goto_1a
    if-eqz v2, :cond_6

    nop

    nop

    nop

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    :try_start_e
    monitor-exit v0

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw p1

    nop

    nop

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_3
    move-exception p1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return v5

    nop

    nop

    nop

    :cond_7
    :goto_1c
    :try_start_10
    monitor-exit v4

    nop

    nop

    nop

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    monitor-exit v0

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v1, :cond_8

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :try_start_12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    nop

    const-class v4, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    const-string v4, "sClassLoader"

    nop

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    nop

    nop

    monitor-enter v4

    nop

    nop

    nop

    nop

    nop
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Ljava/lang/ClassLoader;

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    nop

    nop

    if-ne v5, v6, :cond_18

    nop

    nop

    nop

    nop

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    nop

    nop

    nop
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_19

    nop

    :goto_1f
    :try_start_14
    invoke-virtual {v0}, Lomo;->e()I

    move-result v1

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    if-lt v1, v4, :cond_11

    nop

    nop

    sget-object v1, Lomn;->c:Ljava/lang/ThreadLocal;

    nop

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lscn;

    nop

    nop

    nop

    if-eqz v1, :cond_9

    nop

    nop

    iget-object v1, v1, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_9

    nop

    nop

    nop

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_19

    nop

    nop

    nop

    :cond_9
    new-instance v1, Lomd;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0}, Lomd;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lomn;->d:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    nop

    invoke-virtual {v0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v6

    nop

    nop

    invoke-static {v6, v1}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const-string v1, "com.google.android.gms.googlecertificates"

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x7

    nop

    nop

    nop

    invoke-virtual {v0, p1, v6}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_a

    nop

    nop

    nop

    move-object v1, v2

    nop

    nop

    nop

    nop

    goto :goto_20

    nop

    nop

    :cond_a
    const-string v1, "com.google.android.gms.dynamic.IObjectWrapper"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    instance-of v4, v1, Lome;

    nop

    nop

    if-eqz v4, :cond_b

    nop

    nop

    nop

    nop

    check-cast v1, Lome;

    nop

    nop

    nop

    nop

    nop

    goto :goto_20

    nop

    nop

    nop

    nop

    :cond_b
    new-instance v1, Lomc;

    nop

    invoke-direct {v1, v0}, Lomc;-><init>(Landroid/os/IBinder;)V

    :goto_20
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    invoke-static {v1}, Lomd;->b(Lome;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Landroid/database/Cursor;

    nop

    nop

    nop

    nop

    nop
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_21
    const/4 v3, 0x0

    nop

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

    :goto_22
    return v3

    nop

    nop

    nop

    :cond_c
    :try_start_15
    sget-boolean v5, Lomn;->h:Z

    nop

    nop

    nop

    nop

    if-nez v5, :cond_0

    nop

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v5, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v0, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    throw p1

    nop

    nop

    :goto_25
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_19

    nop

    nop

    :goto_27
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2a
    if-nez v5, :cond_f

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_f
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_d

    nop

    :goto_2c
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :catch_4
    move-exception p1

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

    nop

    nop

    :goto_2d
    goto/16 :goto_32

    nop

    nop

    :cond_11
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2e
    const/4 v5, 0x1

    nop

    nop

    :try_start_16
    invoke-static {p0, p1, v5}, Lomn;->g(Landroid/content/Context;ZZ)I

    move-result v5

    nop

    nop

    nop

    nop

    sget-object v6, Lomn;->g:Ljava/lang/String;

    nop

    if-eqz v6, :cond_7

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_12

    nop

    goto/16 :goto_1c

    nop

    :cond_12
    invoke-static {}, Lomg;->a()Ljava/lang/ClassLoader;

    move-result-object v6

    nop

    nop

    if-nez v6, :cond_13

    nop

    nop

    nop

    new-instance v6, Ldalvik/system/DelegateLastClassLoader;

    nop

    nop

    nop

    sget-object v7, Lomn;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v7}, Lolx;->ag(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    nop

    nop

    nop

    invoke-direct {v6, v7, v8}, Ldalvik/system/DelegateLastClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :cond_13
    invoke-static {v6}, Lomn;->e(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1, v2, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    nop

    nop

    nop

    sput-object v6, Lomn;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop
    :try_end_16
    .catch Lomk; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    monitor-exit v4

    nop

    nop

    nop
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :try_start_18
    monitor-exit v0

    nop

    nop
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_30
    move-object v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_31
    move-object v0, p1

    nop

    nop

    nop

    nop

    :goto_32
    :try_start_19
    const-string p1, "DynamiteModule"

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve remote module version: "

    nop

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_e

    nop

    nop

    :goto_34
    move-object v0, p1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_1a

    nop

    nop

    :catch_5
    move-exception v0

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

    :goto_36
    if-nez p1, :cond_14

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_14
    :try_start_1a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eq v1, v5, :cond_15

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_15
    :try_start_1b
    const-string v1, "DynamiteModule"

    nop

    nop

    nop

    nop

    nop

    const-string v4, "IDynamite loader version = 2, no high precision latency measurement."

    nop

    nop

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lomd;

    nop

    nop

    nop

    invoke-direct {v1, p0}, Lomd;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v1}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const-string v1, "com.google.android.gms.googlecertificates"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1, v4}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const-string v1, "DynamiteModule"

    nop

    const-string v5, "IDynamite loader version < 2, falling back to getModuleVersion2"

    nop

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lomd;

    nop

    nop

    invoke-direct {v1, p0}, Lomd;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v5

    nop

    nop

    invoke-static {v5, v1}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const-string v1, "com.google.android.gms.googlecertificates"

    nop

    invoke-virtual {v5, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v4, v5}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    nop

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :goto_39
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3a
    if-nez v0, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_16
    :try_start_1c
    invoke-static {p0, p1, v3}, Lomn;->g(Landroid/content/Context;ZZ)I

    move-result p0

    nop

    nop
    :try_end_1c
    .catch Lomk; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_16

    nop

    :cond_17
    :goto_3d
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_3

    nop

    nop

    :cond_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {p0}, Lolx;->e(Landroid/content/Context;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move-object v2, p1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop
.end method

.method public static d(Landroid/content/Context;)Lomo;
    .locals 5

    goto/32 :goto_a

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_1
    return-object v2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v1

    nop

    :try_start_0
    sget-object v2, Lomn;->k:Lomo;

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    monitor-exit v1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x6

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    :goto_9
    const-class v1, Lomn;

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

    nop

    :goto_a
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    :try_start_1
    const-string v3, "com.google.android.gms"

    nop

    nop

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    nop

    nop

    const-string v3, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    nop

    nop

    nop

    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Landroid/os/IBinder;

    nop

    nop

    nop

    nop

    if-nez p0, :cond_2

    nop

    nop

    move-object v3, v2

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    const-string v3, "com.google.android.gms.dynamite.IDynamiteLoader"

    nop

    nop

    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    nop

    nop

    nop

    nop

    instance-of v4, v3, Lomo;

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    check-cast v3, Lomo;

    nop

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    :cond_3
    new-instance v3, Lomo;

    nop

    invoke-direct {v3, p0}, Lomo;-><init>(Landroid/os/IBinder;)V

    :goto_e
    if-eqz v3, :cond_4

    nop

    nop

    sput-object v3, Lomn;->k:Lomo;

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    nop

    nop

    return-object v3

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    const-string v3, "DynamiteModule"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    return-object v2

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "Failed to load IDynamiteLoader from GmsCore: "

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method private static e(Ljava/lang/ClassLoader;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    invoke-direct {v0, v1, p0}, Lomk;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    const-string v1, "Failed to instantiate dynamite loader"

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

    :goto_5
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    :goto_9
    :try_start_0
    const-string v0, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    const/4 v0, 0x0

    nop

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Landroid/os/IBinder;

    nop

    nop

    nop

    nop

    nop

    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    :cond_0
    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    nop

    nop

    nop

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    nop

    nop

    instance-of v1, v0, Lomp;

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    check-cast v0, Lomp;

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

    nop

    :cond_1
    new-instance v0, Lomp;

    nop

    nop

    nop

    invoke-direct {v0, p0}, Lomp;-><init>(Landroid/os/IBinder;)V

    :goto_a
    sput-object v0, Lomn;->f:Lomp;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lomk;

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

.method private static f(Landroid/database/Cursor;)Z
    .locals 2

    goto/32 :goto_f

    nop

    nop

    :goto_0
    iput-object p0, v0, Lscn;->a:Ljava/lang/Object;

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    sget-object v0, Lomn;->c:Ljava/lang/ThreadLocal;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    check-cast v0, Lscn;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

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

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, v0, Lscn;->a:Ljava/lang/Object;

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
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_14
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method private static g(Landroid/content/Context;ZZ)I
    .locals 13

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v5, v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_16

    nop

    :goto_2
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    nop

    new-instance v5, Landroid/database/MatrixCursor;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v7

    nop

    invoke-direct {v5, v7, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    move v7, v1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ge v7, v3, :cond_7

    nop

    nop

    nop

    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_6

    nop

    nop

    nop

    nop

    nop

    new-array v8, v4, [Ljava/lang/Object;

    nop

    move v9, v1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ge v9, v4, :cond_5

    nop

    nop

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getType(I)I

    move-result v10

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_4

    nop

    if-eq v10, v6, :cond_3

    nop

    if-eq v10, p1, :cond_2

    nop

    nop

    nop

    nop

    const/4 v11, 0x3

    nop

    nop

    nop

    nop

    if-eq v10, v11, :cond_1

    nop

    const/4 v11, 0x4

    nop

    if-ne v10, v11, :cond_0

    nop

    nop

    nop

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    nop

    nop

    aput-object v10, v8, v9

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    :cond_0
    new-instance v3, Landroid/os/RemoteException;

    nop

    nop

    const-string v4, "Unknown column type"

    nop

    nop

    nop

    nop

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    nop

    :cond_1
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    aput-object v10, v8, v9

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_2
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    nop

    nop

    nop

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    nop

    nop

    nop

    nop

    aput-object v10, v8, v9

    nop

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    :cond_3
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    nop

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    nop

    nop

    aput-object v10, v8, v9

    nop

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    :cond_4
    aput-object v0, v8, v9

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    goto/16 :goto_4

    nop

    :cond_5
    invoke-virtual {v5, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_6
    new-instance v3, Landroid/os/RemoteException;

    nop

    nop

    const-string v4, "Cursor read incomplete (ContentProvider dead?)"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :cond_7
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_6
    move-object v0, v5

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v0, v5

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    :cond_8
    :goto_a
    :try_start_3
    const-string p0, "DynamiteModule"

    nop

    nop

    nop

    const-string p1, "Failed to retrieve remote module version."

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lomk;

    nop

    const-string p1, "Failed to connect to dynamite module ContentResolver."

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lomk;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    :goto_e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_1f

    nop

    nop

    nop

    :goto_10
    :try_start_4
    new-instance p0, Lomk;

    nop

    nop

    nop

    nop

    const-string p1, "forcing fallback to container DynamiteLoader impl"

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lomk;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

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

    :goto_11
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_12
    if-nez v5, :cond_9

    nop

    goto/32 :goto_a

    nop

    :cond_9
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    nop

    nop

    if-eqz p0, :cond_8

    nop

    nop

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    if-lez p0, :cond_11

    nop

    nop

    nop

    nop

    nop

    const-class v2, Lomn;

    nop

    nop

    nop

    monitor-enter v2

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-interface {v5, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    nop

    sput-object p1, Lomn;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string p1, "loaderVersion"

    nop

    nop

    nop

    nop

    invoke-interface {v5, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    nop

    nop

    nop

    nop

    if-ltz p1, :cond_a

    nop

    nop

    invoke-interface {v5, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    nop

    nop

    nop

    nop

    sput p1, Lomn;->b:I

    nop

    nop

    nop

    nop

    :cond_a
    const-string p1, "disableStandaloneDynamiteLoader2"

    nop

    invoke-interface {v5, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    nop

    nop

    nop

    if-ltz p1, :cond_c

    nop

    nop

    nop

    nop

    invoke-interface {v5, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    nop

    if-eqz p1, :cond_b

    nop

    goto :goto_13

    nop

    nop

    nop

    nop

    :cond_b
    move v6, v1

    nop

    nop

    nop

    nop

    :goto_13
    sput-boolean v6, Lomn;->h:Z

    nop

    nop

    nop

    nop

    nop

    move v1, v6

    nop

    nop

    nop

    :cond_c
    monitor-exit v2

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {v5}, Lomn;->f(Landroid/database/Cursor;)Z

    move-result p1

    nop
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_32

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz p0, :cond_d

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_d
    :goto_16
    goto/32 :goto_0

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_18
    if-eqz v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_f

    nop

    nop

    :goto_19
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1a
    if-nez p1, :cond_f

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

    :cond_f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_1c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1e
    goto/16 :goto_31

    nop

    nop

    :goto_1f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_23
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2c

    nop

    nop

    :goto_25
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_8

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_8
    monitor-exit v2

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw p0

    nop

    nop

    nop
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_11
    :goto_27
    goto/32 :goto_7

    nop

    nop

    :goto_28
    const/4 v12, 0x0

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

    :goto_29
    if-nez v0, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0xe

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_39

    nop

    nop

    :goto_2d
    if-nez p2, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v2, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :catch_1
    :cond_14
    :try_start_a
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-object v7, p0

    nop

    nop

    nop

    nop

    nop

    :try_start_b
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    nop

    nop
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object v0, v5

    nop

    nop

    :goto_31
    :try_start_c
    instance-of p1, p0, Lomk;

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_15

    nop

    nop

    throw p0

    nop

    :cond_15
    new-instance p1, Lomk;

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V2 version check failed: "

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, p2, p0}, Lomk;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_32
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_33
    goto :goto_36

    nop

    :catchall_3
    move-exception v3

    nop

    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto/32 :goto_34

    nop

    nop

    :goto_34
    goto :goto_35

    nop

    nop

    :catchall_4
    move-exception v2

    nop

    :try_start_e
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_35
    throw v3

    nop

    nop

    nop

    nop
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception p1

    nop

    nop

    :try_start_f
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    throw p1

    nop

    nop
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :goto_36
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_37
    goto :goto_32

    nop

    :catch_2
    move-exception p0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_38
    if-lez v0, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_2b

    nop

    :goto_39
    const/4 v0, 0x0

    nop

    nop

    nop

    :try_start_10
    sget-object v1, Lomn;->d:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    const-string v3, "com.google.android.gms.googlecertificates"

    nop

    nop

    const-string v4, "api_force_staging"

    nop

    nop

    const-string v5, "api"

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    if-eq v6, p1, :cond_17

    nop

    nop

    nop

    nop

    move-object v4, v5

    nop

    nop

    nop

    nop

    nop

    :cond_17
    new-instance p1, Landroid/net/Uri$Builder;

    nop

    nop

    nop

    nop

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    nop

    nop

    nop

    invoke-virtual {p1, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    nop

    nop

    const-string v5, "com.google.android.gms.chimera"

    nop

    invoke-virtual {p1, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    nop

    invoke-virtual {p1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    nop

    nop

    nop

    nop

    const-string v3, "requestStartUptime"

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {p1, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    nop

    nop

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v8}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    nop

    nop
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3b
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_25

    nop

    nop
.end method


# virtual methods
.method public final c()Landroid/os/IBinder;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    :goto_3
    const-string v1, "Failed to instantiate module class: com.google.android.gms.common.GoogleCertificatesImpl"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "com.google.android.gms.common.GoogleCertificatesImpl"

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lomn;->j:Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    nop

    nop

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Landroid/os/IBinder;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1, p0}, Lomk;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_c

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    const v0, 0x19

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

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

    nop

    nop

    nop

    :goto_d
    const v1, 0x1d

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    new-instance v0, Lomk;

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
.end method
