.class public final Lpvb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static b:Landroid/os/UserManager;

.field private static volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

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
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    nop

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

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

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

    nop
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Runnable;)Lsui;
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

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

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

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
    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, La;->aq(Ldqq;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    const v0, 0x15

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_11
    new-instance v0, Leqr;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, p0, p1, v1}, Leqr;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    :goto_13
    invoke-static {p0}, Lpvb;->d(Landroid/content/Context;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lpvb;->e(Landroid/content/Context;)Z

    move-result p0

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
    return p0

    nop

    nop

    :goto_2
    const/4 p0, 0x1

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

    :goto_3
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lpvb;->e(Landroid/content/Context;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
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
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 7

    goto/32 :goto_9

    nop

    nop

    :goto_0
    goto :goto_1

    nop

    :catch_0
    move-exception v3

    nop

    nop

    :try_start_0
    const-string v5, "DirectBootUtils"

    nop

    nop

    nop

    nop

    const-string v6, "Failed to check if user is unlocked."

    nop

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v4, Lpvb;->b:Landroid/os/UserManager;

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_12

    nop

    nop

    nop

    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    nop

    sput-object v4, Lpvb;->b:Landroid/os/UserManager;

    nop

    nop

    nop

    nop

    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    nop

    nop

    sput-boolean v1, Lpvb;->c:Z

    nop

    nop

    nop

    :cond_2
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return v5

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    move v5, v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x9

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xc

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    sget-boolean v0, Lpvb;->c:Z

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

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    sget-boolean v2, Lpvb;->c:Z

    nop

    nop

    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    return v1

    nop

    nop

    nop

    :cond_5
    move v2, v1

    nop

    nop

    nop

    :goto_12
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    if-gt v2, v3, :cond_0

    nop

    nop

    nop

    nop

    sget-object v3, Lpvb;->b:Landroid/os/UserManager;

    nop

    nop

    nop

    nop

    if-nez v3, :cond_6

    nop

    nop

    nop

    const-class v3, Landroid/os/UserManager;

    nop

    nop

    nop

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Landroid/os/UserManager;

    nop

    nop

    sput-object v3, Lpvb;->b:Landroid/os/UserManager;

    nop

    nop

    nop

    nop

    nop

    :cond_6
    sget-object v3, Lpvb;->b:Landroid/os/UserManager;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    const-class v0, Lpvb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    :try_start_2
    invoke-virtual {v3}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_7

    nop

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    nop

    nop

    nop

    invoke-virtual {v3, v6}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result p0

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move v5, v1

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

    :goto_17
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_8

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop
.end method
