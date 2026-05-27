.class public final Lkms;
.super Ljava/lang/Object;

# interfaces
.implements Lkmn;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lkah;

.field public c:I

.field private final d:Landroid/hardware/SensorManager;

.field private final e:Ljava/util/Set;

.field private final f:Landroid/hardware/SensorEventListener;

.field private final g:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lkms;->d:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, v0, Lkms;->g:Landroid/hardware/Sensor;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x1770

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lkms;->a:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, v0, Lkms;->a:Ljava/util/List;

    new-instance v15, Lkmo;

    const/16 v6, 0x68

    const/4 v7, 0x1

    const/4 v8, 0x4

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v5, v15

    move-object v2, v15

    move/from16 v15, v16

    invoke-direct/range {v5 .. v15}, Lkmo;-><init>(IIIJJFFF)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/16 v2, 0x1770

    goto :goto_0

    :cond_0
    iput v1, v0, Lkms;->c:I

    new-instance v1, Lkmr;

    invoke-direct {v1, v0}, Lkmr;-><init>(Lkms;)V

    iput-object v1, v0, Lkms;->f:Landroid/hardware/SensorEventListener;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lkms;->e:Ljava/util/Set;

    new-instance v1, Lkah;

    sget-object v2, Lkmp;->a:Lkmp;

    const/16 v3, 0x1770

    invoke-direct {v1, v2, v3}, Lkah;-><init>(Lkag;I)V

    iput-object v1, v0, Lkms;->b:Lkah;

    return-void
.end method

.method private final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkms;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lkms;->f:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkms;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lkms;->f:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lkms;->g:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lkmm;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkms;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lkms;->d()V

    :cond_0
    new-instance v0, Lkmq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lkmq;-><init>(Lkms;Ljava/lang/String;I)V

    iget-object p1, p0, Lkms;->e:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lkmm;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkms;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lkms;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lkms;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
