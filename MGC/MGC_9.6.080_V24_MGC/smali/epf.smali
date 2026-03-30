.class public Lepf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lepd;


# instance fields
.field public final a:Landroidx/window/extensions/layout/WindowLayoutComponent;

.field private final b:Leog;

.field private final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroidx/window/extensions/layout/WindowLayoutComponent;Leog;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lepf;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p1, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    new-instance p1, Ljava/util/LinkedHashMap;

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
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lepf;->d:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lepf;->c:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    new-instance p1, Ljava/util/LinkedHashMap;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p2, p0, Lepf;->b:Leog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lepf;->a:Landroidx/window/extensions/layout/WindowLayoutComponent;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    iput-object p1, p0, Lepf;->e:Ljava/util/Map;

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
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/concurrent/Executor;Ldux;)V
    .locals 8

    goto/32 :goto_f

    nop

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

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lepf;->d:Ljava/util/Map;

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    invoke-virtual {v0, p3}, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->a(Ldux;)V

    iget-object v0, p0, Lepf;->e:Ljava/util/Map;

    nop

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    :cond_0
    move-object v0, v1

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;

    nop

    nop

    nop

    invoke-direct {v0, p1}, Landroidx/window/layout/adapter/extensions/MulticastConsumer;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lepf;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lepf;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p3}, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->a(Ldux;)V

    iget-object p3, p0, Lepf;->b:Leog;

    nop

    iget-object v2, p0, Lepf;->a:Landroidx/window/extensions/layout/WindowLayoutComponent;

    nop

    nop

    const-class v3, Landroidx/window/extensions/layout/WindowLayoutInfo;

    nop

    sget v4, Luct;->a:I

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Lucb;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v3}, Lucb;-><init>(Ljava/lang/Class;)V

    new-instance v3, Lefj;

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v0, v5, v1}, Lefj;-><init>(Ljava/lang/Object;I[C)V

    const-string v1, "addWindowLayoutInfoListener"

    nop

    nop

    nop

    nop

    const-string v5, "removeWindowLayoutInfoListener"

    nop

    nop

    nop

    new-instance v6, Leof;

    nop

    nop

    nop

    invoke-direct {v6, v4, v3}, Leof;-><init>(Ludp;Lubk;)V

    iget-object v3, p3, Leog;->a:Ljava/lang/ClassLoader;

    nop

    nop

    nop

    invoke-virtual {p3}, Leog;->a()Ljava/lang/Class;

    move-result-object v4

    nop

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v4, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    const-class v6, Landroid/app/Activity;

    nop

    nop

    nop

    invoke-virtual {p3}, Leog;->a()Ljava/lang/Class;

    move-result-object v7

    nop

    nop

    nop

    nop

    filled-new-array {v6, v7}, [Ljava/lang/Class;

    move-result-object v6

    nop

    nop

    invoke-virtual {v4, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    invoke-virtual {v1, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    nop

    nop

    invoke-virtual {p3}, Leog;->a()Ljava/lang/Class;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    filled-new-array {p3}, [Ljava/lang/Class;

    move-result-object p3

    nop

    nop

    invoke-virtual {p1, v5, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    nop

    nop

    new-instance p3, Lnmn;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p3, p1, v2, v3}, Lnmn;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lepf;->f:Ljava/util/Map;

    nop

    invoke-interface {p0, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    iget-object p2, p0, Lepf;->c:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public b(Ldux;)V
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    const v0, 0x5

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lepf;->e:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Landroid/content/Context;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lepf;->c:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_a

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    :try_start_1
    iget-object v2, p0, Lepf;->d:Ljava/util/Map;

    nop

    nop

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Landroidx/window/layout/adapter/extensions/MulticastConsumer;

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    iget-object v3, v2, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->a:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, v2, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v3, p0, Lepf;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v2, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    nop

    nop

    nop

    if-eqz p1, :cond_1

    nop

    iget-object p1, p0, Lepf;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lepf;->f:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lnmn;

    nop

    nop

    if-eqz p0, :cond_1

    nop

    iget-object p1, p0, Lnmn;->b:Ljava/lang/Object;

    nop

    nop

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    iget-object v1, p0, Lnmn;->a:Ljava/lang/Object;

    nop

    nop

    iget-object p0, p0, Lnmn;->c:Ljava/lang/Object;

    nop

    nop

    check-cast p0, Ljava/lang/reflect/Method;

    nop

    nop

    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    :try_start_4
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x9

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

    :goto_14
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop
.end method
