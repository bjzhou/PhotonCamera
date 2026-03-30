.class public Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnrt;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/util/Queue;

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x5

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

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Lpco;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-class v0, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    sput-object v0, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_a
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

    :goto_b
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    const-string v1, "gcastartup"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "com.google.android.apps.camera.viewfindereffects.bufferflinger.SurfaceControlBufferFlinger"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public constructor <init>(Landroid/view/Surface;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

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

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xb

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    iput-wide v0, p0, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->c:J

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const-wide/16 p0, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_7
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p0, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->a:Lsdb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->b:Ljava/util/Queue;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "SurfaceControlBufferFlinger constructor called with invalid Surface :("

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_d
    invoke-static {}, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->nativeInit()V

    goto/32 :goto_1c

    nop

    nop

    :goto_e
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_12
    sget-object v0, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p1, v0}, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->nativeCreateBufferFlinger(Landroid/view/Surface;Ljava/lang/String;)J

    move-result-wide v0

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

    :goto_14
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    :goto_16
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "buffer-flinger"

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Ljava/util/LinkedList;

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

    nop

    :goto_1a
    const-string p1, "Failed to create BufferFlinger."

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    :goto_1d
    const/16 p1, 0x144a

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

    :goto_1e
    const/16 v1, 0x144b

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    :goto_23
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x14

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_25
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

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

    nop

    :goto_27
    cmp-long p0, v0, p0

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
.end method

.method private static native nativeCreateBufferFlinger(Landroid/view/Surface;Ljava/lang/String;)J
.end method

.method public static native nativeDisplayBuffer(JLandroid/hardware/HardwareBuffer;IIIIIIIII)Z
.end method

.method private static native nativeInit()V
.end method

.method private static native nativeReleaseBufferFlinger(J)V
.end method


# virtual methods
.method public final close()V
    .locals 5

    goto/32 :goto_14

    nop

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_9

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

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    const/4 v1, 0x0

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
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_d
    if-lt v1, p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_5

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v2, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->w()V

    goto/32 :goto_6

    nop

    nop

    :goto_12
    const v1, 0x15

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->c:J

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    cmp-long v4, v0, v2

    nop

    nop

    nop

    nop

    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_2
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->nativeReleaseBufferFlinger(J)V

    iput-wide v2, p0, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->c:J

    nop

    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->b:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->b:Ljava/util/Queue;

    nop

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x10

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

    :goto_15
    rem-int v0, v0, v1

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
.end method
