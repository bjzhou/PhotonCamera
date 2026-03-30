.class public final Lrnu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p1, p0, Lrnu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput p2, p0, Lrnu;->b:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    goto/32 :goto_a

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
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lrnv;->c(Lrnm;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->g:Lnyh;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lnyh;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_5
    const v1, 0x19

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lrnu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1, p2}, Lnyh;-><init>(Landroid/os/IBinder;)V

    :goto_8
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_9
    check-cast p0, Lrnv;

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

    nop

    :goto_a
    const v0, 0xc

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

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p1, p0, p2}, Lrns;-><init>(Lrnu;Landroid/os/IBinder;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    check-cast p0, Lrqh;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_18
    instance-of v1, p1, Lnyh;

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

    :goto_19
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p1, Lnyh;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

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

    nop

    :goto_1e
    iget-object p0, p0, Lrnu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1a

    nop

    nop

    :goto_21
    invoke-virtual {p0, p2}, Lrqh;->c(Landroid/os/IBinder;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    if-eqz p2, :cond_1

    nop

    goto/32 :goto_1c

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    :goto_23
    if-nez v1, :cond_2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lrnu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_26
    new-instance p1, Lrns;

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

    :goto_27
    const-string p1, "com.google.android.apps.photos.cameraassistant.ICameraAssistantService"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_28
    if-ne p1, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_29
    iget p1, p0, Lrnu;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    :goto_2b
    iput-boolean v0, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->c:Z

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

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    :goto_0
    check-cast p0, Lrnv;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    new-instance p1, Lrnt;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p0}, Lrnt;-><init>(Lrnu;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lrqh;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    if-ne p1, v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lrqh;->d()V

    goto/32 :goto_5

    nop

    nop

    :goto_9
    const/4 p1, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->g:Lnyh;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lrnu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    iget p1, p0, Lrnu;->b:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lrnu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Lrnv;->c(Lrnm;)V

    goto/32 :goto_1

    nop

    nop

    :goto_f
    iput-boolean p1, p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;->c:Z

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

    :goto_10
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p0, Lcom/google/android/apps/camera/remotecontrol/RemoteControlService;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    const/4 p1, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    iget-object p0, p0, Lrnu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
