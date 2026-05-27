.class final Lllx;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/storage/PackageStatsCaptureO"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lllx;->a:Lnak;

    return-void
.end method

.method static a(Landroid/content/Context;)Landroid/content/pm/PackageStats;
    .locals 12

    invoke-static {}, Llho;->h()V

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lllx;->a:Lnak;

    invoke-virtual {p0}, Lnaf;->b()Lnaz;

    move-result-object p0

    const-string v0, "StorageManager is not available"

    const/16 v2, 0x11c6

    invoke-static {p0, v0, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-object v1

    :cond_0
    :try_start_0
    const-class v2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Landroid/content/pm/PackageStats;

    invoke-direct {v3, p0}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1AEF-1A1E"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v5, :cond_2

    move-object v4, v1

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    :try_start_1
    sget-object v4, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    goto :goto_1

    :cond_3
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    sget-object v6, Lllx;->a:Lnak;

    invoke-virtual {v6}, Lnaf;->c()Lnaz;

    move-result-object v6

    const-string v7, "Invalid UUID format: \'%s\'"

    const/16 v8, 0x11c8

    invoke-static {v6, v7, v4, v8, v5}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4

    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_1

    :try_start_3
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v2, v4, p0, v5}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v5

    sget-object v6, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v6, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-wide v6, v3, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v3, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v6, v3, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v8

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v3, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v6, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v4

    add-long/2addr v6, v4

    iput-wide v6, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    goto :goto_0

    :cond_4
    iget-wide v6, v3, Landroid/content/pm/PackageStats;->externalCodeSize:J

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v3, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v6, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v8

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v6, v3, Landroid/content/pm/PackageStats;->externalCacheSize:J

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v4

    add-long/2addr v6, v4

    iput-wide v6, v3, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    :catch_1
    move-exception v4

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v4

    :goto_2
    :try_start_4
    sget-object v5, Lllx;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->c()Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    invoke-interface {v5, v4}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const/16 v5, 0x11c4

    invoke-interface {v4, v5}, Lnah;->G(I)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const-string v5, "queryStatsForPackage() call failed"

    invoke-interface {v4, v5}, Lnah;->o(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :cond_5
    return-object v3

    :catch_4
    move-exception p0

    goto :goto_3

    :catch_5
    move-exception p0

    :goto_3
    sget-object v0, Lllx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "StorageStatsManager is not available"

    const/16 v3, 0x11c5

    invoke-static {v0, v2, v3, p0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-object v1
.end method
