.class public Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroidx/window/sidecar/SidecarInterface$SidecarCallback;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Landroidx/window/sidecar/SidecarDeviceState;

.field private final c:Ljava/util/Map;

.field private final d:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;


# direct methods
.method public constructor <init>(Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V
    .locals 1

    goto/32 :goto_5

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
    iput-object v0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->d:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget v0, Lepj;->a:I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/WeakHashMap;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->c:Ljava/util/Map;

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public constructor <init>(Landroidx/window/sidecar/SidecarInterface$SidecarCallback;[B)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p2, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->a:Ljava/lang/Object;

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

    :goto_3
    iput-object p2, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->c:Ljava/util/Map;

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

    :goto_4
    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->d:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_7
    new-instance p2, Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p2, Ljava/util/WeakHashMap;

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public onDeviceStateChanged(Landroidx/window/sidecar/SidecarDeviceState;)V
    .locals 3

    goto/32 :goto_6

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
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    :goto_8
    const v1, 0x7

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->b:Landroidx/window/sidecar/SidecarDeviceState;

    nop

    nop

    nop

    nop

    invoke-static {v1, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

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

    :cond_2
    if-nez v1, :cond_3

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    :cond_3
    invoke-static {v1}, Landroidx/wear/ambient/AmbientLifecycleObserverKt;->b(Landroidx/window/sidecar/SidecarDeviceState;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Landroidx/wear/ambient/AmbientLifecycleObserverKt;->b(Landroidx/window/sidecar/SidecarDeviceState;)I

    move-result v2

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_4

    nop

    nop

    nop

    :goto_b
    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_c
    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->b:Landroidx/window/sidecar/SidecarDeviceState;

    nop

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->d:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    nop

    nop

    nop

    invoke-interface {p0, p1}, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;->onDeviceStateChanged(Landroidx/window/sidecar/SidecarDeviceState;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public onWindowLayoutChanged(Landroid/os/IBinder;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)V
    .locals 9

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const v1, 0x1b

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

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    nop

    nop

    nop

    nop

    invoke-static {v1, p2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    goto/16 :goto_e

    nop

    nop

    :cond_1
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    if-eqz p2, :cond_6

    nop

    invoke-static {v1}, Landroidx/wear/ambient/AmbientLifecycleObserverKt;->c(Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    invoke-static {p2}, Landroidx/wear/ambient/AmbientLifecycleObserverKt;->c(Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Ljava/util/List;

    move-result-object v2

    nop

    if-eq v1, v2, :cond_5

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    nop

    if-ne v3, v4, :cond_6

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_c
    if-ge v4, v3, :cond_5

    nop

    nop

    nop

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Landroidx/window/sidecar/SidecarDisplayFeature;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Landroidx/window/sidecar/SidecarDisplayFeature;

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    if-eqz v5, :cond_6

    nop

    if-eqz v6, :cond_6

    nop

    nop

    invoke-virtual {v5}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v7

    nop

    nop

    nop

    invoke-virtual {v6}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v8

    nop

    nop

    nop

    if-ne v7, v8, :cond_6

    nop

    nop

    nop

    invoke-virtual {v5}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    nop

    nop

    invoke-static {v5, v6}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    nop

    if-nez v5, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    :cond_4
    :goto_d
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    :cond_5
    :goto_e
    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_6
    :goto_f
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->c:Ljava/util/Map;

    nop

    nop

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;->d:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    nop

    nop

    nop

    invoke-interface {p0, p1, p2}, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;->onWindowLayoutChanged(Landroid/os/IBinder;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method
