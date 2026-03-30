.class public final Lfxi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;


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

    nop

    nop

    nop

    :goto_1
    const-string v0, "https://support.google.com/nexus/topic/6012822"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lfxi;->d:Landroid/net/Uri;

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
    sput-object v0, Lfxi;->b:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "http://www.google.com/policies/privacy/"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    const-string v0, "http://www.google.com/policies/terms/"

    nop

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

    :goto_6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

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

    :goto_9
    sput-object v0, Lfxi;->c:Landroid/net/Uri;

    nop

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
.end method

.method public static final a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 44

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v2, Landroid/content/Intent;

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

    nop

    :goto_2
    move-object/from16 v43, v15

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v0, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v3, Lfxi;->d:Landroid/net/Uri;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/gms/googlehelp/GoogleHelp;->a(ILjava/lang/String;Landroid/content/Intent;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v8, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    const/16 v32, 0x0

    nop

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

    :goto_b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    :goto_c
    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/gms/googlehelp/GoogleHelp;->a(ILjava/lang/String;Landroid/content/Intent;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    const/16 v24, 0x0

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v38, 0x0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_f
    const/4 v9, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    new-instance v0, Landroid/content/Intent;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_11
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v29, 0x0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_13
    move-object v10, v1

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

    :goto_14
    const/16 v27, -0x1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v2, "com.google.android.gms.googlehelp.HELP"

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_16
    const/16 v20, 0x0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    const/4 v7, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_19
    const/16 v22, 0x0

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

    :goto_1a
    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1b
    const/4 v11, 0x0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/googlehelp/GoogleHelp;->a(ILjava/lang/String;Landroid/content/Intent;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/16 v42, 0x0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1f
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/16 v30, 0xc8

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_23
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v2, 0x7f14058a

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v0, v1, Lcom/google/android/gms/googlehelp/GoogleHelp;->q:Landroid/net/Uri;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v5, p1

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

    :goto_27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object/from16 v2, p0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_29
    invoke-direct {v3, v5, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2a
    const-class v2, Lcom/google/android/libraries/social/licenses/LicenseMenuActivity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2b
    const/16 v1, 0x17

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/16 v34, 0x0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2f
    const-string v2, "com.google.android.gms"

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

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

    :goto_31
    new-instance v3, Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_32
    move-object/from16 v23, v1

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

    :goto_33
    new-instance v15, Lcom/google/android/gms/googlehelp/GoogleHelp;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    add-int v0, v0, v1

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

    nop

    :goto_35
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v1, Lcom/google/android/gms/feedback/ErrorReport;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move-object/from16 v37, v1

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

    :goto_38
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_39
    const-string v4, "android.intent.action.VIEW"

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3c
    const v2, 0x7f1404a1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_40
    const-string v2, "EXTRA_GOOGLE_HELP"

    nop

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

    :goto_41
    const/16 v39, 0x0

    nop

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

    nop

    :goto_42
    const/16 v26, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_43
    const v0, 0x13

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

    :goto_44
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_45
    invoke-direct {v1}, Lcom/google/android/gms/feedback/ErrorReport;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move/from16 v15, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v3, 0x2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/16 v17, 0x0

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

    :goto_49
    move-object/from16 v18, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4a
    sget-object v0, Lfxi;->b:Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_4b
    const/16 v28, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4c
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const v2, 0x7f1406e5

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_4e
    invoke-direct/range {v0 .. v42}, Lcom/google/android/gms/googlehelp/GoogleHelp;-><init>(ILjava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZLjava/util/List;Landroid/os/Bundle;Landroid/graphics/Bitmap;[BIILjava/lang/String;Landroid/net/Uri;Ljava/util/List;ILone;Ljava/util/List;ZLcom/google/android/gms/feedback/ErrorReport;Lcom/google/android/gms/googlehelp/internal/common/TogglingData;ILandroid/app/PendingIntent;IZZILjava/lang/String;ZLjava/lang/String;ZLcom/google/android/gms/googlehelp/ND4CSettings;ZLjava/util/List;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    new-instance v2, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_50
    move-object/from16 v41, v1

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_56
    move-object/from16 v1, v43

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_58
    const/16 v40, 0x0

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_59
    const/16 v35, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_5a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_36

    nop

    nop

    :goto_5b
    const/4 v14, 0x0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    sget-object v3, Lfxi;->c:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_5d
    const/16 v16, 0x0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    rem-int v0, v0, v1

    nop

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

    nop

    :goto_5f
    const/16 v36, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_60
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    :cond_0
    goto/32 :goto_51

    nop

    :goto_62
    const/16 v19, 0x3

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

    :goto_63
    const/16 v25, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_64
    new-instance v1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_65
    const/16 v31, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_66
    const/16 v33, 0x0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_67
    const/4 v6, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_68
    move-object/from16 v21, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop
.end method

.method public static final b(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string v0, "fix_camera_app_1"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, p0}, Lfxi;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Lnar;->G(Landroid/content/Intent;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lnar;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p1}, Lnar;-><init>(Landroid/app/Activity;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
