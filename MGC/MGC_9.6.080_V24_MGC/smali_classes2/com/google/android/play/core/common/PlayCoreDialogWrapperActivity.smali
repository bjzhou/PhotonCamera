.class public Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;
.super Landroid/app/Activity;
.source "PG"


# instance fields
.field private a:Landroid/os/ResultReceiver;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    new-instance v0, Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->a:Landroid/os/ResultReceiver;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1e

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_f
    invoke-virtual {p0, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_10
    goto/32 :goto_b

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p2, Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    const/4 p3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p3, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_5
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->a:Landroid/os/ResultReceiver;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p2, Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->finish()V

    goto/32 :goto_e

    nop

    nop

    :goto_b
    const/4 p3, 0x2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    goto :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    if-eqz p2, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    if-eq p2, p3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, p3, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 11

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v2, "window_flags"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->finish()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_21

    nop

    nop

    :goto_6
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
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

    nop

    :goto_8
    move-object v7, v1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->getIntent()Landroid/content/Intent;

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

    nop

    :goto_c
    if-nez p1, :cond_0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->finish()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v3, Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    :goto_13
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p1, Landroid/os/ResultReceiver;

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

    :goto_15
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0}, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

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

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_19
    move-object v1, v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    :goto_1b
    goto/32 :goto_16

    nop

    nop

    :goto_1c
    const-string v0, "confirmation_intent"

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v1, Landroid/app/PendingIntent;

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1f
    check-cast p1, Landroid/os/ResultReceiver;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_20
    goto/32 :goto_34

    nop

    nop

    :goto_21
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_23
    iput-object p1, p0, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->a:Landroid/os/ResultReceiver;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object p1, p0, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->a:Landroid/os/ResultReceiver;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

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

    :goto_26
    invoke-virtual {p0}, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_29
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    :goto_2a
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2d
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_4
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    goto/32 :goto_32

    nop

    nop

    :goto_2f
    goto/16 :goto_9

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_31
    invoke-direct {p0}, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_3

    nop

    nop

    :goto_32
    const-string v0, "result_receiver"

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_36
    move-object v7, v3

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_1b

    nop

    nop

    :goto_38
    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

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

    const/4 v10, 0x0

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    move-object v4, p0

    nop

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz p1, :cond_5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->a:Landroid/os/ResultReceiver;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/32 :goto_2

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
    const-string v0, "result_receiver"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
