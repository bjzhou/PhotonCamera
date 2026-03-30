.class public final Ljlv;
.super Lna;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljlv;->a:Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Lna;-><init>(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b()V
    .locals 2

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lna;->g(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Ljlv;->a:Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    :goto_5
    sget v0, Lcom/a;->ba:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_6
    const-string v1, "prefscreen_top"

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lng;->d()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    const/high16 v1, 0x2000000

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_c
    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()V

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Ljlv;->a:Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Ljlv;->a:Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Ljlv;->a:Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

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

    :goto_17
    invoke-virtual {v0}, Ljly;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    const/4 v1, -0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_19
    iget-object v0, v0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->u:Ljly;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x6

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->setResult(I)V

    :goto_1d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_1f
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Lmy;->j()Lng;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_22
    and-int/2addr v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop
.end method
