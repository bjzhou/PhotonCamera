.class public final Lqvb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Map;

.field public static final b:[Ljava/lang/String;


# instance fields
.field public final c:Landroid/content/ContentResolver;

.field public final d:Landroid/net/Uri;

.field public final e:Ljava/lang/Object;

.field public volatile f:Ljava/util/Map;

.field private final g:Landroid/database/ContentObserver;

.field private final h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lwu;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lqvb;->b:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Lwu;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lqvb;->a:Ljava/util/Map;

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

    :goto_e
    const-string v0, "key"

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

    nop

    :goto_f
    const-string v1, "value"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    :goto_0
    new-instance v0, Lqva;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v1, p0, Lqvb;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    iput-object p1, p0, Lqvb;->c:Landroid/content/ContentResolver;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Lqvb;->d:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lqvb;->g:Landroid/database/ContentObserver;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, p2, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/32 :goto_14

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v1, p0, Lqvb;->h:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p0}, Lqva;-><init>(Lqvb;)V

    goto/32 :goto_c

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p0, 0x0

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

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v1, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    const v0, 0x3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method static declared-synchronized a()V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    throw v1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

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

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v1, Lqvb;->a:Ljava/util/Map;

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    nop

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_0

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

    check-cast v2, Lqvb;

    nop

    iget-object v3, v2, Lqvb;->c:Landroid/content/ContentResolver;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lqvb;->g:Landroid/database/ContentObserver;

    nop

    nop

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_4

    nop

    nop

    :cond_0
    sget-object v1, Lqvb;->a:Ljava/util/Map;

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    const-class v0, Lqvb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xc

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    :goto_c
    const v1, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_e
    monitor-exit v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static c(Landroid/content/ContentResolver;Landroid/net/Uri;)Lqvb;
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :goto_1
    move-object v2, v3

    nop

    nop

    nop

    :catch_0
    :goto_2
    :try_start_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object v2

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

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    :try_start_1
    sget-object v1, Lqvb;->a:Ljava/util/Map;

    nop

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lqvb;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x13

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

    :goto_5
    const v0, 0x17

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    :try_start_2
    new-instance v3, Lqvb;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, p0, p1}, Lqvb;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-class v0, Lqvb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iput-object v1, p0, Lqvb;->f:Ljava/util/Map;

    nop

    nop

    invoke-static {}, Lqvy;->e()V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x14

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Lqvb;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lqvc;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lqvc;->a()V

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit p0

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lqvb;->e:Ljava/lang/Object;

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

    :goto_c
    throw v0

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit v0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x16

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop
.end method
