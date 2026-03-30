.class public final Leip;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static volatile a:Leip;

.field public static final b:Ljava/lang/Object;


# instance fields
.field final c:Ljava/util/Map;

.field public final d:Ljava/util/Set;

.field public final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Leip;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    new-instance p1, Ljava/util/HashSet;

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

    :goto_1
    new-instance p1, Ljava/util/HashMap;

    nop

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_6

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

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iput-object p1, p0, Leip;->d:Ljava/util/Set;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Leip;->c:Ljava/util/Map;

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

    :goto_8
    iput-object p1, p0, Leip;->e:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/util/Set;)V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1f

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

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_f

    nop

    nop

    :goto_2
    goto :goto_3

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance p1, Leir;

    nop

    invoke-direct {p1, p0}, Leir;-><init>(Ljava/lang/Throwable;)V

    throw p1

    nop

    nop

    nop

    nop

    :cond_0
    iget-object p0, p0, Leip;->c:Ljava/util/Map;

    nop

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

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

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    :try_start_1
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Leiq;

    nop

    nop

    nop

    invoke-interface {v0}, Leiq;->b()Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    nop

    if-nez v2, :cond_3

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    :cond_2
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Class;

    nop

    nop

    nop

    iget-object v3, p0, Leip;->c:Ljava/util/Map;

    nop

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    nop

    if-nez v3, :cond_2

    nop

    invoke-virtual {p0, v2, p2}, Leip;->a(Ljava/lang/Class;Ljava/util/Set;)V

    goto :goto_b

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v1, p0, Leip;->e:Landroid/content/Context;

    nop

    invoke-interface {v0, v1}, Leiq;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Leip;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

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

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :cond_4
    :try_start_3
    const-string p0, "Cannot initialize %s. Cycle detected."

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xf

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

    :goto_11
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_5
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-static {v0}, Ldwa;->j(Ljava/lang/String;)V

    :catchall_2
    :goto_12
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Leip;->c:Ljava/util/Map;

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_a

    nop

    nop

    nop
.end method
