.class public final Ltra;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/String; = "tra"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static a(Landroid/app/Activity;Z)Z
    .locals 6

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_3
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

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

    :goto_4
    if-eq p1, v5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1, p0, v2, v0}, Lfwq;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, v0, v2, p1}, Ltra;->b(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)V

    goto/32 :goto_15

    nop

    nop

    :goto_8
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_3b

    nop

    nop

    :goto_d
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v2, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    const v0, 0x7f140196

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v3, "com.google.vr.vrcore.common.VrCoreListenerService"

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_12
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x7f140197

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0, v0, v2, p1}, Ltra;->b(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_27

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

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

    :goto_18
    const-string v0, "ranchu"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p1, Ltra;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_1a
    const v2, 0x7f140237

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v0, "Failed to set VR mode: "

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_1f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v4, -0x1

    nop

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

    :goto_23
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_53

    nop

    nop

    :goto_25
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setVrModeEnabled(ZLandroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_29
    if-eq p1, v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p1, Lfwq;

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

    :goto_2b
    sget-object v0, Ltra;->a:Ljava/lang/String;

    nop

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

    :goto_2c
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

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

    :goto_2d
    const-string v0, "android.hardware.vr.high_performance"

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

    nop

    :goto_2e
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_30
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_33
    const/4 v5, -0x2

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

    :goto_34
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return v1

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_38
    const-string v0, "enabled_vr_listeners"

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_39
    const-string v4, "No VR service component: "

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_3a
    move p1, v4

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance p1, Lfwq;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3d
    if-nez v0, :cond_6

    nop

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

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object p1, Lcom/google/android/apps/camera/ui/remotecontrol/Gizr/bXyemjIV;->eudVBWax:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/16 v2, 0x11

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto :goto_3b

    nop

    nop

    :goto_42
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_45
    move p1, v1

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_46
    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_47
    sget-object p0, Ltra;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_48
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_30

    nop

    :goto_49
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4b
    const-string v2, "com.google.vr.vrcore"

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4c
    move p1, v5

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

    :goto_4d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_4e
    const v2, 0x7f140238

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

    :goto_4f
    new-instance v0, Landroid/content/ComponentName;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_53
    new-instance v0, Landroid/content/ComponentName;

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_54
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_42

    nop

    nop

    :goto_56
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_57
    if-nez p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_9
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_27

    nop

    nop

    :goto_59
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_5b
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_5c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_5d
    const-string v0, "goldfish"

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

    nop

    :goto_5e
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_a
    goto/32 :goto_2f

    nop

    nop

    :goto_5f
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_60
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_61
    const-string v1, "android.software.vr.mode"

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_64
    return p0

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_65
    invoke-direct {p1, p0, v2, v0}, Lfwq;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method

.method private static b(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Ljlx;

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
    return-void

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p2, 0x6

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

    :goto_9
    add-int v0, v0, v1

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

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    const v1, 0x7f1501c2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    invoke-direct {p1, p2}, Ljlx;-><init>(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_4

    nop

    nop

    :goto_11
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

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

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const p2, 0x7f140106

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const p1, 0x7f140195

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

    :goto_16
    const v1, 0xc

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
