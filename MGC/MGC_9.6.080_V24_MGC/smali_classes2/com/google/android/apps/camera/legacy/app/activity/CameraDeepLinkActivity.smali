.class public Lcom/google/android/apps/camera/legacy/app/activity/CameraDeepLinkActivity;
.super Landroid/app/Activity;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private b:Z


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    const-string v1, "com.android.vending"

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/legacy/app/activity/CameraDeepLinkActivity;->startActivity(Landroid/content/Intent;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v2, "https://play.google.com/store/apps/details?id=com.google.android.GoogleCamera"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    const v1, 0x1a

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

    :goto_7
    new-instance v0, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v1, "android.intent.action.VIEW"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
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

    :goto_13
    iput-boolean v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/CameraDeepLinkActivity;->b:Z

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    const-string v0, "com.google.android.apps.camera.legacy.app.activity.CameraDeepLinkActivity"

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
    sput-object v0, Lcom/google/android/apps/camera/legacy/app/activity/CameraDeepLinkActivity;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    goto/32 :goto_1

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

    nop
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 9

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_0
    sget-object p1, Lcom/google/android/apps/camera/legacy/app/activity/CameraDeepLinkActivity;->a:Lsdb;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_2
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_6
    if-nez v6, :cond_0

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    :goto_8
    invoke-static {v6, v5}, Lrsj;->a(Ljava/lang/Class;Ljava/lang/String;)Lrss;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v4, Lnne;

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

    nop

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_d
    sget v7, Lnnb;->b:I

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_e
    const-string v5, "timer"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    const-class p1, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v7, v6}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, "Received intent to launch DeepLinkActivity with null intentUri"

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_1b
    const/16 v0, 0x90e

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v5, "android.intent.extra.TIMER_DURATION_SECONDS"

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_1d
    if-nez v6, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1f
    const-string v0, "Unsupported mode \'%s\', perhaps you need to upgrade"

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

    :goto_20
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_21
    const-string p1, "android.media.action.STILL_IMAGE_CAMERA"

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_22
    if-nez v4, :cond_3

    nop

    goto/32 :goto_3f

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p1, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_16

    nop

    nop

    :goto_26
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v0, Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_29
    const-string v5, "android.intent.extra.STILL_IMAGE_MODE"

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_2a
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    :goto_2e
    check-cast p1, Lscz;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2f
    sget-object p1, Lcom/google/android/apps/camera/legacy/app/activity/CameraDeepLinkActivity;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_30
    invoke-interface {p1, v1, v4, v0}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-string v1, "Unknown query parameter %s, with value %s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_34
    iput-boolean p1, p0, Lcom/google/android/apps/camera/legacy/app/activity/CameraDeepLinkActivity;->b:Z

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/CameraDeepLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

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

    :goto_37
    if-nez v4, :cond_5

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_38
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/16 v1, 0x90f

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_3a
    invoke-interface {p1, v0, v4}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3c
    const-string v5, "android.intent.extra.USE_FRONT_CAMERA"

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_40
    throw p0

    nop

    :goto_41
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_42
    invoke-interface {p1, v1}, Lscz;->M(I)Lsdo;

    move-result-object p1

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

    :goto_43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1c

    nop

    nop

    :goto_44
    invoke-virtual {v5}, Lrss;->h()Z

    move-result v6

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

    :goto_45
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/legacy/app/activity/CameraDeepLinkActivity;->startActivity(Landroid/content/Intent;)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const-string v5, "mode"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

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

    :goto_4b
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/legacy/app/activity/CameraDeepLinkActivity;->startActivity(Landroid/content/Intent;)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast p1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4d
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-nez v5, :cond_6

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_51
    const-string v5, "use-front-camera"

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

    :goto_52
    const/16 v0, 0x910

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {p0}, Lcom/google/android/apps/camera/legacy/app/activity/CameraDeepLinkActivity;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_54
    sget-object p1, Lcom/google/android/apps/camera/legacy/app/activity/CameraDeepLinkActivity;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v4}, Lnne;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_56
    sget-object v7, Lnne;->g:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_57
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-nez v5, :cond_7

    nop

    nop

    nop

    goto/32 :goto_4f

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

    :goto_59
    const/high16 v1, 0x10000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5a
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_5b
    goto/16 :goto_65

    nop

    :goto_5c
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_5d
    return-void

    nop

    :goto_5e
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_60
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    check-cast p1, Lscz;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_62
    check-cast v6, Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_63
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_64
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_66
    invoke-static {v7, v8}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v7

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

    :goto_67
    iput-boolean v2, p0, Lcom/google/android/apps/camera/legacy/app/activity/CameraDeepLinkActivity;->b:Z

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

    :goto_68
    const v1, 0x1

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

    :goto_69
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_6c
    iput-boolean v2, p0, Lcom/google/android/apps/camera/legacy/app/activity/CameraDeepLinkActivity;->b:Z

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_65

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-nez v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_71
    check-cast v4, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_72
    sget-object v8, Lnne;->b:Lnne;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_73
    invoke-direct {p0}, Lcom/google/android/apps/camera/legacy/app/activity/CameraDeepLinkActivity;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_4e

    nop

    nop

    :goto_74
    const-class v6, Lnne;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_75
    const-string p1, "Unreachable: only still-image modes supported"

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onResume()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    goto/32 :goto_5

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

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/CameraDeepLinkActivity;->finish()V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/CameraDeepLinkActivity;->b:Z

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
.end method
