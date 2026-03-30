.class public final Leub;
.super Leug;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lts;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Leug;-><init>(Landroid/content/Context;Lts;)V

    goto/32 :goto_1

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
.method public final a()Landroid/content/IntentFilter;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "android.os.action.CHARGING"

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

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Landroid/content/IntentFilter;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    const-string v0, "android.os.action.DISCHARGING"

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x2

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

    :goto_1
    sget-object p0, Leuc;->a:Ljava/lang/String;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_6
    if-eq p0, v1, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1a

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Leui;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    move v0, v2

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    :goto_14
    const/4 v1, 0x5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-ne p0, v1, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    :goto_16
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Landroid/content/IntentFilter;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_21

    nop

    nop

    :goto_1a
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

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

    :goto_1d
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, -0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v1, "getInitialState - null intent received"

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

    nop

    :goto_23
    if-eqz p0, :cond_3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    :goto_24
    const v0, 0x11

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v1, "status"

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
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Leui;->f(Ljava/lang/Object;)V

    :goto_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1a

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_6
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    nop

    sparse-switch v0, :sswitch_data_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_4

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_4

    nop

    nop

    :sswitch_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Leui;->f(Ljava/lang/Object;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_21

    nop

    :goto_12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

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

    nop

    :goto_14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :sswitch_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    :sswitch_2
    goto/32 :goto_1f

    nop

    nop

    :goto_17
    const-string v0, "android.os.action.CHARGING"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7073f927 -> :sswitch_2
        -0x3465cce -> :sswitch_1
        0x388694fe -> :sswitch_3
        0x3cbf870b -> :sswitch_0
    .end sparse-switch

    :goto_19
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v0, "android.os.action.DISCHARGING"

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p1}, Leui;->f(Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    :sswitch_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_19

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

    nop

    :goto_22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_23
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v0, Leuc;->a:Ljava/lang/String;

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

    :goto_27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, p1}, Leui;->f(Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    :goto_2a
    if-nez p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop
.end method
