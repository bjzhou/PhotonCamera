.class public final Lkvl;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/ClassLoader;

.field private static volatile b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lkvl;->b:I

    return-void
.end method

.method static a()Z
    .locals 3

    sget v0, Lkvl;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lkvl;->f()V

    :cond_0
    sget v0, Lkvl;->b:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static b()Z
    .locals 3

    sget v0, Lkvl;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lkvl;->f()V

    :cond_0
    sget v0, Lkvl;->b:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static c()Z
    .locals 3

    sget v0, Lkvl;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lkvl;->f()V

    :cond_0
    sget v0, Lkvl;->b:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static d()V
    .locals 2

    sget v0, Lkvl;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lkvl;->f()V

    :cond_0
    return-void
.end method

.method static e()V
    .locals 2

    const-string v0, "robolectric"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method private static declared-synchronized f()V
    .locals 4

    const-class v0, Lkvl;

    monitor-enter v0

    :try_start_0
    sget v1, Lkvl;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lkvl;->a:Ljava/lang/ClassLoader;

    if-nez v1, :cond_2

    const-class v1, Lkvk;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sput-object v1, Lkvl;->a:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Classloader is null! This should never happen."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    :try_start_2
    const-string v2, "com.google.android.libraries.lens.lenslite.configs.ReleaseLite"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v1, 0x4

    sput v1, Lkvl;->b:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    sget-object v1, Lkvl;->a:Ljava/lang/ClassLoader;

    const-string v2, "com.google.android.libraries.lens.lenslite.configs.LinkZero"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v1, 0x5

    sput v1, Lkvl;->b:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :catch_1
    move-exception v1

    :try_start_4
    sget-object v1, Lkvl;->a:Ljava/lang/ClassLoader;

    const-string v2, "com.google.android.libraries.lens.lenslite.configs.Kent"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v1, 0x6

    sput v1, Lkvl;->b:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :catch_2
    move-exception v1

    :try_start_5
    sget-object v1, Lkvl;->a:Ljava/lang/ClassLoader;

    const-string v2, "com.google.android.libraries.lens.lenslite.configs.Experimental"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v1, 0x2

    sput v1, Lkvl;->b:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-void

    :catch_3
    move-exception v1

    :try_start_6
    sget-object v1, Lkvl;->a:Ljava/lang/ClassLoader;

    const-string v2, "com.google.android.libraries.lens.lenslite.configs.Dev"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v1, 0x3

    sput v1, Lkvl;->b:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    return-void

    :catch_4
    move-exception v1

    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to determine build type."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
