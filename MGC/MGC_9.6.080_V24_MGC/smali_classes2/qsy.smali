.class final Lqsy;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static a(Landroid/content/Context;)Landroid/content/pm/PackageStats;
    .locals 12

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x10

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3
    const/16 v0, 0x155a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    return-object v1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    :goto_6
    const/16 v8, 0x155d

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7
    const/16 v0, 0x155b

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    goto/16 :goto_4d

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Lqzk;->b()V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

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

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    const-class v2, Landroid/app/usage/StorageStatsManager;

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

    :goto_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v6}, Lscs;->c()Lsdo;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_16
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4, p0, v5}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v5

    nop

    sget-object v6, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    nop

    invoke-virtual {v6, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    nop

    nop

    nop

    iget-wide v6, v3, Landroid/content/pm/PackageStats;->codeSize:J

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    add-long/2addr v6, v8

    nop

    nop

    nop

    nop

    iput-wide v6, v3, Landroid/content/pm/PackageStats;->codeSize:J

    nop

    iget-wide v6, v3, Landroid/content/pm/PackageStats;->dataSize:J

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v8

    nop

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v10

    nop

    sub-long/2addr v8, v10

    nop

    add-long/2addr v6, v8

    nop

    nop

    iput-wide v6, v3, Landroid/content/pm/PackageStats;->dataSize:J

    nop

    nop

    nop

    nop

    nop

    iget-wide v6, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    add-long/2addr v6, v4

    nop

    nop

    iput-wide v6, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    nop

    nop

    nop

    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-wide v6, v3, Landroid/content/pm/PackageStats;->externalCodeSize:J

    nop

    nop

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    add-long/2addr v6, v8

    nop

    nop

    nop

    nop

    nop

    iput-wide v6, v3, Landroid/content/pm/PackageStats;->externalCodeSize:J

    nop

    nop

    nop

    nop

    iget-wide v6, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    nop

    nop

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v10

    nop

    nop

    nop

    nop

    nop

    sub-long/2addr v8, v10

    nop

    nop

    nop

    add-long/2addr v6, v8

    nop

    nop

    nop

    nop

    nop

    iput-wide v6, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    nop

    nop

    nop

    iget-wide v6, v3, Landroid/content/pm/PackageStats;->externalCacheSize:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v4

    nop

    add-long/2addr v6, v4

    nop

    nop

    nop

    nop

    nop

    iput-wide v6, v3, Landroid/content/pm/PackageStats;->externalCacheSize:J

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_17
    new-instance v3, Landroid/content/pm/PackageStats;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v2, Landroid/app/usage/StorageStatsManager;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v5, Lqmo;->a:Lsdb;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-object v1

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_44

    nop

    :goto_1d
    check-cast v4, Landroid/os/storage/StorageVolume;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v7, v4, v8, v6, v5}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v6, "mounted"

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_21
    sget-object p0, Lqmo;->a:Lsdb;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v0, Landroid/os/storage/StorageManager;

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

    nop

    nop

    :goto_23
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_1b

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v6, v7, v5, v4}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    nop

    :goto_27
    if-eqz v4, :cond_5

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_5
    :try_start_1
    sget-object v4, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    nop

    nop

    nop

    goto/16 :goto_9

    nop

    :goto_28
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v7, 0x1559

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

    :goto_2a
    if-nez v5, :cond_6

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

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

    nop

    :goto_2c
    const-string v0, "StorageStatsManager is not available"

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_31
    sget-object p0, Lqmo;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_32
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_33
    return-object v3

    nop

    nop

    :goto_34
    goto/32 :goto_41

    nop

    nop

    :goto_35
    invoke-virtual {v5}, Lscs;->c()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_36
    const-string v5, "1AEF-1A1E"

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

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

    :goto_38
    goto/16 :goto_12

    nop

    nop

    :goto_39
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const-string v6, "queryStatsForPackage() call failed"

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v3, p0}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3d
    const-string v7, "Invalid UUID format: \'%s\'"

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

    :goto_3e
    goto/16 :goto_9

    nop

    nop

    nop

    :catch_1
    move-exception v5

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_9

    nop

    nop

    :goto_40
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_45

    nop

    :goto_42
    if-nez v4, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const-string v0, "StorageManager is not available"

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

    :goto_44
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_46
    sget-object v6, Lqmo;->a:Lsdb;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_47
    const-class v0, Landroid/os/storage/StorageManager;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_48
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4a
    const v0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4b
    move-object v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v5, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :goto_4d
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop
.end method
