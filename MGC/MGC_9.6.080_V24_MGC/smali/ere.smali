.class public final Lere;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field public final a:Landroidx/work/impl/WorkDatabase;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/List;

.field public final f:Ljava/lang/Object;

.field private final h:Landroid/content/Context;

.field private final i:Ljava/util/Map;

.field private final j:Lqpe;

.field private final k:Lts;


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m(Levg;)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lat;

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

    :goto_1
    goto/32 :goto_6

    nop

    :goto_2
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v1, 0x14

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xe

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lere;->k:Lts;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_b
    iget-object p0, p0, Lts;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, p0, p1, v1, v2}, Lat;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "Processor"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Leqh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lere;->g:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lqpe;Lts;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lere;->i:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lere;->a:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    iput-object p3, p0, Lere;->k:Lts;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Lere;->j:Lqpe;

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

    :goto_9
    iput-object p1, p0, Lere;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lere;->e:Ljava/util/List;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p1, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    iput-object p1, p0, Lere;->c:Ljava/util/Map;

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

    nop

    :goto_11
    new-instance p1, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lere;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    iput-object p1, p0, Lere;->d:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Lere;->h:Landroid/content/Context;

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
.end method

.method public static f(Lnkn;I)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lesg;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p1}, Lesg;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lnkn;->j:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Luhf;

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

    nop

    :goto_9
    invoke-virtual {p0, v0}, Luhf;->p(Ljava/util/concurrent/CancellationException;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Leqt;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    :try_start_0
    iget-object p0, p0, Lere;->e:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lere;->f:Ljava/lang/Object;

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
    throw p0

    nop

    nop

    nop

    nop
.end method

.method public final b(Leqt;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Lere;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lere;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0, p1}, Lere;->e(Ljava/lang/String;)Lnkn;

    move-result-object p0

    nop

    nop

    if-eqz p0, :cond_0

    nop

    const/4 p0, 0x1

    nop

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    const/4 p0, 0x0

    nop

    nop

    nop

    :goto_1
    monitor-exit v0

    nop

    nop

    return p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lere;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/String;)Lnkn;
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lere;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lere;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    check-cast v0, Lnkn;

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Lere;->c:Ljava/util/Map;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    :goto_11
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lere;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lere;->h:Landroid/content/Context;

    nop

    nop

    new-instance v2, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    const-class v3, Landroidx/work/impl/foreground/SystemForegroundService;

    nop

    nop

    nop

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_STOP_FOREGROUND"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lere;->h:Landroid/content/Context;

    nop

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    :goto_15
    iget-object v0, p0, Lere;->i:Ljava/util/Map;

    nop

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

    :goto_16
    rem-int v0, v0, v1

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

    :goto_17
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_19
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1b
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_14

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Lnkn;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto :goto_20

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_2
    invoke-static {}, Leqh;->b()V

    sget-object v1, Lere;->g:Ljava/lang/String;

    nop

    const-string v2, "Unable to stop foreground service"

    nop

    nop

    nop

    nop

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_20
    monitor-exit p1

    nop

    nop

    nop

    goto/16 :goto_1

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_0

    nop

    nop
.end method

