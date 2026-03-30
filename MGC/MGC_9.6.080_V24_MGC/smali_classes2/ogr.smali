.class public final Logr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static a:Z

.field static final b:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final synthetic c:I

.field private static d:Z

.field private static final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Logr;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    sput-object v0, Logr;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "GooglePlayServicesUtil"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1
    invoke-static {v2, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_2
    const/16 v4, 0x80

    nop

    nop

    :try_start_0
    invoke-virtual {v3, v2, v4}, Lpic;->x(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    nop

    nop

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a9

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v3, "android.hardware.type.iot"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string p1, " requires Google Play Store, but its signature doesn\'t match that of Google Play services."

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_8
    invoke-static {v6, v1}, Logs;->c(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string p1, "GooglePlayServicesUtil"

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_a
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Lolu;->a:Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    const-string v1, "Google Play services out of date for "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v7, v1}, Logs;->c(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    nop

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

    :goto_14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_73

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_87

    nop

    nop

    nop

    :goto_17
    sget-object v0, Lolu;->a:Ljava/lang/Boolean;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_2f

    nop

    nop

    :goto_19
    move v0, v2

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_1a
    iget-object p0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lt p0, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_0
    goto/32 :goto_60

    nop

    nop

    :goto_1c
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_2
    const-string v6, "com.android.vending"

    nop

    nop

    const/16 v7, 0x2040

    nop

    nop

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    nop
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_1e
    const-string v1, "com.google.android.gms"

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1f
    return v1

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_21
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v2, "GooglePlayServicesUtil"

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string v1, ".  Requires "

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_41

    nop

    nop

    :catch_0
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_28
    move v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2b
    sput-object v0, Lolu;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_2e
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_2f
    const-string p1, " but found "

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-eqz p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :cond_5
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_31
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_32
    if-eq v0, v2, :cond_6

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_33
    const-string v0, "GooglePlayServicesUtil"

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-string v0, "GooglePlayServicesUtil"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :cond_7
    :try_start_3
    const-string p0, "com.google.android.gms"

    nop

    nop

    nop

    invoke-virtual {v4, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_37
    invoke-static {p1}, Lolx;->d(I)I

    move-result v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const-string p1, " requires Google Play Store, but its signature is invalid."

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move v0, v2

    nop

    :goto_3a
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-eqz p0, :cond_8

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_8
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    aget-object p0, p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_3f
    const-string p1, " requires Google Play services, but their signature is invalid."

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_41
    :try_start_4
    const-string v7, "com.google.android.gms"

    nop

    nop

    nop

    nop

    const/16 v8, 0x40

    nop

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_42
    iget-object p0, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_43
    if-eqz p0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException;-><init>(I)V

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_49
    const-string v1, "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez v6, :cond_a

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :cond_a
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4e
    const-string p1, " requires the Google Play Store, but it is missing."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_4f
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {p0}, Lolx;->d(I)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_c
    goto/32 :goto_a4

    nop

    nop

    :goto_52
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_53
    const/4 v2, 0x0

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_54
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {p0}, Logs;->a(Landroid/content/Context;)Logs;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_59
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    move v0, v1

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_5c
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_20

    nop

    nop

    :goto_5e
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    const v1, 0x7f140147

    nop

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {v1}, La;->au(Z)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_60
    iget p0, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_61
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const-string v0, " requires Google Play services, but they\'re missing when getting application info."

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_92

    nop

    :goto_64
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-eqz v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    :cond_d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_66
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_67
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_68
    goto :goto_73

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_51

    nop

    nop

    :goto_6a
    if-eqz v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_e
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6b
    const-string p1, " requires Google Play services, but they are missing."

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_6c
    const/16 v5, 0x9

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const-string v0, "GooglePlayServicesUtil"

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez v0, :cond_f

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_6f
    if-eqz v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :cond_10
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/16 :goto_64

    nop

    :catch_1
    move-exception p0

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_72
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_73
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const-string v3, "android.hardware.type.embedded"

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

    :goto_75
    goto/16 :goto_8b

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    const v2, 0xe8b2118

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget p0, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_79
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_90

    nop

    nop

    :goto_7b
    goto :goto_76

    nop

    nop

    :goto_7c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7d
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_7e
    goto :goto_73

    nop

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_78

    nop

    nop

    :goto_80
    sget-object v0, Lokx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_5e

    nop

    :goto_83
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesMissingManifestValueException;

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_c

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    return v2

    nop

    nop

    nop

    nop

    :catch_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_87
    if-nez v0, :cond_11

    nop

    nop

    goto/32 :goto_7f

    nop

    :cond_11
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_88
    goto :goto_92

    nop

    nop

    :goto_89
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    const v1, 0x1d

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    aget-object v0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8f
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_91
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_92
    goto/32 :goto_1f

    nop

    nop

    :goto_93
    invoke-virtual {p0, v0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_94
    invoke-static {p0}, Lolu;->c(Landroid/content/Context;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_95
    goto/16 :goto_3a

    nop

    :goto_96
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_97
    monitor-enter v0

    nop

    nop

    :try_start_6
    sget-boolean v2, Lokx;->b:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_12

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    goto/16 :goto_a7

    nop

    :cond_12
    sput-boolean v1, Lokx;->b:Z

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-static {p0}, Lomb;->b(Landroid/content/Context;)Lpic;

    move-result-object v3

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_98
    sget-object v0, Logr;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_99
    if-lez v0, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    :cond_13
    goto/32 :goto_5d

    nop

    :goto_9a
    goto/16 :goto_92

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_40

    nop

    nop

    :goto_9c
    sget v0, Lokx;->c:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_a0
    if-eqz v0, :cond_14

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_a1
    const-string v0, "GooglePlayServicesUtil"

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_a2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-direct {p0}, Lcom/google/android/gms/common/GooglePlayServicesMissingManifestValueException;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-static {v6}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    goto :goto_a6

    nop

    :catch_3
    move-exception v2

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    const-string v3, "MetadataValueReader"

    nop

    const-string v4, "This should never happen."

    nop

    nop

    nop

    nop

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a6
    monitor-exit v0

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_a7
    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_a8
    const-string v0, "GooglePlayServicesUtil"

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_a9
    if-eqz v2, :cond_15

    nop

    goto/32 :goto_ab

    nop

    :cond_15
    :try_start_8
    monitor-exit v0

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    goto :goto_a7

    nop

    nop

    :goto_ab
    :try_start_9
    const-string v3, "com.google.app.id"

    nop

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "com.google.android.gms.version"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    nop

    sput v2, Lokx;->c:I

    nop
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    throw p0

    nop

    nop

    nop

    :goto_ad
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_ae
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_af
    goto/16 :goto_8f

    nop

    :catchall_1
    goto/32 :goto_6d

    nop

    nop

    nop
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    :goto_1
    goto/16 :goto_17

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    nop

    :goto_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sput-boolean v2, Logr;->a:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_9
    goto :goto_d

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    goto :goto_d

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_b

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    :try_start_0
    const-string v0, "GooglePlayServicesUtil"

    nop

    nop

    nop

    nop

    const-string v3, "Cannot find Google Play services package name."

    nop

    nop

    invoke-static {v0, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    const v1, 0x6

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    sput-boolean v2, Logr;->a:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_15
    const-string p0, "user"

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return v1

    nop

    :goto_17
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sput-boolean v2, Logr;->a:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-boolean p0, Logr;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_1
    invoke-static {p0}, Lomb;->b(Landroid/content/Context;)Lpic;

    move-result-object v0

    nop

    nop

    nop

    const-string v3, "com.google.android.gms"

    nop

    nop

    const/16 v4, 0x40

    nop

    nop

    nop

    invoke-virtual {v0, v3, v4}, Lpic;->y(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    nop

    nop

    invoke-static {p0}, Logs;->a(Landroid/content/Context;)Logs;

    if-eqz v0, :cond_4

    nop

    nop

    nop

    invoke-static {v0, v1}, Logs;->c(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    nop

    if-nez p0, :cond_4

    nop

    nop

    invoke-static {v0, v2}, Logs;->c(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    nop

    if-eqz p0, :cond_4

    nop

    nop

    nop

    sput-boolean v2, Logr;->d:Z

    nop

    goto :goto_1b

    nop

    :cond_4
    sput-boolean v1, Logr;->d:Z

    nop

    nop
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-boolean v0, Logr;->a:Z

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

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

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1f
    return v2

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_0

    nop

    nop

    :goto_21
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method

.method public static c(Landroid/content/Context;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_1

    nop

    nop

    :goto_0
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

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

    :goto_2
    invoke-static {p0}, Logr;->d(Landroid/content/Context;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

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

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 4

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

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0x2000

    nop

    nop

    :try_start_1
    invoke-virtual {p0, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    nop

    nop

    nop

    nop

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    nop

    nop
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x3

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

    nop

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_b
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

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

    :goto_11
    add-int v0, v0, v1

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

    nop

    :goto_12
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    return v0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v3, "com.google.android.gms"

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :goto_18
    goto/32 :goto_a

    nop

    nop

    :goto_19
    return p0

    nop

    :catch_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v2, :cond_2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method
