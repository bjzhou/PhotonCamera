.class public final Lpqv;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:Ljava/lang/Object;

.field public final d:Landroid/view/OrientationEventListener;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lpcu;

.field public g:Lpcg;

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lpcu;)V
    .locals 1

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    const-string p1, "DeviceOrientation"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lpqv;->e:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    iput-object p2, p0, Lpqv;->d:Landroid/view/OrientationEventListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-interface {p3, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lpqv;->a:Ljava/util/List;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    iput-object v0, p0, Lpqv;->b:Ljava/util/List;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    iput-object p1, p0, Lpqv;->f:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    new-instance p2, Lpqu;

    nop

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

    :goto_c
    invoke-direct {p2, p0, p1}, Lpqu;-><init>(Lpqv;Landroid/content/Context;)V

    goto/32 :goto_5

    nop

    nop

    :goto_d
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lpqv;->g:Lpcg;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lpqv;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    sget-object v0, Lpcg;->a:Lpcg;

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

    nop
.end method


# virtual methods
.method public final a()Lpcg;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lpqv;->g:Lpcg;

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-object p0

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lpqv;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Lpqs;)V
    .locals 2

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

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    throw p1

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :cond_1
    :try_start_0
    iget-object v1, p0, Lpqv;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    nop

    :goto_5
    const v0, 0x1e

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xd

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

    :goto_b
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object v0, p0, Lpqv;->c:Ljava/lang/Object;

    nop

    monitor-enter v0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lpqv;->a:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lpqs;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x8

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

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lpqv;->a:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lpqv;->f:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string p1, "Removing non-existing listener."

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lpcu;->g(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

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

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_8
    iget-object v0, p0, Lpqv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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
.end method
