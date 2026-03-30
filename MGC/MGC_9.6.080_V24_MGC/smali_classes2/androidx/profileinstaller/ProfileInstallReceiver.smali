.class public Landroidx/profileinstaller/ProfileInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static a(ILandroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0, v0}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const/16 p0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const/16 v0, 0xa

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_2f

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3
    sget-object v5, Lcom/google/vr/ndk/base/qbMr/qVSTXuYNqkCvm;->jhJWTWdPQl:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    move-object v1, v0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v9, v9, 0x1

    nop

    goto/32 :goto_19a

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v5

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct/range {v10 .. v15}, Leep;-><init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Landroidx/wear/ambient/AmbientMode$AmbientController;Ljava/lang/String;Ljava/io/File;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_1c5

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v8, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object/from16 v17, v4

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v4, v11, Leeq;->i:Ljava/util/TreeMap;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    nop

    nop

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    nop

    nop

    if-eqz v18, :cond_3f

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    nop

    nop

    nop

    nop

    nop

    check-cast v18, Ljava/util/Map$Entry;

    nop

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    nop

    nop

    check-cast v19, Ljava/lang/Integer;

    nop

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    nop

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    nop

    nop

    check-cast v18, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2a

    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v7, v3, Leep;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    :goto_13
    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1, v2}, Landroidx/profileinstaller/ProfileInstallReceiver;->a(ILandroidx/wear/ambient/AmbientMode$AmbientController;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    invoke-static {v1}, Ldwc;->r(Ljava/io/File;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    :goto_17
    goto/16 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v16, v1

    nop

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    nop

    :goto_19
    throw v3

    nop

    nop

    nop

    nop

    :catch_2
    goto/32 :goto_71

    nop

    nop

    :goto_1a
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_171

    nop

    nop

    nop

    nop

    :catch_3
    move-exception v0

    nop

    goto/32 :goto_170

    nop

    nop

    :goto_1c
    iget-object v3, v2, Leep;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v5, v3, Leep;->c:Ljava/io/File;

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v5, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1f
    goto/16 :goto_1eb

    nop

    :catch_4
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_20
    const/4 v3, 0x7

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {v2, v3, v1}, Leep;->b(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1d

    goto/32 :goto_247

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :goto_22
    goto/32 :goto_231

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_18d

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v5, v6, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    :goto_25
    goto/32 :goto_222

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v2, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_27
    move-object/from16 v16, v6

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_154

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_29
    move-object v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22f

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v10, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8f

    nop

    :cond_0
    goto/32 :goto_8e

    nop

    :goto_2d
    and-int v3, v4, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v2, v0

    nop

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2f
    throw v1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    move-object/from16 v16, v1

    nop

    nop

    nop

    move-object/from16 v22, v3

    nop

    nop

    move-object/from16 v17, v4

    nop

    nop

    nop

    nop

    move-object/from16 v18, v12

    nop

    nop

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    nop

    nop

    nop

    array-length v2, v1

    nop

    nop

    nop

    nop

    if-ne v10, v2, :cond_43

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lrth;

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Leer;->d:Leer;

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3, v1, v4}, Lrth;-><init>(Leer;[BZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1e

    :try_start_4
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    const/16 v2, 0x10

    nop

    nop

    nop

    mul-int/2addr v1, v2

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    int-to-long v2, v2

    nop

    invoke-static {v6, v2, v3}, Ldwc;->m(Ljava/io/OutputStream;J)V

    int-to-long v1, v1

    nop

    nop

    nop

    const-wide/16 v3, 0xc

    nop

    nop

    nop

    nop

    add-long/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    if-ge v3, v4, :cond_3

    nop

    nop

    nop

    nop

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lrth;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v4, Lrth;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v7, Leer;

    nop

    nop

    nop

    nop

    nop

    iget-wide v9, v7, Leer;->f:J

    nop

    invoke-static {v6, v9, v10}, Ldwc;->m(Ljava/io/OutputStream;J)V

    invoke-static {v6, v1, v2}, Ldwc;->m(Ljava/io/OutputStream;J)V

    iget-boolean v7, v4, Lrth;->a:Z

    nop

    if-eqz v7, :cond_2

    nop

    nop

    nop

    iget-object v4, v4, Lrth;->b:Ljava/lang/Object;

    nop

    move-object v7, v4

    nop

    nop

    nop

    nop

    nop

    check-cast v7, [B

    nop

    nop

    nop

    array-length v7, v7

    nop

    nop

    nop

    int-to-long v9, v7

    nop

    nop

    nop

    nop

    nop

    check-cast v4, [B

    nop

    nop

    invoke-static {v4}, Ldwc;->o([B)[B

    move-result-object v4

    nop

    nop

    nop

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v4, v4

    nop

    nop

    int-to-long v11, v4

    nop

    invoke-static {v6, v11, v12}, Ldwc;->m(Ljava/io/OutputStream;J)V

    invoke-static {v6, v9, v10}, Ldwc;->m(Ljava/io/OutputStream;J)V

    add-long/2addr v1, v11

    nop

    nop

    nop

    nop

    goto :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v7, v4, Lrth;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v4, Lrth;->b:Ljava/lang/Object;

    nop

    check-cast v7, [B

    nop

    array-length v7, v7

    nop

    int-to-long v9, v7

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v9, v10}, Ldwc;->m(Ljava/io/OutputStream;J)V

    const-wide/16 v9, 0x0

    nop

    nop

    invoke-static {v6, v9, v10}, Ldwc;->m(Ljava/io/OutputStream;J)V

    iget-object v4, v4, Lrth;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v4, [B

    nop

    nop

    nop

    nop

    nop

    array-length v4, v4

    nop

    int-to-long v9, v4

    nop

    nop

    nop

    add-long/2addr v1, v9

    nop

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    :cond_3
    const/4 v1, 0x0

    nop

    nop

    :goto_32
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    if-ge v1, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, [B

    nop

    nop

    nop

    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_20

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_1dc

    nop

    nop

    nop

    nop

    :cond_4
    :goto_34
    :try_start_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_11

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v11, v3, Leep;->a:Landroid/content/res/AssetManager;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    :goto_37
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    :try_start_6
    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    nop

    nop

    nop
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_12

    goto/32 :goto_fd

    nop

    nop

    :goto_38
    move-object v3, v0

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_235

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/16 v4, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_3b
    move-object v3, v2

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/16 v6, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const-string v4, "androidx.profileinstaller.action.SKIP_FILE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_ad

    nop

    nop

    nop

    :catch_5
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move-object/from16 v17, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    :goto_41
    const/4 v10, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    :goto_42
    move-object v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    :goto_43
    move-object/from16 v12, v18

    nop

    nop

    goto/32 :goto_220

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-string v12, "Unsupported meta version"

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_236

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_227

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v1, 0x0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_4a
    const/4 v12, 0x6

    nop

    nop

    nop

    :try_start_7
    iget-object v13, v3, Leep;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v11, v13}, Leep;->c(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    nop
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_4b
    const-string v4, "androidx.profileinstaller.action.INSTALL_PROFILE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    :goto_4c
    move-object/from16 v16, v1

    nop

    nop

    nop

    goto/32 :goto_20a

    nop

    nop

    nop

    :goto_4d
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4e
    throw v1

    nop

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_20

    :cond_5
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_50
    throw v1

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_20

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e9

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_52
    goto :goto_4e

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_53
    return-void

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_ed

    nop

    nop

    :goto_55
    invoke-static {v3, v4, v2, v1}, Ldwq;->g(Ljava/util/concurrent/Executor;Landroidx/wear/ambient/AmbientMode$AmbientController;ILjava/lang/Object;)V

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_22a

    nop

    nop

    nop

    :goto_57
    move-object v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_58
    iput-object v1, v2, Leep;->h:[Leeq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f6

    nop

    nop

    :goto_59
    const/4 v7, 0x7

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    nop

    :goto_5a
    move-object v5, v0

    nop

    nop

    nop

    nop

    :goto_5b
    :try_start_a
    iget-object v7, v3, Leep;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    nop

    const/16 v8, 0x8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8, v5}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_29

    :try_start_b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    goto/32 :goto_eb

    nop

    nop

    :goto_5c
    new-instance v15, Ljava/io/File;

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    :goto_5d
    move-object/from16 v17, v4

    nop

    nop

    nop

    nop

    nop

    :try_start_c
    sget-object v1, Leev;->b:[B

    nop

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_11

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    :goto_5e
    move-object/from16 v17, v4

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v9, 0x0

    nop

    nop

    :goto_61
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_82

    nop

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    :goto_63
    const/4 v3, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    :goto_64
    move-object/from16 v16, v7

    nop

    nop

    :goto_65
    :try_start_d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_16
    .catchall {:try_start_d .. :try_end_d} :catchall_24

    :try_start_e
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_15

    goto/32 :goto_16a

    nop

    nop

    :goto_66
    iget-object v2, v3, Leep;->h:[Leeq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    :goto_67
    move-object/from16 v26, v13

    nop

    :try_start_f
    invoke-static {v8}, Ldwc;->g(Ljava/io/InputStream;)J

    move-result-wide v12

    nop

    invoke-static {v8}, Ldwc;->g(Ljava/io/InputStream;)J

    move-result-wide v19

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v27, v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8}, Ldwc;->g(Ljava/io/InputStream;)J

    move-result-wide v5

    nop

    new-instance v28, Leeq;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8, v15}, Ldwc;->h(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v18

    nop

    nop

    nop

    nop

    nop

    long-to-int v12, v12

    nop

    nop

    nop

    nop

    nop

    long-to-int v5, v5

    nop

    nop

    nop

    nop

    new-array v6, v9, [I

    nop

    new-instance v25, Ljava/util/TreeMap;

    nop

    nop

    nop

    invoke-direct/range {v25 .. v25}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v16, v28

    nop

    move-object/from16 v17, v27

    nop

    nop

    nop

    nop

    nop

    move/from16 v21, v9

    nop

    nop

    nop

    move/from16 v22, v12

    nop

    nop

    move/from16 v23, v5

    nop

    nop

    nop

    move-object/from16 v24, v6

    nop

    nop

    nop

    invoke-direct/range {v16 .. v25}, Leeq;-><init>(Ljava/lang/String;Ljava/lang/String;JIII[ILjava/util/TreeMap;)V

    aput-object v28, v7, v14

    nop

    nop

    nop

    add-int/lit8 v14, v14, 0x1

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v13, v26

    nop

    nop

    nop

    move-object/from16 v6, v27

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v12, 0x6

    nop

    nop

    nop

    goto/16 :goto_9f

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    nop

    nop

    nop

    goto/16 :goto_21d

    nop

    nop

    :cond_6
    move-object/from16 v26, v13

    nop

    const/4 v5, 0x0

    nop

    nop

    :goto_68
    if-ge v5, v10, :cond_12

    nop

    nop

    nop

    aget-object v6, v7, v5

    nop

    nop

    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v9

    nop

    nop

    nop

    iget v12, v6, Leeq;->f:I

    nop

    nop

    nop

    sub-int/2addr v9, v12

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v13

    nop

    if-le v13, v9, :cond_b

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8}, Ldwc;->c(Ljava/io/InputStream;)I

    move-result v13

    nop

    add-int/2addr v12, v13

    nop

    iget-object v13, v6, Leeq;->i:Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    nop

    move-object/from16 v16, v7

    nop

    nop

    const/4 v15, 0x1

    nop

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v14, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ldwc;->c(Ljava/io/InputStream;)I

    move-result v7

    nop

    :goto_6a
    if-lez v7, :cond_a

    nop

    invoke-static {v8}, Ldwc;->c(Ljava/io/InputStream;)I

    invoke-static {v8}, Ldwc;->d(Ljava/io/InputStream;)I

    move-result v13

    nop

    nop

    nop

    nop

    const/4 v14, 0x6

    nop

    nop

    if-ne v13, v14, :cond_7

    nop

    nop

    goto :goto_6d

    nop

    :cond_7
    const/4 v14, 0x7

    nop

    nop

    nop

    nop

    if-eq v13, v14, :cond_9

    nop

    nop

    nop

    :goto_6b
    if-lez v13, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8}, Ldwc;->d(Ljava/io/InputStream;)I

    invoke-static {v8}, Ldwc;->d(Ljava/io/InputStream;)I

    move-result v14

    nop

    nop

    nop

    nop

    :goto_6c
    if-lez v14, :cond_8

    nop

    nop

    nop

    invoke-static {v8}, Ldwc;->c(Ljava/io/InputStream;)I

    add-int/lit8 v14, v14, -0x1

    nop

    nop

    goto :goto_6c

    nop

    nop

    :cond_8
    add-int/lit8 v13, v13, -0x1

    nop

    nop

    goto :goto_6b

    nop

    nop

    nop

    nop

    :cond_9
    :goto_6d
    add-int/lit8 v7, v7, -0x1

    nop

    nop

    goto :goto_6a

    nop

    nop

    nop

    nop

    :cond_a
    move-object/from16 v7, v16

    nop

    nop

    nop

    nop

    goto/16 :goto_69

    nop

    nop

    nop

    nop

    :cond_b
    move-object/from16 v16, v7

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v7

    nop

    if-ne v7, v9, :cond_11

    nop

    nop

    nop

    nop

    nop

    iget v7, v6, Leeq;->e:I

    nop

    nop

    nop

    nop

    invoke-static {v8, v7}, Lees;->g(Ljava/io/InputStream;I)[I

    move-result-object v7

    nop

    nop

    nop

    iput-object v7, v6, Leeq;->h:[I

    nop

    nop

    nop

    nop

    nop

    iget v7, v6, Leeq;->g:I

    nop

    nop

    nop

    nop

    add-int/2addr v7, v7

    nop

    nop

    const/4 v9, 0x7

    nop

    nop

    add-int/2addr v7, v9

    nop

    nop

    nop

    nop

    and-int/lit8 v7, v7, -0x8

    nop

    nop

    const/16 v9, 0x8

    nop

    nop

    nop

    div-int/2addr v7, v9

    nop

    nop

    nop

    invoke-static {v8, v7}, Ldwc;->p(Ljava/io/InputStream;I)[B

    move-result-object v7

    nop

    invoke-static {v7}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v7

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    :goto_6e
    iget v12, v6, Leeq;->g:I

    nop

    nop

    nop

    nop

    nop

    if-ge v9, v12, :cond_10

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    nop

    nop

    nop

    nop

    const/4 v14, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v14, v13, :cond_c

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    goto :goto_6f

    nop

    nop

    nop

    nop

    :cond_c
    const/4 v13, 0x2

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    add-int/2addr v12, v9

    nop

    invoke-virtual {v7, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    nop

    nop

    nop

    if-eqz v12, :cond_d

    nop

    nop

    nop

    or-int/lit8 v13, v13, 0x4

    nop

    nop

    nop

    nop

    :cond_d
    if-eqz v13, :cond_f

    nop

    nop

    nop

    nop

    iget-object v12, v6, Leeq;->i:Ljava/util/TreeMap;

    nop

    nop

    nop

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    nop

    nop

    nop

    invoke-virtual {v12, v14}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    check-cast v12, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    if-nez v12, :cond_e

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    nop

    nop

    :cond_e
    iget-object v15, v6, Leeq;->i:Ljava/util/TreeMap;

    nop

    nop

    nop

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    nop

    nop

    or-int/2addr v12, v13

    nop

    nop

    nop

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    nop

    nop

    invoke-virtual {v15, v14, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    add-int/lit8 v9, v9, 0x1

    nop

    goto/16 :goto_6e

    nop

    :cond_10
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    move-object/from16 v7, v16

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_68

    nop

    nop

    :cond_11
    const-string v5, "Read too much data during profile line parse"

    nop

    nop

    nop

    nop

    nop

    new-instance v6, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    nop

    nop

    nop

    nop

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :cond_12
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_70
    const/4 v6, 0x2

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_71
    move-object v1, v8

    nop

    goto/32 :goto_21e

    nop

    nop

    nop

    :goto_72
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_239

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    move-object/from16 v6, v26

    nop

    nop

    nop

    nop

    :try_start_10
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    nop

    nop

    nop

    :catch_6
    move-exception v0

    nop

    nop

    move-object/from16 v6, v26

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_84

    nop

    nop

    nop

    :catch_7
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v6, v26

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_171

    nop

    nop

    nop

    nop

    nop

    :cond_13
    move-object v6, v13

    nop

    nop

    nop

    nop

    nop

    const-string v5, "Unsupported version"

    nop

    nop

    nop

    nop

    new-instance v7, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    invoke-direct {v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    nop
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_17
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_24

    :catch_8
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    nop

    :goto_74
    move-object/from16 v16, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    :goto_76
    move-object v2, v3

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

    :goto_77
    move-object/from16 v17, v4

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    :goto_79
    move-object v11, v0

    nop

    nop

    nop

    goto/32 :goto_250

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_34

    nop

    nop

    nop

    :goto_7b
    :try_start_11
    sget-object v1, Leev;->e:[B

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_40

    nop

    array-length v1, v2

    nop

    invoke-static {v6, v1}, Ldwc;->l(Ljava/io/OutputStream;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    :goto_7c
    if-nez v5, :cond_14

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :cond_14
    :try_start_12
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1b

    goto/32 :goto_176

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_7e
    const-string v13, "Content found after the end of file"

    nop

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    :goto_7f
    goto/16 :goto_61

    nop

    nop

    nop

    :cond_15
    :goto_80
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    move-object/from16 v17, v4

    nop

    nop

    :goto_82
    goto/32 :goto_be

    nop

    nop

    nop

    :goto_83
    move-object v6, v13

    nop

    nop

    :goto_84
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    goto/16 :goto_65

    nop

    nop

    :catchall_7
    move-exception v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_87
    invoke-direct {v4, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v3}, Leep;->a()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_89
    move-object/from16 v16, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_8a
    new-instance v4, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    :goto_8b
    const/16 v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_8c
    goto/16 :goto_130

    nop

    nop

    nop

    nop

    :catch_9
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_249

    nop

    nop

    nop

    nop

    :goto_8d
    goto/16 :goto_25

    nop

    nop

    :catch_a
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_248

    nop

    nop

    nop

    :goto_90
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const-string v1, "DROP_SHADER_CACHE"

    nop

    goto/32 :goto_138

    nop

    nop

    :goto_92
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_1fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    goto/16 :goto_15d

    nop

    nop

    nop

    nop

    nop

    :catchall_8
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    :goto_94
    move-object/from16 v26, v13

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_95
    move-object v1, v0

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v5, v1, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    :goto_97
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_98
    if-nez v5, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :cond_16
    :try_start_13
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_24

    nop

    nop

    nop

    nop

    nop

    const/16 v6, 0x200

    nop

    nop

    nop

    nop

    new-array v6, v6, [B

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    nop

    if-lez v7, :cond_17

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    invoke-virtual {v1, v6, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_99

    nop

    nop

    :cond_17
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    invoke-virtual {v2, v6, v7}, Leep;->b(ILjava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    :try_start_14
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    goto/32 :goto_178

    nop

    nop

    nop

    :goto_9a
    move-object/from16 v22, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    :goto_9b
    goto/16 :goto_126

    nop

    nop

    nop

    nop

    :catchall_9
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :try_start_15
    invoke-virtual {v1, v3, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    nop
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_15} :catch_14

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_9d
    goto/16 :goto_245

    nop

    :goto_9e
    :try_start_16
    new-array v7, v10, [Leeq;

    nop

    move v14, v9

    nop

    :goto_9f
    if-ge v14, v10, :cond_6

    nop

    nop

    nop

    nop

    invoke-static {v8}, Ldwc;->c(Ljava/io/InputStream;)I

    move-result v15

    nop

    nop

    invoke-static {v8}, Ldwc;->c(Ljava/io/InputStream;)I

    move-result v9

    nop

    nop

    nop
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_a0
    move-object v5, v0

    nop

    goto/32 :goto_210

    nop

    nop

    :goto_a1
    invoke-virtual {v5, v6, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    if-nez v4, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    :cond_18
    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v6, v7, v5}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    :goto_a4
    goto/32 :goto_1be

    nop

    nop

    nop

    nop

    :goto_a5
    if-nez v1, :cond_19

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    :cond_19
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    move-object v5, v0

    nop

    nop

    :goto_a7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    :goto_a9
    goto/16 :goto_61

    nop

    :goto_aa
    :try_start_17
    iget-object v5, v3, Leep;->c:Ljava/io/File;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_15

    nop

    nop

    nop

    invoke-virtual {v3, v10, v8}, Leep;->b(ILjava/lang/Object;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_ab
    move-object v1, v0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_ac
    goto/16 :goto_124

    nop

    nop

    nop

    :goto_ad
    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v13, v7, v11}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    goto/32 :goto_1ff

    nop

    nop

    nop

    nop

    :goto_af
    iget-object v5, v3, Leep;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    goto/16 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :catchall_a
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    :goto_b1
    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_214

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    move-object/from16 v26, v13

    nop

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_a0

    nop

    nop

    :goto_b4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iput-object v1, v2, Leep;->h:[Leeq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b6
    iget-object v3, v2, Leep;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    move-object/from16 v16, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_b8
    move-object v1, v0

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    if-nez v4, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    :cond_1a
    :try_start_18
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto/32 :goto_28

    nop

    nop

    :goto_ba
    const/16 v1, 0xb

    nop

    goto/32 :goto_1f4

    nop

    nop

    :goto_bb
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    :goto_bc
    move-object/from16 v17, v4

    nop

    nop

    :goto_bd
    goto/32 :goto_120

    nop

    nop

    nop

    :goto_be
    move-object v1, v0

    nop

    :try_start_19
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_12

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_bf
    goto/16 :goto_e4

    nop

    :catchall_b
    move-exception v0

    nop

    :goto_c0
    goto/32 :goto_1ea

    nop

    nop

    :goto_c1
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    :goto_c2
    :try_start_1a
    array-length v11, v2

    nop

    nop

    nop

    nop

    nop

    if-ge v9, v11, :cond_1b

    nop

    nop

    nop

    nop

    nop

    aget-object v11, v2, v9

    nop

    nop

    invoke-static {v7, v9}, Ldwc;->l(Ljava/io/OutputStream;I)V

    add-int/lit8 v10, v10, 0x4

    nop

    nop

    nop

    nop

    nop

    iget v14, v11, Leeq;->e:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v14}, Ldwc;->l(Ljava/io/OutputStream;I)V

    iget v14, v11, Leeq;->e:I

    nop

    add-int/2addr v14, v14

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v10, v14

    nop

    nop

    nop

    invoke-static {v7, v11}, Lees;->c(Ljava/io/OutputStream;Leeq;)V

    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_c2

    nop

    :cond_1b
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    array-length v11, v9

    nop

    nop

    nop

    nop

    nop

    if-ne v10, v11, :cond_5

    nop

    nop

    nop

    nop

    new-instance v10, Lrth;

    nop

    nop

    nop

    nop

    sget-object v11, Leer;->c:Leer;

    nop

    const/4 v14, 0x1

    nop

    nop

    nop

    invoke-direct {v10, v11, v9, v14}, Lrth;-><init>(Leer;[BZ)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    :try_start_1b
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    throw v1

    nop

    nop

    nop

    :goto_c4
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    move-object v5, v0

    nop

    :try_start_1c
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c6
    throw v6

    nop

    nop

    nop

    nop

    nop
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    :catchall_c
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_20f

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    move-object/from16 v16, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-direct {v5, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_c9
    move-object/from16 v2, v22

    nop

    nop

    nop

    goto/32 :goto_229

    nop

    nop

    nop

    nop

    :goto_ca
    move-object v5, v0

    nop

    goto/32 :goto_1e1

    nop

    nop

    :goto_cb
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_cc
    iget-object v1, v2, Leep;->i:[B

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    :goto_cd
    if-nez v3, :cond_1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_56

    nop

    nop

    :goto_ce
    move-object v6, v13

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    move-object/from16 v2, v17

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v3, v4, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    if-eqz v5, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_215

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    move-object/from16 v16, v1

    nop

    goto/32 :goto_1a0

    nop

    nop

    :goto_d4
    move-object v2, v0

    nop

    nop

    nop

    :try_start_1d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d5
    throw v1

    nop

    nop

    nop

    nop
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_20

    :goto_d6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    move-object v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_d8
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_242

    nop

    nop

    nop

    :goto_d9
    if-nez v1, :cond_1e

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    :cond_1e
    :try_start_1e
    array-length v1, v2

    nop

    nop

    invoke-static {v6, v1}, Ldwc;->n(Ljava/io/OutputStream;I)V

    const/4 v3, 0x0

    nop

    :goto_da
    if-ge v3, v1, :cond_4

    nop

    nop

    nop

    nop

    aget-object v4, v2, v3

    nop

    nop

    nop

    iget-object v5, v4, Leeq;->i:Ljava/util/TreeMap;

    nop

    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    move-result v5

    nop

    nop

    nop

    const/4 v7, 0x4

    nop

    nop

    nop

    nop

    mul-int/2addr v5, v7

    nop

    nop

    nop

    nop

    iget-object v7, v4, Leeq;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v4, Leeq;->b:Ljava/lang/String;

    nop

    sget-object v9, Leev;->d:[B

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8, v9}, Lees;->b(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v7

    nop

    invoke-static {v7}, Ldwc;->e(Ljava/lang/String;)I

    move-result v8

    nop

    nop

    invoke-static {v6, v8}, Ldwc;->l(Ljava/io/OutputStream;I)V

    iget-object v8, v4, Leeq;->h:[I

    nop

    nop

    nop

    array-length v8, v8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v8}, Ldwc;->l(Ljava/io/OutputStream;I)V

    int-to-long v8, v5

    nop

    invoke-static {v6, v8, v9}, Ldwc;->m(Ljava/io/OutputStream;J)V

    iget-wide v8, v4, Leeq;->c:J

    nop

    nop

    nop

    nop

    invoke-static {v6, v8, v9}, Ldwc;->m(Ljava/io/OutputStream;J)V

    invoke-static {v6, v7}, Ldwc;->j(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v5, v4, Leeq;->i:Ljava/util/TreeMap;

    nop

    invoke-virtual {v5}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    if-eqz v7, :cond_1f

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Ljava/lang/Integer;

    nop

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    nop

    nop

    invoke-static {v6, v7}, Ldwc;->l(Ljava/io/OutputStream;I)V

    const/4 v7, 0x0

    nop

    nop

    invoke-static {v6, v7}, Ldwc;->l(Ljava/io/OutputStream;I)V

    goto :goto_db

    nop

    nop

    nop

    nop

    nop

    :cond_1f
    iget-object v4, v4, Leeq;->h:[I

    nop

    nop

    array-length v5, v4

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    :goto_dc
    if-ge v7, v5, :cond_4a

    nop

    nop

    nop

    aget v8, v4, v7

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v8}, Ldwc;->l(Ljava/io/OutputStream;I)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_20

    goto/32 :goto_1d5

    nop

    nop

    nop

    :goto_dd
    goto/16 :goto_24d

    nop

    :catchall_d
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    if-nez v1, :cond_20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    :cond_20
    :try_start_1f
    sget-object v1, Leev;->c:[B

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v1}, Lees;->e([Leeq;[B)[B

    move-result-object v1

    nop

    nop

    nop

    array-length v2, v2

    nop

    nop

    nop

    invoke-static {v6, v2}, Ldwc;->n(Ljava/io/OutputStream;I)V

    invoke-static {v6, v1}, Ldwc;->i(Ljava/io/OutputStream;[B)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_20

    goto/32 :goto_7a

    nop

    nop

    :goto_df
    goto/16 :goto_fb

    nop

    :catch_b
    move-exception v0

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_e0
    move-object/from16 v2, p1

    nop

    nop

    nop

    goto/32 :goto_23f

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    goto/16 :goto_175

    nop

    nop

    nop

    :goto_e2
    :try_start_20
    sget-object v1, Leev;->d:[B

    nop

    nop

    nop

    nop

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    nop

    nop

    nop

    nop
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-virtual {v3, v2, v1}, Leep;->b(ILjava/lang/Object;)V

    :goto_e4
    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_e5
    new-instance v3, Leep;

    nop

    nop

    nop

    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    goto/16 :goto_23e

    nop

    :goto_e7
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    move-object v4, v0

    nop

    nop

    :try_start_21
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    goto/16 :goto_f5

    nop

    nop

    :catchall_e
    move-exception v0

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    goto/16 :goto_124

    nop

    nop

    nop

    nop

    nop

    :catch_c
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_225

    nop

    nop

    :goto_ec
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_ed
    const-string v4, "androidx.profileinstaller.action.BENCHMARK_OPERATION"

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_ee
    if-nez v1, :cond_21

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_135

    nop

    nop

    nop

    :goto_ef
    move-object/from16 v6, v26

    nop

    goto/32 :goto_12a

    nop

    nop

    :goto_f0
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :goto_f1
    goto/16 :goto_1c2

    nop

    nop

    nop

    nop

    nop

    :catchall_f
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    :goto_f2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    if-nez v8, :cond_22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_22
    :try_start_22
    sget-object v9, Lees;->b:[B

    nop

    invoke-static {v8, v9}, Lees;->f(Ljava/io/InputStream;[B)[B

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    sget-object v10, Leev;->f:[B

    nop

    nop

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    nop

    nop

    nop

    nop
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_21

    goto/32 :goto_1f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-virtual {v3, v4, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    :goto_f5
    goto/32 :goto_209

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    invoke-virtual {v13, v12, v11}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    :goto_f7
    goto/32 :goto_fa

    nop

    nop

    :goto_f8
    new-instance v2, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_f9
    const-string v1, "EXTRA_PID"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_fa
    move-object v11, v8

    nop

    nop

    nop

    nop

    :goto_fb
    goto/32 :goto_7e

    nop

    nop

    :goto_fc
    iget-object v5, v3, Leep;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    :goto_fd
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_237

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    :goto_ff
    move-object/from16 v17, v4

    nop

    :goto_100
    goto/32 :goto_b8

    nop

    nop

    :goto_101
    move-object/from16 v26, v13

    nop

    :try_start_23
    new-instance v5, Ljava/lang/IllegalStateException;

    nop
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_23} :catch_6
    .catchall {:try_start_23 .. :try_end_23} :catchall_24

    goto/32 :goto_73

    nop

    nop

    :goto_102
    if-nez v4, :cond_23

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_103
    goto/16 :goto_128

    nop

    nop

    nop

    nop

    nop

    :catchall_10
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_104
    goto/16 :goto_23e

    nop

    nop

    :catchall_11
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_105
    new-instance v1, Ljava/io/File;

    nop

    nop

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    :goto_106
    move-object/from16 v2, v22

    nop

    :try_start_24
    iput-object v1, v2, Leep;->i:[B

    nop

    nop

    nop

    nop
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    :try_start_25
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_25} :catch_1d

    goto/32 :goto_ea

    nop

    nop

    :goto_107
    new-instance v12, Lnz;

    nop

    nop

    goto/32 :goto_228

    nop

    nop

    nop

    nop

    nop

    :goto_108
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    :goto_109
    invoke-static {v2, v9}, Leeu;->a(Landroid/content/Context;Z)V

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    const/4 v4, 0x1

    nop

    goto/32 :goto_21a

    nop

    nop

    nop

    nop

    :goto_10b
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_10c
    goto/16 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :catchall_12
    move-exception v0

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    const v0, 0x20

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    nop

    :goto_10e
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    const/4 v7, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_110
    goto/16 :goto_61

    nop

    nop

    nop

    :cond_24
    :goto_111
    :try_start_26
    new-instance v6, Ljava/io/IOException;

    nop

    const-string v7, "Unable to acquire a lock on the underlying file channel."

    nop

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    nop

    nop
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_13

    :catchall_13
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    :goto_112
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    :catchall_14
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_113
    invoke-direct {v13, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    iput-object v1, v2, Leep;->i:[B

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    :goto_115
    move-object v6, v13

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_116
    const-string v4, "EXTRA_SKIP_FILE_OPERATION"

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    nop

    :goto_117
    const-string v4, "WRITE_SKIP_FILE"

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_118
    move-object/from16 v2, p1

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_119
    goto/16 :goto_195

    nop

    nop

    nop

    nop

    :catch_d
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    const/4 v6, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    const/16 v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_11c
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_203

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    const/4 v4, 0x2

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    move-object v2, v0

    nop

    :try_start_27
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_28

    goto/32 :goto_23b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_120
    move-object v1, v0

    nop

    nop

    nop

    :try_start_28
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_19

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    goto/16 :goto_100

    nop

    nop

    nop

    nop

    :catch_e
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_122
    move-object v5, v0

    nop

    :goto_123
    :try_start_29
    iget-object v7, v3, Leep;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    invoke-virtual {v7, v8, v5}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_24

    :try_start_2a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_5

    :goto_124
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    move-object v1, v0

    nop

    nop

    nop

    :try_start_2b
    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_126
    throw v4

    nop

    nop

    nop
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_15

    :catchall_15
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_208

    nop

    nop

    nop

    :goto_127
    move-object v5, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2c
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_128
    throw v2

    nop
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_2c} :catch_a
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_2c} :catch_f

    :catch_f
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_129
    const/4 v4, 0x7

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    goto/16 :goto_ad

    nop

    :catchall_16
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    if-nez v1, :cond_25

    nop

    nop

    goto/32 :goto_252

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_11b

    nop

    nop

    :goto_12c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    :goto_12d
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_12e
    iget-object v5, v3, Leep;->b:[B

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    :goto_12f
    invoke-virtual {v3, v4, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    :goto_130
    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_131
    move-object/from16 v17, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    const/4 v4, 0x7

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_133
    move-object v2, v0

    nop

    nop

    nop

    nop

    :try_start_2d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_134
    throw v1

    nop
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1e

    :catchall_17
    move-exception v0

    nop

    nop

    goto/32 :goto_241

    nop

    nop

    nop

    nop

    :goto_135
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    :goto_136
    iput-object v5, v3, Leep;->h:[Leeq;

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_137
    move-object/from16 v2, v22

    nop

    :try_start_2e
    iget-object v1, v2, Leep;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    const/4 v3, 0x5

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    invoke-virtual {v1, v3, v4}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    iput-object v4, v2, Leep;->h:[Leeq;

    nop
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_e

    :try_start_2f
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_2f} :catch_1d

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_138
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_139
    const/4 v2, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_13a
    goto/16 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :catch_10
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    move-object/from16 v22, v3

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_13c
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_30
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_13d
    throw v1

    nop

    nop

    nop

    nop
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_30} :catch_11
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_4
    .catchall {:try_start_30 .. :try_end_30} :catchall_14

    :catch_11
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_13e
    return-void

    nop

    nop

    :goto_13f
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_140
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_141
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_142
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_12
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    :goto_143
    invoke-virtual {v5, v6, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_144
    if-eqz v2, :cond_26

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_140

    nop

    nop

    nop

    :goto_145
    move-object v1, v0

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    :goto_146
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_147
    if-le v4, v3, :cond_27

    nop

    goto/32 :goto_18b

    nop

    :cond_27
    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    :goto_148
    if-nez v1, :cond_28

    nop

    goto/32 :goto_e2

    nop

    :cond_28
    :try_start_31
    sget-object v1, Leev;->b:[B

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v1}, Lees;->e([Leeq;[B)[B

    move-result-object v1

    nop

    nop

    array-length v2, v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v2}, Ldwc;->n(Ljava/io/OutputStream;I)V

    invoke-static {v6, v1}, Ldwc;->i(Ljava/io/OutputStream;[B)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_20

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    :goto_149
    invoke-direct {v3, v4}, Lnz;-><init>(I)V

    goto/32 :goto_155

    nop

    nop

    nop

    :goto_14a
    move-object v5, v0

    nop

    :try_start_32
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_8

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    invoke-virtual {v13, v3, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    goto/32 :goto_1de

    nop

    nop

    :goto_14c
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_1fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    iput-object v1, v2, Leep;->h:[Leeq;

    nop

    nop

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    if-lt v3, v1, :cond_29

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_29
    :try_start_33
    aget-object v4, v2, v3

    nop

    nop

    nop

    iget-object v5, v4, Leeq;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v4, Leeq;->b:Ljava/lang/String;

    nop

    nop

    nop

    sget-object v8, Leev;->e:[B

    nop

    nop

    nop

    nop

    invoke-static {v5, v7, v8}, Lees;->b(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    nop

    invoke-static {v5}, Ldwc;->e(Ljava/lang/String;)I

    move-result v7

    nop

    nop

    nop

    invoke-static {v6, v7}, Ldwc;->l(Ljava/io/OutputStream;I)V

    iget-object v7, v4, Leeq;->i:Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    move-result v7

    nop

    nop

    invoke-static {v6, v7}, Ldwc;->l(Ljava/io/OutputStream;I)V

    iget-object v7, v4, Leeq;->h:[I

    nop

    nop

    nop

    nop

    array-length v7, v7

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v7}, Ldwc;->l(Ljava/io/OutputStream;I)V

    iget-wide v7, v4, Leeq;->c:J

    nop

    nop

    invoke-static {v6, v7, v8}, Ldwc;->m(Ljava/io/OutputStream;J)V

    invoke-static {v6, v5}, Ldwc;->j(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v5, v4, Leeq;->i:Ljava/util/TreeMap;

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    :goto_150
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_2a

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    check-cast v7, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    nop

    nop

    invoke-static {v6, v7}, Ldwc;->l(Ljava/io/OutputStream;I)V

    goto :goto_150

    nop

    nop

    :cond_2a
    iget-object v4, v4, Leeq;->h:[I

    nop

    nop

    nop

    nop

    nop

    array-length v5, v4

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_151
    if-ge v7, v5, :cond_57

    nop

    nop

    aget v8, v4, v7

    nop

    invoke-static {v6, v8}, Ldwc;->l(Ljava/io/OutputStream;I)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_20

    goto/32 :goto_1d4

    nop

    nop

    nop

    :goto_152
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :catch_13
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_153
    move-object v4, v0

    nop

    :try_start_34
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_154
    throw v5

    nop

    nop
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_18

    :catchall_18
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_155
    new-instance v4, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_156
    iput-object v1, v2, Leep;->i:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_157
    return-void

    nop

    nop

    nop

    :goto_158
    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    nop

    :goto_159
    return-void

    nop

    :goto_15a
    goto/32 :goto_1e0

    nop

    nop

    :goto_15b
    return-void

    nop

    nop

    :catch_14
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15c
    move-object v6, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_35
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15d
    throw v5

    nop

    nop

    :cond_2b
    new-instance v5, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    nop

    :cond_2c
    new-instance v5, Ljava/lang/IllegalStateException;

    nop

    invoke-direct {v5, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    nop

    nop

    nop

    :cond_2d
    const-string v5, "Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher"

    nop

    nop

    nop

    new-instance v6, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    sget-object v10, Leev;->g:[B

    nop

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    nop

    nop

    nop

    if-eqz v9, :cond_4e

    nop

    nop

    nop

    invoke-static {v8}, Ldwc;->c(Ljava/io/InputStream;)I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8}, Ldwc;->g(Ljava/io/InputStream;)J

    move-result-wide v12

    nop

    nop

    nop

    invoke-static {v8}, Ldwc;->g(Ljava/io/InputStream;)J

    move-result-wide v14

    nop

    nop

    long-to-int v10, v14

    nop

    long-to-int v12, v12

    nop

    nop

    nop

    invoke-static {v8, v10, v12}, Ldwc;->q(Ljava/io/InputStream;II)[B

    move-result-object v10

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v12

    nop

    nop

    nop

    nop

    if-gtz v12, :cond_4d

    nop

    nop

    new-instance v6, Ljava/io/ByteArrayInputStream;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_21

    :try_start_36
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v10

    nop

    nop

    if-nez v10, :cond_2e

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    new-array v5, v10, [Leeq;

    nop

    goto/16 :goto_163

    nop

    nop

    :cond_2e
    array-length v10, v5

    nop

    nop

    nop

    nop

    if-ne v9, v10, :cond_3b

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    :goto_15f
    if-ge v10, v9, :cond_36

    nop

    nop

    nop

    invoke-static {v6}, Ldwc;->c(Ljava/io/InputStream;)I

    invoke-static {v6}, Ldwc;->c(Ljava/io/InputStream;)I

    move-result v11

    nop

    nop

    nop

    invoke-static {v6, v11}, Ldwc;->h(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    invoke-static {v6}, Ldwc;->g(Ljava/io/InputStream;)J

    move-result-wide v12

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ldwc;->c(Ljava/io/InputStream;)I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    array-length v15, v5

    nop

    nop

    nop

    nop

    if-gtz v15, :cond_30

    nop

    nop

    nop

    nop

    move/from16 v16, v9

    nop

    :cond_2f
    const/4 v2, 0x0

    nop

    goto :goto_162

    nop

    :cond_30
    const-string v15, "!"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    nop

    if-gez v15, :cond_31

    nop

    const-string v15, ":"

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    nop

    nop

    :cond_31
    if-lez v15, :cond_32

    nop

    add-int/lit8 v15, v15, 0x1

    nop

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    goto :goto_160

    nop

    :cond_32
    move-object v15, v11

    nop

    nop

    :goto_160
    move/from16 v16, v9

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    :goto_161
    array-length v2, v5

    nop

    nop

    nop

    nop

    if-ge v9, v2, :cond_2f

    nop

    nop

    nop

    nop

    aget-object v2, v5, v9

    nop

    iget-object v2, v2, Leeq;->b:Ljava/lang/String;

    nop

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_33

    nop

    nop

    nop

    aget-object v2, v5, v9

    nop

    nop

    nop

    nop

    nop

    goto :goto_162

    nop

    nop

    nop

    nop

    :cond_33
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_161

    nop

    nop

    :goto_162
    if-eqz v2, :cond_35

    nop

    iput-wide v12, v2, Leeq;->d:J

    nop

    invoke-static {v6, v14}, Lees;->g(Ljava/io/InputStream;I)[I

    move-result-object v9

    nop

    sget-object v11, Leev;->e:[B

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    nop

    nop

    nop

    if-eqz v11, :cond_34

    nop

    nop

    nop

    nop

    iput v14, v2, Leeq;->e:I

    nop

    iput-object v9, v2, Leeq;->h:[I

    nop

    nop

    nop

    :cond_34
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    nop

    move-object/from16 v2, p1

    nop

    nop

    move/from16 v9, v16

    nop

    nop

    nop

    nop

    goto/16 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :cond_35
    const-string v2, "Missing profile key: "

    nop

    nop

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    new-instance v5, Ljava/lang/IllegalStateException;

    nop

    nop

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    nop

    nop

    nop

    nop
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1c

    :cond_36
    :goto_163
    :try_start_37
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :goto_164
    iput-object v5, v3, Leep;->h:[Leeq;

    nop

    nop
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_21

    :try_start_38
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_38} :catch_a
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_38} :catch_f

    goto/32 :goto_42

    nop

    nop

    :goto_165
    if-nez v3, :cond_37

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :cond_37
    goto/32 :goto_1bc

    nop

    nop

    :goto_166
    iget-object v7, v3, Leep;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_212

    nop

    nop

    nop

    nop

    nop

    :goto_167
    const/16 v6, 0x8

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_168
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_233

    nop

    nop

    nop

    nop

    :goto_169
    goto/16 :goto_50

    nop

    nop

    nop

    :catchall_19
    move-exception v0

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    goto/16 :goto_a4

    nop

    nop

    :catch_15
    move-exception v0

    nop

    goto/32 :goto_226

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    goto/16 :goto_164

    nop

    nop

    nop

    nop

    :cond_38
    :try_start_39
    new-instance v5, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    invoke-direct {v5, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    nop

    nop

    nop

    nop

    nop
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1a

    :catchall_1a
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    invoke-virtual {v3}, Leep;->a()V

    :try_start_3a
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    nop

    nop

    nop

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_3a} :catch_e

    :try_start_3b
    sget-object v7, Lees;->a:[B

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write([B)V

    sget-object v7, Leev;->a:[B

    nop

    nop

    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    nop

    nop

    nop

    nop
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_27

    goto/32 :goto_1f1

    nop

    nop

    nop

    nop

    :goto_16d
    move-object/from16 v16, v1

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    move v8, v7

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    if-nez v3, :cond_39

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :cond_39
    goto/32 :goto_116

    nop

    nop

    :goto_170
    move-object v6, v13

    nop

    :goto_171
    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_172
    invoke-static {v1, v5}, Landroidx/profileinstaller/ProfileInstallReceiver;->a(ILandroidx/wear/ambient/AmbientMode$AmbientController;)V

    goto/32 :goto_17e

    nop

    nop

    nop

    :goto_173
    const/16 v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_200

    nop

    nop

    nop

    :goto_174
    move-object/from16 v17, v4

    nop

    nop

    nop

    nop

    :goto_175
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_176
    goto/16 :goto_c6

    nop

    nop

    nop

    :catchall_1b
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_177
    move-object v1, v0

    nop

    nop

    nop

    :try_start_3c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_23

    goto/32 :goto_1bb

    nop

    nop

    nop

    :goto_178
    if-nez v4, :cond_3a

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    :cond_3a
    :try_start_3d
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_18

    :goto_179
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_15

    :try_start_3f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_3f} :catch_11
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_4
    .catchall {:try_start_3f .. :try_end_3f} :catchall_14

    goto/32 :goto_21f

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_17b
    new-instance v3, Lnz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    :goto_17c
    const/4 v1, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17d
    const/4 v3, 0x4

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_17e
    return-void

    nop

    nop

    nop

    :goto_17f
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_180
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_181
    goto/16 :goto_223

    nop

    nop

    nop

    nop

    nop

    :cond_3b
    :try_start_40
    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    nop

    nop

    nop
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1c

    :catchall_1c
    move-exception v0

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_182
    goto/16 :goto_da

    nop

    nop

    nop

    nop

    :goto_183
    :try_start_41
    sget-object v1, Leev;->c:[B

    nop

    nop

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    nop

    nop
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_11

    goto/32 :goto_de

    nop

    nop

    :goto_184
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_185
    move-object/from16 v22, v3

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    :goto_186
    invoke-static {v1, v2}, Ldwq;->f(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    goto/32 :goto_b1

    nop

    nop

    :goto_187
    if-eq v4, v3, :cond_3c

    nop

    goto/32 :goto_234

    nop

    nop

    nop

    nop

    :cond_3c
    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    :goto_188
    if-eqz v7, :cond_3d

    nop

    nop

    goto/32 :goto_9e

    nop

    :cond_3d
    :try_start_42
    new-array v6, v9, [Leeq;

    nop

    nop

    nop

    nop
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_7

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_189
    if-eq v3, v4, :cond_3e

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    :cond_3e
    :try_start_43
    iget v3, v11, Leeq;->g:I

    nop

    mul-int v3, v3, v21

    nop

    nop

    nop

    nop

    add-int v3, v19, v3

    nop

    nop

    div-int/lit8 v23, v3, 0x8

    nop

    nop

    nop

    aget-byte v24, v1, v23

    nop

    rem-int/lit8 v3, v3, 0x8

    nop

    nop

    nop

    nop

    const/16 v25, 0x1

    nop

    nop

    shl-int v3, v25, v3

    nop

    nop

    nop

    nop

    or-int v3, v24, v3

    nop

    nop

    nop

    nop

    nop

    int-to-byte v3, v3

    nop

    nop

    nop

    nop

    aput-byte v3, v1, v23

    nop

    nop

    nop

    nop

    nop

    :goto_18a
    add-int/lit8 v21, v21, 0x1

    nop

    nop

    nop

    nop

    goto/16 :goto_190

    nop

    nop

    nop

    nop

    :goto_18b
    move-object/from16 v4, v20

    nop

    nop

    move-object/from16 v3, v22

    nop

    goto/16 :goto_10

    nop

    :cond_3f
    move-object/from16 v22, v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    nop

    nop

    nop

    nop
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_17

    :try_start_44
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_1e

    :try_start_45
    invoke-static {v3, v11}, Lees;->d(Ljava/io/OutputStream;Leeq;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    nop

    nop

    nop

    nop
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_2b

    :try_start_46
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-static {v7, v9}, Ldwc;->l(Ljava/io/OutputStream;I)V

    array-length v3, v1

    nop

    nop

    const/4 v11, 0x2

    nop

    nop

    add-int/2addr v3, v11

    nop

    array-length v11, v4

    nop

    add-int/2addr v3, v11

    nop

    nop

    nop

    add-int/lit8 v10, v10, 0x6

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v18, v12

    nop

    nop

    int-to-long v11, v3

    nop

    nop

    invoke-static {v7, v11, v12}, Ldwc;->m(Ljava/io/OutputStream;J)V

    invoke-static {v7, v15}, Ldwc;->l(Ljava/io/OutputStream;I)V

    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v7, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1e

    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    move-object v6, v0

    nop

    nop

    :try_start_47
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18d
    throw v5

    nop

    nop
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_47 .. :try_end_47} :catch_16
    .catchall {:try_start_47 .. :try_end_47} :catchall_24

    :catch_16
    move-exception v0

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

    :goto_18e
    goto/16 :goto_78

    nop

    nop

    :cond_40
    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_18f
    if-eqz v3, :cond_41

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_205

    nop

    nop

    nop

    nop

    nop

    :cond_41
    :goto_190
    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    :goto_191
    if-eq v9, v11, :cond_42

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :cond_42
    :try_start_48
    new-instance v9, Lrth;

    nop

    nop

    sget-object v11, Leer;->a:Leer;

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    invoke-direct {v9, v11, v10, v14}, Lrth;-><init>(Leer;[BZ)V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_26

    :try_start_49
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    nop

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_3

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    :goto_192
    goto/16 :goto_e4

    nop

    :catchall_1d
    move-exception v0

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_193
    const-string v3, "primary.prof"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22b

    nop

    nop

    nop

    nop

    nop

    :goto_194
    goto/16 :goto_cf

    nop

    nop

    nop

    :goto_195
    :try_start_4a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4a} :catch_9

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_196
    goto/16 :goto_84

    nop

    nop

    nop

    nop

    nop

    :catch_17
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_197
    invoke-direct {v4, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    :goto_198
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    :goto_199
    goto/16 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :catch_18
    move-exception v0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_19a
    move-object/from16 v1, v16

    nop

    goto/32 :goto_213

    nop

    nop

    :goto_19b
    move-object v6, v0

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_19c
    goto/16 :goto_32

    nop

    nop

    nop

    :cond_43
    :try_start_4b
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    nop

    nop

    nop

    nop
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_1e

    :catchall_1e
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    invoke-virtual {v7, v8, v5}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    goto/32 :goto_ac

    nop

    nop

    :goto_19e
    iget-object v5, v3, Leep;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

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

    nop

    nop

    :goto_19f
    new-instance v2, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a0
    move-object v2, v3

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_1a1
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    move-object v3, v12

    nop

    nop

    nop

    nop

    :try_start_4c
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    nop

    nop

    nop

    nop
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1f

    :catchall_1f
    move-exception v0

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    nop

    :goto_1a4
    goto/16 :goto_34

    nop

    nop

    nop

    :catchall_20
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_1a5
    if-nez v10, :cond_44

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    :cond_44
    :try_start_4d
    sget-object v10, Leev;->a:[B

    nop

    nop

    nop

    nop

    nop

    invoke-static {v10, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    nop

    if-nez v7, :cond_2d

    nop

    nop

    nop

    nop

    sget-object v7, Leev;->f:[B

    nop

    invoke-static {v9, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_2c

    nop

    invoke-static {v8}, Ldwc;->d(Ljava/io/InputStream;)I

    move-result v7

    nop

    nop

    invoke-static {v8}, Ldwc;->g(Ljava/io/InputStream;)J

    move-result-wide v9

    nop

    invoke-static {v8}, Ldwc;->g(Ljava/io/InputStream;)J

    move-result-wide v12

    nop

    nop

    nop

    long-to-int v12, v12

    nop

    long-to-int v9, v9

    nop

    nop

    nop

    nop

    invoke-static {v8, v12, v9}, Ldwc;->q(Ljava/io/InputStream;II)[B

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v10

    nop

    if-gtz v10, :cond_2b

    nop

    nop

    nop

    new-instance v6, Ljava/io/ByteArrayInputStream;

    nop

    nop

    invoke-direct {v6, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_21

    :try_start_4e
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v9

    nop

    nop

    if-nez v9, :cond_45

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    new-array v5, v9, [Leeq;

    nop

    nop

    goto/16 :goto_1a8

    nop

    nop

    :cond_45
    array-length v9, v5

    nop

    if-ne v7, v9, :cond_38

    nop

    nop

    nop

    nop

    nop

    new-array v9, v7, [Ljava/lang/String;

    nop

    new-array v10, v7, [I

    nop

    const/4 v11, 0x0

    nop

    :goto_1a6
    if-ge v11, v7, :cond_46

    nop

    nop

    invoke-static {v6}, Ldwc;->c(Ljava/io/InputStream;)I

    move-result v12

    nop

    invoke-static {v6}, Ldwc;->c(Ljava/io/InputStream;)I

    move-result v13

    nop

    nop

    aput v13, v10, v11

    nop

    nop

    nop

    invoke-static {v6, v12}, Ldwc;->h(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    aput-object v12, v9, v11

    nop

    nop

    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    nop

    goto :goto_1a6

    nop

    :cond_46
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    :goto_1a7
    if-ge v11, v7, :cond_48

    nop

    nop

    nop

    nop

    aget-object v12, v5, v11

    nop

    nop

    nop

    iget-object v13, v12, Leeq;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    aget-object v14, v9, v11

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    nop

    nop

    nop

    if-eqz v13, :cond_47

    nop

    nop

    nop

    nop

    nop

    aget v13, v10, v11

    nop

    iput v13, v12, Leeq;->e:I

    nop

    nop

    nop

    invoke-static {v6, v13}, Lees;->g(Ljava/io/InputStream;I)[I

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    iput-object v13, v12, Leeq;->h:[I

    nop

    nop

    add-int/lit8 v11, v11, 0x1

    nop

    goto :goto_1a7

    nop

    :cond_47
    const-string v5, "Order of dexfiles in metadata did not match baseline"

    nop

    new-instance v7, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    invoke-direct {v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    nop

    nop

    nop
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1a

    :cond_48
    :goto_1a8
    :try_start_4f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_21

    goto/32 :goto_16b

    nop

    nop

    nop

    :goto_1a9
    if-nez v4, :cond_49

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_49
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    goto/16 :goto_dc

    nop

    nop

    nop

    nop

    :cond_4a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1ab
    move-object/from16 v16, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_238

    nop

    nop

    nop

    nop

    nop

    :goto_1ac
    if-nez v11, :cond_4b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :cond_4b
    :try_start_50
    sget-object v15, Lees;->a:[B

    nop

    nop
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_50} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_50 .. :try_end_50} :catch_d
    .catchall {:try_start_50 .. :try_end_50} :catchall_24

    :try_start_51
    invoke-static {v11, v15}, Lees;->f(Ljava/io/InputStream;[B)[B

    move-result-object v15

    nop

    nop

    nop

    iget-object v6, v3, Leep;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    sget-object v10, Leev;->b:[B

    nop

    nop

    nop

    nop

    invoke-static {v15, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    nop

    nop

    nop

    if-eqz v10, :cond_13

    nop

    nop

    nop

    nop

    nop

    invoke-static {v11}, Ldwc;->d(Ljava/io/InputStream;)I

    move-result v10

    nop

    nop

    nop

    invoke-static {v11}, Ldwc;->g(Ljava/io/InputStream;)J

    move-result-wide v14

    nop

    nop

    nop

    invoke-static {v11}, Ldwc;->g(Ljava/io/InputStream;)J

    move-result-wide v7

    nop

    nop

    nop

    long-to-int v7, v7

    nop

    nop

    nop

    long-to-int v8, v14

    nop

    nop

    nop

    nop

    invoke-static {v11, v7, v8}, Ldwc;->q(Ljava/io/InputStream;II)[B

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v8

    nop

    nop
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_51} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_51 .. :try_end_51} :catch_d
    .catchall {:try_start_51 .. :try_end_51} :catchall_24

    goto/32 :goto_211

    nop

    nop

    nop

    :goto_1ad
    goto/16 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :catch_19
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    iput-object v1, v2, Leep;->h:[Leeq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_1af
    const/4 v3, 0x4

    nop

    goto/32 :goto_204

    nop

    nop

    nop

    nop

    :goto_1b0
    move-object v1, v0

    nop

    nop

    nop

    :goto_1b1
    :try_start_52
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_d

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_1b2
    move-object v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23d

    nop

    nop

    nop

    :goto_1b3
    const/4 v10, 0x0

    nop

    nop

    :goto_1b4
    :try_start_53
    array-length v11, v2

    nop

    if-ge v9, v11, :cond_1

    nop

    nop

    nop

    nop

    nop

    aget-object v11, v2, v9

    nop

    nop

    iget-object v14, v11, Leeq;->i:Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    nop

    nop

    nop

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    :goto_1b5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    nop

    nop

    nop

    nop

    nop

    if-eqz v16, :cond_4c

    nop

    nop

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    nop

    check-cast v16, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    nop

    nop

    nop

    check-cast v16, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    nop

    nop

    nop

    nop

    nop

    or-int v15, v15, v16

    nop

    nop

    nop

    nop

    goto :goto_1b5

    nop

    nop

    :cond_4c
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_25

    goto/32 :goto_22d

    nop

    nop

    nop

    nop

    :goto_1b6
    move-object v5, v0

    nop

    nop

    :try_start_54
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1b7
    throw v2

    nop

    nop

    nop

    :cond_4d
    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    nop

    nop

    nop

    :cond_4e
    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    invoke-direct {v2, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    nop
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_21

    :catchall_21
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1fd

    nop

    nop

    :goto_1b8
    const-string v4, "androidx.profileinstaller.action.SAVE_PROFILE"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    :goto_1b9
    move-object v3, v12

    nop

    nop

    nop

    nop

    :try_start_55
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_22

    :catchall_22
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_20b

    nop

    nop

    nop

    nop

    nop

    :goto_1ba
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    :goto_1bb
    goto/16 :goto_134

    nop

    nop

    nop

    nop

    :catchall_23
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :goto_1bc
    new-instance v3, Lnz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_1bd
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_1be
    move-object/from16 v5, v16

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_1bf
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_221

    nop

    nop

    nop

    nop

    :goto_1c0
    const-string v4, "EXTRA_BENCHMARK_OPERATION"

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    :goto_1c1
    move-object/from16 v17, v4

    nop

    nop

    nop

    :goto_1c2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c3
    invoke-static {v3, v4, v1, v2}, Ldwq;->g(Ljava/util/concurrent/Executor;Landroidx/wear/ambient/AmbientMode$AmbientController;ILjava/lang/Object;)V

    goto/32 :goto_157

    nop

    nop

    :goto_1c4
    move-object/from16 v26, v13

    nop

    :goto_1c5
    goto/32 :goto_ca

    nop

    nop

    :goto_1c6
    move-object/from16 v22, v3

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_1c7
    if-eqz v1, :cond_4f

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_4f
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1c8
    new-instance v10, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_243

    nop

    nop

    nop

    :goto_1c9
    iget-object v5, v3, Leep;->h:[Leeq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_206

    nop

    nop

    nop

    :goto_1ca
    if-nez v2, :cond_50

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :cond_50
    goto/32 :goto_12e

    nop

    nop

    :goto_1cb
    const/16 v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    :goto_1cc
    const-string v13, "Expected size "

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    :goto_1cd
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_232

    nop

    nop

    :goto_1ce
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

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

    :goto_1cf
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    :goto_1d0
    move-object v11, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d1
    add-int/2addr v4, v4

    nop

    goto/32 :goto_1af

    nop

    nop

    :goto_1d2
    new-instance v13, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_1d3
    goto/16 :goto_f5

    nop

    nop

    nop

    nop

    :catch_1a
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d4
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_224

    nop

    nop

    nop

    :goto_1d5
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    :goto_1d6
    iget-object v13, v3, Leep;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_1d7
    and-int v3, v4, v15

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :goto_1d8
    goto/16 :goto_123

    nop

    :catchall_24
    move-exception v0

    nop

    nop

    nop

    nop

    :goto_1d9
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_1da
    iget-object v6, v3, Leep;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    :goto_1db
    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_1dc
    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1dd
    move-object/from16 v22, v3

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_1de
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_246

    nop

    nop

    nop

    nop

    :goto_1df
    invoke-direct {v3, v4}, Lnz;-><init>(I)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e0
    const-string v4, "DELETE_SKIP_FILE"

    nop

    goto/32 :goto_24e

    nop

    nop

    nop

    nop

    nop

    :goto_1e1
    move-object/from16 v6, v26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    :goto_1e2
    const/4 v4, 0x2

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e3
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e4
    goto/16 :goto_97

    nop

    nop

    nop

    :goto_1e5
    goto/32 :goto_216

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e6
    if-nez v5, :cond_51

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :cond_51
    goto/32 :goto_20d

    nop

    nop

    nop

    :goto_1e7
    move-object/from16 v20, v4

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    :goto_1e8
    move-object/from16 v22, v3

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e9
    move-object/from16 v16, v1

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_1ea
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    :goto_1eb
    goto/32 :goto_207

    nop

    nop

    nop

    :goto_1ec
    move-object/from16 v22, v3

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ed
    move-object/from16 v17, v4

    nop

    nop

    :goto_1ee
    goto/32 :goto_230

    nop

    nop

    nop

    :goto_1ef
    add-int/2addr v10, v3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f0
    iput-boolean v5, v3, Leep;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_1f1
    if-nez v7, :cond_52

    nop

    goto/32 :goto_218

    nop

    nop

    nop

    :cond_52
    :try_start_56
    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    const/4 v7, 0x3

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    nop

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    nop

    nop

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_3

    :try_start_57
    array-length v9, v2

    nop

    nop

    invoke-static {v7, v9}, Ldwc;->l(Ljava/io/OutputStream;I)V

    const/4 v9, 0x2

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    :goto_1f2
    array-length v11, v2

    nop

    nop

    nop

    nop

    if-ge v10, v11, :cond_53

    nop

    nop

    nop

    nop

    nop

    aget-object v11, v2, v10

    nop

    nop

    iget-wide v12, v11, Leeq;->c:J

    nop

    nop

    nop

    invoke-static {v7, v12, v13}, Ldwc;->m(Ljava/io/OutputStream;J)V

    iget-wide v12, v11, Leeq;->d:J

    nop

    nop

    nop

    nop

    invoke-static {v7, v12, v13}, Ldwc;->m(Ljava/io/OutputStream;J)V

    iget v12, v11, Leeq;->g:I

    nop

    nop

    nop

    nop

    int-to-long v12, v12

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v12, v13}, Ldwc;->m(Ljava/io/OutputStream;J)V

    iget-object v12, v11, Leeq;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v11, Leeq;->b:Ljava/lang/String;

    nop

    nop

    sget-object v13, Leev;->a:[B

    nop

    nop

    nop

    nop

    nop

    invoke-static {v12, v11, v13}, Lees;->b(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    add-int/lit8 v9, v9, 0xe

    nop

    nop

    nop

    invoke-static {v11}, Ldwc;->e(Ljava/lang/String;)I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v12}, Ldwc;->l(Ljava/io/OutputStream;I)V

    add-int/2addr v9, v12

    nop

    nop

    nop

    nop

    invoke-static {v7, v11}, Ldwc;->j(Ljava/io/OutputStream;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_1f2

    nop

    nop

    nop

    nop

    nop

    :cond_53
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    nop

    array-length v11, v10

    nop

    nop
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_26

    goto/32 :goto_201

    nop

    nop

    nop

    nop

    nop

    :goto_1f3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f4
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    nop

    :goto_1f5
    move-object v3, v0

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    :goto_1f6
    move-object/from16 v1, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_1f7
    move-object v10, v3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f8
    const-string v11, "Mismatched number of dex files found in metadata"

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_1f9
    goto/16 :goto_a7

    nop

    nop

    nop

    :goto_1fa
    goto/32 :goto_101

    nop

    nop

    nop

    :goto_1fb
    iput-object v5, v3, Leep;->h:[Leeq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fc
    goto/16 :goto_1ee

    nop

    nop

    nop

    nop

    nop

    :catchall_25
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22c

    nop

    nop

    nop

    nop

    nop

    :goto_1fd
    move-object v2, v0

    nop

    :try_start_58
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_10

    goto/32 :goto_103

    nop

    nop

    :goto_1fe
    if-nez v4, :cond_54

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    :cond_54
    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_1ff
    goto/16 :goto_f7

    nop

    nop

    :catch_1b
    move-exception v0

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_200
    invoke-virtual {v5, v1, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_201
    const-string v12, ", does not match actual size "

    nop

    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    nop

    :goto_202
    const/4 v8, 0x7

    nop

    nop

    nop

    goto/32 :goto_23c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_203
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_204
    goto/16 :goto_21b

    nop

    nop

    nop

    nop

    nop

    :goto_205
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_206
    if-nez v5, :cond_55

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_55
    goto/32 :goto_219

    nop

    nop

    nop

    nop

    nop

    :goto_207
    iput-object v1, v2, Leep;->i:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_208
    move-object v1, v0

    nop

    nop

    :try_start_59
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_a

    goto/32 :goto_b0

    nop

    nop

    :goto_209
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_23a

    nop

    nop

    :goto_20a
    move-object/from16 v22, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_20b
    goto/16 :goto_bd

    nop

    nop

    :catchall_26
    move-exception v0

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    :goto_20c
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_24f

    nop

    nop

    nop

    :goto_20d
    iget-object v5, v3, Leep;->c:Ljava/io/File;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_20e
    iget-object v3, v3, Leep;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20f
    move-object v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_210
    move-object/from16 v6, v26

    nop

    nop

    nop

    goto/32 :goto_1f9

    nop

    nop

    nop

    :goto_211
    if-lez v8, :cond_56

    nop

    nop

    nop

    goto/32 :goto_1fa

    nop

    :cond_56
    :try_start_5a
    new-instance v8, Ljava/io/ByteArrayInputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v8, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5a} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_5a .. :try_end_5a} :catch_19
    .catchall {:try_start_5a .. :try_end_5a} :catchall_24

    :try_start_5b
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v7

    nop

    nop

    nop

    nop

    nop
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_16

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    :goto_212
    const/4 v8, 0x7

    nop

    nop

    goto/32 :goto_240

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_213
    move-object/from16 v4, v17

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_214
    move v9, v6

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_215
    invoke-virtual {v3, v10, v8}, Leep;->b(ILjava/lang/Object;)V

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_216
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_217
    goto/16 :goto_1b1

    nop

    nop

    nop

    :goto_218
    goto/32 :goto_4c

    nop

    nop

    :goto_219
    iget-object v7, v3, Leep;->b:[B

    nop

    nop

    nop

    nop

    nop

    :try_start_5c
    iget-object v8, v3, Leep;->a:Landroid/content/res/AssetManager;

    nop

    nop

    iget-object v9, v3, Leep;->f:Ljava/lang/String;

    nop

    nop

    invoke-static {v8, v9}, Leep;->c(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    nop

    nop
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_5c} :catch_a
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5c} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_5c .. :try_end_5c} :catch_f

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21a
    const/16 v21, 0x0

    nop

    :goto_21b
    goto/32 :goto_147

    nop

    nop

    :goto_21c
    move-object/from16 v26, v13

    nop

    nop

    nop

    :goto_21d
    goto/32 :goto_244

    nop

    nop

    nop

    :goto_21e
    move v2, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21f
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    :goto_220
    move-object/from16 v3, v22

    nop

    nop

    nop

    goto/32 :goto_253

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_221
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_222
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_223
    goto/32 :goto_144

    nop

    nop

    :goto_224
    goto/16 :goto_151

    nop

    :cond_57
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_225
    move-object v5, v0

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    :goto_226
    move-object v5, v0

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_227
    invoke-virtual {v2}, Leep;->a()V

    :try_start_5d
    new-instance v3, Ljava/io/ByteArrayInputStream;

    nop

    nop

    nop

    nop
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_5d} :catch_18
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_5d} :catch_4
    .catchall {:try_start_5d .. :try_end_5d} :catchall_14

    :try_start_5e
    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_5e} :catch_11
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_5e} :catch_4
    .catchall {:try_start_5e .. :try_end_5e} :catchall_14

    :try_start_5f
    new-instance v1, Ljava/io/FileOutputStream;

    nop

    nop

    nop

    iget-object v4, v2, Leep;->c:Ljava/io/File;

    nop

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_15

    :try_start_60
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v4

    nop

    nop

    nop

    nop
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_18

    :try_start_61
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v5

    nop

    nop

    nop
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_c

    goto/32 :goto_98

    nop

    nop

    :goto_228
    invoke-direct {v12, v6}, Lnz;-><init>(I)V

    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    :goto_229
    goto/16 :goto_78

    nop

    nop

    nop

    nop

    nop

    :catchall_27
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_22a
    if-nez v3, :cond_58

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :cond_58
    goto/32 :goto_1c0

    nop

    nop

    :goto_22b
    invoke-direct {v15, v10, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22c
    move-object/from16 v16, v1

    nop

    goto/32 :goto_24b

    nop

    nop

    :goto_22d
    move-object/from16 v16, v1

    nop

    nop

    nop

    nop

    :try_start_62
    iget v1, v11, Leeq;->g:I

    nop

    nop

    and-int/lit8 v17, v15, -0x2

    nop

    nop

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->bitCount(I)I

    move-result v17

    nop

    nop

    nop

    nop

    nop

    mul-int v17, v17, v1

    nop

    invoke-static/range {v17 .. v17}, Lees;->a(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/16 v17, 0x8

    nop

    nop

    div-int/lit8 v1, v1, 0x8

    nop

    new-array v1, v1, [B

    nop

    nop

    nop

    nop

    nop
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_f

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_22e
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_22f
    move-object/from16 v26, v13

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_230
    move-object v1, v0

    nop

    nop

    :try_start_63
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_4

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_231
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_232
    new-instance v5, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_233
    goto/16 :goto_21b

    nop

    :goto_234
    goto/32 :goto_1d7

    nop

    nop

    nop

    :goto_235
    const/4 v4, 0x6

    nop

    nop

    :try_start_64
    invoke-virtual {v2, v4, v3}, Leep;->b(ILjava/lang/Object;)V
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_b

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_236
    move-object/from16 v2, v22

    nop

    nop

    nop

    nop

    goto/32 :goto_217

    nop

    nop

    nop

    nop

    :goto_237
    invoke-static {v1, v2}, Ldwq;->f(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    nop

    :goto_238
    move-object/from16 v22, v3

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_239
    const-string v1, "SAVE_PROFILE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_23a
    iput-object v1, v2, Leep;->h:[Leeq;

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_23b
    goto/16 :goto_1b7

    nop

    nop

    nop

    nop

    :catchall_28
    move-exception v0

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    :goto_23c
    goto/16 :goto_1d9

    nop

    nop

    :catch_1c
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    :goto_23d
    move-object/from16 v17, v4

    nop

    nop

    :goto_23e
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_23f
    if-eqz p2, :cond_59

    nop

    goto/32 :goto_1e5

    nop

    nop

    nop

    nop

    nop

    :cond_59
    goto/32 :goto_1e4

    nop

    nop

    nop

    :goto_240
    goto/16 :goto_13

    nop

    nop

    :catchall_29
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_202

    nop

    nop

    :goto_241
    goto/16 :goto_1c2

    nop

    nop

    :catchall_2a
    move-exception v0

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    :goto_242
    invoke-virtual {v5, v1, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->a(ILjava/lang/Object;)V

    goto/32 :goto_251

    nop

    nop

    :goto_243
    const-string v5, "/data/misc/profiles/cur/0"

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_244
    move-object v5, v0

    nop

    nop

    nop

    nop

    :goto_245
    :try_start_65
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_1

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_246
    invoke-static {v2, v1}, Leeu;->a(Landroid/content/Context;Z)V

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :goto_247
    const/4 v1, 0x0

    nop

    goto/32 :goto_24a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_248
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_249
    move-object v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20e

    nop

    nop

    nop

    nop

    nop

    :goto_24a
    iput-object v1, v2, Leep;->i:[B

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24b
    move-object/from16 v22, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    nop

    nop

    nop

    :goto_24c
    move-object v3, v0

    nop

    nop

    :try_start_66
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_24d
    throw v1

    nop

    nop

    nop
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_66} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_66 .. :try_end_66} :catch_1d

    :catch_1d
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_24e
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24f
    invoke-static {v3, v4, v1, v2}, Ldwq;->g(Ljava/util/concurrent/Executor;Landroidx/wear/ambient/AmbientMode$AmbientController;ILjava/lang/Object;)V

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    :goto_250
    iget-object v13, v3, Leep;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_251
    return-void

    nop

    nop

    nop

    nop

    :goto_252
    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_253
    goto/16 :goto_1b4

    nop

    nop

    nop

    nop

    :catchall_2b
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop
.end method
