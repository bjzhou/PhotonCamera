.class public final Lcom/google/vr/vrcore/base/api/VrCoreUtils;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.end method

.method public static a(Landroid/content/Context;)I
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v2, "VrCoreUtils"

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return v2

    nop

    nop

    :goto_4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0x40

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    nop

    sget-object v3, Ltss;->a:Landroid/content/pm/Signature;

    nop

    nop

    nop

    nop

    filled-new-array {v3}, [Landroid/content/pm/Signature;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-static {v0, v3}, Ltss;->a(Landroid/content/pm/PackageInfo;[Landroid/content/pm/Signature;)Z

    move-result v3

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    goto/16 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_1
    sget-object v3, Lrgw;->c:Ljava/lang/Boolean;

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    sget-object v3, Lrgw;->c:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    :cond_2
    invoke-static {p0}, Lrgw;->ax(Landroid/content/Context;)Z

    move-result v3

    nop

    :goto_5
    if-eqz v3, :cond_6

    nop

    nop

    nop

    sget-object v3, Ltss;->b:Landroid/content/pm/Signature;

    nop

    nop

    nop

    nop

    filled-new-array {v3}, [Landroid/content/pm/Signature;

    move-result-object v3

    nop

    invoke-static {v0, v3}, Ltss;->a(Landroid/content/pm/PackageInfo;[Landroid/content/pm/Signature;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v2

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0x2000

    nop

    :try_start_1
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    nop

    nop

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x13

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

    :goto_13
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    :goto_18
    return v2

    nop

    nop

    nop

    nop

    :cond_6
    :goto_19
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p0, :cond_7

    nop

    goto/32 :goto_28

    nop

    :cond_7
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1c
    const/16 p0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    :goto_1e
    const/4 v2, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_f

    nop

    nop

    :goto_21
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_22
    const/4 v2, 0x3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 p0, 0x2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x0

    nop

    :goto_26
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return v2

    nop

    nop

    nop

    nop

    nop

    :catch_1
    :goto_28
    goto/32 :goto_2d

    nop

    nop

    :goto_29
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_25

    nop

    nop

    :goto_2a
    return p0

    nop

    nop

    :catch_2
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_13

    nop

    nop

    :goto_2b
    if-nez v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2d
    const/4 p0, 0x1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2e
    if-eqz p0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v2, "Failure querying package installer sessions: "

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_30
    if-nez v3, :cond_a

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_31
    const-string v1, "com.google.vr.vrcore"

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

    nop

    :goto_32
    return p0

    nop

    nop

    :goto_33
    goto/32 :goto_15

    nop

    nop

    :goto_34
    goto/16 :goto_19

    nop

    nop

    :goto_35
    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method public static getVrCoreClientApiVersion(Landroid/content/Context;)I
    .locals 3

    goto/32 :goto_5

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    const-string v1, "com.google.vr.vrcore"

    nop

    const/16 v2, 0x80

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    nop

    nop

    nop

    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    const-string v1, "com.google.vr.vrcore.ClientApiVersion"

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    nop

    :cond_0
    return v2

    nop

    :cond_1
    new-instance v0, Ltst;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x2

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ltst;-><init>(I)V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ltst;

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

    :goto_3
    invoke-direct {v0, p0}, Ltst;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1a

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

    :goto_6
    throw v0

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

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_0

    nop

    :goto_a
    const v1, 0x7

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

    :goto_b
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->a(Landroid/content/Context;)I

    move-result p0

    nop

    nop

    goto/32 :goto_3

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

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method
