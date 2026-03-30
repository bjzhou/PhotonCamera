.class public final Lpyk;
.super Ltuf;
.source "PG"


# instance fields
.field public a:Lpxe;


# direct methods
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
    invoke-direct {p0}, Ltuf;-><init>()V

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

    nop

    nop
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, p2}, Lpxe;->b(Ljava/lang/String;)V

    :goto_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

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

    :goto_3
    iget-object p2, p0, Lpyk;->a:Lpxe;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v2, p1}, Lpyk;->startForeground(ILandroid/app/Notification;)V

    goto/32 :goto_14

    nop

    nop

    :goto_5
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lpyk;->a:Lpxe;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Lpyk;->stopForeground(Z)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_8
    const-string v0, "stop-service"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, p1}, Lqbq;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_c
    goto/32 :goto_11

    nop

    :goto_d
    return v1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    :goto_12
    const v2, 0x5e81f602

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

    :goto_13
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    return v1

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p2}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string p1, "MDD Foreground Download Service"

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

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Ldtg;->a()Landroid/app/Notification;

    move-result-object p1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    invoke-virtual {p0, v2, p1}, Lpyk;->startForeground(ILandroid/app/Notification;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x0

    nop

    nop

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

    :goto_1f
    invoke-virtual {p1}, Ldtg;->a()Landroid/app/Notification;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    sget-object p2, Lcom/google/android/apps/camera/filmstrip/transition/KkW/xCXUu;->fBIcc:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_21
    const/4 v1, 0x2

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

    :goto_22
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_23
    return v1

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p0}, Lpuq;->T(Landroid/content/Context;)Ldtg;

    move-result-object p1

    nop

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

    :goto_27
    if-nez p1, :cond_3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string p0, "%s: KEY_EXTRA is null or empty!"

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

    nop

    :goto_29
    sget p2, Lqbq;->a:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, p3}, Lpyk;->stopSelf(I)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2b
    invoke-static {p0}, Lpuq;->T(Landroid/content/Context;)Ldtg;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2c
    const-string p3, "cancel-action"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_29

    nop

    nop

    nop

    nop
.end method
