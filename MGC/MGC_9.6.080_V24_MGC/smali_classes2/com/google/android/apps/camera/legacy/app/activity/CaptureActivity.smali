.class public Lcom/google/android/apps/camera/legacy/app/activity/CaptureActivity;
.super Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;
.source "PG"


# static fields
.field private static final z:Lsdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const-string v0, "com.google.android.apps.camera.legacy.app.activity.CaptureActivity"

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_3
    sput-object v0, Lcom/google/android/apps/camera/legacy/app/activity/CaptureActivity;->z:Lsdb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;-><init>()V

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


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 9

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    const/16 v0, 0x914

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v2, :cond_0

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

    :cond_0
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move v6, v2

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move v6, v5

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v5, Lscz;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v3, Lscz;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_8
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

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

    :goto_9
    sget-object v6, Lcom/google/android/apps/camera/legacy/app/activity/CaptureActivity;->z:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v7, :cond_1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_58

    nop

    nop

    :goto_b
    invoke-virtual {v5}, Lscs;->c()Lsdo;

    move-result-object v5

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_d
    move v6, v3

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v7, 0x916

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_10
    const-string v7, "Fine location is granted to %s"

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

    nop

    :goto_11
    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_12
    const/16 v0, 0x913

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_13
    invoke-interface {v3, v4, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_14
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_2
    goto/32 :goto_67

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v6, v7, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_14

    nop

    :catch_0
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v0, "Allowing location in intent"

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1b
    aget v7, v0, v2

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v7, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object p0, Lcom/google/android/apps/camera/legacy/app/activity/CaptureActivity;->z:Lsdb;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v6, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    and-int/lit8 v7, v7, 0x2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_25
    const/16 v7, 0x915

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_26
    const-string v4, "Unable to get PackageInfo for %s"

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_27
    const-string v1, "include_location_in_exif"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

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

    :goto_2a
    const-string v7, "Coarse location is granted to %s"

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v6, v7}, Lscz;->M(I)Lsdo;

    move-result-object v6

    nop

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

    nop

    :goto_2c
    invoke-interface {v5, v7, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move v5, v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2f
    if-nez v7, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_5
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_30
    aget-object v7, v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_31
    move v5, v3

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_4a

    nop

    nop

    :goto_33
    invoke-interface {v5, v7}, Lscz;->M(I)Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_34
    sget-object p1, Lcom/google/android/apps/camera/legacy/app/activity/CaptureActivity;->z:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_35
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_6
    goto/32 :goto_3e

    nop

    :goto_36
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/CaptureActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_37
    if-lt v2, v7, :cond_7

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_30

    nop

    nop

    :goto_38
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_39
    const/16 v4, 0x917

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3a
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v3, Lcom/google/android/apps/camera/legacy/app/activity/CaptureActivity;->z:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3c
    const-string v8, "android.permission.ACCESS_COARSE_LOCATION"

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v4, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :cond_8
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_5c

    nop

    :goto_3f
    goto/32 :goto_52

    nop

    nop

    :goto_40
    sget-object v8, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->pQdVAqjKR:Ljava/lang/String;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

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

    :goto_43
    return-void

    nop

    nop

    :goto_44
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_46
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast p1, Lscz;

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

    :goto_49
    invoke-virtual {v6}, Lscs;->c()Lsdo;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4a
    aget-object v7, v4, v2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast p0, Lscz;

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

    :goto_4c
    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_45

    nop

    nop

    :goto_4d
    array-length v7, v4

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    and-int/lit8 v7, v7, 0x2

    nop

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

    nop

    :goto_4f
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-nez p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_9
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/CaptureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    nop

    const/16 v4, 0x1000

    nop

    nop

    nop

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_51
    sget-object v3, Lcom/google/android/apps/camera/legacy/app/activity/CaptureActivity;->z:Lsdb;

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    const/16 v4, 0x912

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    const-string v4, "getCallingPackage() returned null."

    nop

    invoke-interface {v3, v4}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-super {p0, p1}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->onCreate(Landroid/os/Bundle;)V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_2

    nop

    nop

    :goto_55
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_56
    const-string v0, "Package %s doesn\'t have location permissions, location info won\'t be included in EXIF"

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_57
    aget v7, v0, v2

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

    :goto_58
    sget-object v5, Lcom/google/android/apps/camera/legacy/app/activity/CaptureActivity;->z:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v7, :cond_a

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_a
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    return-void

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-interface {p0, v0, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_43

    nop

    nop

    :goto_5f
    if-nez v6, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :cond_b
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_60
    const/4 v3, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_61
    move v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-static {p1}, Lfwt;->f(Landroid/content/Intent;)V

    goto/32 :goto_36

    nop

    nop

    :goto_63
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_61

    nop

    nop

    :goto_67
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

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
.end method
