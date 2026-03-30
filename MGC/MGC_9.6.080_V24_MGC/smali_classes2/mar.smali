.class public final synthetic Lmar;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmav;


# direct methods
.method public synthetic constructor <init>(Lmav;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lmar;->a:Lmav;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 13

    goto/32 :goto_60

    nop

    nop

    :goto_0
    goto :goto_5

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    :goto_2
    move v1, v4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v5, :cond_1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_4
    move v6, v4

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_6
    mul-int/lit8 v1, v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v4, 0x1

    nop

    nop

    nop

    :try_start_1
    new-instance v5, Landroid/content/pm/PackageInstaller$SessionParams;

    nop

    nop

    nop

    invoke-direct {v5, v4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    iget-object v6, p0, Lmav;->k:Landroid/content/pm/PackageInstaller;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v5

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :try_start_2
    iget-object v6, p0, Lmav;->k:Landroid/content/pm/PackageInstaller;

    nop

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v5

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_8
    const/16 v7, 0x1050

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_a

    nop

    nop

    :catchall_1
    move-exception v5

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_2
    move-exception v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v5, v7, v6}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_21

    nop

    nop

    :goto_c
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_d
    check-cast v5, Lscz;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_34

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_54

    nop

    nop

    :goto_10
    iget-object p0, p0, Lmar;->a:Lmav;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_43

    nop

    nop

    :goto_12
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v7, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_14

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    instance-of v7, v0, Ljava/lang/SecurityException;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_16
    const-string v5, "user"

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lmav;->a()V

    goto/32 :goto_2f

    nop

    nop

    :goto_18
    goto/16 :goto_5

    nop

    :catchall_4
    move-exception v5

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_19
    move-object v0, v5

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

    :goto_1a
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1b
    instance-of v0, v0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_1c
    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move v3, v4

    nop

    nop

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lmav;->n:Lmba;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_22
    add-int/2addr v1, v6

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v5}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_24
    const-string v8, "FRP"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_25
    const/16 v8, 0xa

    nop

    :goto_26
    goto/32 :goto_49

    nop

    nop

    :goto_27
    sget-object v5, Lmav;->a:Lsdb;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string v7, "Exception when trying to install HAL at anchor %d"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v5, v7}, Lscz;->M(I)Lsdo;

    move-result-object v5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2b
    move v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v5, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v5

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2d
    move v6, v10

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

    :goto_2e
    move v6, v0

    nop

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

    nop

    :goto_2f
    mul-int/lit8 v1, v1, 0x64

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_30
    invoke-virtual {p0, v1, v8}, Lmba;->b(II)V

    goto/32 :goto_50

    nop

    nop

    :goto_31
    check-cast v5, Lscz;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v9, :cond_4

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

    :cond_4
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_33
    move v1, v2

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v5, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_36
    sget-object v10, Lhoa;->c:Lhoa;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v6, :cond_6

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_6
    :try_start_5
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    nop

    if-nez v6, :cond_7

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    :goto_38
    invoke-static {v4, v1}, Lqyw;->a(II)Z

    move-result v6

    nop

    nop

    if-nez v6, :cond_8

    nop

    nop

    invoke-virtual {v9}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    nop

    nop

    if-nez v6, :cond_8

    nop

    invoke-virtual {v9, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    invoke-static {v4, v10}, Lqyw;->a(II)Z

    move-result v6

    nop

    nop

    nop

    if-nez v6, :cond_9

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    nop

    if-nez v6, :cond_9

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    nop

    nop

    nop

    const-string v7, "*/*"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    const/16 v6, 0x11

    nop

    nop

    invoke-static {v4, v6}, Lqyw;->a(II)Z

    move-result v6

    nop

    if-nez v6, :cond_a

    nop

    nop

    nop

    invoke-virtual {v9}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    nop

    if-nez v6, :cond_a

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Lqyw;->a:Landroid/content/ClipData;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v6}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    :cond_a
    invoke-static {v8, v3, v9, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_39
    const/16 v8, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v9, v10}, Lhoa;->b(Lhoa;)Z

    move-result v9

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3d
    const/16 v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3e
    if-nez v3, :cond_b

    nop

    goto/32 :goto_4c

    nop

    :cond_b
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v9}, Lhon;->p()V

    :goto_40
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v7, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_c
    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    mul-int/lit8 v1, v1, 0xa

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v0, p0, Lmav;->e:Ljava/lang/String;

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

    :goto_45
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_46
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

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

    :goto_48
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_49
    iget-object v9, p0, Lmav;->d:Lhoa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4b
    if-nez v5, :cond_d

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_d
    :goto_4c
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v5, :cond_e

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_6

    nop

    nop

    :goto_4e
    if-nez v7, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v6, 0x3

    nop

    nop

    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const-string v8, "package"

    nop

    iget-wide v11, p0, Lmav;->u:J

    nop

    nop

    const-wide/16 v9, 0x0

    nop

    nop

    move-object v7, v5

    nop

    invoke-virtual/range {v7 .. v12}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    iget-object v8, p0, Lmav;->c:Landroid/content/Context;

    nop

    nop

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    nop

    nop

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v8, Lurw;

    nop

    nop

    nop

    invoke-direct {v8, v0}, Lurw;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    invoke-static {v8, v7}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    return-void

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto :goto_53

    nop

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception v5

    nop

    :try_start_c
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_53
    throw v0

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_54
    if-nez v7, :cond_10

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_10
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_25

    nop

    nop

    :goto_57
    if-nez v3, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_11
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v0, 0x4

    nop

    nop

    :try_start_d
    new-instance v7, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, p0, Lmav;->c:Landroid/content/Context;

    nop

    const-class v9, Lcom/google/android/apps/camera/sideline/SidelineInstallerService;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "com.google.android.apps.camera.sideline.ON_INSTALL_STATUS_CHANGED"

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lmav;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    const-string v9, "Cannot set any dangerous parts of intent to be mutable."

    nop

    nop

    nop

    nop

    invoke-static {v4, v9}, Lrrf;->m(ZLjava/lang/Object;)V

    const-string v9, "Cannot use Intent.FILL_IN_ACTION unless the action is marked as mutable."

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v9}, Lrrf;->m(ZLjava/lang/Object;)V

    const-string v9, "Cannot use Intent.FILL_IN_DATA unless the data is marked as mutable."

    nop

    nop

    nop

    invoke-static {v4, v9}, Lrrf;->m(ZLjava/lang/Object;)V

    const-string v9, "Cannot use Intent.FILL_IN_CATEGORIES unless the category is marked as mutable."

    nop

    nop

    nop

    invoke-static {v4, v9}, Lrrf;->m(ZLjava/lang/Object;)V

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v9, Lcom/google/android/apps/camera/imax/cyclops/processing/jQJ/fbmdK;->YeBFMtoPUo:Ljava/lang/String;

    nop

    invoke-static {v4, v9}, Lrrf;->m(ZLjava/lang/Object;)V

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    nop

    if-eqz v9, :cond_12

    nop

    nop

    nop

    move v9, v4

    nop

    goto :goto_59

    nop

    nop

    nop

    nop

    :cond_12
    move v9, v3

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const-string v10, "Must set component on Intent."

    nop

    nop

    invoke-static {v9, v10}, Lrrf;->m(ZLjava/lang/Object;)V

    invoke-static {v4, v4}, Lqyw;->a(II)Z

    move-result v9

    nop

    nop

    nop

    const/high16 v10, 0x4000000

    nop

    nop

    nop

    nop

    const/high16 v11, 0x2000000

    nop

    nop

    nop

    if-eqz v9, :cond_13

    nop

    invoke-static {v11, v10}, Lqyw;->a(II)Z

    move-result v9

    nop

    nop

    xor-int/2addr v9, v4

    nop

    nop

    nop

    nop

    const-string v12, "Cannot set mutability flags if PendingIntent.FLAG_IMMUTABLE is set."

    nop

    nop

    invoke-static {v9, v12}, Lrrf;->m(ZLjava/lang/Object;)V

    goto :goto_5a

    nop

    nop

    nop

    nop

    :cond_13
    invoke-static {v11, v10}, Lqyw;->a(II)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    const-string v12, "Must set PendingIntent.FLAG_IMMUTABLE for SDK >= 23 if no parts of intent are mutable."

    nop

    invoke-static {v9, v12}, Lrrf;->m(ZLjava/lang/Object;)V

    :goto_5a
    new-instance v9, Landroid/content/Intent;

    nop

    nop

    invoke-direct {v9, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {v11, v10}, Lqyw;->a(II)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    const/4 v10, 0x5

    nop

    nop

    nop

    nop

    if-nez v7, :cond_a

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    nop

    if-nez v7, :cond_14

    nop

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_14
    invoke-static {v4, v6}, Lqyw;->a(II)Z

    move-result v6

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v9, p0, Lmav;->y:Lhon;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_5c
    const-string v7, ""

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez v0, :cond_15

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_5

    nop

    :catchall_7
    move-exception v0

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

    :goto_5f
    return-void

    nop

    :catchall_8
    move-exception v0

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

    :goto_60
    const v0, 0x20

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_61
    add-int/2addr v1, v4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method
