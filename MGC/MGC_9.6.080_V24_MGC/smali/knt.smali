.class final Lknt;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "PG"


# instance fields
.field final synthetic a:Lknu;

.field private final b:Lkns;

.field private final c:Lpnx;

.field private final d:Lryy;


# direct methods
.method public constructor <init>(Lknu;Lkns;Lpnx;Lryy;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lknt;->b:Lkns;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lknt;->a:Lknu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lknt;->d:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Lknt;->c:Lpnx;

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
.end method


# virtual methods
.method public final declared-synchronized onCameraAvailable(Ljava/lang/String;)V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    const v1, 0x11

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    :try_start_3
    iget-object v0, p0, Lknt;->c:Lpnx;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lknt;->a:Lknu;

    nop

    nop

    nop

    nop

    nop

    monitor-enter p1

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lknt;->d:Lryy;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lknt;->b:Lkns;

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lknr;

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    invoke-direct {v2, v1, v3}, Lknr;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v2}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop
.end method

.method public final declared-synchronized onPhysicalCameraAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_1

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

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lknt;->c:Lpnx;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lpnx;->a:Ljava/lang/String;

    nop

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    iget-object p1, p0, Lknt;->a:Lknu;

    nop

    nop

    nop

    nop

    nop

    monitor-enter p1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lknt;->b:Lkns;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p2}, Lkns;->a(Ljava/lang/String;)V

    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :catchall_1
    move-exception p2

    nop

    :try_start_3
    monitor-exit p1

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p2

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    goto/32 :goto_2

    nop

    nop
.end method

.method public final declared-synchronized onPhysicalCameraUnavailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lknt;->c:Lpnx;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    iget-object p1, p0, Lknt;->a:Lknu;

    nop

    nop

    nop

    monitor-enter p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lknt;->b:Lkns;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v0, Lkns;->d:Lknu;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, v0, Lkns;->a:Ljava/util/Map;

    nop

    nop

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lkns;->a:Ljava/util/Map;

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lkns;->b()V

    :cond_0
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit p1

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x9

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_4
    monitor-exit p0

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

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

    nop

    :catchall_1
    move-exception p2

    nop

    nop

    :try_start_5
    monitor-exit v1

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p2

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p2

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p2

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_6

    nop
.end method
