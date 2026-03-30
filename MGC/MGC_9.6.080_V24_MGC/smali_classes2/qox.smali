.class public final Lqox;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqox;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

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
.end method

.method public constructor <init>(Ltud;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    new-instance v0, Lqpd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1c

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

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    invoke-direct {v0, p1, v1}, Lqpd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lqox;->a:Ljava/lang/Object;

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

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    invoke-static {v0}, Lqrg;->H(Lrtm;)Lrtm;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    :goto_f
    const/4 v1, 0x1

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
.end method

.method public static b()Z
    .locals 2

    goto/32 :goto_2

    nop

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

    goto/32 :goto_b

    nop

    nop

    :goto_1
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const v0, 0x10

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

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

    :goto_8
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    const-string v1, "robolectric"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Z
    .locals 43

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const-string v28, "com.google.android.youtube"

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1
    const-string v18, "com.google.android.apps.youtube.music"

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v11, "com.google.android.apps.tasks"

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    const-string v41, "com.google.android.apps.docs.editors.sheets"

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4
    const-string v39, "com.google.android.apps.docs"

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

    :goto_5
    const-string v24, "com.google.android.inputmethod.latin"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_7
    const-string v10, "com.google.android.apps.streetview.collector"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    const-string v6, "com.google.android.apps.gmm.search.map.testing.app"

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_9
    const-string v31, "com.google.android.youtube.tv"

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v15, "com.google.android.apps.internal.admobsdk.mediumtest.stability"

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, v0, Lqox;->a:Ljava/lang/Object;

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

    :goto_c
    const-string v12, "com.google.android.apps.dragonfly"

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_d
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_0
    goto/32 :goto_4f

    nop

    nop

    :goto_e
    const-string v25, "com.google.android.inputmethod.latin.canary"

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_f
    const-string v5, "com.google.android.apps.searchlite.homescreen"

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
    const-string v2, "com.google.android.apps.geo.food.omniapp.nomni"

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

    :goto_11
    const-string v2, "com.google.android.apps.nbu.paisa.user.integration.homescreen"

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_12
    const-string v6, "com.google.android.flutter.testing.integrationtest.skeleton"

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    const-string v7, "com.google.android.libraries.performance.primes.sample.profiling.application"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_14
    const-string v12, "com.google.android.apps.tasks.ui.scuba"

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

    nop

    nop

    :goto_15
    const-string v40, "com.google.android.apps.docs.editors.docs"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    const-string v1, "com.google.android.apps.docs.editors.slides"

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v0}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_19
    const-string v16, "com.google.android.apps.youtube.kids"

    nop

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

    :goto_1a
    const-string v15, "com.google.android.apps.youtube.creator"

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1b
    const-string v32, "com.google.android.youtube.tvkids"

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v34, Lcom/google/android/build/data/ERtJ/cVlffQDuQRSSY;->aHjEvncUnife:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_1d
    const-string v13, "com.google.android.apps.work.clouddpc"

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v3, Lcom/google/android/apps/camera/backup/iI/oRSsAde;->ATWXja:Ljava/lang/String;

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

    :goto_1f
    const-string v23, "com.google.android.googlequicksearchbox"

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

    :goto_20
    const-string v36, "com.android.vending"

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_21
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v16

    nop

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

    nop

    :goto_22
    const-string v19, "com.google.android.apps.youtube.unplugged"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_23
    const-string v22, "com.google.android.gms"

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_24
    const-string v14, "com.google.android.apps.gmm.home.cards.yourexplore"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3a

    nop

    :cond_1
    goto/32 :goto_39

    nop

    :goto_26
    invoke-static/range {v36 .. v42}, Lryy;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lryy;

    move-result-object v1

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

    :goto_27
    const-string v21, "com.google.android.apps.youtube.vr.oculus"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_28
    const-string v27, "com.google.android.play.games"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_29
    const-string v38, "com.google.android.GoogleCameraEng"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v4, "com.google.android.apps.nbu.paisa.user.integration.qrcode"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v8, "com.google.android.marvin.talkback"

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v9, "com.google.android.apps.messaging"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2f
    const v1, 0x14

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-string v33, "com.google.android.youtube.tvunplugged"

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static/range {v10 .. v16}, Lryy;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lryy;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_32
    const-string v37, "com.google.android.GoogleCamera"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_33
    const/16 v34, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_34
    const-string v13, "com.google.android.apps.dynamite"

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_35
    filled-new-array/range {v1 .. v35}, [Ljava/lang/String;

    move-result-object v42

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_36
    const-string v30, "com.google.android.youtube.test"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_37
    invoke-virtual {v1, v2}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_38
    const-string v29, "com.google.android.youtube.oem"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v20, "com.google.android.apps.youtube.vr"

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3c
    const-string v14, "com.google.android.apps.work.clouddpc.arc"

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-string v4, "com.google.android.apps.gmm"

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_3e
    iget-object v0, v0, Lqox;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_40
    const-string v35, "com.google.intelligence.sense.ambientmusic.history.functional"

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_41
    const-string v26, "com.google.android.inputmethod.latin.dev"

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_42
    const-string v1, "com.google.android.apps.nbu.paisa.user.integration.home"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_43
    const-string v11, "com.google.android.apps.diagnosticstool"

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_44
    const-string v8, "com.google.android.apps.jamkiosk"

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

    :goto_45
    return v0

    nop

    :goto_46
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_47
    const-string v5, "com.google.android.apps.gmm.ads.label.testing.app"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_48
    const-string v10, "com.google.android.apps.accessibility.reveal"

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const-string v17, "com.google.android.apps.youtube.mango"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4a
    const-string v9, "com.google.android.street"

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_4b
    const-string v7, "com.google.android.apps.googlecamera.fishfood"

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

    :goto_4c
    move-object/from16 v0, p0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    return v0

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v0, 0x1

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

    nop

    :goto_50
    const-string v3, "com.google.android.apps.nbu.paisa.user.integration.microapp"

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop
.end method
