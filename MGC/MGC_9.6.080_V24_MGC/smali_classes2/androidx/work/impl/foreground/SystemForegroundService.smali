.class public Landroidx/work/impl/foreground/SystemForegroundService;
.super Leaz;
.source "PG"

# interfaces
.implements Leup;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field b:Leuq;

.field c:Landroid/app/NotificationManager;

.field private d:Z


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, v0, Leuq;->h:Leup;

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

    :goto_2
    iput-object p0, v0, Leuq;->h:Leup;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Leuq;

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

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Leuq;-><init>(Landroid/content/Context;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

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

    nop

    :goto_a
    const v1, 0x11

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_14

    nop

    nop

    :goto_f
    const-string v1, "notification"

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    const-string v0, "A callback already exists."

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    :goto_12
    check-cast v0, Landroid/app/NotificationManager;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->c:Landroid/app/NotificationManager;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

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

    nop

    :goto_18
    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Leuq;

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

    :goto_19
    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_1b
    sget-object p0, Leuq;->a:Ljava/lang/String;

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {v0}, Leqh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->a:Ljava/lang/String;

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

    nop

    :goto_3
    const-string v0, "SystemFgService"

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
    invoke-direct {p0}, Leaz;-><init>()V

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

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->c:Landroid/app/NotificationManager;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b(ILandroid/app/Notification;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->c:Landroid/app/NotificationManager;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final c(IILandroid/app/Notification;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p3, p2}, Leao;->g(Landroid/app/Service;ILandroid/app/Notification;I)V

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
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->stopSelf()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Z

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

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/work/impl/foreground/SystemForegroundService;->stopForeground(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final onCreate()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-super {p0}, Leaz;->onCreate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final onDestroy()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Leuq;->c()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Leuq;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Leaz;->onDestroy()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Z

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Lts;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Ltk;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    const/4 v2, 0x7

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Leuq;->b(Landroid/content/Intent;)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p3, :cond_0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4e

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p3, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    iget-object v0, p0, Lese;->i:Lts;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "ACTION_NOTIFY"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p2, 0x3

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Lts;->i(Ljava/lang/Runnable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_28

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-super {p0, p1, p2, p3}, Leaz;->onStartCommand(Landroid/content/Intent;II)I

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v0, "ACTION_START_FOREGROUND"

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_2

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto :goto_28

    nop

    :goto_20
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_22
    invoke-virtual {p0, p1}, Leuq;->b(Landroid/content/Intent;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_24
    const-string p1, "ACTION_STOP_FOREGROUND"

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p2}, Leuq;->c()V

    goto/32 :goto_45

    nop

    nop

    :goto_26
    const/4 p2, 0x0

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

    :goto_27
    invoke-interface {p0}, Leup;->d()V

    :goto_28
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x1e

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2a
    iget-object p3, p0, Lese;->h:Lqpe;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2b
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v1, "KEY_WORKSPEC_ID"

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2d
    invoke-direct {v1, p0, p1, v2}, Ltk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_2f
    const-string p0, "CancelWorkById"

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_30
    iget-object p3, p3, Lqpe;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_31
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Leuq;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_33
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_34
    new-instance v1, Less;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_35
    const v0, 0x1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    :cond_4
    goto/32 :goto_49

    nop

    :goto_37
    if-nez p0, :cond_5

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

    :cond_5
    goto/32 :goto_27

    nop

    nop

    :goto_38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_39
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_3a
    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Leuq;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_3d
    iget-boolean p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Z

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3f
    if-nez p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_40
    iget-object p0, p0, Leuq;->h:Leup;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez p1, :cond_8

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_44
    sget-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/KvcD/IYYyjJUHLbynRQ;->qeYdHzxSdRi:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_45
    invoke-direct {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_47
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {v1, p0, p3, p2}, Less;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p3, p0, v0, v1}, Ldwq;->i(Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;Ljava/lang/String;Ljava/util/concurrent/Executor;Luaz;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4c
    return p2

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_23

    nop

    nop

    :goto_4e
    iget-object p0, p0, Leuq;->b:Lese;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4f
    iget-object v0, p0, Leuq;->i:Lts;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop
.end method

.method public final onTimeout(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final onTimeout(II)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq v1, p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x5

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Levg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Leuq;->h:Leup;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v2, -0x80

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

    nop

    :goto_a
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Leuq;

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

    :goto_b
    check-cast v1, Lepy;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    :goto_e
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    :goto_10
    goto :goto_8

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v0, v2}, Lese;->e(Levg;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    iget-object p1, p0, Leuq;->e:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v1, v1, Lepy;->b:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0}, Leup;->d()V

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

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

    nop

    nop

    :goto_1d
    const v1, 0x20

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

    :goto_1e
    iget-object v1, p0, Leuq;->b:Lese;

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

    :goto_1f
    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_20
    if-lez v0, :cond_2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_21
    if-nez v0, :cond_3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop
.end method
