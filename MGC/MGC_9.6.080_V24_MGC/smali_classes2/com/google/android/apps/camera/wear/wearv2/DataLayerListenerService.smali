.class public Lcom/google/android/apps/camera/wear/wearv2/DataLayerListenerService;
.super Losr;
.source "PG"


# static fields
.field private static final f:Lsdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/android/apps/camera/wear/wearv2/DataLayerListenerService;->f:Lsdb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

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

    nop

    :goto_3
    const-string v0, "com.google.android.apps.camera.wear.wearv2.DataLayerListenerService"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

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
    invoke-direct {p0}, Losr;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lovc;)V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    :goto_0
    sget-object v1, Lcom/google/android/apps/camera/wear/wearv2/DataLayerListenerService;->f:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1
    const v0, 0x2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    iget-object p0, p1, Lovc;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_6
    sget-boolean v0, Lntu;->b:Z

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x7

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

    :goto_9
    check-cast v0, Landroid/app/KeyguardManager;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_a
    const-string v1, "/preview"

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

    :goto_b
    const-string v0, "keyguard"

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_f
    const/16 v3, 0x145f

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_10
    goto/16 :goto_3b

    nop

    nop

    :goto_11
    goto/32 :goto_45

    nop

    nop

    :goto_12
    const v0, 0x10008000

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p1, Lovc;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_14
    const-string v1, "/start-activity"

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

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

    :goto_16
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_18
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_1b
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

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

    :goto_1c
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_2
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/wear/wearv2/DataLayerListenerService;->getPackageName()Ljava/lang/String;

    move-result-object v0

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

    :goto_1e
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

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

    :goto_20
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-wide/16 v1, 0x3e8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/wear/wearv2/DataLayerListenerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x1000000a

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v0, Landroid/os/PowerManager;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_25
    const-string v2, "Failed to release wakelock"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-string v2, "Camera:ScreenOnForWearable"

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

    :goto_27
    new-instance v1, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_28
    const-string v1, "extra_turn_screen_on"

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_29
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v0, :cond_5

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_17

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p1, Lovc;->b:Ljava/lang/String;

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

    nop

    :goto_2e
    sget-object v1, Lcom/google/android/apps/camera/filmstrip/transition/KkW/xCXUu;->NGm:Ljava/lang/String;

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

    :goto_2f
    return-void

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    nop

    nop

    :goto_33
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_43

    nop

    nop

    :goto_37
    const-string v1, "extra_wear_node_id"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_38
    iget-object v0, p1, Lovc;->b:Ljava/lang/String;

    nop

    nop

    :goto_39
    goto/32 :goto_3c

    nop

    nop

    :goto_3a
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/wear/wearv2/DataLayerListenerService;->startActivity(Landroid/content/Intent;)V

    :goto_3b
    goto/32 :goto_2f

    nop

    nop

    :goto_3c
    iget-object v0, p1, Lovc;->b:Ljava/lang/String;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_3e
    goto/32 :goto_b

    nop

    nop

    :goto_3f
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto :goto_33

    nop

    nop

    :goto_41
    goto/32 :goto_32

    nop

    nop

    :goto_42
    iget-object v0, p1, Lovc;->b:Ljava/lang/String;

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

    :goto_43
    sget-boolean v0, Lntu;->c:Z

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_45
    const-string v0, "power"

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/wear/wearv2/DataLayerListenerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :try_start_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_48
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_7
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const-string v1, "/sending_time"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop
.end method
