.class public final Lepo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lepd;


# static fields
.field public static volatile a:Lepo;

.field public static final b:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final d:Lepm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    goto/32 :goto_2

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

    :goto_2
    sput-object v0, Lepo;->b:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

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
.end method

.method public constructor <init>(Lepm;)V
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$TranslatingCallback;-><init>(Lepm;)V

    goto/32 :goto_e

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0}, Lepk;-><init>(Lepi;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    iget-object p0, p1, Lepm;->a:Landroidx/window/sidecar/SidecarInterface;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lepo;->d:Lepm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    :goto_a
    iput-object v0, p0, Lepo;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v1, Landroidx/window/layout/adapter/sidecar/SidecarCompat$TranslatingCallback;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    const/4 p1, 0x0

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

    :goto_f
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, p0}, Lepn;-><init>(Lepo;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0, v0}, Landroidx/window/sidecar/SidecarInterface;->setSidecarCallback(Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p0, Lepk;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x5

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

    :goto_17
    invoke-direct {v0, v1, p1}, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;-><init>(Landroidx/window/sidecar/SidecarInterface$SidecarCallback;[B)V

    goto/32 :goto_12

    nop

    nop

    :goto_18
    new-instance v0, Lepn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    :goto_1a
    goto/32 :goto_11

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

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

    :goto_1c
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p0, p1, Lepm;->e:Lepk;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/concurrent/Executor;Ldux;)V
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    :goto_3
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_5
    return-void

    nop

    nop

    :cond_1
    :try_start_0
    iget-object v2, p0, Lepo;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    nop

    const/4 v4, 0x0

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lhxi;

    nop

    nop

    iget-object v3, v3, Lhxi;->b:Ljava/lang/Object;

    nop

    nop

    invoke-static {v3, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_6
    new-instance v2, Lhxi;

    nop

    nop

    nop

    move-object v3, p1

    nop

    nop

    check-cast v3, Landroid/app/Activity;

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3, p2, p3}, Lhxi;-><init>(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ldux;)V

    iget-object p2, p0, Lepo;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_6

    nop

    nop

    nop

    nop

    move-object p0, p1

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Landroid/app/Activity;

    nop

    nop

    nop

    invoke-static {p0}, Landroidx/wear/ambient/AmbientMode$AmbientCallback;->h(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object p0

    nop

    if-eqz p0, :cond_5

    nop

    nop

    check-cast p1, Landroid/app/Activity;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0, p1}, Lepm;->b(Landroid/os/IBinder;Landroid/app/Activity;)V

    goto/16 :goto_8

    nop

    nop

    :cond_5
    new-instance p0, Lepl;

    nop

    nop

    nop

    nop

    move-object p2, p1

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v1, p2}, Lepl;-><init>(Lepm;Landroid/app/Activity;)V

    check-cast p1, Landroid/app/Activity;

    nop

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_8

    nop

    nop

    nop

    :cond_6
    iget-object p0, p0, Lepo;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    nop

    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_8

    nop

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    move-object v1, p2

    nop

    check-cast v1, Lhxi;

    nop

    nop

    nop

    iget-object v1, v1, Lhxi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    :cond_8
    move-object p2, p3

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p2, Lhxi;

    nop

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_9

    nop

    nop

    nop

    iget-object p3, p2, Lhxi;->c:Ljava/lang/Object;

    nop

    :cond_9
    if-eqz p3, :cond_a

    nop

    nop

    nop

    check-cast p3, Leoy;

    nop

    invoke-virtual {v2, p3}, Lhxi;->e(Leoy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x10

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    throw p0

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lepo;->b:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    iget-object v1, p0, Lepo;->d:Lepm;

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    new-instance p0, Leoy;

    nop

    sget-object p1, Ltyw;->a:Ltyw;

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Leoy;-><init>(Ljava/util/List;)V

    invoke-interface {p3, p0}, Ldux;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ldux;)V
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lepo;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :cond_0
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lhxi;

    nop

    nop

    nop

    nop

    iget-object v4, v3, Lhxi;->d:Ljava/lang/Object;

    nop

    nop

    if-ne v4, p1, :cond_0

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object p1, p0, Lepo;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :cond_2
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_b

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lhxi;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lhxi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v2, p0, Lepo;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_5

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lhxi;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lhxi;->b:Ljava/lang/Object;

    nop

    invoke-static {v3, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_4

    nop

    goto :goto_a

    nop

    nop

    :cond_5
    :goto_b
    iget-object v2, p0, Lepo;->d:Lepm;

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    move-object v3, v1

    nop

    nop

    nop

    check-cast v3, Landroid/app/Activity;

    nop

    invoke-static {v3}, Landroidx/wear/ambient/AmbientMode$AmbientCallback;->h(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v3

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v2, Lepm;->a:Landroidx/window/sidecar/SidecarInterface;

    nop

    if-eqz v4, :cond_6

    nop

    nop

    invoke-interface {v4, v3}, Landroidx/window/sidecar/SidecarInterface;->onWindowLayoutChangeListenerRemoved(Landroid/os/IBinder;)V

    :cond_6
    iget-object v4, v2, Lepm;->d:Ljava/util/Map;

    nop

    nop

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Ldux;

    nop

    nop

    nop

    if-nez v4, :cond_7

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    :cond_7
    instance-of v5, v1, Ldtm;

    nop

    if-eqz v5, :cond_8

    nop

    nop

    nop

    nop

    move-object v5, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Ldtm;

    nop

    nop

    invoke-interface {v5, v4}, Ldtm;->f(Ldux;)V

    :cond_8
    iget-object v4, v2, Lepm;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    iget-object v4, v2, Lepm;->e:Lepk;

    nop

    nop

    nop

    if-eqz v4, :cond_9

    nop

    nop

    iget-object v5, v4, Lepk;->a:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v4, Lepk;->b:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_d

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0

    nop

    nop

    :cond_9
    :goto_d
    iget-object v1, v2, Lepm;->c:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    nop

    iget-object v4, v2, Lepm;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    if-ne v1, v3, :cond_2

    nop

    iget-object v1, v2, Lepm;->a:Landroidx/window/sidecar/SidecarInterface;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object v1, p0, Lepo;->d:Lepm;

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_a

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_6

    nop

    nop

    :goto_12
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_c
    goto/32 :goto_4

    nop

    :goto_14
    return-void

    nop

    nop

    :catchall_1
    move-exception p0

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

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    const v1, 0xc

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    sget-object v0, Lepo;->b:Ljava/util/concurrent/locks/ReentrantLock;

    nop

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

    :goto_18
    monitor-exit v0

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
.end method
