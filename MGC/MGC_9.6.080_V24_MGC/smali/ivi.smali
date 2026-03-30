.class public final Livi;
.super Lggo;
.source "PG"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Ljava/lang/Runnable;

.field private final c:Lnpc;

.field private d:Lnfe;

.field private e:Ljir;

.field private final f:Lpzi;

.field private final g:Lhon;

.field private final h:Lfdn;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Lfdn;Lhon;Landroid/app/Activity;Lpzi;Lnpc;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Livi;->h:Lfdn;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p5, p0, Livi;->c:Lnpc;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    new-instance p1, Litt;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lggo;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Livi;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Livi;->f:Lpzi;

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

    :goto_6
    const/4 p2, 0x1

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

    nop

    :goto_7
    invoke-direct {p1, p3, p2}, Litt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p3, p0, Livi;->a:Landroid/app/Activity;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Livi;->g:Lhon;

    nop

    goto/32 :goto_9

    nop

    nop
.end method


# virtual methods
.method public final B()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Livi;->e:Ljir;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljir;->b()Liuh;

    move-result-object v0

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    iput-boolean v1, v0, Liuh;->x:Z

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final declared-synchronized dB()V
    .locals 5

    goto/32 :goto_2

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

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

    :try_start_0
    iget-object v0, p0, Livi;->f:Lpzi;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lpzi;->k:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    nop

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->r:Lnds;

    nop

    nop

    nop

    iget-object v0, v0, Lnds;->D:Ljava/util/List;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Livi;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Livi;->a:Landroid/app/Activity;

    nop

    nop

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x4

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    iget-object v0, p0, Livi;->a:Landroid/app/Activity;

    nop

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    iget-object v0, p0, Livi;->e:Ljir;

    nop

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
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    :try_start_1
    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljir;->c()Livy;

    move-result-object v0

    nop

    nop

    iget-object v1, v0, Livy;->a:Landroid/hardware/SensorManager;

    nop

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Livi;->e:Ljir;

    nop

    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljir;->b()Liuh;

    move-result-object v0

    nop

    nop

    nop

    iget-object v1, v0, Liuh;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    iget-object v1, v0, Liuh;->k:Litw;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Litw;->a(Z)V

    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v1, v0, Liuh;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, Liuh;->p:Landroid/os/ConditionVariable;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    invoke-virtual {v0, v4, v2}, Liuh;->h(ZI)V

    :goto_5
    iget-object v1, v0, Liuh;->M:Lnzk;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Liuh;->b()V

    iget-object v0, v0, Liuh;->c:Livg;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Livd;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    throw v0

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_b

    nop
.end method

