.class public final Leeu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ldqu;

.field private static final b:Ljava/lang/Object;

.field private static c:Ldwq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Leeu;->c:Ldwq;

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

    :goto_1
    new-instance v0, Ldqu;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/Object;

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
    invoke-direct {v0}, Ldqu;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

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
    sput-object v0, Leeu;->a:Ldqu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    sput-object v0, Leeu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 26

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    if-nez v11, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_0
    :try_start_0
    new-instance v11, Ljava/io/DataInputStream;

    nop

    nop

    nop

    nop

    nop

    new-instance v12, Ljava/io/FileInputStream;

    nop

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v12, Leet;

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v22

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v24

    nop

    move-object/from16 v19, v12

    nop

    nop

    invoke-direct/range {v19 .. v25}, Leet;-><init>(IIJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_3
    if-gtz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v6, :cond_3

    nop

    goto/32 :goto_13

    nop

    :cond_3
    :try_start_3
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz p1, :cond_4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_30

    nop

    nop

    :goto_7
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move v0, v4

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_42

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

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object v7, v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v1, Leeu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_e
    goto :goto_1c

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_f
    move-object v3, v0

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    move v9, v5

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_37

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    move-object v6, v0

    nop

    nop

    :try_start_5
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_13
    throw v7

    nop

    nop
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/32 :goto_26

    nop

    nop

    :goto_15
    const/4 v4, 0x0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_23

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v2, v0

    nop

    nop

    :try_start_7
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw v3

    nop

    nop
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_1
    :goto_1d
    :try_start_8
    invoke-static {}, Leeu;->b()V

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catch_2
    invoke-static {}, Leeu;->b()V

    monitor-exit v1

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :goto_1e
    monitor-exit v1

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    cmp-long v0, v7, v2

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

    :goto_21
    if-nez v9, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_6
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_22
    throw v0

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz p1, :cond_7

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_7
    :try_start_9
    sget-object v0, Leeu;->c:Ldwq;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_13

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    :try_start_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    nop

    nop

    nop

    const-string v6, "dexopt/baseline.prof"

    nop

    nop

    nop

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    nop

    nop

    nop
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_a

    nop

    :goto_28
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    monitor-enter v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v2, :cond_8

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_8
    :try_start_c
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/DataOutputStream;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/io/FileOutputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    iget v3, v0, Leet;->a:I

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v3, v0, Leet;->b:I

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v3, v0, Leet;->c:J

    nop

    nop

    nop

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v3, v0, Leet;->d:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_19

    nop

    :goto_2c
    goto/16 :goto_40

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2d
    move v9, v4

    nop

    nop

    nop

    :goto_2e
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    nop

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    nop

    invoke-virtual {v10, v11, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    nop

    nop

    iget-wide v2, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    nop
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    new-instance v10, Ljava/io/File;

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    const-string v12, "profileInstalled"

    nop

    nop

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    nop

    nop

    nop

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-gtz v9, :cond_9

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v0, Leeu;->c:Ldwq;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_31
    move v0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_32
    goto :goto_2e

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_34
    move-object v3, v0

    nop

    nop

    nop

    :try_start_11
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_35
    throw v2

    nop
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :catch_3
    :try_start_12
    invoke-static {}, Leeu;->b()V

    monitor-exit v1

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v12, 0x0

    nop

    :goto_37
    move-object v11, v12

    nop

    nop

    nop

    const/4 v12, 0x2

    nop

    nop

    if-eqz v11, :cond_b

    nop

    nop

    nop

    iget-wide v13, v11, Leet;->c:J

    nop

    nop

    nop

    cmp-long v13, v13, v2

    nop

    nop

    if-nez v13, :cond_b

    nop

    nop

    iget v13, v11, Leet;->b:I

    nop

    nop

    if-ne v13, v12, :cond_a

    nop

    nop

    nop

    nop

    goto :goto_38

    nop

    :cond_a
    move v4, v13

    nop

    nop

    goto :goto_39

    nop

    nop

    nop

    nop

    :cond_b
    :goto_38
    if-nez v0, :cond_c

    nop

    nop

    const/high16 v4, 0x50000

    nop

    nop

    nop

    goto :goto_39

    nop

    nop

    nop

    :cond_c
    if-eqz v6, :cond_d

    nop

    nop

    nop

    move v4, v5

    nop

    nop

    nop

    goto :goto_39

    nop

    :cond_d
    if-eqz v9, :cond_e

    nop

    nop

    move v4, v12

    nop

    nop

    nop

    :cond_e
    :goto_39
    if-eqz p1, :cond_10

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_10

    nop

    nop

    nop

    nop

    nop

    if-eq v4, v5, :cond_f

    nop

    nop

    nop

    move v4, v12

    nop

    goto :goto_3a

    nop

    nop

    :cond_f
    move v4, v5

    nop

    nop

    nop

    :cond_10
    :goto_3a
    if-eqz v11, :cond_12

    nop

    nop

    nop

    nop

    nop

    iget v0, v11, Leet;->b:I

    nop

    nop

    if-ne v0, v12, :cond_12

    nop

    nop

    nop

    nop

    nop

    if-ne v4, v5, :cond_12

    nop

    nop

    nop

    iget-wide v12, v11, Leet;->d:J

    nop

    nop

    nop

    nop

    nop

    cmp-long v0, v7, v12

    nop

    nop

    nop

    nop

    if-gez v0, :cond_11

    nop

    nop

    nop

    const/4 v5, 0x3

    nop

    nop

    :cond_11
    move v14, v5

    nop

    nop

    nop

    nop

    goto :goto_3b

    nop

    nop

    :cond_12
    move v14, v4

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance v0, Leet;

    nop

    nop

    nop

    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    move-object v12, v0

    nop

    nop

    nop

    nop

    move-wide v15, v2

    nop

    invoke-direct/range {v12 .. v18}, Leet;-><init>(IIJJ)V

    if-eqz v11, :cond_8

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v0}, Leet;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3c
    return-void

    nop

    :cond_13
    :goto_3d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    cmp-long v9, v17, v2

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move v0, v4

    nop

    nop

    nop

    nop

    nop

    :goto_40
    :try_start_13
    new-instance v6, Ljava/io/File;

    nop

    new-instance v7, Ljava/io/File;

    nop

    const-string v8, "/data/misc/profiles/ref/"

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "primary.prof"

    nop

    nop

    nop

    nop

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    nop

    nop

    if-eqz v6, :cond_14

    nop

    nop

    nop

    nop

    nop

    cmp-long v6, v7, v2

    nop

    nop

    nop

    nop

    if-lez v6, :cond_14

    nop

    nop

    move v6, v5

    nop

    goto :goto_41

    nop

    nop

    nop

    :cond_14
    move v6, v4

    nop

    nop

    :goto_41
    new-instance v9, Ljava/io/File;

    nop

    nop

    new-instance v10, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    const-string v11, "/data/misc/profiles/cur/0/"

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "primary.prof"

    nop

    nop

    nop

    nop

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v17

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    nop
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_42
    if-nez v6, :cond_15

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_15
    :try_start_14
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_43
    rem-int v0, v0, v1

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

    :goto_44
    const v1, 0xb

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_13

    nop

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method private static b()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ldwq;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x6

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_5
    sput-object v0, Leeu;->c:Ldwq;

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

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1}, Ldwq;-><init>([B)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v0}, Ldqu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_6

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    sget-object v1, Leeu;->a:Ldqu;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop
.end method
