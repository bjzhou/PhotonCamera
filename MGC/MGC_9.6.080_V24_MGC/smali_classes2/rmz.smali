.class public final Lrmz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final d:Lrpz;

.field private static final f:Landroid/content/Intent;


# instance fields
.field public a:Lrnv;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final e:Lrpz;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Landroid/content/Intent;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    :goto_3
    const-string v1, "com.google.android.play.core.install.BIND_UPDATE_SERVICE"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_5
    const-string v1, "com.android.vending"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    sput-object v0, Lrmz;->d:Lrpz;

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
    rem-int v0, v0, v1

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

    :goto_8
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    invoke-direct {v0, v1, v2}, Lrpz;-><init>(Ljava/lang/String;[B)V

    goto/32 :goto_6

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lrmz;->f:Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    new-instance v0, Lrpz;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, "AppUpdateService"

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lrpz;)V
    .locals 7

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v6, "test-keys"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v5, "GXWy8XF3vIml3_MfnmSmyuKBpT3B0dWbHRR_4cgq-gA"

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3
    const-string p2, "Play Store package is not signed -- possibly self-built package. Could not verify."

    nop

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

    :goto_4
    iput-object v2, p0, Lrmz;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    nop

    nop

    goto/32 :goto_3e

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

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_a
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

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

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_e
    const-string v6, "dev-keys"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    nop

    nop

    nop

    nop

    const/16 v3, 0x40

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    nop

    nop

    nop

    nop

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_11
    const-string v5, "8P1sW0EPJcslw7UzRsiXL64w-O50Ed-RBICtay1g24M"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v3, v3, 0x1

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

    :goto_18
    const/4 p2, 0x0

    nop

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    nop

    nop

    nop

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :catch_1
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1a
    aget-object v4, v0, v3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1b
    invoke-static {v2}, Lkav;->s(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1c
    if-eqz v4, :cond_3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move v3, p2

    nop

    nop

    :goto_1f
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_1f

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    array-length v1, v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p1}, Lqrf;->v(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_4

    nop

    goto/32 :goto_50

    nop

    nop

    :cond_4
    goto/32 :goto_4f

    nop

    :goto_27
    const-string v0, "Play Store package certs are not valid. Found these sha256 certs: [%s]."

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_28
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance p2, Lrnv;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2c
    if-eqz v5, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_5
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2e
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-lt v3, v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput-object p2, p0, Lrmz;->e:Lrpz;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    new-array p1, p2, [Ljava/lang/Object;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v5, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_7
    :goto_36
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_37
    new-array p2, p2, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0, p2, p1}, Lrpz;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    :goto_39
    invoke-virtual {p0, v0, p1}, Lrpz;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3a
    sget-object p0, Lrnx;->a:Lrpz;

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

    :goto_3b
    const-string v0, "Play Store package is not found."

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3c
    sget-object v0, Lrmz;->d:Lrpz;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_3d
    sget-object p0, Lrnx;->a:Lrpz;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v4}, Lrkm;->h([B)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object p0, Lrnx;->a:Lrpz;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_41
    new-array p1, p2, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    new-array p1, p2, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_45
    sget-object p0, Lrnx;->a:Lrpz;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const v1, 0x1a

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

    :goto_47
    sget-object v1, Lcom/google/android/apps/camera/backup/iI/oRSsAde;->smzfMGFdkfIjGX:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_48
    iput-object p1, p0, Lrmz;->c:Landroid/content/Context;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_49
    sget-object p0, Lrnx;->a:Lrpz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0, p2, p1}, Lrpz;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    :goto_4b
    invoke-direct {p2, p1, v0, v1}, Lrnv;-><init>(Landroid/content/Context;Lrpz;Landroid/content/Intent;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0, p1, p2}, Lrpz;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    :goto_4d
    if-eqz v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_58

    nop

    nop

    :goto_4e
    iput-object p2, p0, Lrmz;->a:Lrnv;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_52
    const-string p2, "Play Store package is disabled."

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_53
    sget-object v5, Landroid/os/Build;->TAGS:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_54
    sget-object v1, Lrmz;->f:Landroid/content/Intent;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_55
    sget-object p2, Lrnx;->a:Lrpz;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0, v0, p1}, Lrpz;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_57
    new-array p1, p2, [Ljava/lang/Object;

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

    nop

    :goto_58
    sget-object v5, Landroid/os/Build;->TAGS:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public static a(Landroid/os/Bundle;)I
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const/4 v1, -0x2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    const-string v0, "error.code"

    nop

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

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x19

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public static b()Landroid/os/Bundle;
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    sget-object v1, Lkotlinx/coroutines/android/cMC/QBzQbzDQvUUZ;->RUrX:Ljava/lang/String;

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

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_c
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    const v0, 0x18

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    const/16 v2, 0x4ee8

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public static c()Loqy;
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v3, v2}, Lrpz;->i(Ljava/lang/String;[Ljava/lang/Object;)V

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

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    const v0, 0x1d

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lrnf;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Lrnf;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    :goto_9
    invoke-static {v0}, Lolx;->br(Ljava/lang/Exception;)Loqy;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const-string v3, "onError(%d)"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    sget-object v0, Lrmz;->d:Lrpz;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    const v1, 0x20

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

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v1, -0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public static d(Ljava/util/ArrayList;)Ljava/util/HashSet;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method
