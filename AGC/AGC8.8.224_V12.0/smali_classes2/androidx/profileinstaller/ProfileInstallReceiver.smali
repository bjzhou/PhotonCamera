.class public Landroidx/profileinstaller/ProfileInstallReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "androidx.profileinstaller.action.INSTALL_PROFILE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v4, :cond_47

    sget-object v11, Lqj;->a:Lqj;

    new-instance v12, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v12, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Landroidx/profileinstaller/ProfileInstallReceiver;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    new-instance v3, Ljava/io/File;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    new-instance v14, Ljava/io/File;

    new-instance v9, Ljava/io/File;

    const-string v5, "/data/misc/profiles/cur/0"

    invoke-direct {v9, v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "primary.prof"

    invoke-direct {v14, v9, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Laox;

    const/4 v5, 0x0

    move-object v9, v4

    move-object/from16 v16, v15

    move-object v15, v5

    invoke-direct/range {v9 .. v15}, Laox;-><init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Landroidx/wear/ambient/AmbientMode$AmbientController;Ljava/lang/String;Ljava/io/File;[B)V

    iget-object v5, v4, Laox;->b:[B

    const/4 v9, 0x3

    if-nez v5, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v9, v3}, Laox;->b(ILjava/lang/Object;)V

    goto/16 :goto_46

    :cond_1
    iget-object v5, v4, Laox;->c:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v5

    const/4 v10, 0x4

    if-nez v5, :cond_2

    invoke-virtual {v4, v10, v7}, Laox;->b(ILjava/lang/Object;)V

    goto/16 :goto_46

    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, v4, Laox;->g:Z

    invoke-virtual {v4}, Laox;->a()V

    iget-object v11, v4, Laox;->b:[B

    const/4 v14, 0x6

    if-nez v11, :cond_3

    goto/16 :goto_21

    :cond_3
    iget-object v11, v4, Laox;->a:Landroid/content/res/AssetManager;

    :try_start_1
    iget-object v15, v4, Laox;->e:Ljava/lang/String;

    invoke-static {v11, v15}, Laox;->c(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v11, v0

    iget-object v15, v4, Laox;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v15, v6, v11}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    move-object v11, v7

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v11, v0

    iget-object v15, v4, Laox;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v15, v14, v11}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    move-object v11, v7

    :goto_0
    const-string v15, "Content found after the end of file"

    if-eqz v11, :cond_14

    :try_start_2
    sget-object v10, Lapa;->a:[B

    invoke-static {v11, v10}, Lapa;->f(Ljava/io/InputStream;[B)[B

    move-result-object v10

    iget-object v12, v4, Laox;->d:Ljava/lang/String;

    sget-object v9, Lape;->b:[B

    invoke-static {v10, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-static {v11}, Lade;->c(Ljava/io/InputStream;)I

    move-result v9

    invoke-static {v11}, Lade;->f(Ljava/io/InputStream;)J

    move-result-wide v6

    invoke-static {v11}, Lade;->f(Ljava/io/InputStream;)J

    move-result-wide v13

    long-to-int v14, v13

    long-to-int v7, v6

    invoke-static {v11, v14, v7}, Lade;->q(Ljava/io/InputStream;II)[B

    move-result-object v6

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v7

    if-gtz v7, :cond_12

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v6

    if-nez v6, :cond_4

    new-array v6, v8, [Laoy;

    move-object/from16 v28, v6

    goto/16 :goto_a

    :cond_4
    new-array v6, v9, [Laoy;

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v9, :cond_5

    invoke-static {v7}, Lade;->b(Ljava/io/InputStream;)I

    move-result v14

    invoke-static {v7}, Lade;->b(Ljava/io/InputStream;)I

    move-result v10

    move/from16 v27, v9

    invoke-static {v7}, Lade;->f(Ljava/io/InputStream;)J

    move-result-wide v8

    invoke-static {v7}, Lade;->f(Ljava/io/InputStream;)J

    move-result-wide v20

    move-object/from16 v28, v6

    invoke-static {v7}, Lade;->f(Ljava/io/InputStream;)J

    move-result-wide v5

    new-instance v29, Laoy;

    invoke-static {v7, v14}, Lade;->h(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v19

    long-to-int v9, v8

    long-to-int v6, v5

    new-array v5, v10, [I

    new-instance v26, Ljava/util/TreeMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v17, v29

    move-object/from16 v18, v12

    move/from16 v22, v10

    move/from16 v23, v9

    move/from16 v24, v6

    move-object/from16 v25, v5

    invoke-direct/range {v17 .. v26}, Laoy;-><init>(Ljava/lang/String;Ljava/lang/String;JIII[ILjava/util/TreeMap;)V

    aput-object v29, v28, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v27

    move-object/from16 v6, v28

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v28, v6

    move/from16 v27, v9

    const/4 v5, 0x0

    :goto_2
    move/from16 v6, v27

    if-ge v5, v6, :cond_11

    aget-object v8, v28, v5

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v9

    iget v10, v8, Laoy;->f:I

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v12

    if-le v12, v9, :cond_a

    invoke-static {v7}, Lade;->b(Ljava/io/InputStream;)I

    move-result v12

    add-int/2addr v12, v10

    iget-object v10, v8, Laoy;->i:Ljava/util/TreeMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move/from16 v27, v6

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v13, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lade;->b(Ljava/io/InputStream;)I

    move-result v6

    :goto_4
    if-lez v6, :cond_9

    invoke-static {v7}, Lade;->b(Ljava/io/InputStream;)I

    invoke-static {v7}, Lade;->c(Ljava/io/InputStream;)I

    move-result v13

    const/4 v10, 0x6

    if-ne v13, v10, :cond_7

    :cond_6
    goto :goto_7

    :cond_7
    const/4 v10, 0x7

    if-eq v13, v10, :cond_6

    :goto_5
    if-lez v13, :cond_6

    invoke-static {v7}, Lade;->c(Ljava/io/InputStream;)I

    invoke-static {v7}, Lade;->c(Ljava/io/InputStream;)I

    move-result v14

    :goto_6
    if-lez v14, :cond_8

    invoke-static {v7}, Lade;->b(Ljava/io/InputStream;)I

    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    :goto_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_9
    move v10, v12

    move/from16 v6, v27

    goto :goto_3

    :cond_a
    move/from16 v27, v6

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v6

    if-ne v6, v9, :cond_10

    iget v6, v8, Laoy;->e:I

    invoke-static {v7, v6}, Lapa;->g(Ljava/io/InputStream;I)[I

    move-result-object v6

    iput-object v6, v8, Laoy;->h:[I

    iget v6, v8, Laoy;->g:I

    add-int/2addr v6, v6

    const/4 v9, 0x7

    add-int/2addr v6, v9

    and-int/lit8 v6, v6, -0x8

    const/16 v9, 0x8

    div-int/2addr v6, v9

    invoke-static {v7, v6}, Lade;->p(Ljava/io/InputStream;I)[B

    move-result-object v6

    invoke-static {v6}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v6

    const/4 v9, 0x0

    :goto_8
    iget v12, v8, Laoy;->g:I

    if-ge v9, v12, :cond_f

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v14, v13, :cond_b

    const/4 v13, 0x0

    goto :goto_9

    :cond_b
    const/4 v13, 0x2

    :goto_9
    add-int/2addr v12, v9

    invoke-virtual {v6, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-eqz v12, :cond_c

    or-int/lit8 v13, v13, 0x4

    :cond_c
    if-eqz v13, :cond_e

    iget-object v12, v8, Laoy;->i:Ljava/util/TreeMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-nez v12, :cond_d

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v12, v17

    :cond_d
    iget-object v10, v8, Laoy;->i:Ljava/util/TreeMap;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    or-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v14, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_10
    const-string v5, "Read too much data during profile line parse"

    invoke-static {v5}, Lade;->g(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_11
    :goto_a
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_b

    :catch_2
    move-exception v0

    move-object v5, v0

    iget-object v6, v4, Laox;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v5}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    :goto_b
    move-object/from16 v5, v28

    goto :goto_f

    :catchall_0
    move-exception v0

    move-object v5, v0

    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_7
    invoke-static {v5, v6}, Ladi;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_c
    throw v5

    :cond_12
    invoke-static {v15}, Lade;->g(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    :cond_13
    const-string v5, "Unsupported version"

    invoke-static {v5}, Lade;->g(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_10

    :catch_3
    move-exception v0

    move-object v5, v0

    :try_start_8
    iget-object v6, v4, Laox;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v5}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v5, v0

    iget-object v6, v4, Laox;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    goto :goto_e

    :catch_5
    move-exception v0

    move-object v5, v0

    :try_start_a
    iget-object v6, v4, Laox;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v5}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :goto_d
    const/4 v5, 0x0

    goto :goto_f

    :catch_6
    move-exception v0

    move-object v5, v0

    iget-object v6, v4, Laox;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    :goto_e
    const/4 v7, 0x7

    invoke-virtual {v6, v7, v5}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    const/4 v5, 0x0

    :goto_f
    iput-object v5, v4, Laox;->h:[Laoy;

    goto :goto_12

    :goto_10
    :try_start_c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_11

    :catch_7
    move-exception v0

    move-object v3, v0

    iget-object v4, v4, Laox;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v3}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    :goto_11
    throw v2

    :cond_14
    :goto_12
    iget-object v5, v4, Laox;->h:[Laoy;

    if-eqz v5, :cond_2d

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x21

    if-le v6, v7, :cond_15

    :goto_13
    goto/16 :goto_21

    :cond_15
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v6, :pswitch_data_0

    goto :goto_13

    :pswitch_0
    iget-object v6, v4, Laox;->b:[B

    :try_start_d
    iget-object v7, v4, Laox;->a:Landroid/content/res/AssetManager;

    iget-object v8, v4, Laox;->f:Ljava/lang/String;

    invoke-static {v7, v8}, Laox;->c(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_8

    if-eqz v7, :cond_2b

    :try_start_e
    sget-object v8, Lapa;->b:[B

    invoke-static {v7, v8}, Lapa;->f(Ljava/io/InputStream;[B)[B

    move-result-object v8

    sget-object v9, Lape;->f:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    const-string v11, "Mismatched number of dex files found in metadata"

    const-string v12, "Unsupported meta version"

    if-eqz v9, :cond_1e

    :try_start_f
    sget-object v9, Lape;->a:[B

    invoke-static {v9, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_1d

    sget-object v6, Lape;->f:[B

    invoke-static {v8, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-static {v7}, Lade;->c(Ljava/io/InputStream;)I

    move-result v6

    invoke-static {v7}, Lade;->f(Ljava/io/InputStream;)J

    move-result-wide v8

    invoke-static {v7}, Lade;->f(Ljava/io/InputStream;)J

    move-result-wide v12

    long-to-int v13, v12

    long-to-int v9, v8

    invoke-static {v7, v13, v9}, Lade;->q(Ljava/io/InputStream;II)[B

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v9

    if-gtz v9, :cond_1b

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :try_start_10
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v8

    if-nez v8, :cond_16

    const/4 v5, 0x0

    new-array v6, v5, [Laoy;

    move-object v5, v6

    goto :goto_16

    :cond_16
    array-length v8, v5

    if-ne v6, v8, :cond_1a

    new-array v8, v6, [Ljava/lang/String;

    new-array v11, v6, [I

    const/4 v12, 0x0

    :goto_14
    if-ge v12, v6, :cond_17

    invoke-static {v9}, Lade;->b(Ljava/io/InputStream;)I

    move-result v13

    invoke-static {v9}, Lade;->b(Ljava/io/InputStream;)I

    move-result v14

    aput v14, v11, v12

    invoke-static {v9, v13}, Lade;->h(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    :cond_17
    const/4 v12, 0x0

    :goto_15
    if-ge v12, v6, :cond_19

    aget-object v13, v5, v12

    iget-object v14, v13, Laoy;->b:Ljava/lang/String;

    aget-object v15, v8, v12

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    aget v14, v11, v12

    iput v14, v13, Laoy;->e:I

    invoke-static {v9, v14}, Lapa;->g(Ljava/io/InputStream;I)[I

    move-result-object v14

    iput-object v14, v13, Laoy;->h:[I

    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    :cond_18
    const-string v5, "Order of dexfiles in metadata did not match baseline"

    invoke-static {v5}, Lade;->g(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :cond_19
    :goto_16
    :try_start_11
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto/16 :goto_1d

    :cond_1a
    :try_start_12
    invoke-static {v11}, Lade;->g(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :catchall_3
    move-exception v0

    move-object v5, v0

    :try_start_13
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto :goto_17

    :catchall_4
    move-exception v0

    move-object v6, v0

    :try_start_14
    invoke-static {v5, v6}, Ladi;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_17
    throw v5

    :cond_1b
    invoke-static {v15}, Lade;->g(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    :cond_1c
    invoke-static {v12}, Lade;->g(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    :cond_1d
    const-string v5, "Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher"

    invoke-static {v5}, Lade;->g(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    :cond_1e
    sget-object v9, Lape;->g:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_2a

    invoke-static {v7}, Lade;->b(Ljava/io/InputStream;)I

    move-result v8

    invoke-static {v7}, Lade;->f(Ljava/io/InputStream;)J

    move-result-wide v12

    move-object v14, v11

    invoke-static {v7}, Lade;->f(Ljava/io/InputStream;)J

    move-result-wide v10

    long-to-int v11, v10

    long-to-int v10, v12

    invoke-static {v7, v11, v10}, Lade;->q(Ljava/io/InputStream;II)[B

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v11

    if-gtz v11, :cond_29

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :try_start_15
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v10

    if-nez v10, :cond_1f

    const/4 v5, 0x0

    new-array v6, v5, [Laoy;

    move-object v5, v6

    goto/16 :goto_1c

    :cond_1f
    array-length v10, v5

    if-ne v8, v10, :cond_28

    const/4 v10, 0x0

    :goto_18
    if-ge v10, v8, :cond_27

    invoke-static {v11}, Lade;->b(Ljava/io/InputStream;)I

    invoke-static {v11}, Lade;->b(Ljava/io/InputStream;)I

    move-result v12

    invoke-static {v11, v12}, Lade;->h(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11}, Lade;->f(Ljava/io/InputStream;)J

    move-result-wide v13

    invoke-static {v11}, Lade;->b(Ljava/io/InputStream;)I

    move-result v15

    array-length v9, v5

    if-gtz v9, :cond_20

    move/from16 v17, v8

    const/4 v1, 0x0

    goto :goto_1b

    :cond_20
    const-string v9, "!"

    invoke-virtual {v12, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_21

    const-string v9, ":"

    invoke-virtual {v12, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    :cond_21
    if-lez v9, :cond_22

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v12, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_19

    :cond_22
    move-object v9, v12

    :goto_19
    move/from16 v17, v8

    const/4 v8, 0x0

    :goto_1a
    array-length v1, v5

    if-ge v8, v1, :cond_24

    aget-object v1, v5, v8

    iget-object v1, v1, Laoy;->b:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    aget-object v1, v5, v8

    goto :goto_1b

    :cond_23
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    goto :goto_1a

    :cond_24
    const/4 v1, 0x0

    :goto_1b
    if-eqz v1, :cond_26

    iput-wide v13, v1, Laoy;->d:J

    invoke-static {v11, v15}, Lapa;->g(Ljava/io/InputStream;I)[I

    move-result-object v8

    sget-object v9, Lape;->e:[B

    invoke-static {v6, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_25

    iput v15, v1, Laoy;->e:I

    iput-object v8, v1, Laoy;->h:[I

    :cond_25
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move/from16 v8, v17

    goto :goto_18

    :cond_26
    const-string v1, "Missing profile key: "

    invoke-virtual {v1, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lade;->g(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :cond_27
    :goto_1c
    :try_start_16
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    :goto_1d
    iput-object v5, v4, Laox;->h:[Laoy;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :try_start_17
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_8

    move-object v1, v4

    goto :goto_20

    :cond_28
    :try_start_18
    invoke-static {v14}, Lade;->g(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :catchall_5
    move-exception v0

    move-object v1, v0

    :try_start_19
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    goto :goto_1e

    :catchall_6
    move-exception v0

    move-object v5, v0

    :try_start_1a
    invoke-static {v1, v5}, Ladi;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1e
    throw v1

    :cond_29
    invoke-static {v15}, Lade;->g(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_2a
    invoke-static {v12}, Lade;->g(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    :catchall_7
    move-exception v0

    move-object v1, v0

    :try_start_1b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    goto :goto_1f

    :catchall_8
    move-exception v0

    move-object v5, v0

    :try_start_1c
    invoke-static {v1, v5}, Lada;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1f
    throw v1
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_1c} :catch_8

    :cond_2b
    const/4 v1, 0x0

    goto :goto_20

    :catch_8
    move-exception v0

    move-object v1, v0

    const/4 v5, 0x0

    iput-object v5, v4, Laox;->h:[Laoy;

    iget-object v5, v4, Laox;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    const/16 v6, 0x8

    invoke-virtual {v5, v6, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_20

    :catch_9
    move-exception v0

    move-object v1, v0

    iget-object v5, v4, Laox;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_20

    :catch_a
    move-exception v0

    move-object v1, v0

    iget-object v5, v4, Laox;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    const/16 v6, 0x9

    invoke-virtual {v5, v6, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    const/4 v1, 0x0

    :goto_20
    if-nez v1, :cond_2c

    goto :goto_21

    :cond_2c
    move-object v4, v1

    goto :goto_21

    :cond_2d
    :goto_21
    iget-object v1, v4, Laox;->h:[Laoy;

    iget-object v5, v4, Laox;->b:[B

    if-eqz v1, :cond_44

    if-nez v5, :cond_2e

    move-object/from16 v18, v3

    goto/16 :goto_42

    :cond_2e
    invoke-virtual {v4}, Laox;->a()V

    :try_start_1d
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_1d} :catch_d

    :try_start_1e
    sget-object v7, Lapa;->a:[B

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write([B)V

    sget-object v7, Lape;->a:[B

    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_39

    new-instance v5, Ljava/util/ArrayList;

    const/4 v7, 0x3

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1d

    :try_start_1f
    array-length v9, v1

    invoke-static {v7, v9}, Lade;->l(Ljava/io/OutputStream;I)V

    const/4 v9, 0x0

    const/4 v11, 0x2

    :goto_22
    array-length v12, v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_18

    if-ge v9, v12, :cond_2f

    :try_start_20
    aget-object v12, v1, v9

    iget-wide v13, v12, Laoy;->c:J

    invoke-static {v7, v13, v14}, Lade;->m(Ljava/io/OutputStream;J)V

    iget-wide v13, v12, Laoy;->d:J

    invoke-static {v7, v13, v14}, Lade;->m(Ljava/io/OutputStream;J)V

    iget v13, v12, Laoy;->g:I

    int-to-long v13, v13

    invoke-static {v7, v13, v14}, Lade;->m(Ljava/io/OutputStream;J)V

    iget-object v13, v12, Laoy;->a:Ljava/lang/String;

    iget-object v12, v12, Laoy;->b:Ljava/lang/String;

    sget-object v14, Lape;->a:[B

    invoke-static {v13, v12, v14}, Lapa;->a(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v11, v11, 0xe

    invoke-static {v12}, Lade;->d(Ljava/lang/String;)I

    move-result v13

    invoke-static {v7, v13}, Lade;->l(Ljava/io/OutputStream;I)V

    add-int/2addr v11, v13

    invoke-static {v7, v12}, Lade;->j(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    :catchall_9
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    goto/16 :goto_33

    :cond_2f
    :try_start_21
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    array-length v12, v9
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_18

    const-string v13, ", does not match actual size "

    const-string v14, "Expected size "

    if-ne v11, v12, :cond_38

    :try_start_22
    new-instance v11, Lmrd;

    sget-object v12, Laoz;->a:Laoz;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v9, v15}, Lmrd;-><init>(Laoz;[BZ)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_18

    :try_start_23
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1d

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_23
    :try_start_24
    array-length v12, v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_15

    if-ge v9, v12, :cond_30

    :try_start_25
    aget-object v12, v1, v9

    invoke-static {v7, v9}, Lade;->l(Ljava/io/OutputStream;I)V

    add-int/lit8 v11, v11, 0x4

    iget v15, v12, Laoy;->e:I

    invoke-static {v7, v15}, Lade;->l(Ljava/io/OutputStream;I)V

    iget v15, v12, Laoy;->e:I

    add-int/2addr v15, v15

    add-int/2addr v11, v15

    invoke-static {v7, v12}, Lapa;->b(Ljava/io/OutputStream;Laoy;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    :catchall_a
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    goto/16 :goto_30

    :cond_30
    :try_start_26
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    array-length v12, v9

    if-ne v11, v12, :cond_37

    new-instance v11, Lmrd;

    sget-object v12, Laoz;->c:Laoz;

    const/4 v15, 0x1

    invoke-direct {v11, v12, v9, v15}, Lmrd;-><init>(Laoz;[BZ)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_15

    :try_start_27
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1d

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_24
    :try_start_28
    array-length v12, v1

    if-ge v9, v12, :cond_32

    aget-object v12, v1, v9

    iget-object v15, v12, Laoy;->i:Ljava/util/TreeMap;

    invoke-virtual {v15}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v10, 0x0

    :goto_25
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_12

    if-eqz v17, :cond_31

    :try_start_29
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    or-int v10, v10, v17

    goto :goto_25

    :catchall_b
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    goto/16 :goto_2d

    :cond_31
    :try_start_2a
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_12

    :try_start_2b
    invoke-static {v15, v12}, Lapa;->c(Ljava/io/OutputStream;Laoy;)V

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_f

    :try_start_2c
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_12

    :try_start_2d
    invoke-static {v15, v12}, Lapa;->d(Ljava/io/OutputStream;Laoy;)V

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_d

    :try_start_2e
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-static {v7, v9}, Lade;->l(Ljava/io/OutputStream;I)V

    array-length v15, v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_12

    const/16 v17, 0x2

    add-int/lit8 v15, v15, 0x2

    move-object/from16 v18, v3

    :try_start_2f
    array-length v3, v12
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_c

    add-int/2addr v15, v3

    add-int/lit8 v11, v11, 0x6

    move-object/from16 v19, v4

    int-to-long v3, v15

    :try_start_30
    invoke-static {v7, v3, v4}, Lade;->m(Ljava/io/OutputStream;J)V

    invoke-static {v7, v10}, Lade;->l(Ljava/io/OutputStream;I)V

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v7, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_11

    add-int/2addr v11, v15

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto :goto_24

    :catchall_c
    move-exception v0

    goto/16 :goto_2b

    :catchall_d
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object v1, v0

    :try_start_31
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_e

    goto :goto_26

    :catchall_e
    move-exception v0

    move-object v2, v0

    :try_start_32
    invoke-static {v1, v2}, Ladi;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_26
    throw v1
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_11

    :catchall_f
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object v1, v0

    :try_start_33
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_10

    goto :goto_27

    :catchall_10
    move-exception v0

    move-object v2, v0

    :try_start_34
    invoke-static {v1, v2}, Ladi;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_27
    throw v1

    :cond_32
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v2, v1

    if-ne v11, v2, :cond_36

    new-instance v2, Lmrd;

    sget-object v3, Laoz;->d:Laoz;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lmrd;-><init>(Laoz;[BZ)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_11

    :try_start_35
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x10

    mul-int/lit8 v1, v1, 0x10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v6, v2, v3}, Lade;->m(Ljava/io/OutputStream;J)V

    int-to-long v1, v1

    const-wide/16 v3, 0xc

    add-long/2addr v1, v3

    const/4 v3, 0x0

    :goto_28
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmrd;

    iget-object v7, v4, Lmrd;->c:Ljava/lang/Object;

    check-cast v7, Laoz;

    iget-wide v9, v7, Laoz;->f:J

    invoke-static {v6, v9, v10}, Lade;->m(Ljava/io/OutputStream;J)V

    invoke-static {v6, v1, v2}, Lade;->m(Ljava/io/OutputStream;J)V

    iget-boolean v7, v4, Lmrd;->a:Z

    if-eqz v7, :cond_33

    iget-object v4, v4, Lmrd;->b:Ljava/lang/Object;

    move-object v7, v4

    check-cast v7, [B

    array-length v7, v7

    int-to-long v9, v7

    check-cast v4, [B

    invoke-static {v4}, Lade;->o([B)[B

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v4, v4

    int-to-long v11, v4

    invoke-static {v6, v11, v12}, Lade;->m(Ljava/io/OutputStream;J)V

    invoke-static {v6, v9, v10}, Lade;->m(Ljava/io/OutputStream;J)V

    add-long/2addr v1, v11

    goto :goto_29

    :cond_33
    iget-object v7, v4, Lmrd;->b:Ljava/lang/Object;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v4, Lmrd;->b:Ljava/lang/Object;

    check-cast v7, [B

    array-length v7, v7

    int-to-long v9, v7

    invoke-static {v6, v9, v10}, Lade;->m(Ljava/io/OutputStream;J)V

    const-wide/16 v9, 0x0

    invoke-static {v6, v9, v10}, Lade;->m(Ljava/io/OutputStream;J)V

    iget-object v4, v4, Lmrd;->b:Ljava/lang/Object;

    check-cast v4, [B

    array-length v4, v4

    int-to-long v9, v4

    add-long/2addr v1, v9

    :goto_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_34
    const/4 v1, 0x0

    :goto_2a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1a

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_35
    move-object/from16 v4, v19

    goto/16 :goto_3b

    :cond_36
    :try_start_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lade;->g(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_11

    :catchall_11
    move-exception v0

    goto :goto_2c

    :catchall_12
    move-exception v0

    move-object/from16 v18, v3

    :goto_2b
    move-object/from16 v19, v4

    :goto_2c
    move-object v1, v0

    :goto_2d
    :try_start_37
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_13

    goto :goto_2e

    :catchall_13
    move-exception v0

    move-object v2, v0

    :try_start_38
    invoke-static {v1, v2}, Ladi;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2e
    throw v1
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1a

    :cond_37
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    :try_start_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lade;->g(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_14

    :catchall_14
    move-exception v0

    goto :goto_2f

    :catchall_15
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    :goto_2f
    move-object v1, v0

    :goto_30
    :try_start_3a
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_16

    goto :goto_31

    :catchall_16
    move-exception v0

    move-object v2, v0

    :try_start_3b
    invoke-static {v1, v2}, Ladi;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_31
    throw v1
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1a

    :cond_38
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    :try_start_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lade;->g(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_17

    :catchall_17
    move-exception v0

    goto :goto_32

    :catchall_18
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    :goto_32
    move-object v1, v0

    :goto_33
    :try_start_3d
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_19

    goto :goto_34

    :catchall_19
    move-exception v0

    move-object v2, v0

    :try_start_3e
    invoke-static {v1, v2}, Ladi;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_34
    throw v1
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1a

    :cond_39
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    :try_start_3f
    sget-object v2, Lape;->b:[B

    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1c

    if-eqz v2, :cond_3a

    :try_start_40
    sget-object v2, Lape;->b:[B

    invoke-static {v1, v2}, Lapa;->e([Laoy;[B)[B

    move-result-object v2

    array-length v1, v1

    invoke-static {v6, v1}, Lade;->n(Ljava/io/OutputStream;I)V

    invoke-static {v6, v2}, Lade;->i(Ljava/io/OutputStream;[B)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1a

    move-object/from16 v4, v19

    goto/16 :goto_3b

    :catchall_1a
    move-exception v0

    move-object v1, v0

    move-object/from16 v4, v19

    goto/16 :goto_3d

    :cond_3a
    :try_start_41
    sget-object v2, Lape;->d:[B

    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_1c

    if-eqz v2, :cond_3e

    :try_start_42
    array-length v2, v1

    invoke-static {v6, v2}, Lade;->n(Ljava/io/OutputStream;I)V

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v2, :cond_3d

    aget-object v4, v1, v3

    iget-object v5, v4, Laoy;->i:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    move-result v5

    const/4 v7, 0x4

    mul-int/lit8 v5, v5, 0x4

    iget-object v8, v4, Laoy;->a:Ljava/lang/String;

    iget-object v9, v4, Laoy;->b:Ljava/lang/String;

    sget-object v10, Lape;->d:[B

    invoke-static {v8, v9, v10}, Lapa;->a(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lade;->d(Ljava/lang/String;)I

    move-result v9

    invoke-static {v6, v9}, Lade;->l(Ljava/io/OutputStream;I)V

    iget-object v9, v4, Laoy;->h:[I

    array-length v9, v9

    invoke-static {v6, v9}, Lade;->l(Ljava/io/OutputStream;I)V

    int-to-long v9, v5

    invoke-static {v6, v9, v10}, Lade;->m(Ljava/io/OutputStream;J)V

    iget-wide v9, v4, Laoy;->c:J

    invoke-static {v6, v9, v10}, Lade;->m(Ljava/io/OutputStream;J)V

    invoke-static {v6, v8}, Lade;->j(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v5, v4, Laoy;->i:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v8}, Lade;->l(Ljava/io/OutputStream;I)V

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lade;->l(Ljava/io/OutputStream;I)V

    goto :goto_36

    :cond_3b
    iget-object v4, v4, Laoy;->h:[I

    array-length v5, v4

    const/4 v8, 0x0

    :goto_37
    if-ge v8, v5, :cond_3c

    aget v9, v4, v8

    invoke-static {v6, v9}, Lade;->l(Ljava/io/OutputStream;I)V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_1a

    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_3d
    move-object/from16 v4, v19

    goto/16 :goto_3b

    :cond_3e
    :try_start_43
    sget-object v2, Lape;->c:[B

    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_1c

    if-eqz v2, :cond_3f

    :try_start_44
    sget-object v2, Lape;->c:[B

    invoke-static {v1, v2}, Lapa;->e([Laoy;[B)[B

    move-result-object v2

    array-length v1, v1

    invoke-static {v6, v1}, Lade;->n(Ljava/io/OutputStream;I)V

    invoke-static {v6, v2}, Lade;->i(Ljava/io/OutputStream;[B)V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_1a

    move-object/from16 v4, v19

    goto/16 :goto_3b

    :cond_3f
    :try_start_45
    sget-object v2, Lape;->e:[B

    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_1c

    if-nez v2, :cond_40

    move-object/from16 v4, v19

    :try_start_46
    iget-object v1, v4, Laox;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    iput-object v3, v4, Laox;->h:[Laoy;
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1b

    :try_start_47
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_47 .. :try_end_47} :catch_b

    goto/16 :goto_42

    :cond_40
    move-object/from16 v4, v19

    :try_start_48
    array-length v2, v1

    invoke-static {v6, v2}, Lade;->l(Ljava/io/OutputStream;I)V

    const/4 v3, 0x0

    :goto_38
    if-ge v3, v2, :cond_43

    aget-object v5, v1, v3

    iget-object v7, v5, Laoy;->a:Ljava/lang/String;

    iget-object v8, v5, Laoy;->b:Ljava/lang/String;

    sget-object v9, Lape;->e:[B

    invoke-static {v7, v8, v9}, Lapa;->a(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lade;->d(Ljava/lang/String;)I

    move-result v8

    invoke-static {v6, v8}, Lade;->l(Ljava/io/OutputStream;I)V

    iget-object v8, v5, Laoy;->i:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v8

    invoke-static {v6, v8}, Lade;->l(Ljava/io/OutputStream;I)V

    iget-object v8, v5, Laoy;->h:[I

    array-length v8, v8

    invoke-static {v6, v8}, Lade;->l(Ljava/io/OutputStream;I)V

    iget-wide v8, v5, Laoy;->c:J

    invoke-static {v6, v8, v9}, Lade;->m(Ljava/io/OutputStream;J)V

    invoke-static {v6, v7}, Lade;->j(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v7, v5, Laoy;->i:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_39
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_41

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v8}, Lade;->l(Ljava/io/OutputStream;I)V

    goto :goto_39

    :cond_41
    iget-object v5, v5, Laoy;->h:[I

    array-length v7, v5

    const/4 v8, 0x0

    :goto_3a
    if-ge v8, v7, :cond_42

    aget v9, v5, v8

    invoke-static {v6, v9}, Lade;->l(Ljava/io/OutputStream;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_43
    :goto_3b
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v4, Laox;->i:[B
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1b

    :try_start_49
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_49 .. :try_end_49} :catch_b

    goto :goto_41

    :catchall_1b
    move-exception v0

    goto :goto_3c

    :catchall_1c
    move-exception v0

    move-object/from16 v4, v19

    goto :goto_3c

    :catchall_1d
    move-exception v0

    move-object/from16 v18, v3

    :goto_3c
    move-object v1, v0

    :goto_3d
    :try_start_4a
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1e

    goto :goto_3e

    :catchall_1e
    move-exception v0

    move-object v2, v0

    :try_start_4b
    invoke-static {v1, v2}, Lada;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3e
    throw v1
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4b} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_4b .. :try_end_4b} :catch_b

    :catch_b
    move-exception v0

    goto :goto_3f

    :catch_c
    move-exception v0

    goto :goto_40

    :catch_d
    move-exception v0

    move-object/from16 v18, v3

    :goto_3f
    move-object v1, v0

    iget-object v2, v4, Laox;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    goto :goto_41

    :catch_e
    move-exception v0

    move-object/from16 v18, v3

    :goto_40
    move-object v1, v0

    iget-object v2, v4, Laox;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    :goto_41
    const/4 v1, 0x0

    iput-object v1, v4, Laox;->h:[Laoy;

    goto :goto_42

    :cond_44
    move-object/from16 v18, v3

    :goto_42
    iget-object v1, v4, Laox;->i:[B

    if-nez v1, :cond_45

    const/4 v8, 0x0

    goto/16 :goto_46

    :cond_45
    invoke-virtual {v4}, Laox;->a()V

    :try_start_4c
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_4c} :catch_10
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4c} :catch_f
    .catchall {:try_start_4c .. :try_end_4c} :catchall_24

    :try_start_4d
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, v4, Laox;->c:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_22

    const/16 v3, 0x200

    :try_start_4e
    new-array v3, v3, [B

    :goto_43
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_46

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_43

    :cond_46
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Laox;->b(ILjava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_20

    :try_start_4f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_22

    :try_start_50
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_50} :catch_10
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_50} :catch_f
    .catchall {:try_start_50 .. :try_end_50} :catchall_1f

    iput-object v5, v4, Laox;->i:[B

    iput-object v5, v4, Laox;->h:[Laoy;

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    invoke-static {v1, v2}, Ladh;->b(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    const/4 v8, 0x1

    goto :goto_46

    :catchall_1f
    move-exception v0

    move-object v2, v0

    move-object v1, v5

    goto :goto_47

    :catchall_20
    move-exception v0

    move-object v3, v0

    :try_start_51
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_21

    goto :goto_44

    :catchall_21
    move-exception v0

    move-object v1, v0

    :try_start_52
    invoke-static {v3, v1}, Lada;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_44
    throw v3
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_22

    :catchall_22
    move-exception v0

    move-object v1, v0

    :try_start_53
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_23

    goto :goto_45

    :catchall_23
    move-exception v0

    move-object v2, v0

    :try_start_54
    invoke-static {v1, v2}, Lada;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_45
    throw v1
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_54} :catch_10
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_54} :catch_f
    .catchall {:try_start_54 .. :try_end_54} :catchall_24

    :catchall_24
    move-exception v0

    move-object v2, v0

    const/4 v1, 0x0

    goto :goto_47

    :catch_f
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x7

    :try_start_55
    invoke-virtual {v4, v2, v1}, Laox;->b(ILjava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_24

    const/4 v1, 0x0

    iput-object v1, v4, Laox;->i:[B

    iput-object v1, v4, Laox;->h:[Laoy;

    const/4 v8, 0x0

    goto :goto_46

    :catch_10
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x6

    :try_start_56
    invoke-virtual {v4, v2, v1}, Laox;->b(ILjava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_25

    const/4 v1, 0x0

    iput-object v1, v4, Laox;->i:[B

    iput-object v1, v4, Laox;->h:[Laoy;

    const/4 v8, 0x0

    :goto_46
    move-object/from16 v1, p1

    invoke-static {v1, v8}, Lapd;->a(Landroid/content/Context;Z)V

    return-void

    :catchall_25
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_47
    iput-object v1, v4, Laox;->i:[B

    iput-object v1, v4, Laox;->h:[Laoy;

    throw v2

    :catch_11
    move-exception v0

    move-object v1, v2

    move-object v2, v0

    const/4 v3, 0x7

    invoke-virtual {v12, v3, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lapd;->a(Landroid/content/Context;Z)V

    return-void

    :cond_47
    move-object v1, v2

    const-string v2, "androidx.profileinstaller.action.SKIP_FILE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0xa

    if-eqz v2, :cond_4a

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_49

    const-string v3, "EXTRA_SKIP_FILE_OPERATION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WRITE_SKIP_FILE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    sget-object v2, Lqj;->a:Lqj;

    new-instance v3, Landroidx/wear/ambient/AmbientMode$AmbientController;

    move-object/from16 v5, p0

    invoke-direct {v3, v5}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Landroidx/profileinstaller/ProfileInstallReceiver;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    :try_start_57
    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_57 .. :try_end_57} :catch_12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v6, v1}, Ladh;->b(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1}, Ladh;->c(Ljava/util/concurrent/Executor;Landroidx/wear/ambient/AmbientMode$AmbientController;ILjava/lang/Object;)V

    return-void

    :catch_12
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x7

    invoke-static {v2, v3, v4, v1}, Ladh;->c(Ljava/util/concurrent/Executor;Landroidx/wear/ambient/AmbientMode$AmbientController;ILjava/lang/Object;)V

    return-void

    :cond_48
    move-object/from16 v5, p0

    const-string v3, "DELETE_SKIP_FILE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    sget-object v2, Lqj;->a:Lqj;

    new-instance v3, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v3, v5}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Landroidx/profileinstaller/ProfileInstallReceiver;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    const-string v6, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    invoke-direct {v4, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    const/16 v1, 0xb

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Ladh;->c(Ljava/util/concurrent/Executor;Landroidx/wear/ambient/AmbientMode$AmbientController;ILjava/lang/Object;)V

    return-void

    :cond_49
    move-object/from16 v5, p0

    goto :goto_48

    :cond_4a
    move-object/from16 v5, p0

    const-string v2, "androidx.profileinstaller.action.SAVE_PROFILE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    new-instance v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v1, v5}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Landroidx/profileinstaller/ProfileInstallReceiver;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2, v4}, Landroid/os/Process;->sendSignal(II)V

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    return-void

    :cond_4b
    const-string v2, "androidx.profileinstaller.action.BENCHMARK_OPERATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4e

    const-string v3, "EXTRA_BENCHMARK_OPERATION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v3, v5}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Landroidx/profileinstaller/ProfileInstallReceiver;)V

    const-string v4, "DROP_SHADER_CACHE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lacz;->e(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    return-void

    :cond_4c
    const/4 v2, 0x0

    const/16 v1, 0xf

    invoke-virtual {v3, v1, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    return-void

    :cond_4d
    const/4 v2, 0x0

    const/16 v1, 0x10

    invoke-virtual {v3, v1, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    return-void

    :cond_4e
    :goto_48
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method
