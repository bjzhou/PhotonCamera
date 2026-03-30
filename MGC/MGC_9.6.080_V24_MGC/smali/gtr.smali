.class public Lgtr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# static fields
.field private static final g:Lsdb;


# instance fields
.field public final a:Landroid/media/AudioManager;

.field public final b:Landroid/media/AudioDeviceCallback;

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/lang/Object;

.field public e:Z

.field public f:Z

.field private final h:Landroid/os/HandlerThread;

.field private final i:Llxr;

.field private final j:Liof;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lgtr;->g:Lsdb;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    const-string v0, "gtr"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Liof;Landroid/media/AudioManager;Llxr;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lgtr;->a:Landroid/media/AudioManager;

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
    iput-object p1, p0, Lgtr;->j:Liof;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1b

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Ljava/lang/Object;

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

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_18

    nop

    nop

    :goto_6
    iput-boolean v1, p0, Lgtr;->e:Z

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    goto/32 :goto_1d

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    invoke-direct {p1, p0}, Lgtq;-><init>(Lgtr;)V

    goto/32 :goto_16

    nop

    nop

    :goto_b
    iput-object p2, p0, Lgtr;->c:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p3, p0, Lgtr;->i:Llxr;

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

    :goto_d
    new-instance p1, Lgtq;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x3

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

    :goto_14
    iput-object v1, p0, Lgtr;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    const-string v1, "AudioDeviceChangeListenerImpl"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    iput-object p1, p0, Lgtr;->b:Landroid/media/AudioDeviceCallback;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance p2, Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    new-instance v0, Landroid/os/HandlerThread;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x0

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

    :goto_1a
    return-void

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1c
    iput-boolean v1, p0, Lgtr;->f:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

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

    :goto_1e
    iput-object v0, p0, Lgtr;->h:Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    const v1, 0x1a

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

    :goto_4
    throw p0

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_8
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lgtr;->e:Z

    nop

    if-eqz v1, :cond_1

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v1, p0, Lgtr;->a:Landroid/media/AudioManager;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lgtr;->b:Landroid/media/AudioDeviceCallback;

    nop

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    const/4 v1, 0x0

    nop

    iput-boolean v1, p0, Lgtr;->f:Z

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

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

    :goto_9
    const v0, 0xf

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

    nop

    :goto_a
    iget-object v0, p0, Lgtr;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 8

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgtr;->i:Llxr;

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

    nop

    :goto_1
    const/4 v5, 0x0

    nop

    :goto_2
    goto/32 :goto_23

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4
    move v4, v3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-lt v4, v2, :cond_0

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v6, v7, :cond_1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_1
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aget-object v5, v1, v3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lgtr;->i:Llxr;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_a
    if-lt v3, v2, :cond_2

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    array-length v2, v1

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, Landroid/media/AudioManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lgtr;->i:Llxr;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_11
    iget-object v2, v2, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_12
    iget-object v0, v0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    array-length v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lgtr;->i:Llxr;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v4, Llxq;->b:Llxq;

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

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v0, Llxq;->d:Llxq;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    aget-object v5, v0, v4

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x2

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

    :goto_1c
    iget-object v1, p0, Lgtr;->j:Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Llxr;->g(Llxq;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_20
    const/4 v3, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_21
    invoke-virtual {p0, v0}, Llxr;->g(Llxq;)Z

    goto/32 :goto_1e

    nop

    nop

    :goto_22
    sget-object v2, Llxq;->d:Llxq;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v4, v5}, Llxr;->e(Llxq;Landroid/media/AudioDeviceInfo;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v2, Llxq;->c:Llxq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_25
    check-cast v2, Landroid/media/AudioManager;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_37

    nop

    nop

    :goto_27
    const/16 v7, 0xf

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_28
    iget-object v1, p0, Lgtr;->j:Liof;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v2, v1}, Llxr;->e(Llxq;Landroid/media/AudioDeviceInfo;)V

    goto/32 :goto_14

    nop

    nop

    :goto_2a
    if-lez v0, :cond_3

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_36

    nop

    :goto_2b
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_4
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

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

    nop

    :goto_2d
    iget-object v0, p0, Lgtr;->i:Llxr;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lgtr;->j:Liof;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2f
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_30
    invoke-virtual {v1}, Liof;->z()Landroid/media/AudioDeviceInfo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0x7

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1}, Liof;->y()Landroid/media/AudioDeviceInfo;

    move-result-object v1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_5

    nop

    nop

    :goto_34
    goto/32 :goto_e

    nop

    nop

    :goto_35
    iget-object v2, p0, Lgtr;->j:Liof;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_2e

    nop

    nop

    :goto_38
    goto/16 :goto_2

    nop

    :goto_39
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3c
    sget-object v1, Llxq;->c:Llxq;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, v2, v1}, Llxr;->e(Llxq;Landroid/media/AudioDeviceInfo;)V

    :goto_3e
    goto/32 :goto_9

    nop

    nop

    :goto_3f
    invoke-static {v5}, Liof;->A(Landroid/media/AudioDeviceInfo;)V

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1e

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

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lgtr;->e:Z

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    sget-object p0, Lgtr;->g:Lsdb;

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x321

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Already closed"

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_0
    invoke-virtual {p0}, Lgtr;->a()V

    const/4 v1, 0x1

    nop

    iput-boolean v1, p0, Lgtr;->e:Z

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lgtr;->h:Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    iget-object p0, p0, Lgtr;->h:Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_0

    nop

    :goto_5
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

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

    :goto_8
    throw p0

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    goto :goto_c

    nop

    nop

    :catch_0
    :try_start_2
    sget-object p0, Lgtr;->g:Lsdb;

    nop

    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x320

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Could not complete shutting down AudioDeviceChangeListener."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_c
    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_d
    iget-object v0, p0, Lgtr;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method
