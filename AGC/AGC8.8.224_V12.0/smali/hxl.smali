.class public final Lhxl;
.super Ljava/lang/Object;

# interfaces
.implements Lhxk;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Landroid/app/Activity;

.field public final c:Ljwb;

.field private final d:Ljuh;

.field private final e:Lawa;

.field private f:Laea;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lfak;Ljuh;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lhxl;->a:Ljava/util/Set;

    iput-object p1, p0, Lhxl;->b:Landroid/app/Activity;

    iput-object p3, p0, Lhxl;->d:Ljuh;

    new-instance v0, Ljvk;

    invoke-static {}, Ljji;->q()Lhxi;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhxl;->c:Ljwb;

    new-instance v0, Lawa;

    sget v1, Lawf;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lawg;->a:Loja;

    invoke-interface {v1}, Loja;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lawo;

    if-nez v1, :cond_14

    sget-object v1, Laxa;->a:Laxa;

    if-nez v1, :cond_13

    sget-object v1, Laxa;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v2, Laxa;->a:Laxa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_12

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Landroidx/wear/ambient/WearableControllerProvider;->b()Lavx;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_a

    :cond_0
    sget-object v4, Lavx;->a:Lavx;

    invoke-virtual {v3, v4}, Lavx;->a(Lavx;)I

    move-result v3

    if-ltz v3, :cond_11

    new-instance v3, Lawy;

    invoke-direct {v3, p1}, Lawy;-><init>(Landroid/content/Context;)V

    iget-object p1, v3, Lawy;->a:Landroidx/window/sidecar/SidecarInterface;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v6, "setSidecarCallback"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    aput-object v8, v7, v5

    invoke-virtual {p1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v6}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object p1, v3, Lawy;->a:Landroidx/window/sidecar/SidecarInterface;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    :cond_3
    iget-object p1, v3, Lawy;->a:Landroidx/window/sidecar/SidecarInterface;

    if-eqz p1, :cond_4

    invoke-interface {p1, v4}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    :cond_4
    iget-object p1, v3, Lawy;->a:Landroidx/window/sidecar/SidecarInterface;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v6, "getWindowLayoutInfo"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v5

    invoke-virtual {p1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_2

    :cond_5
    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_3

    :cond_6
    move-object p1, v2

    :goto_3
    const-class v6, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    invoke-static {p1, v6}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object p1, v3, Lawy;->a:Landroidx/window/sidecar/SidecarInterface;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v6, "onWindowLayoutChangeListenerAdded"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v5

    invoke-virtual {p1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_4

    :cond_7
    move-object p1, v2

    :goto_4
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_5

    :cond_8
    move-object p1, v2

    :goto_5
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v6}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object p1, v3, Lawy;->a:Landroidx/window/sidecar/SidecarInterface;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v6, "onWindowLayoutChangeListenerRemoved"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v5

    invoke-virtual {p1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_6

    :cond_9
    move-object p1, v2

    :goto_6
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_7

    :cond_a
    move-object p1, v2

    :goto_7
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v6}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance p1, Landroidx/window/sidecar/SidecarDeviceState;

    invoke-direct {p1}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x3

    :try_start_2
    iput v6, p1, Landroidx/window/sidecar/SidecarDeviceState;->posture:I
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :catch_0
    move-exception v7

    :try_start_3
    const-class v7, Landroidx/window/sidecar/SidecarDeviceState;

    const-string v8, "setPosture"

    new-array v9, v4, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-class v7, Landroidx/window/sidecar/SidecarDeviceState;

    const-string v8, "getPosture"

    new-array v9, v5, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v6, :cond_c

    :goto_8
    new-instance p1, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-direct {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;-><init>()V

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v6}, Landroidx/window/sidecar/SidecarDisplayFeature;->setRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    invoke-virtual {p1, v4}, Landroidx/window/sidecar/SidecarDisplayFeature;->setType(I)V

    new-instance v6, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    invoke-direct {v6}, Landroidx/window/sidecar/SidecarWindowLayoutInfo;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p1, v6, Landroidx/window/sidecar/SidecarWindowLayoutInfo;->displayFeatures:Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    :catch_1
    move-exception v7

    :try_start_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p1, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    const-string v8, "setDisplayFeatures"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Ljava/util/List;

    aput-object v10, v9, v5

    invoke-virtual {p1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v5

    invoke-virtual {p1, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    const-string v4, "getDisplayFeatures"

    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {p1, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/List;

    invoke-static {v7, p1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :goto_9
    move-object v2, v3

    goto :goto_a

    :cond_b
    new-instance p1, Ljava/lang/Exception;

    const-string v3, "Invalid display feature getter/setter"

    invoke-direct {p1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/Exception;

    const-string v3, "Invalid device posture getter/setter"

    invoke-direct {p1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance v3, Ljava/lang/NoSuchMethodException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal return type for \'onWindowLayoutChangeListenerRemoved\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_e
    new-instance v3, Ljava/lang/NoSuchMethodException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal return type for \'onWindowLayoutChangeListenerAdded\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    new-instance v3, Ljava/lang/NoSuchMethodException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal return type for \'getWindowLayoutInfo\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_10
    new-instance v3, Ljava/lang/NoSuchMethodException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal return type for \'setSidecarCallback\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_11
    goto :goto_a

    :catchall_0
    move-exception p1

    :goto_a
    :try_start_6
    new-instance p1, Laxa;

    invoke-direct {p1, v2}, Laxa;-><init>(Lawt;)V

    sput-object p1, Laxa;->a:Laxa;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_12
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_b

    :catchall_1
    move-exception p1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_13
    :goto_b
    sget-object v1, Laxa;->a:Laxa;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_c

    :cond_14
    :goto_c
    new-instance p1, Lawk;

    sget v2, Lawn;->a:I

    invoke-direct {p1, v1}, Lawk;-><init>(Lawo;)V

    invoke-direct {v0, p1}, Lawa;-><init>(Lawh;)V

    iput-object v0, p0, Lhxl;->e:Lawa;

    invoke-static {p3, p2, p0}, Lfcr;->e(Ljuh;Lfak;Lfaz;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)Lkad;
    .locals 8

    iget-object v0, p0, Lhxl;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lgss;

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lgss;-><init>(Lhxl;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B[B[B)V

    return-object v0
.end method

.method public final bO()V
    .locals 7

    new-instance v0, Lbx;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lbx;-><init>(Lhxl;I)V

    iput-object v0, p0, Lhxl;->f:Laea;

    iget-object v1, p0, Lhxl;->e:Lawa;

    iget-object v2, p0, Lhxl;->b:Landroid/app/Activity;

    iget-object v3, p0, Lhxl;->d:Ljuh;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lawa;->a:Lawh;

    new-instance v5, Lawj;

    check-cast v4, Lawk;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v2, v6}, Lawj;-><init>(Lawk;Landroid/app/Activity;Loku;)V

    invoke-static {v5}, Lone;->t(Lomo;)Lott;

    move-result-object v2

    iget-object v4, v1, Lawa;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v5, v1, Lawa;->c:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {v3}, Lopx;->m(Ljava/util/concurrent/Executor;)Lopq;

    move-result-object v3

    invoke-static {v3}, Lopx;->e(Lola;)Lopu;

    move-result-object v3

    iget-object v1, v1, Lawa;->c:Ljava/util/Map;

    new-instance v5, Lavz;

    invoke-direct {v5, v2, v0, v6}, Lavz;-><init>(Lott;Laea;Loku;)V

    const/4 v2, 0x3

    invoke-static {v3, v6, v5, v2}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lhxl;->f:Laea;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lhxl;->e:Lawa;

    iget-object v2, v1, Lawa;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v3, v1, Lawa;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lora;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lopx;->k(Lora;)V

    :cond_0
    iget-object v1, v1, Lawa;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lora;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    return-void
.end method