.method public final dD()V
    .locals 6

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_8

    nop

    nop

    :goto_3
    iget-object v0, p0, Livi;->f:Lpzi;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xa

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    if-eq v0, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_10

    nop

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

    :try_start_1
    iget-object v0, p0, Livi;->e:Ljir;

    nop

    nop

    nop

    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljir;->a()Litw;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v1, v0, Litw;->b:Lpcu;

    nop

    nop

    nop

    nop

    const-string v3, "Panorama frameserver received onModuleResume"

    nop

    nop

    invoke-interface {v1, v3}, Lpcu;->f(Ljava/lang/String;)V

    iget-object v0, v0, Litw;->n:Lpik;

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lpik;->k()V

    :cond_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_17

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->r:Lnds;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

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

    :cond_2
    goto/32 :goto_5

    nop

    :goto_10
    iget-object v0, p0, Livi;->a:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x6

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

    :goto_12
    rem-int v0, v0, v1

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

    :goto_13
    iget-object p0, p0, Livi;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Lpzi;->k:Ljava/lang/Object;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

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

    nop

    :goto_17
    iget-object v0, p0, Livi;->a:Landroid/app/Activity;

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

    :goto_18
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Livi;->e:Ljir;

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    return-void

    nop

    :cond_3
    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljir;->c()Livy;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v1, v0, Livy;->a:Landroid/hardware/SensorManager;

    nop

    iget-object v2, v0, Livy;->c:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v1, v0, Livy;->a:Landroid/hardware/SensorManager;

    nop

    iget-object v2, v0, Livy;->b:Landroid/hardware/Sensor;

    nop

    nop

    nop

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Livi;->e:Ljir;

    nop

    nop

    nop

    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljir;->b()Liuh;

    move-result-object v0

    nop

    nop

    nop

    new-instance v1, Ljava/io/File;

    nop

    nop

    nop

    iget-object v2, v0, Liuh;->a:Landroid/content/Context;

    nop

    nop

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    nop

    nop

    nop

    const-string v4, "datasets"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, v0, Liuh;->I:Lhoh;

    nop

    nop

    sget-object v2, Lhmw;->a:Lhmn;

    nop

    nop

    nop

    nop

    iget-object v2, v0, Liuh;->q:Lglu;

    nop

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lglu;->a(Ljava/lang/String;)V

    iget-object v1, v0, Liuh;->G:Llyv;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Llyr;->aC:Llzf;

    nop

    nop

    invoke-virtual {v1, v2}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    if-ge v1, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v0, Liuh;->d:Liud;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Liud;->k()Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_4

    nop

    nop

    nop

    iget-object v4, v0, Liuh;->a:Landroid/content/Context;

    nop

    nop

    nop

    const v5, 0x7f140297

    nop

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    invoke-virtual {v0, v4}, Liuh;->c(Ljava/lang/String;)V

    iget-object v4, v0, Liuh;->H:Llyv;

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Llyr;->aC:Llzf;

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    invoke-virtual {v4, v5, v1}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    :cond_4
    iget-object v1, v0, Liuh;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Liuh;->M:Lnzk;

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    throw v0

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    :try_start_3
    monitor-exit p0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, v0, Lnds;->D:Ljava/util/List;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized l()V
    .locals 18

    goto/32 :goto_2

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1d

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

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

    :goto_4
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    :try_start_1
    iget-object v0, v1, Livi;->g:Lhon;

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    new-instance v3, Ljir;

    nop

    nop

    nop

    check-cast v2, Ljip;

    nop

    nop

    nop

    nop

    iget-object v4, v0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v4, Ljif;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lhon;->c:Ljava/lang/Object;

    nop

    check-cast v0, Ljik;

    nop

    invoke-direct {v3, v2, v4, v0}, Ljir;-><init>(Ljip;Ljif;Ljik;)V

    iput-object v3, v1, Livi;->e:Ljir;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v1, Livi;->h:Lfdn;

    nop

    nop

    sget v2, Livk;->a:I

    nop

    iget-object v3, v1, Livi;->e:Ljir;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lqrg;->G(Ljava/lang/Object;)V

    iget-object v3, v3, Ljir;->e:Ltur;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ltur;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Livj;

    nop

    invoke-virtual {v3}, Livj;->a()D

    move-result-wide v3

    nop

    double-to-float v3, v3

    nop

    iget-object v0, v0, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    const/4 v4, 0x1

    nop

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    sput v2, Livk;->a:I

    nop

    nop

    sput v3, Livk;->b:F

    nop

    nop

    new-instance v0, Livk;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Livk;-><init>()V

    const-class v2, Livm;

    nop

    nop

    invoke-static {v2, v0}, Liwa;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/apps/camera/imax/cyclops/processing/NativePoseEstimatorImpl;

    nop

    nop

    nop

    invoke-direct {v0}, Lcom/google/android/apps/camera/imax/cyclops/processing/NativePoseEstimatorImpl;-><init>()V

    const-class v2, Livp;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v0}, Liwa;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Liwf;

    nop

    invoke-direct {v0}, Liwf;-><init>()V

    const-class v2, Livo;

    nop

    nop

    nop

    invoke-static {v2, v0}, Liwa;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Liwc;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Liwc;-><init>()V

    const-class v2, Liwb;

    nop

    nop

    nop

    invoke-static {v2, v0}, Liwa;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v1, Livi;->e:Ljir;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    iget-object v2, v0, Ljir;->d:Ltur;

    nop

    nop

    nop

    new-instance v3, Llgc;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    move-object v6, v2

    nop

    nop

    nop

    check-cast v6, Litx;

    nop

    nop

    nop

    iget-object v2, v0, Ljir;->h:Ltur;

    nop

    nop

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    move-object v7, v2

    nop

    nop

    nop

    check-cast v7, Livc;

    nop

    nop

    nop

    nop

    iget-object v2, v0, Ljir;->i:Ltur;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    move-object v8, v2

    nop

    nop

    check-cast v8, Lows;

    nop

    nop

    nop

    iget-object v2, v0, Ljir;->c:Ljik;

    nop

    nop

    iget-object v2, v2, Ljik;->m:Ltur;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    move-object v9, v2

    nop

    nop

    nop

    nop

    check-cast v9, Lngo;

    nop

    iget-object v2, v0, Ljir;->j:Ltur;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    move-object v10, v2

    nop

    nop

    check-cast v10, Liuh;

    nop

    nop

    nop

    nop

    iget-object v2, v0, Ljir;->c:Ljik;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Ljik;->g:Ltur;

    nop

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    move-object v11, v2

    nop

    nop

    nop

    check-cast v11, Lglm;

    nop

    nop

    iget-object v2, v0, Ljir;->b:Ljif;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Ljif;->ak:Ltur;

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    move-object v12, v2

    nop

    check-cast v12, Ljdc;

    nop

    iget-object v2, v0, Ljir;->g:Ltur;

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    move-object v13, v2

    nop

    nop

    check-cast v13, Litw;

    nop

    nop

    nop

    iget-object v2, v0, Ljir;->b:Ljif;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Ljif;->as:Ltur;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    move-object v14, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v14, Lpcm;

    nop

    iget-object v2, v0, Ljir;->a:Ljip;

    nop

    nop

    nop

    iget-object v2, v2, Ljip;->i:Ltur;

    nop

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    move-object v15, v2

    nop

    nop

    nop

    check-cast v15, Lhoh;

    nop

    iget-object v2, v0, Ljir;->c:Ljik;

    nop

    nop

    iget-object v2, v2, Ljik;->a:Ljip;

    nop

    new-instance v5, Lfdo;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljip;->h()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    nop

    const/4 v4, 0x0

    nop

    nop

    invoke-direct {v5, v2, v4}, Lfdo;-><init>(Ljava/lang/Object;[B)V

    iget-object v0, v0, Ljir;->e:Ltur;

    nop

    nop

    invoke-interface {v0}, Ltur;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    move-object/from16 v17, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v17, Livj;

    nop

    move-object v0, v5

    nop

    nop

    nop

    move-object v5, v3

    nop

    move-object/from16 v16, v0

    nop

    nop

    invoke-direct/range {v5 .. v17}, Llgc;-><init>(Litx;Livc;Lows;Lngo;Liuh;Lglm;Ljdc;Litw;Lpcm;Lhoh;Lfdo;Livj;)V

    iget-object v0, v1, Livi;->d:Lnfe;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    iget-object v2, v3, Llgc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    sget-object v5, Lhmq;->bb:Lhmn;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lhoh;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v5}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_2

    nop

    iget-object v2, v3, Llgc;->e:Ljava/lang/Object;

    nop

    nop

    move-object v5, v2

    nop

    nop

    check-cast v5, Litx;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Litx;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    nop

    nop

    nop

    const v6, 0x7f0804de

    nop

    nop

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    nop

    nop

    nop

    check-cast v2, Litx;

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Litx;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v3, Llgc;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Litx;

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Litx;->setClipToOutline(Z)V

    :cond_2
    iget-object v2, v3, Llgc;->e:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v2, Litx;

    nop

    const/4 v4, 0x3

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Litx;->setEGLContextClientVersion(I)V

    iget-object v2, v3, Llgc;->e:Ljava/lang/Object;

    nop

    nop

    iget-object v5, v3, Llgc;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v2, Litx;

    nop

    nop

    invoke-virtual {v2, v5}, Litx;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v2, v3, Llgc;->e:Ljava/lang/Object;

    nop

    nop

    move-object v5, v2

    nop

    nop

    check-cast v5, Litx;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v5, Litx;->a:Livi;

    nop

    nop

    check-cast v2, Litx;

    nop

    nop

    invoke-virtual {v2}, Litx;->onResume()V

    iget-object v2, v3, Llgc;->e:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-static {}, Lowu;->a()V

    iget-object v5, v0, Lnfe;->a:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v2, v0

    nop

    nop

    check-cast v2, Lnkd;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lnkd;->b:Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    nop

    nop

    move-object v5, v0

    nop

    check-cast v5, Lnkd;

    nop

    nop

    iget-object v5, v5, Lnkd;->a:Landroid/view/ViewGroup;

    nop

    nop

    invoke-virtual {v2, v5}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->k(Landroid/view/View;)V

    iget-object v2, v3, Llgc;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v2, Livj;

    nop

    nop

    nop

    iget-object v2, v2, Livj;->b:Lpnu;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpnu;->g()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    move-object v5, v0

    nop

    check-cast v5, Lnkd;

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lnkd;->b:Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    const/16 v6, 0x780

    nop

    nop

    nop

    const/16 v7, 0x438

    nop

    invoke-virtual {v5, v6, v7, v2}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->o(IILjava/lang/Integer;)V

    iget-object v2, v3, Llgc;->g:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v5, v3, Llgc;->h:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v6, v3, Llgc;->c:Ljava/lang/Object;

    nop

    nop

    move-object v7, v2

    nop

    nop

    nop

    check-cast v7, Litw;

    nop

    nop

    nop

    nop

    iget-object v7, v7, Litw;->a:Lpdf;

    nop

    nop

    const-string v8, "ImaxFrameServer-start"

    nop

    nop

    invoke-interface {v7, v8}, Lpdf;->f(Ljava/lang/String;)V

    move-object v7, v2

    nop

    nop

    check-cast v7, Litw;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v7, Litw;->m:Lpiz;

    nop

    iget-object v7, v7, Lpiz;->a:Lpnv;

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Lpog;->b:Lpog;

    nop

    invoke-interface {v7, v8}, Lpnv;->e(Lpog;)Lpnx;

    move-result-object v7

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v2

    nop

    nop

    check-cast v8, Litw;

    nop

    nop

    nop

    iget-object v8, v8, Litw;->d:Livj;

    nop

    nop

    iget-object v8, v8, Livj;->d:Livu;

    nop

    nop

    nop

    nop

    new-instance v9, Lpck;

    nop

    nop

    nop

    iget v10, v8, Livu;->a:I

    nop

    nop

    nop

    iget v8, v8, Livu;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9, v10, v8}, Lpck;-><init>(II)V

    move-object v8, v2

    nop

    nop

    nop

    nop

    check-cast v8, Litw;

    nop

    iget-object v8, v8, Litw;->b:Lpcu;

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    const-string v11, "Viewfinder size: "

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8, v10}, Lpcu;->f(Ljava/lang/String;)V

    invoke-static {}, Lphj;->a()Lphi;

    move-result-object v8

    nop

    nop

    nop

    nop

    sget-object v10, Lphm;->b:Lphm;

    nop

    nop

    invoke-virtual {v8, v10}, Lphi;->o(Lphm;)V

    invoke-virtual {v8, v7}, Lphi;->b(Lpnx;)V

    invoke-virtual {v8, v9}, Lphi;->l(Lpck;)V

    invoke-virtual {v8}, Lphi;->a()Lphj;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    new-instance v9, Lgff;

    nop

    nop

    nop

    const/4 v10, 0x6

    nop

    nop

    invoke-direct {v9, v2, v5, v10}, Lgff;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v5, v2

    nop

    check-cast v5, Litw;

    nop

    nop

    nop

    nop

    nop

    iput-object v9, v5, Litw;->k:Lpgg;

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Livc;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v6, Livc;->g:Lsuu;

    nop

    nop

    nop

    new-instance v6, Litv;

    nop

    nop

    const/4 v9, 0x0

    nop

    invoke-direct {v6, v2, v8, v9}, Litv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v10, Lstd;->a:Lstd;

    nop

    nop

    nop

    invoke-static {v5, v6, v10}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    move-object v5, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Litw;

    nop

    nop

    iget-object v5, v5, Litw;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lpgn;->a()Lpgm;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v5, v7}, Lpgm;->f(Lpnx;)V

    invoke-virtual {v5, v8}, Lpgm;->d(Lphj;)V

    new-instance v6, Lphc;

    nop

    nop

    nop

    invoke-direct {v6, v4}, Lphc;-><init>(I)V

    iput-object v6, v5, Lpgm;->c:Lphc;

    nop

    nop

    move-object v4, v2

    nop

    check-cast v4, Litw;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Litw;->d:Livj;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Livj;->f:Lrtm;

    nop

    nop

    nop

    invoke-interface {v4}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    nop

    nop

    invoke-virtual {v5, v4}, Lpgm;->l(Z)V

    move-object v4, v2

    nop

    check-cast v4, Litw;

    nop

    nop

    nop

    iget-object v4, v4, Litw;->d:Livj;

    nop

    nop

    nop

    nop

    nop

    new-instance v6, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    nop

    nop

    new-instance v11, Lpha;

    nop

    nop

    nop

    invoke-direct {v11, v8, v10}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    const/4 v11, 0x1

    nop

    nop

    nop

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    nop

    nop

    new-instance v12, Lpha;

    nop

    invoke-direct {v12, v8, v11}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {v6, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    new-instance v13, Lpha;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v13, v8, v12}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    new-instance v13, Lpha;

    nop

    nop

    invoke-direct {v13, v8, v11}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    new-instance v11, Lpha;

    nop

    nop

    nop

    invoke-direct {v11, v8, v12}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    new-instance v11, Lpha;

    nop

    invoke-direct {v11, v8, v10}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v8, v4, Livj;->b:Lpnu;

    nop

    nop

    nop

    nop

    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    invoke-interface {v8, v11}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, [Landroid/util/Range;

    nop

    array-length v11, v8

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v12, v11, -0x1

    nop

    aget-object v12, v8, v12

    nop

    nop

    move v13, v9

    nop

    nop

    :goto_7
    if-ge v13, v11, :cond_4

    nop

    aget-object v14, v8, v13

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v15

    nop

    nop

    check-cast v15, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    nop

    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v16

    nop

    nop

    check-cast v16, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    nop

    nop

    mul-int v15, v15, v16

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v16

    nop

    nop

    nop

    nop

    check-cast v16, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    nop

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v17

    nop

    nop

    nop

    check-cast v17, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    nop

    mul-int v9, v16, v17

    nop

    nop

    nop

    nop

    nop

    if-lt v15, v9, :cond_3

    nop

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    nop

    nop

    nop

    nop

    check-cast v9, Ljava/lang/Integer;

    nop

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    nop

    nop

    add-int/lit8 v9, v9, -0x1e

    nop

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    nop

    nop

    nop

    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    check-cast v15, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    nop

    add-int/lit8 v15, v15, -0x1e

    nop

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    nop

    nop

    nop

    nop

    if-ge v9, v15, :cond_3

    nop

    nop

    nop

    move-object v12, v14

    nop

    nop

    nop

    :cond_3
    add-int/lit8 v13, v13, 0x1

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/16 :goto_7

    nop

    nop

    :cond_4
    new-instance v8, Lpha;

    nop

    nop

    nop

    invoke-direct {v8, v10, v12}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    const/4 v9, 0x4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    new-instance v10, Lpha;

    nop

    nop

    invoke-direct {v10, v8, v9}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v4, Livj;->b:Lpnu;

    nop

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_HYPERFOCAL_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v9, v10}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    check-cast v9, Ljava/lang/Float;

    nop

    new-instance v10, Lpha;

    nop

    nop

    nop

    invoke-direct {v10, v8, v9}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    const-string v9, "bl9yX21fcXVhbGl0eV9rZXk"

    nop

    nop

    nop

    invoke-static {v9}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v9

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_5

    nop

    nop

    add-int/lit8 v9, v9, -0x1

    nop

    goto :goto_8

    nop

    :cond_5
    const/4 v9, 0x2

    nop

    nop

    nop

    :goto_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    nop

    nop

    nop

    new-instance v11, Lpha;

    nop

    nop

    nop

    invoke-direct {v11, v8, v10}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v8, v4, Livj;->b:Lpnu;

    nop

    nop

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->EDGE_AVAILABLE_EDGE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    sget-object v12, Lpnt;->c:[I

    nop

    nop

    nop

    check-cast v8, Lpnt;

    nop

    nop

    invoke-virtual {v8, v11, v12}, Lpnt;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, [I

    nop

    nop

    nop

    array-length v11, v8

    nop

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    :goto_9
    if-ge v12, v11, :cond_8

    nop

    aget v13, v8, v12

    nop

    nop

    nop

    nop

    nop

    const-string v9, "ZV9tX3F1YWxpdHlfa2V5"

    nop

    invoke-static {v9}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v9

    nop

    nop

    nop

    if-eqz v9, :cond_6

    nop

    nop

    nop

    add-int/lit8 v9, v9, -0x1

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    const/4 v9, 0x2

    nop

    nop

    nop

    nop

    :goto_a
    if-ne v13, v9, :cond_7

    nop

    nop

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    nop

    nop

    nop

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    new-instance v9, Lpha;

    nop

    nop

    invoke-direct {v9, v8, v10}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    add-int/lit8 v12, v12, 0x1

    nop

    nop

    goto :goto_9

    nop

    nop

    :cond_8
    :goto_b
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v4, Livj;->g:Lhoh;

    nop

    sget-object v9, Lhmw;->a:Lhmn;

    nop

    nop

    nop

    nop

    const-string v9, "Y2FtZXJhLm9pc19mb3JjZWRfcGhvdG9fbW9kZQ"

    nop

    nop

    nop

    invoke-static {v9}, Lcom/a;->aa(Ljava/lang/String;)Z

    move-result v9

    nop

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    nop

    nop

    new-instance v10, Lpha;

    nop

    nop

    invoke-direct {v10, v8, v9}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v8, Lnne;->d:Lnne;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v4, Livj;->b:Lpnu;

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v4, Livj;->e:Lkdv;

    nop

    nop

    nop

    invoke-static {v8, v9, v10}, Llfp;->d(Lnne;Lpnu;Lkdv;)Lryy;

    move-result-object v8

    nop

    invoke-interface {v6, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v8, v4, Livj;->g:Lhoh;

    nop

    nop

    nop

    nop

    nop

    sget-object v9, Lhmq;->bF:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Lhoh;->p(Lhmn;)Z

    move-result v8

    nop

    nop

    nop

    if-eqz v8, :cond_9

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v4, Livj;->c:Lkdt;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v8, Lkdt;->a:Lj$/util/Optional;

    nop

    nop

    nop

    invoke-virtual {v8}, Lj$/util/Optional;->isPresent()Z

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_9

    nop

    nop

    iget-object v4, v4, Livj;->c:Lkdt;

    nop

    nop

    iget-object v4, v4, Lkdt;->a:Lj$/util/Optional;

    nop

    nop

    nop

    invoke-virtual {v4}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    sget-object v8, Livj;->a:Ljava/lang/Byte;

    nop

    new-instance v9, Lpha;

    nop

    nop

    nop

    invoke-direct {v9, v4, v8}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object v4, v2

    nop

    nop

    check-cast v4, Litw;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Litw;->m:Lpiz;

    nop

    nop

    iget-object v4, v4, Lpiz;->a:Lpnv;

    nop

    invoke-interface {v4, v7}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-static {v6, v5, v4}, Llfp;->e(Ljava/util/Set;Lpgm;Lpnu;)V

    move-object v4, v2

    nop

    check-cast v4, Litw;

    nop

    iget-object v4, v4, Litw;->m:Lpiz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lpgm;->a()Lpgn;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lpiz;->a(Lpgn;)Lpik;

    move-result-object v4

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v2

    nop

    nop

    nop

    check-cast v5, Litw;

    nop

    iput-object v4, v5, Litw;->n:Lpik;

    nop

    nop

    invoke-virtual {v4, v6}, Lpik;->n(Ljava/util/Set;)V

    check-cast v2, Litw;

    nop

    nop

    iget-object v2, v2, Litw;->a:Lpdf;

    nop

    invoke-interface {v2}, Lpdf;->g()V

    iget-object v2, v3, Llgc;->f:Ljava/lang/Object;

    nop

    nop

    nop

    new-instance v4, Lhig;

    nop

    nop

    nop

    nop

    nop

    const/16 v5, 0x12

    nop

    nop

    nop

    invoke-direct {v4, v3, v0, v5}, Lhig;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    check-cast v2, Lows;

    nop

    invoke-virtual {v2, v4}, Lows;->d(Lpci;)V

    iget-object v0, v3, Llgc;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v3, Llgc;->m:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v4, v3, Llgc;->l:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v4}, Lngo;->e(Lngu;)Lpci;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lows;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lows;->d(Lpci;)V

    iget-object v0, v3, Llgc;->j:Ljava/lang/Object;

    nop

    nop

    iget-object v2, v3, Llgc;->i:Ljava/lang/Object;

    nop

    check-cast v2, Lhhg;

    nop

    nop

    check-cast v0, Lglm;

    nop

    invoke-virtual {v0, v2}, Lglm;->z(Lhhg;)V

    iget-object v0, v3, Llgc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v2, v3, Llgc;->k:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v0, Ljdc;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Ljdc;->b(Ljdb;)V

    iget-object v0, v3, Llgc;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    new-instance v2, Lhjc;

    nop

    invoke-direct {v2, v3, v5}, Lhjc;-><init>(Ljava/lang/Object;I)V

    check-cast v0, Lows;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lows;->d(Lpci;)V

    iget-object v0, v3, Llgc;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lhjc;

    nop

    nop

    const/16 v4, 0x13

    nop

    nop

    invoke-direct {v2, v3, v4}, Lhjc;-><init>(Ljava/lang/Object;I)V

    check-cast v0, Lows;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lows;->d(Lpci;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_16

    nop

    nop

    :goto_c
    if-nez v0, :cond_a

    nop

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

    :cond_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw v0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    move-object/from16 v1, p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x7

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

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

    :goto_12
    goto/32 :goto_1

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_15
    monitor-enter p0

    nop

    nop

    :try_start_2
    iget-object v0, v1, Livi;->e:Ljir;

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    monitor-exit p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized m()V
    .locals 4

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

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

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Livi;->e:Ljir;

    nop

    nop

    nop

    nop

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

    :goto_4
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

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
    :try_start_2
    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljir;->b()Liuh;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v1, v0, Liuh;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    iget-object v1, v0, Liuh;->F:Litp;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Litt;

    nop

    nop

    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    invoke-direct {v2, v0, v3}, Litt;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Litp;->b(Ljava/lang/Runnable;)V

    iget-object v1, v0, Liuh;->j:Litx;

    nop

    nop

    nop

    invoke-virtual {v1}, Litx;->onPause()V

    iget-object v0, v0, Liuh;->w:Lnsc;

    nop

    invoke-virtual {v0}, Lnsc;->c()V

    iget-object v0, p0, Livi;->e:Ljir;

    nop

    nop

    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljir;->a()Litw;

    move-result-object v0

    nop

    nop

    nop

    iget-object v1, v0, Litw;->b:Lpcu;

    nop

    nop

    nop

    nop

    const-string v2, "Received onModuleStop"

    nop

    invoke-interface {v1, v2}, Lpcu;->f(Ljava/lang/String;)V

    iget-object v1, v0, Litw;->f:Loxv;

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    invoke-virtual {v1, v2}, Loxv;->a(Ljava/lang/Object;)V

    iget-object v1, v0, Litw;->j:Lpgh;

    nop

    if-eqz v1, :cond_2

    nop

    iget-object v2, v0, Litw;->k:Lpgg;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpgh;->m(Lpgg;)V

    :cond_2
    iget-object v1, v0, Litw;->i:Lphh;

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    invoke-interface {v1, v2}, Lphh;->e(Landroid/view/Surface;)V

    :cond_3
    iget-object v1, v0, Litw;->h:Landroid/view/Surface;

    nop

    nop

    if-eqz v1, :cond_4

    nop

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v2, v0, Litw;->h:Landroid/view/Surface;

    nop

    nop

    nop

    :cond_4
    iput-object v2, v0, Litw;->i:Lphh;

    nop

    nop

    nop

    iget-object v1, v0, Litw;->j:Lpgh;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpci;->close()V

    :cond_5
    iput-object v2, v0, Litw;->j:Lpgh;

    nop

    nop

    nop

    iget-object v1, v0, Litw;->b:Lpcu;

    nop

    nop

    nop

    const-string v3, "Panorama frameserver closing"

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v1, v0, Litw;->n:Lpik;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lpik;->close()V

    iput-object v2, v0, Litw;->n:Lpik;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Litw;->c:Livg;

    nop

    nop

    nop

    invoke-virtual {v0}, Livd;->b()V

    iget-object v0, p0, Livi;->e:Ljir;

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    iget-object v0, v0, Ljir;->f:Ltur;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ltur;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Livg;

    nop

    invoke-virtual {v0}, Livd;->b()V

    iget-object v0, p0, Livi;->e:Ljir;

    nop

    nop

    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    iget-object v0, v0, Ljir;->i:Ltur;

    nop

    nop

    nop

    invoke-interface {v0}, Ltur;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lows;

    nop

    nop

    nop

    invoke-virtual {v0}, Lows;->close()V

    iput-object v2, p0, Livi;->e:Ljir;

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop
.end method

.method public final declared-synchronized o()Z
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

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

    :goto_6
    return p0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_10

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    return v1

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    :goto_13
    monitor-exit p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    monitor-exit p0

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

    :goto_15
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Livi;->e:Ljir;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    :try_start_2
    invoke-virtual {v0}, Ljir;->b()Liuh;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v2, v0, Liuh;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    nop

    nop

    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    if-ne v2, v3, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Liuh;->b()V

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Liuh;->h(ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final declared-synchronized p()Lrss;
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_2
    rem-int v0, v0, v1

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

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const v0, 0x3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    :cond_1
    :try_start_1
    iget-object v0, v0, Ljir;->d:Ltur;

    nop

    nop

    nop

    invoke-interface {v0}, Ltur;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Litx;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Livi;->c:Lnpc;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    nop

    nop

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_2

    nop

    sget-object v0, Lnjb;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/16 v1, 0x13cf

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v1, "getScreenshotFrom(): the surface is not valid"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    div-int/2addr v2, v3

    nop

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    nop

    div-int/2addr v4, v3

    nop

    nop

    if-lez v2, :cond_4

    nop

    nop

    nop

    nop

    if-gtz v4, :cond_3

    nop

    nop

    goto :goto_8

    nop

    :cond_3
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    nop

    nop

    invoke-virtual {v1, v0, v2}, Lnpc;->a(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V

    invoke-static {v2, v3}, Lnjh;->b(Landroid/graphics/Bitmap;I)Lnjh;

    move-result-object v0

    nop

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    :cond_4
    :goto_8
    sget-object v0, Lnjb;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x13ce

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "getScreenshotFrom(): the surface size is invalid"

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Livi;->e:Ljir;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_e

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final v()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v2, v1}, Lnkd;-><init>(Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;Landroid/widget/FrameLayout;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
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

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    iget-object v1, v1, Lpzi;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    check-cast v1, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    iget-object v1, p0, Livi;->f:Lpzi;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x17

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

    :goto_b
    iget-object v2, v1, Lpzi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    :goto_f
    iput-object v0, p0, Livi;->d:Lnfe;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v2, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

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

    nop

    :goto_11
    new-instance v0, Lnkd;

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
.end method
