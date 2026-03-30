.class public final Lrpx;
.super Lcom/google/ar/core/ArCoreApk;
.source "PG"


# static fields
.field public static final a:Lrpx;


# instance fields
.field public final b:Landroid/os/Handler;

.field public c:Ljava/lang/Exception;

.field public d:Ljava/lang/Exception;

.field e:Z

.field public f:Lcom/google/ar/core/ArCoreApk$Availability;

.field public g:Z

.field private final h:Landroid/os/Messenger;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:J

.field private m:Lrqh;

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Z


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/content/Context;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lrpx;->q:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lrpx;->19e596a3e324281407eb5c11093c0152m(Landroid/content/Context;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop
.end method

.method private final declared-synchronized 19e596a3e324281407eb5c11093c0152m(Landroid/content/Context;)V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    const v1, 0x18

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1a

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

    :goto_b
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    const-string v1, "Application manifest must contain activity "

    nop

    invoke-static {v0, v1}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception p1

    nop

    :try_start_1
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Could not load application package info"

    nop

    nop

    invoke-direct {v0, v1, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    nop

    nop

    nop

    :cond_2
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    nop

    const-string v0, "Application manifest must contain meta-data com.google.ar.core.min_apk_version"

    nop

    nop

    nop

    nop

    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    :cond_3
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    const-string v0, "Application manifest must contain meta-data com.google.ar.core"

    nop

    nop

    nop

    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :catch_1
    move-exception p1

    nop

    nop

    nop

    nop

    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    const-string v1, "Could not load application package metadata"

    nop

    nop

    invoke-direct {v0, v1, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    :try_start_2
    iget-boolean v0, p0, Lrpx;->n:Z

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v4, :cond_4

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_4
    :try_start_3
    iput-boolean v2, p0, Lrpx;->n:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_17

    nop

    nop

    :goto_f
    const/16 v1, 0x80

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v2, "com.google.ar.core"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    const-string v2, "com.google.ar.core"

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "required"

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    iput-boolean v2, p0, Lrpx;->o:Z

    nop

    nop

    nop

    nop

    nop

    const-string v2, "com.google.ar.core.min_apk_version"

    nop

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    const-string v2, "com.google.ar.core.min_apk_version"

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    iput v2, p0, Lrpx;->p:I

    nop

    nop

    nop

    nop

    const-string v2, "com.google.ar.core.load_32bit_so_from_split_module"

    nop

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_5

    nop

    nop

    nop

    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    array-length v1, v1

    nop

    if-lez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    move v1, v2

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    :cond_5
    move v1, v3

    nop

    nop

    :goto_10
    iput-boolean v1, p0, Lrpx;->q:Z

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    nop

    nop

    nop

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    nop

    nop

    nop

    nop

    nop

    const-class v0, Lcom/google/ar/core/InstallActivity;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    nop

    array-length v1, p1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ge v3, v1, :cond_1

    nop

    aget-object v4, p1, v3

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_6

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

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    monitor-exit p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method private final 33b3102b6558811a7b7629a1e8e59bd2m(Landroid/content/Context;Ljava/util/List;)V
    .locals 7

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_29

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Lqrf;->m()Landroid/net/Uri;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALLED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

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

    nop

    :goto_e
    const-string v0, "splitInstallIntent"

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    new-instance v1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/32 :goto_9

    nop

    nop

    :goto_13
    const-string p2, "ARCore-ArCoreApk"

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

    :goto_14
    iget-object v1, p0, Lrpx;->h:Landroid/os/Messenger;

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

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    new-instance p1, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1b
    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALLED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string p2, "splitInstallDisplayDialog"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1e
    const-string v2, "splitInstall"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_22
    const-string p2, "moduleName"

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_23
    iput-object p1, p0, Lrpx;->d:Ljava/lang/Exception;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_11

    nop

    nop

    :goto_25
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_26
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_0
    invoke-static {}, Lrpx;->j()Landroid/os/Bundle;

    move-result-object v6

    nop

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v0, p1

    nop

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALLED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_28
    check-cast p2, Landroid/app/PendingIntent;

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2b
    const-string v0, "Download activity launch failed."

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2c
    new-instance v0, Landroid/os/Bundle;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_2e
    const-string p2, "splitInstallMessenger"

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lrpx;->a:Lrpx;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lrpx;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lrpx;

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
.end method

.method public constructor <init>()V
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/ar/core/ArCoreApk;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    new-instance v0, Landroid/os/Handler;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Lrpu;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lrpx;->e:Z

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    :goto_8
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    goto/32 :goto_b

    nop

    nop

    :goto_9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

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

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_b
    iput-object v0, p0, Lrpx;->h:Landroid/os/Messenger;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, p0, v2}, Lrpu;-><init>(Lrpx;Landroid/os/Looper;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x18

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lrpx;->b:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Landroid/os/Messenger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method private static g(Landroid/content/Context;)I
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    const/4 v0, -0x1

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    const-string v1, "com.google.ar.core"

    nop

    const/4 v2, 0x4

    nop

    nop

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    nop

    nop

    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_3

    nop

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    nop

    nop

    nop

    nop

    array-length p0, p0

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return v1

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_10
    return v0

    nop

    nop

    nop

    nop

    :cond_3
    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method private static final j()Landroid/os/Bundle;
    .locals 2

    goto/32 :goto_b

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

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
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

    :goto_4
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    const v0, 0x18

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

    nop

    :goto_c
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final k(Landroid/content/Context;)Z
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, v2, v3, p0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v3, "splitCheckInstall"

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_19

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xd

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    if-eqz p0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Lqrf;->m()Landroid/net/Uri;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_e
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    nop

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

    :goto_f
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    if-eq p0, v0, :cond_3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    const-string v0, "splitCheckInstallResult"

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    const-string v1, "moduleName"

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_18
    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_NOT_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    :goto_19
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    :goto_20
    add-int v0, v0, v1

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

    :goto_21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

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

    :goto_22
    goto :goto_19

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string v2, "native_library_split"

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method private static final m(Ljava/lang/Exception;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_3
    const-string v0, "Throwing RuntimeException."

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    instance-of v0, p0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    instance-of v0, p0, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

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

    :goto_8
    check-cast p0, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x19

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_4

    nop

    nop

    :goto_f
    throw v0

    nop

    nop

    :goto_10
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    instance-of v0, p0, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_f

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_19
    const-string v1, "ARCore-ArCoreApk"

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_22

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v0, "Throwing UnavailableDeviceNotCompatibleException"

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v1, "Unexpected exception type"

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_20
    const-string v0, "Throwing UnavailableUserDeclinedInstallationException"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_21
    const v1, 0x7

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    check-cast p0, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    nop

    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method private static final n(Landroid/app/Activity;)Lcom/google/ar/core/ArCoreApk$InstallStatus;
    .locals 8

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "ARCore-ArCoreApk"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

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
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lrqp;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_6
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALLED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    nop

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

    :goto_9
    goto/32 :goto_2

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

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

    :cond_1
    :try_start_0
    invoke-static {}, Lrpx;->j()Landroid/os/Bundle;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    const/4 v6, 0x0

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

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALL_REQUESTED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    nop
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, "Setup activity launch failed"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Lrqh;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xe

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

    :goto_3
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lrpx;->m:Lrqh;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    new-instance v0, Lrqh;

    nop

    const/4 v1, 0x0

    nop

    nop

    invoke-direct {v0, v1}, Lrqh;-><init>([B)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Lrqh;->a(Landroid/content/Context;)V

    iput-object v0, p0, Lrpx;->m:Lrqh;

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object p1, p0, Lrpx;->m:Lrqh;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_7
    const v0, 0xf

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

    :goto_8
    monitor-exit p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b(Landroid/content/Context;Lcom/google/ar/core/ArCoreApk$ICheckAvailabilityCallback;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p2, p0}, Lcom/google/ar/core/ArCoreApk$ICheckAvailabilityCallback;->onResult(Lcom/google/ar/core/ArCoreApk$Availability;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    goto :goto_6

    nop

    nop

    nop

    :catch_0
    :try_start_0
    sget-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    goto :goto_6

    nop

    nop

    :catch_1
    sget-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->UNSUPPORTED_DEVICE_NOT_CAPABLE:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    nop

    nop

    :goto_6
    sget-object v1, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lrpx;->1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/content/Context;)Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lrpx;->k(Landroid/content/Context;)Z

    move-result p1

    nop

    nop

    nop

    if-nez p1, :cond_0

    nop

    nop

    sget-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_NOT_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    :cond_0
    invoke-virtual {p0}, Lrpx;->d()V

    :goto_7
    invoke-interface {p2, v0}, Lcom/google/ar/core/ArCoreApk$ICheckAvailabilityCallback;->onResult(Lcom/google/ar/core/ArCoreApk$Availability;)V

    return-void

    nop

    nop

    nop

    :cond_1
    invoke-static {p1}, Lrpx;->g(Landroid/content/Context;)I

    move-result v0

    nop

    nop

    nop

    const/4 v1, -0x1

    nop

    nop

    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_APK_TOO_OLD:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, p0}, Lcom/google/ar/core/ArCoreApk$ICheckAvailabilityCallback;->onResult(Lcom/google/ar/core/ArCoreApk$Availability;)V

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_2
    invoke-virtual {p0, p1}, Lrpx;->e(Landroid/content/Context;)Z

    move-result v0

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_NOT_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    invoke-interface {p2, p0}, Lcom/google/ar/core/ArCoreApk$ICheckAvailabilityCallback;->onResult(Lcom/google/ar/core/ArCoreApk$Availability;)V

    return-void

    nop

    nop

    nop

    :cond_3
    invoke-virtual {p0, p1}, Lrpx;->a(Landroid/content/Context;)Lrqh;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1, p2}, Lrqh;->b(Landroid/content/Context;Lcom/google/ar/core/ArCoreApk$ICheckAvailabilityCallback;)V
    :try_end_0
    .catch Lcom/google/ar/core/exceptions/FatalException; {:try_start_0 .. :try_end_0} :catch_2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_4
    goto/32 :goto_11

    nop

    :goto_d
    const-string p1, "ARCore-ArCoreApk"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "Error while checking app details and ARCore status"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    :try_start_1
    invoke-virtual {p0, p1}, Lrpx;->f(Landroid/content/Context;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    invoke-virtual {p0}, Lrpx;->c()V
    :try_end_1
    .catch Lcom/google/ar/core/exceptions/FatalException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {p1}, Lrqp;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    sget-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_APK_TOO_OLD:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    :cond_5
    sget-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x18

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lrpx;->c:Ljava/lang/Exception;

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    iput v1, p0, Lrpx;->k:I

    nop

    nop

    nop

    :cond_0
    iput-boolean v1, p0, Lrpx;->i:Z

    nop

    nop

    nop

    iget-object v0, p0, Lrpx;->m:Lrqh;

    nop

    if-eqz v0, :cond_1

    nop

    nop

    invoke-virtual {v0}, Lrqh;->f()V

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lrpx;->m:Lrqh;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_d
    monitor-exit p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final checkAvailability(Landroid/content/Context;)Lcom/google/ar/core/ArCoreApk$Availability;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lrpx;->f:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/ar/core/ArCoreApk$Availability;->isUnknown()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    :cond_0
    iget-boolean v0, p0, Lrpx;->g:Z

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lrpx;->g:Z

    nop

    new-instance v0, Lrpv;

    nop

    nop

    invoke-direct {v0, p0}, Lrpv;-><init>(Lrpx;)V

    invoke-virtual {p0, p1, v0}, Lrpx;->b(Landroid/content/Context;Lcom/google/ar/core/ArCoreApk$ICheckAvailabilityCallback;)V

    :cond_1
    iget-object p1, p0, Lrpx;->f:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lcom/google/ar/core/ArCoreApk$Availability;->isUnsupported()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lrpx;->f:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    :cond_2
    monitor-exit p0

    nop

    nop

    return-object p1

    nop

    nop

    :cond_3
    iget-boolean p1, p0, Lrpx;->g:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_4

    nop

    nop

    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_CHECKING:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return-object p1

    nop

    nop

    nop

    nop

    nop

    :cond_4
    const-string p1, "ARCore-ArCoreApk"

    nop

    nop

    const-string v0, "request not running but result is null?"

    nop

    nop

    nop

    nop

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    return-object p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final checkAvailability(Landroid/content/Context;Lcom/google/ar/core/ArCoreApk$ICheckAvailabilityCallback;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Lrpx;->b(Landroid/content/Context;Lcom/google/ar/core/ArCoreApk$ICheckAvailabilityCallback;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final checkAvailabilityAsync(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p2}, Lrpw;-><init>(Lrpx;Ljava/util/function/Consumer;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lrpw;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {p0, p1, v0}, Lrpx;->b(Landroid/content/Context;Lcom/google/ar/core/ArCoreApk$ICheckAvailabilityCallback;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :try_start_1
    iput-boolean v0, p0, Lrpx;->j:Z

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

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

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
.end method

.method public final e(Landroid/content/Context;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lrpx;->o:Z

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

    :goto_1
    invoke-direct {p0, p1}, Lrpx;->19e596a3e324281407eb5c11093c0152m(Landroid/content/Context;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop
.end method

.method final f(Landroid/content/Context;)Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

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
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    goto :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Lrpx;->g(Landroid/content/Context;)I

    move-result p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1}, Lrpx;->19e596a3e324281407eb5c11093c0152m(Landroid/content/Context;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    if-ge p1, p0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget p0, p0, Lrpx;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Lrpx;->g(Landroid/content/Context;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final requestInstall(Landroid/app/Activity;Z)Lcom/google/ar/core/ArCoreApk$InstallStatus;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->USER_ALREADY_INFORMED:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lcom/google/ar/core/ArCoreApk$InstallBehavior;->OPTIONAL:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_7
    const v1, 0xc

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/ar/core/ArCoreApk;->requestInstall(Landroid/app/Activity;ZLcom/google/ar/core/ArCoreApk$InstallBehavior;Lcom/google/ar/core/ArCoreApk$UserMessageType;)Lcom/google/ar/core/ArCoreApk$InstallStatus;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Lcom/google/ar/core/ArCoreApk$InstallBehavior;->REQUIRED:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Lrpx;->e(Landroid/content/Context;)Z

    move-result v0

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

    nop

    :goto_11
    invoke-virtual {p0, p1}, Lrpx;->e(Landroid/content/Context;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_5

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    :goto_16
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->APPLICATION:Lcom/google/ar/core/ArCoreApk$UserMessageType;

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

    :goto_18
    rem-int v0, v0, v1

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
.end method

.method public final requestInstall(Landroid/app/Activity;ZLcom/google/ar/core/ArCoreApk$InstallBehavior;Lcom/google/ar/core/ArCoreApk$UserMessageType;)Lcom/google/ar/core/ArCoreApk$InstallStatus;
    .locals 9

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    nop

    nop

    const-class v0, Lcom/google/ar/core/InstallActivity;

    nop

    nop

    nop

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "message"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    nop

    const-string p4, "behavior"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    nop

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_53

    nop

    nop

    :goto_1
    const-string p2, "Clearing previous failure: "

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

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Lrpx;->n(Landroid/app/Activity;)Lcom/google/ar/core/ArCoreApk$InstallStatus;

    move-result-object p0

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
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1}, Lrpx;->1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/content/Context;)Z

    move-result v0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_9
    iput v1, p0, Lrpx;->k:I

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    :goto_d
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_e
    if-gtz p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    const-string p1, "Requesting ARCore installation too rapidly."

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_11
    iput-wide v3, p0, Lrpx;->l:J

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v3}, Lrpx;->m(Ljava/lang/Exception;)V

    goto/32 :goto_51

    nop

    nop

    :goto_14
    invoke-static {v3}, Lrpx;->m(Ljava/lang/Exception;)V

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_16
    move v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_17
    throw p1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lrpx;->d()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lrpx;->c()V

    goto/32 :goto_7

    nop

    nop

    :goto_1c
    const/4 v4, 0x0

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

    :goto_1d
    iput p2, p0, Lrpx;->k:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_56

    nop

    nop

    :goto_1f
    goto/32 :goto_47

    nop

    nop

    :goto_20
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_4e

    nop

    nop

    :goto_22
    goto/32 :goto_19

    nop

    nop

    :goto_23
    cmp-long p2, v5, v7

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-le p2, v1, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-boolean v3, p0, Lrpx;->i:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_26
    if-nez v3, :cond_3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_4
    goto/32 :goto_28

    nop

    :goto_2b
    if-nez p2, :cond_5

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget p2, p0, Lrpx;->k:I

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_2d
    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-string p3, "native_library_split"

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_31
    if-nez v3, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_59

    nop

    nop

    :goto_32
    invoke-virtual {p0, p1}, Lrpx;->f(Landroid/content/Context;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_33
    const-string p2, "Clearing previous module install failure: "

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_34
    iput-object v4, p0, Lrpx;->d:Ljava/lang/Exception;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_35
    if-eqz v0, :cond_9

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_9
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_36
    const v1, 0x19

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v5, p2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {p0, p1, p2}, Lrpx;->33b3102b6558811a7b7629a1e8e59bd2m(Landroid/content/Context;Ljava/util/List;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    new-instance p2, Ljava/util/ArrayList;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3a
    iput-boolean v2, p0, Lrpx;->j:Z

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_4c

    nop

    nop

    :goto_3c
    iget-wide v5, p0, Lrpx;->l:J

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_3d
    invoke-static {p1}, Lrpx;->k(Landroid/content/Context;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3e
    iput-object v4, p0, Lrpx;->c:Ljava/lang/Exception;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_3f
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v5, p2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {p1, p2, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_17

    nop

    nop

    :goto_42
    iget-boolean v3, p0, Lrpx;->j:Z

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_43
    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALL_REQUESTED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_44
    const-wide/16 v7, 0x1388

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const v0, 0x15

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_46
    goto :goto_3b

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v3, p0, Lrpx;->c:Ljava/lang/Exception;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_48
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_49
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4b
    invoke-direct {p0, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_55

    nop

    nop

    :goto_4c
    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALL_REQUESTED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move v0, v2

    nop

    nop

    :goto_4e
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4f
    iget-object v3, p0, Lrpx;->d:Ljava/lang/Exception;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-nez v3, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_b
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_4f

    nop

    nop

    :goto_53
    iput-boolean v2, p0, Lrpx;->i:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_54
    add-int/2addr p2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_55
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_57
    const-string v5, "ARCore-ArCoreApk"

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

    :goto_58
    goto/32 :goto_29

    nop

    :goto_59
    if-nez p2, :cond_c

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5a
    const-string p2, "Failed to launch InstallActivity."

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_15

    nop

    nop

    :goto_5c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5e
    sub-long v5, v3, v5

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop
.end method
