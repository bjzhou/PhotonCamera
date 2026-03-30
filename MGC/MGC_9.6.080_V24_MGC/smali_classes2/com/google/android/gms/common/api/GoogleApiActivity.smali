.class public Lcom/google/android/gms/common/api/GoogleApiActivity;
.super Landroid/app/Activity;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
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

    nop

    :goto_1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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
    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

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
.end method

.method public static a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    const-class v1, Lcom/google/android/gms/common/api/GoogleApiActivity;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    const-string p0, "failing_client_id"

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    const-string p0, "notify_manager"

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

    nop

    :goto_c
    new-instance v0, Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    const v0, 0x4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string p0, "pending_intent"

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

    :goto_10
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m()V
    .locals 12

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xe

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_a
    const-string v5, "generic"

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v2, v0, v5}, La;->bk(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_41

    nop

    nop

    :goto_d
    const-string v2, "pending_intent"

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    nop

    :goto_f
    const-string v3, "failing_client_id"

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v5, -0x1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_42

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x2

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

    :goto_15
    invoke-static {p0}, Loio;->c(Landroid/content/Context;)Loio;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_16
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_1
    goto/32 :goto_3a

    nop

    nop

    :goto_17
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_18
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    :goto_19
    new-instance v1, Lofz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v1, v2, v3}, Lofz;-><init>(ILandroid/app/PendingIntent;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v0, "Activity started without extras"

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1d
    const-string v5, "."

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1e
    check-cast v2, Landroid/app/PendingIntent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1f
    const-string v0, "Activity started without resolution"

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_20
    iput v4, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

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

    :goto_21
    const-string v5, "notify_manager"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_7

    nop

    nop

    :goto_23
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_3
    :try_start_0
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v5, p0

    nop

    nop

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/common/api/GoogleApiActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    iput v4, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

    nop
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_26
    const-string v1, "GoogleApiActivity"

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_28
    iput v4, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v1, Logd;->a:Logd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2a
    const-string v3, "error_code"

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

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

    :goto_2c
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    :goto_2e
    invoke-virtual {v1, p0, v0, v2, p0}, Logd;->c(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_8

    nop

    nop

    :goto_31
    const-string v0, "Activity not found while launching "

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_32
    if-eqz v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v4, 0x1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v3, Ljava/lang/Integer;

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
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    :catch_1
    move-exception v3

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

    :goto_3a
    const-string v2, " This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store."

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3e
    invoke-static {v3}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_3f
    const/16 v2, 0x16

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    goto/32 :goto_6

    nop

    nop

    :goto_42
    goto/32 :goto_30

    nop

    nop

    :goto_43
    invoke-virtual {v0, v1, v2}, Loio;->d(Lofz;I)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_44
    goto :goto_47

    nop

    :goto_45
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const-string v2, "Failed to launch pendingIntent"

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_49
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_6
    goto/32 :goto_2f

    nop

    :goto_4a
    const v1, 0x8

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4b
    return-void

    nop

    :goto_4c
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_3b

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Loio;->e()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p2, Lofz;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1d

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

    nop

    :goto_7
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eq p1, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    :goto_9
    if-lez v0, :cond_3

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

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

    :goto_c
    const-string v1, "failing_client_id"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->setResult(ILandroid/content/Intent;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    if-eq p1, v1, :cond_4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    :goto_14
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_28

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    invoke-static {p0}, Loio;->c(Landroid/content/Context;)Loio;

    move-result-object p1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p2, v0, v1}, Lofz;-><init>(ILandroid/app/PendingIntent;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-ne p2, p3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1f
    goto :goto_28

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_29

    nop

    nop

    :goto_26
    const/4 p3, -0x1

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

    :goto_27
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->setResult(ILandroid/content/Intent;)V

    :goto_28
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/16 v0, 0xd

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

    :goto_2b
    const-string v2, "notify_manager"

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, p2, p3}, Loio;->d(Lofz;I)V

    goto/32 :goto_15

    nop

    nop
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiActivity;->setResult(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "resolution"

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    iget p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

    nop

    :goto_5
    goto/32 :goto_1

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
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->f875135777c17da3cef2ea6eeff5be29m()V

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x11

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    const-string v0, "resolution"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

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

    goto/32 :goto_c

    nop

    nop

    nop
.end method
