.class public final Lepm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroidx/window/sidecar/SidecarInterface;

.field public final b:Lepj;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Map;

.field public e:Lepk;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Landroidx/window/sidecar/SidecarProvider;->getSidecarImpl(Landroid/content/Context;)Landroidx/window/sidecar/SidecarInterface;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lepm;->b:Lepj;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lepj;

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

    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

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

    :goto_5
    iput-object p1, p0, Lepm;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Lepj;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    new-instance p1, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    iput-object p1, p0, Lepm;->a:Landroidx/window/sidecar/SidecarInterface;

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

    :goto_9
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lepm;->d:Ljava/util/Map;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Leoy;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lepm;->a:Landroidx/window/sidecar/SidecarInterface;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, p0}, Lepj;->a(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Leoy;

    move-result-object p0

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

    :goto_7
    invoke-static {p1}, Landroidx/wear/ambient/AmbientMode$AmbientCallback;->h(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    :goto_a
    new-instance p0, Leoy;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Leoy;-><init>(Ljava/util/List;)V

    goto/32 :goto_4

    nop

    nop

    :goto_e
    sget-object p1, Ltyw;->a:Ltyw;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    :goto_10
    new-instance p0, Landroidx/window/sidecar/SidecarDeviceState;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz p1, :cond_2

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

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lepm;->a:Landroidx/window/sidecar/SidecarInterface;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0, p1}, Landroidx/window/sidecar/SidecarInterface;->getWindowLayoutInfo(Landroid/os/IBinder;)Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    move-result-object p1

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

    :goto_17
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Landroid/os/IBinder;Landroid/app/Activity;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    nop

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

    :goto_3
    iget-object p1, p0, Lepm;->c:Ljava/util/Map;

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

    :goto_4
    instance-of p1, p2, Ldtm;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lepm;->a:Landroidx/window/sidecar/SidecarInterface;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1, v1}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    :goto_7
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p2, v1}, Lepk;->a(Landroid/app/Activity;Leoy;)V

    :goto_9
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p1, p0, p2, v0}, Ljuh;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Ljuh;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lepm;->a:Landroidx/window/sidecar/SidecarInterface;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    invoke-interface {p2, p1}, Ldtm;->dt(Ldux;)V

    :goto_11
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p2}, Lepm;->a(Landroid/app/Activity;)Leoy;

    move-result-object v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lepm;->d:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz p1, :cond_2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0, p1}, Landroidx/window/sidecar/SidecarInterface;->onWindowLayoutChangeListenerAdded(Landroid/os/IBinder;)V

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    :goto_1b
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1c
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1d
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    :goto_1f
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_20
    iget-object p1, p0, Lepm;->d:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_21
    check-cast p2, Ldtm;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Lepm;->e:Lepk;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1a

    nop

    :goto_24
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_5
    goto/32 :goto_23

    nop

    :goto_26
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lepm;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x9

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_29
    if-eq p1, v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
