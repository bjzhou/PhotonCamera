.class public final synthetic Llmb;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Llmc;


# direct methods
.method public synthetic constructor <init>(Llmc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmb;->a:Llmc;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 19

    move-object/from16 v1, p0

    iget-object v2, v1, Llmb;->a:Llmc;

    iget-object v0, v2, Llmc;->d:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llma;

    iget-object v0, v2, Llmc;->c:Landroid/app/Application;

    invoke-static {v0}, Lktm;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnor;->a:Lnou;

    goto/16 :goto_11

    :cond_0
    invoke-static {}, Llho;->h()V

    iget-object v0, v2, Llmc;->f:Lva;

    sget-wide v3, Llmc;->b:J

    invoke-static {}, Llho;->h()V

    iget-object v5, v0, Lva;->b:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lktm;->d(Landroid/content/Context;)Z

    move-result v5

    const-string v6, "primes.packageMetric.lastSendTime"

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, v0, Lva;->b:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lktm;->d(Landroid/content/Context;)Z

    move-result v5

    const-wide/16 v7, -0x1

    if-eqz v5, :cond_2

    iget-object v5, v0, Lva;->c:Ljava/lang/Object;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SharedPreferences;

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    goto :goto_0

    :cond_2
    move-wide v9, v7

    :goto_0
    iget-object v5, v0, Lva;->a:Ljava/lang/Object;

    invoke-interface {v5}, Lkrn;->b()J

    move-result-wide v11

    cmp-long v5, v11, v9

    if-gez v5, :cond_3

    iget-object v0, v0, Lva;->c:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-wide v9, v7

    goto :goto_1

    :cond_3
    :goto_1
    cmp-long v0, v9, v7

    if-eqz v0, :cond_4

    add-long/2addr v9, v3

    cmp-long v0, v11, v9

    if-gtz v0, :cond_4

    sget-object v0, Lnor;->a:Lnou;

    goto/16 :goto_11

    :cond_4
    :goto_2
    iget-object v0, v2, Llmc;->e:Lmap;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lmap;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lnor;->a:Lnou;

    goto/16 :goto_11

    :cond_5
    iget-object v0, v2, Llmc;->c:Landroid/app/Application;

    invoke-static {}, Llho;->h()V

    invoke-static {v0}, Lllx;->a(Landroid/content/Context;)Landroid/content/pm/PackageStats;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "PackageStats capture failed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v0

    goto/16 :goto_11

    :cond_6
    sget-object v4, Lozv;->u:Lozv;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    sget-object v5, Lozq;->k:Lozq;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    iget-wide v7, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v9, v5, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_7
    iget-object v9, v5, Lnwn;->b:Lnws;

    check-cast v9, Lozq;

    iget v10, v9, Lozq;->a:I

    const/4 v11, 0x1

    or-int/2addr v10, v11

    iput v10, v9, Lozq;->a:I

    iput-wide v7, v9, Lozq;->b:J

    iget-wide v7, v0, Landroid/content/pm/PackageStats;->codeSize:J

    iget-object v9, v5, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_8
    iget-object v9, v5, Lnwn;->b:Lnws;

    check-cast v9, Lozq;

    iget v10, v9, Lozq;->a:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v9, Lozq;->a:I

    iput-wide v7, v9, Lozq;->c:J

    iget-wide v7, v0, Landroid/content/pm/PackageStats;->dataSize:J

    iget-object v9, v5, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_9
    iget-object v9, v5, Lnwn;->b:Lnws;

    check-cast v9, Lozq;

    iget v10, v9, Lozq;->a:I

    or-int/lit8 v10, v10, 0x4

    iput v10, v9, Lozq;->a:I

    iput-wide v7, v9, Lozq;->d:J

    iget-wide v7, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-object v9, v5, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_a
    iget-object v9, v5, Lnwn;->b:Lnws;

    check-cast v9, Lozq;

    iget v10, v9, Lozq;->a:I

    or-int/lit8 v10, v10, 0x8

    iput v10, v9, Lozq;->a:I

    iput-wide v7, v9, Lozq;->e:J

    iget-wide v7, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-object v9, v5, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_b
    iget-object v9, v5, Lnwn;->b:Lnws;

    check-cast v9, Lozq;

    iget v10, v9, Lozq;->a:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v9, Lozq;->a:I

    iput-wide v7, v9, Lozq;->f:J

    iget-wide v7, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-object v9, v5, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_c
    iget-object v9, v5, Lnwn;->b:Lnws;

    check-cast v9, Lozq;

    iget v10, v9, Lozq;->a:I

    or-int/lit8 v10, v10, 0x20

    iput v10, v9, Lozq;->a:I

    iput-wide v7, v9, Lozq;->g:J

    iget-wide v7, v0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    iget-object v9, v5, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_d
    iget-object v9, v5, Lnwn;->b:Lnws;

    check-cast v9, Lozq;

    iget v10, v9, Lozq;->a:I

    or-int/lit8 v10, v10, 0x40

    iput v10, v9, Lozq;->a:I

    iput-wide v7, v9, Lozq;->h:J

    iget-wide v7, v0, Landroid/content/pm/PackageStats;->externalObbSize:J

    iget-object v0, v5, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_e
    iget-object v0, v5, Lnwn;->b:Lnws;

    check-cast v0, Lozq;

    iget v9, v0, Lozq;->a:I

    or-int/lit16 v9, v9, 0x80

    iput v9, v0, Lozq;->a:I

    iput-wide v7, v0, Lozq;->i:J

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lozq;

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnwn;

    invoke-virtual {v5, v0}, Lnwn;->s(Lnws;)V

    iget-object v0, v2, Llmc;->d:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llma;

    iget-object v0, v0, Llma;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v7

    if-eqz v7, :cond_27

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lllv;

    invoke-virtual {v7}, Lllv;->b()Z

    move-result v7

    if-eqz v7, :cond_27

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lllv;

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_f
    iget-object v7, v5, Lnwn;->b:Lnws;

    check-cast v7, Lozq;

    sget-object v8, Lnyi;->b:Lnyi;

    iput-object v8, v7, Lozq;->j:Lnxa;

    iget-object v7, v2, Llmc;->c:Landroid/app/Application;

    iget v8, v0, Lllv;->a:I

    iget-object v9, v0, Lllv;->b:Lmvv;

    invoke-static {}, Llho;->h()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v12, Ljava/util/EnumMap;

    const-class v0, Lozo;

    invoke-direct {v12, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    const/4 v13, 0x0

    :try_start_1
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v14, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    move-object v3, v14

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lllt;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v14, "Failed to use package manager getting data directory from context instead."

    const/16 v15, 0x11b8

    invoke-static {v0, v14, v15}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    goto :goto_3

    :cond_10
    :goto_3
    if-eqz v3, :cond_11

    sget-object v0, Lozo;->b:Lozo;

    invoke-interface {v12, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/PriorityQueue;

    invoke-direct {v7}, Ljava/util/PriorityQueue;-><init>()V

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_25

    :goto_5
    invoke-virtual {v7}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Llls;

    if-eqz v12, :cond_1d

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v14, v12, Llls;->e:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    if-eqz v14, :cond_1c

    :try_start_3
    iget-object v14, v12, Llls;->b:Ljava/io/File;

    invoke-static {v14}, Lj$/io/FileRetargetClass;->toPath(Ljava/io/File;)Lj$/nio/file/Path;

    move-result-object v14

    iget-object v15, v12, Llls;->f:Ljava/lang/String;

    invoke-interface {v14, v15}, Lj$/nio/file/Path;->resolve(Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object v14

    invoke-static {v14}, Lj$/nio/file/Files;->newDirectoryStream(Lj$/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v14
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    :try_start_4
    invoke-interface {v14}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_19

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lj$/nio/file/Path;

    const-class v13, Lj$/nio/file/attribute/BasicFileAttributes;

    new-array v1, v11, [Lj$/nio/file/LinkOption;

    sget-object v18, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    const/16 v16, 0x0

    aput-object v18, v1, v16

    invoke-static {v0, v13, v1}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-interface {v1}, Lj$/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v13

    if-nez v13, :cond_18

    invoke-interface {v1}, Lj$/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v13, :cond_16

    move-object/from16 v18, v12

    :try_start_5
    invoke-interface {v1}, Lj$/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v1, v18

    move-object/from16 v18, v14

    :try_start_6
    iget-wide v13, v1, Llls;->g:J

    add-long/2addr v13, v11

    iput-wide v13, v1, Llls;->g:J

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_15

    invoke-virtual {v7}, Ljava/util/PriorityQueue;->size()I

    move-result v13

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    add-int/2addr v13, v14

    const/16 v14, 0x200

    if-gt v13, v14, :cond_14

    new-instance v13, Llls;

    invoke-interface {v0}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-direct {v13, v1, v14, v0}, Llls;-><init>(Llls;ZLjava/lang/String;)V

    invoke-virtual {v9}, Lmvv;->s()Lnad;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lllu;

    invoke-interface {v14}, Lllu;->a()Z

    move-result v14

    if-eqz v14, :cond_12

    iput-wide v11, v13, Llls;->g:J

    invoke-virtual {v7, v13}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v12, v1

    move-object/from16 v14, v18

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object/from16 v1, p0

    goto :goto_6

    :cond_13
    move-object v12, v1

    move-object/from16 v14, v18

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_6

    :cond_14
    move-object v12, v1

    move-object/from16 v14, v18

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_6

    :cond_15
    move-object v12, v1

    move-object/from16 v14, v18

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v1, v18

    move-object/from16 v18, v14

    :goto_7
    move-object v11, v1

    goto :goto_8

    :cond_16
    move-object v11, v12

    move-object/from16 v18, v14

    :try_start_7
    invoke-interface {v1}, Lj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v1, Llls;

    invoke-interface {v0}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x1

    invoke-direct {v1, v11, v12, v0}, Llls;-><init>(Llls;ZLjava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v1, p0

    move-object v12, v11

    move-object/from16 v14, v18

    const/4 v11, 0x1

    const/4 v13, 0x0

    goto/16 :goto_6

    :cond_17
    move-object/from16 v1, p0

    move-object v12, v11

    move-object/from16 v14, v18

    const/4 v11, 0x1

    const/4 v13, 0x0

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_18
    move-object v11, v12

    move-object/from16 v18, v14

    move-object/from16 v1, p0

    const/4 v11, 0x1

    const/4 v13, 0x0

    goto/16 :goto_6

    :cond_19
    move-object v11, v12

    move-object/from16 v18, v14

    if-eqz v18, :cond_1a

    :try_start_8
    invoke-interface/range {v18 .. v18}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    move-object/from16 v1, p0

    const/4 v11, 0x1

    const/4 v13, 0x0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_b

    :cond_1a
    move-object/from16 v1, p0

    const/4 v11, 0x1

    const/4 v13, 0x0

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    move-object v11, v12

    move-object/from16 v18, v14

    :goto_8
    move-object v1, v0

    if-eqz v18, :cond_1b

    :try_start_9
    invoke-interface/range {v18 .. v18}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const/16 v16, 0x0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v12, v0

    :try_start_a
    const-class v0, Ljava/lang/Throwable;

    const-string v14, "addSuppressed"

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Class;

    const-class v17, Ljava/lang/Throwable;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    const/16 v16, 0x0

    :try_start_b
    aput-object v17, v15, v16

    invoke-virtual {v0, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v12, v14, v16

    invoke-virtual {v0, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    const/16 v16, 0x0

    goto :goto_9

    :cond_1b
    const/16 v16, 0x0

    :goto_9
    :try_start_c
    throw v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_c

    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    :goto_a
    move-object v11, v12

    :goto_b
    const/16 v16, 0x0

    :goto_c
    :try_start_d
    sget-object v1, Lllt;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x11b5

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "exception while collecting DirStats for dir %s"

    iget-object v11, v11, Llls;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v11}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v1, p0

    const/4 v11, 0x1

    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_1c
    const/16 v16, 0x0

    move-object/from16 v1, p0

    const/4 v11, 0x1

    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_1d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_1f

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llls;

    iget-boolean v7, v1, Llls;->e:Z

    if-eqz v7, :cond_1e

    iget-object v7, v1, Llls;->c:Llls;

    if-eqz v7, :cond_1e

    iget-wide v11, v7, Llls;->g:J

    iget-wide v14, v1, Llls;->g:J

    add-long/2addr v11, v14

    iput-wide v11, v7, Llls;->g:J

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llls;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/16 v9, 0x200

    if-ge v7, v9, :cond_24

    iget v7, v3, Llls;->d:I

    if-le v7, v8, :cond_20

    goto :goto_f

    :cond_20
    sget-object v7, Lozp;->f:Lozp;

    invoke-virtual {v7}, Lnws;->O()Lnwn;

    move-result-object v7

    iget-object v11, v3, Llls;->a:Lozo;

    iget-object v12, v7, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_21

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_21
    iget-object v12, v7, Lnwn;->b:Lnws;

    move-object v14, v12

    check-cast v14, Lozp;

    iget v11, v11, Lozo;->d:I

    iput v11, v14, Lozp;->e:I

    iget v11, v14, Lozp;->a:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v14, Lozp;->a:I

    iget-object v11, v3, Llls;->f:Ljava/lang/String;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_22

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_22
    iget-object v12, v7, Lnwn;->b:Lnws;

    move-object v14, v12

    check-cast v14, Lozp;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v14, Lozp;->a:I

    const/4 v13, 0x1

    or-int/2addr v15, v13

    iput v15, v14, Lozp;->a:I

    iput-object v11, v14, Lozp;->b:Ljava/lang/String;

    iget-wide v14, v3, Llls;->g:J

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_23
    iget-object v3, v7, Lnwn;->b:Lnws;

    check-cast v3, Lozp;

    iget v11, v3, Lozp;->a:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v3, Lozp;->a:I

    iput-wide v14, v3, Lozp;->d:J

    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lozp;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_24
    :goto_f
    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    invoke-static {v10}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v0

    goto :goto_10

    :cond_25
    const/4 v13, 0x1

    const/16 v16, 0x0

    :try_start_e
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    :try_start_f
    new-instance v0, Llls;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lozo;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v14

    invoke-direct {v0, v11, v14}, Llls;-><init>(Lozo;Ljava/io/File;)V

    invoke-virtual {v7, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    move-object/from16 v1, p0

    const/4 v11, 0x1

    const/4 v13, 0x0

    goto/16 :goto_4

    :catch_9
    move-exception v0

    :try_start_10
    sget-object v11, Lllt;->a:Lnak;

    invoke-virtual {v11}, Lnaf;->c()Lnaz;

    move-result-object v11

    const-string v14, "couldn\'t canonicalize %s, skipping"

    const/16 v15, 0x11b6

    invoke-static {v11, v14, v1, v15, v0}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    move-object/from16 v1, p0

    const/4 v11, 0x1

    const/4 v13, 0x0

    goto/16 :goto_4

    :catch_a
    move-exception v0

    sget-object v1, Lllt;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v3, "Failed to retrieve DirStats."

    const/16 v7, 0x11b7

    invoke-static {v1, v3, v7, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    sget v0, Lmvv;->d:I

    sget-object v0, Lmyu;->a:Lmvv;

    :goto_10
    iget-object v1, v5, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_26
    iget-object v1, v5, Lnwn;->b:Lnws;

    check-cast v1, Lozq;

    invoke-virtual {v1}, Lozq;->c()V

    iget-object v1, v1, Lozq;->j:Lnxa;

    invoke-static {v0, v1}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    :cond_27
    iget-object v0, v4, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_28
    iget-object v0, v4, Lnwn;->b:Lnws;

    check-cast v0, Lozv;

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lozq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lozv;->h:Lozq;

    iget v1, v0, Lozv;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lozv;->a:I

    iget-object v0, v2, Llmc;->f:Lva;

    iget-object v1, v0, Lva;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lktm;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v0, Lva;->c:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lkrn;->b()J

    move-result-wide v7

    invoke-interface {v1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_29
    iget-object v0, v2, Llmc;->e:Lmap;

    invoke-static {}, Llif;->a()Llie;

    move-result-object v1

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lozv;

    invoke-virtual {v1, v2}, Llie;->e(Lozv;)V

    invoke-virtual {v1}, Llie;->a()Llif;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmap;->b(Llif;)Lnou;

    move-result-object v0

    :goto_11
    return-object v0
.end method
