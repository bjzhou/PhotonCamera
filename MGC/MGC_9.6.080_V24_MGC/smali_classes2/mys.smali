.class public final Lmys;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljpv;
.implements Ljpt;
.implements Ljpu;
.implements Ljoh;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Loyn;

.field public c:Z

.field private final d:Ljava/util/Set;

.field private final e:Lowu;

.field private final f:Leoo;

.field private g:Ldux;

.field private final h:Lpqv;

.field private final i:Lmjv;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljph;Lowu;Lmjv;Lpqv;)V
    .locals 10

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "Illegal return type for \'onWindowLayoutChangeListenerAdded\': "

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_43

    nop

    nop

    :goto_2
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object v4, p0, Lmys;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_4
    invoke-interface {v5}, Ltxs;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

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

    :goto_6
    const-string v2, "Illegal return type for \'getWindowLayoutInfo\': "

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

    :goto_7
    new-instance v4, Leoo;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v4, p1}, Leoo;-><init>(Leow;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v4, p0, Lmys;->b:Loyn;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v7, :cond_0

    nop

    goto/32 :goto_29

    nop

    :cond_0
    :try_start_0
    invoke-static {}, Landroidx/wear/ambient/AmbientMode$AmbientCallback;->i()Leol;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_1

    nop

    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    sget-object v8, Leol;->a:Leol;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Leol;->a(Leol;)I

    move-result v7

    nop

    nop

    nop

    nop

    if-ltz v7, :cond_15

    nop

    nop

    nop

    nop

    new-instance v7, Lepm;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, p1}, Lepm;-><init>(Landroid/content/Context;)V

    iget-object p1, v7, Lepm;->a:Landroidx/window/sidecar/SidecarInterface;

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    nop

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    const-string v8, "setSidecarCallback"

    nop

    const-class v9, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    nop

    invoke-virtual {p1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    move-object p1, v6

    nop

    nop

    nop

    :goto_b
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    :cond_3
    move-object p1, v6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    nop

    nop

    invoke-static {p1, v8}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_14

    nop

    nop

    iget-object p1, v7, Lepm;->a:Landroidx/window/sidecar/SidecarInterface;

    nop

    nop

    nop

    if-eqz p1, :cond_4

    nop

    nop

    invoke-interface {p1}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    :cond_4
    iget-object p1, v7, Lepm;->a:Landroidx/window/sidecar/SidecarInterface;

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    if-eqz p1, :cond_5

    nop

    invoke-interface {p1, v3}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    :cond_5
    iget-object p1, v7, Lepm;->a:Landroidx/window/sidecar/SidecarInterface;

    nop

    nop

    nop

    if-eqz p1, :cond_6

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_6

    nop

    nop

    nop

    nop

    nop

    const-string v8, "getWindowLayoutInfo"

    nop

    nop

    nop

    nop

    const-class v9, Landroid/os/IBinder;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {p1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    :cond_6
    move-object p1, v6

    nop

    nop

    nop

    :goto_d
    if-eqz p1, :cond_7

    nop

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    :cond_7
    move-object p1, v6

    nop

    nop

    nop

    nop

    :goto_e
    const-class v8, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    nop

    invoke-static {p1, v8}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_13

    nop

    iget-object p1, v7, Lepm;->a:Landroidx/window/sidecar/SidecarInterface;

    nop

    nop

    nop

    if-eqz p1, :cond_8

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_8

    nop

    const-string v2, "onWindowLayoutChangeListenerAdded"

    nop

    nop

    const-class v8, Landroid/os/IBinder;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    nop

    invoke-virtual {p1, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_8
    move-object p1, v6

    nop

    :goto_f
    if-eqz p1, :cond_9

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    nop

    nop

    goto :goto_10

    nop

    nop

    :cond_9
    move-object p1, v6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    if-eqz v2, :cond_12

    nop

    nop

    iget-object p1, v7, Lepm;->a:Landroidx/window/sidecar/SidecarInterface;

    nop

    nop

    nop

    if-eqz p1, :cond_a

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_a

    nop

    nop

    nop

    nop

    nop

    const-string v1, "onWindowLayoutChangeListenerRemoved"

    nop

    nop

    nop

    nop

    nop

    const-class v2, Landroid/os/IBinder;

    nop

    nop

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    nop

    goto :goto_11

    nop

    nop

    :cond_a
    move-object p1, v6

    nop

    nop

    :goto_11
    if-eqz p1, :cond_b

    nop

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    nop

    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_b
    move-object p1, v6

    nop

    :goto_12
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    invoke-static {p1, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_11

    nop

    nop

    nop

    nop

    new-instance p1, Landroidx/window/sidecar/SidecarDeviceState;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "Illegal return type for \'onWindowLayoutChangeListenerRemoved\': "

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_3d

    nop

    :goto_15
    if-eqz v5, :cond_d

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_32

    nop

    nop

    :goto_16
    sget v5, Leou;->a:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    iput-object p1, p0, Lmys;->a:Landroid/app/Activity;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Leoh;->a()I

    goto/32 :goto_26

    nop

    nop

    :goto_19
    new-instance v4, Landroid/util/ArraySet;

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

    :goto_1a
    sget-object v5, Lepo;->a:Lepo;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_1c

    nop

    nop

    nop

    nop

    nop

    :catch_0
    :try_start_1
    const-class v1, Landroidx/window/sidecar/SidecarDeviceState;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "setPosture"

    nop

    nop

    nop

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    nop

    nop

    invoke-virtual {v1, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroidx/window/sidecar/SidecarDeviceState;

    nop

    nop

    nop

    const-string v2, "getPosture"

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-ne p1, v0, :cond_10

    nop

    nop

    :goto_1c
    new-instance p1, Landroidx/window/sidecar/SidecarDisplayFeature;

    nop

    nop

    invoke-direct {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;-><init>()V

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroidx/window/sidecar/SidecarDisplayFeature;->setRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    invoke-virtual {p1, v3}, Landroidx/window/sidecar/SidecarDisplayFeature;->setType(I)V

    new-instance v0, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    nop

    nop

    nop

    invoke-direct {v0}, Landroidx/window/sidecar/SidecarWindowLayoutInfo;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, v0, Landroidx/window/sidecar/SidecarWindowLayoutInfo;->displayFeatures:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    :goto_1e
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0xd

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v4, Loxv;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_21
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v0, 0x3

    nop

    nop

    :try_start_3
    iput v0, p1, Landroidx/window/sidecar/SidecarDeviceState;->posture:I

    nop

    nop
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0, v6}, Lepc;-><init>([B)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v5, :cond_e

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p1, v5}, Leox;-><init>(Lepd;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object v7, v6

    nop

    nop

    nop

    :goto_28
    :try_start_4
    new-instance p1, Lepo;

    nop

    nop

    nop

    invoke-direct {p1, v7}, Lepo;-><init>(Lepm;)V

    sput-object p1, Lepo;->a:Lepo;

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_29
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v4, v5}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    :catch_1
    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p1, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    nop

    nop

    nop

    const-string v2, "setDisplayFeatures"

    nop

    nop

    const-class v3, Ljava/util/List;

    nop

    nop

    nop

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    nop

    nop

    nop

    nop

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    nop

    nop

    nop

    nop

    const-string v2, "getDisplayFeatures"

    nop

    invoke-virtual {p1, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    nop

    invoke-virtual {p1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/List;

    nop

    nop

    nop

    invoke-static {v1, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    if-eqz p1, :cond_f

    nop

    nop

    goto :goto_28

    nop

    nop

    nop

    nop

    :cond_f
    new-instance p1, Ljava/lang/Exception;

    nop

    nop

    nop

    nop

    nop

    const-string v0, "Invalid display feature getter/setter"

    nop

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    nop

    nop

    :cond_10
    new-instance p1, Ljava/lang/Exception;

    nop

    nop

    nop

    const-string v0, "Invalid device posture getter/setter"

    nop

    nop

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    :cond_11
    new-instance v1, Ljava/lang/NoSuchMethodException;

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    :cond_12
    new-instance v0, Ljava/lang/NoSuchMethodException;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :cond_13
    new-instance v0, Ljava/lang/NoSuchMethodException;

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :cond_14
    new-instance v0, Ljava/lang/NoSuchMethodException;

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    :cond_15
    :goto_2c
    goto/32 :goto_27

    nop

    nop

    :goto_2d
    sget v0, Leoh;->a:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    throw p0

    nop

    :goto_2f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v0, Lepc;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {}, Lnzk;->aV()Lmyr;

    move-result-object v5

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v5, Lepo;->a:Lepo;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_19

    nop

    nop

    :goto_34
    const/4 v4, 0x0

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_35
    iput-object p4, p0, Lmys;->i:Lmjv;

    nop

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

    nop

    :goto_36
    iput-object p5, p0, Lmys;->h:Lpqv;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {p3, p2, p0}, Ljmo;->b(Lowu;Ljph;Ljpv;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_38
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast v5, Lepd;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance p1, Leox;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3b
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_6
    sget-object v7, Lepo;->a:Lepo;

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3f
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_41
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iput-object p3, p0, Lmys;->e:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_43
    sget-object v5, Leov;->a:Ltxs;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_44
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_45
    sget-object v5, Lepo;->b:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_46
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_47
    iput-object v4, p0, Lmys;->f:Leoo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_48
    const-string v3, "Illegal return type for \'setSidecarCallback\': "

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iput-boolean v4, p0, Lmys;->c:Z

    nop

    goto/32 :goto_17

    nop

    nop
.end method


# virtual methods
.method public final a(Lmyr;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmys;->b:Loyn;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    const v1, 0x2

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

    :goto_c
    goto :goto_2

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lmys;->d:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_0

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_11
    check-cast v1, Lmyp;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x8

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    invoke-interface {v1}, Lmyp;->a()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final b(Lmyr;)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xa

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_3
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    const/high16 v2, 0x400000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5
    iget-object v0, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_7
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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
    invoke-virtual {v1, p0}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, v0, Lpcg;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, v2, Lskd;->b:I

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

    nop

    nop

    :goto_c
    iput p0, v0, Lsme;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    iget-object v1, p0, Lmys;->i:Lmjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    :goto_12
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v2, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Ltkb;->i()Ltkg;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_15
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    add-int v0, v0, v1

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

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    or-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v2, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Ltkg;->m()Ltkb;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1e
    sget-object v0, Lskc;->as:Lskc;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p1, v0, Lskd;->ax:Lsme;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput p1, v0, Lskd;->d:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_21
    iput v0, v2, Lskd;->f:I

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

    :goto_22
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v2, p0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lmys;->h:Lpqv;

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_25
    iget v0, v0, Lskc;->aG:I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v0, Lsme;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Ltkg;->m()Ltkb;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sget-object p1, Lsme;->a:Lsme;

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

    :goto_29
    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2a
    check-cast p1, Lsme;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object p0, v0, Lsme;->c:Lsln;

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lmys;->a:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    or-int/lit8 p0, p0, 0x1

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

    :goto_2e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    or-int/2addr p1, v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_31
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lmys;->h:Lpqv;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_33
    sget-object p0, Lskd;->a:Lskd;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_34
    iget p1, p1, Lmyr;->b:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Lpqv;->a()Lpcg;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_18

    nop

    :goto_39
    goto/32 :goto_17

    nop

    nop

    :goto_3a
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {p0, v0, p1}, Lnzk;->aY(ZII)Lsln;

    move-result-object p0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v2, Lskd;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_3f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget p0, v0, Lsme;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_43
    iget p1, v0, Lskd;->d:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_44
    iput v0, v2, Lskd;->b:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_45
    invoke-virtual {v0}, Lpqv;->a()Lpcg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop
.end method

.method public final dj()V
    .locals 8

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_0
    sget-object v3, Luge;->a:Lufp;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "Flow context cannot contain job in it. Had "

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_11

    nop

    nop

    :goto_6
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v4, Letl;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Lmys;->e:Lowu;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Leoo;->b:Leur;

    nop

    nop

    goto/32 :goto_22

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

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_c
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    iget-object v3, p0, Leoo;->a:Leow;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    const/4 v4, 0x6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, v4}, Lujl;-><init>(Lubo;)V

    goto/32 :goto_0

    nop

    nop

    :goto_10
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    new-instance v1, Lujl;

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

    :goto_13
    sget-object v4, Lugy;->c:Ltzz;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    const/16 v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_16
    invoke-static {v3, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Lmys;->g:Ldux;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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

    :goto_19
    if-eqz v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v4, v3, v1, v6, v5}, Letl;-><init>(Leox;Landroid/app/Activity;Ltzy;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1c
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1d
    throw v0

    nop

    nop

    :goto_1e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v3, p0, Leur;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_23
    return-void

    nop

    :catchall_0
    move-exception p0

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

    :goto_24
    const v0, 0xe

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

    :goto_25
    check-cast v3, Leox;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_26
    invoke-direct {v0, p0, v1}, Lbp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2a
    invoke-static {v1, v3, v5, v4}, Lucg;->t(Lume;Luad;II)Lujp;

    move-result-object v1

    nop

    :goto_2b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lmys;->f:Leoo;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v3, v4}, Luad;->get(Luac;)Luab;

    move-result-object v4

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

    nop

    :goto_2e
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v4, p0, Leur;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    invoke-static {v2}, Luch;->J(Ljava/util/concurrent/Executor;)Lufp;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lufv;->i(Luad;)Lufs;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Leur;->b:Ljava/lang/Object;

    nop

    new-instance v4, Ltq;

    nop

    nop

    nop

    const/4 v7, 0x5

    nop

    nop

    invoke-direct {v4, v1, v0, v6, v7}, Ltq;-><init>(Lujp;Ldux;Ltzy;I)V

    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v6, v5, v4, v1}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2f
    sget-object v3, Lunp;->a:Luhj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_30
    throw p0

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_32
    new-instance v0, Lbp;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_33
    sget-object v4, Luae;->a:Luae;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, p0, Lmys;->a:Landroid/app/Activity;

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final dv()V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

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

    :goto_6
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_a
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Leur;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lugy;

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    invoke-static {v2}, Luch;->I(Lugy;)V

    :cond_2
    iget-object p0, p0, Leur;->b:Ljava/lang/Object;

    nop

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Lugy;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_2

    nop

    nop

    :goto_d
    iget-object v0, p0, Lmys;->g:Ldux;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lmys;->f:Leoo;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Leoo;->b:Leur;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_13
    const v0, 0xd

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

    :goto_14
    iget-object v1, p0, Leur;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final j(Landroid/content/res/Configuration;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lmys;->c:Z

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

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

    :goto_4
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lmys;->c:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_b

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
    invoke-static {}, Lnzk;->aU()Lmyr;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x2

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Lmys;->b(Lmyr;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Lnzk;->aT()Lmyr;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Lmys;->a(Lmyr;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    and-int/lit8 p1, p1, 0xf

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lmys;->a:Landroid/app/Activity;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method
