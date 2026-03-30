.class public final Landroidx/window/layout/adapter/extensions/MulticastConsumer;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldux;


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantLock;

.field public final b:Ljava/util/Set;

.field private final c:Landroid/content/Context;

.field private d:Leoy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->a:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->b:Ljava/util/Set;

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
    new-instance p1, Ljava/util/LinkedHashSet;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

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

    :goto_5
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_8
    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->c:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ldux;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

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

    :goto_4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_3

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    const v0, 0x8

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->d:Leoy;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Ldux;->accept(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_e
    iget-object v0, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->a:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->c:Landroid/content/Context;

    nop

    nop

    invoke-static {v1, p1}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->e(Landroid/content/Context;Landroidx/window/extensions/layout/WindowLayoutInfo;)Leoy;

    move-result-object p1

    nop

    nop

    nop

    nop

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->d:Leoy;

    nop

    nop

    iget-object p0, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->b:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ldux;

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ldux;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->a:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    :goto_f
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    check-cast p1, Landroidx/window/extensions/layout/WindowLayoutInfo;

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

    :goto_2
    return-void

    nop

    nop

    nop
.end method