.method public final e(Ljava/lang/String;)Lnkn;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    check-cast v0, Lnkn;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object v0, p0, Lere;->b:Ljava/util/Map;

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

    nop

    nop

    :goto_4
    iget-object p0, p0, Lere;->i:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    :goto_6
    check-cast p0, Lnkn;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final g(Lfdn;)Z
    .locals 12

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_0
    check-cast v1, Levg;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_3
    const-string v2, "Didn\'t find WorkSpec for id "

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return v9

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v10

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p0, v6, v8, v9}, Leze;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Leze;

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
    add-int v0, v0, v1

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
    const v1, 0x8

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

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_e
    move-object v1, v7

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

    nop

    :goto_f
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, v1}, Lere;->19e596a3e324281407eb5c11093c0152m(Levg;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_14
    iget-object v7, p1, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v9, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    monitor-enter v10

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0, v8}, Lere;->c(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lere;->c:Ljava/util/Map;

    nop

    nop

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/util/Set;

    nop

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lfdn;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lfdn;->a:Ljava/lang/Object;

    nop

    check-cast v2, Levg;

    nop

    iget v2, v2, Levg;->b:I

    nop

    nop

    nop

    move-object v3, v7

    nop

    nop

    nop

    nop

    check-cast v3, Levg;

    nop

    nop

    nop

    nop

    iget v3, v3, Levg;->b:I

    nop

    nop

    if-ne v2, v3, :cond_1

    nop

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Leqh;->b()V

    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    check-cast v7, Levg;

    nop

    invoke-direct {p0, v7}, Lere;->19e596a3e324281407eb5c11093c0152m(Levg;)V

    :goto_17
    monitor-exit v10

    nop

    nop

    nop

    nop

    nop

    goto :goto_18

    nop

    :cond_2
    iget v1, v5, Levq;->q:I

    nop

    nop

    move-object v2, v7

    nop

    check-cast v2, Levg;

    nop

    nop

    iget v2, v2, Levg;->b:I

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_3

    nop

    check-cast v7, Levg;

    nop

    invoke-direct {p0, v7}, Lere;->19e596a3e324281407eb5c11093c0152m(Levg;)V

    monitor-exit v10

    nop

    nop

    nop

    :goto_18
    return v0

    nop

    nop

    :cond_3
    new-instance v11, Lhif;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lere;->h:Landroid/content/Context;

    nop

    nop

    iget-object v2, p0, Lere;->j:Lqpe;

    nop

    nop

    iget-object v3, p0, Lere;->k:Lts;

    nop

    iget-object v4, p0, Lere;->a:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    move-object v0, v11

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v0 .. v6}, Lhif;-><init>(Landroid/content/Context;Lqpe;Lts;Landroidx/work/impl/WorkDatabase;Levq;Ljava/util/List;)V

    new-instance v0, Lnkn;

    nop

    invoke-direct {v0, v11}, Lnkn;-><init>(Lhif;)V

    iget-object v1, v0, Lnkn;->c:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Lts;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lts;->b:Ljava/lang/Object;

    nop

    nop

    new-instance v2, Luha;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3}, Luha;-><init>(Lugy;)V

    check-cast v1, Ltzt;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ltzt;->plus(Luad;)Luad;

    move-result-object v1

    nop

    nop

    nop

    new-instance v2, Lrt;

    nop

    const/16 v4, 0xc

    nop

    nop

    invoke-direct {v2, v0, v3, v4, v3}, Lrt;-><init>(Lnkn;Ltzy;I[B)V

    invoke-static {v1, v2}, Landroidx/wear/ambient/WearableControllerProvider;->a(Luad;Lubo;)Lsui;

    move-result-object v1

    nop

    new-instance v2, Las;

    nop

    nop

    nop

    nop

    const/4 v3, 0x3

    nop

    nop

    invoke-direct {v2, p0, v1, v0, v3}, Las;-><init>(Lere;Lsui;Lnkn;I)V

    iget-object v3, p0, Lere;->k:Lts;

    nop

    nop

    iget-object v3, v3, Lts;->c:Ljava/lang/Object;

    nop

    invoke-interface {v1, v2, v3}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lere;->i:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lere;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v10

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_1a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, p0, Lere;->a:Landroidx/work/impl/WorkDatabase;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x0

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

    :goto_1d
    if-eqz v5, :cond_4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1e
    iget-object v8, v1, Levg;->a:Ljava/lang/String;

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

    :goto_1f
    move-object v5, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_20
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_22
    check-cast v5, Levq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_23
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2, v0}, Left;->f(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_28
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_12

    nop

    nop

    :goto_2a
    sget-object p1, Lere;->g:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v10, p0, Lere;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method
