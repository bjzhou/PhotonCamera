.class final Ljmw;
.super Ljava/lang/Thread;
.source "PG"


# instance fields
.field final synthetic a:Ljmx;


# direct methods
.method public constructor <init>(Ljmx;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Ljmw;->a:Ljmx;

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
.end method


# virtual methods
.method public final run()V
    .locals 5

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ljmw;->a:Ljmx;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :cond_0
    :try_start_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string v1, "State is not ready."

    nop

    nop

    nop

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

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

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Ljmw;->a:Ljmx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Ljmw;->a:Ljmx;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Ljmx;->w:Z

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

    :goto_5
    goto/32 :goto_2d

    nop

    nop

    :goto_6
    iget-object v0, p0, Ljmw;->a:Ljmx;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean v3, v2, Ljne;->g:Z

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

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
    iput-boolean v1, v0, Ljmx;->n:Z

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_c
    iget-object v0, v0, Ljmx;->d:Ljng;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    :goto_e
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Ljmx;->F:Ljmu;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_10
    iput v3, v2, Ljne;->f:I

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Ljmx;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljmu;->c()I

    move-result v0

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

    :goto_15
    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    if-eq v0, v2, :cond_4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljng;->a()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-wide v3, v2, Ljmz;->b:D

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1a
    invoke-virtual {v2, v0}, Ljng;->b([F)V

    :goto_1b
    goto/32 :goto_6

    nop

    nop

    :goto_1c
    iget-object v2, p0, Ljmw;->a:Ljmx;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1d
    iget-object v2, v2, Ljmu;->F:Ljmz;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1e
    iget p0, p0, Ljmu;->n:I

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    throw p0

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_5

    nop

    nop

    :goto_21
    new-array v0, v0, [F

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v0, v0, Ljmx;->G:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v2, v2, Ljmx;->d:Ljng;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-boolean v3, v2, Ljne;->h:Z

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_25
    iget-object p0, p0, Ljmw;->a:Ljmx;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-boolean v2, v0, Ljmx;->w:Z

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v2, 0x6

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->d(ZI)V

    :goto_2a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2b
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, v0, Ljmx;->F:Ljmu;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Ljng;->d()V

    goto/32 :goto_2

    nop

    nop

    :goto_30
    iget v0, v0, Ljmx;->x:I

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v2, v0, Ljmx;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Ljmw;->a:Ljmx;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, v0, Ljmx;->d:Ljng;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_35
    monitor-enter v0

    nop

    :try_start_1
    sget-object v1, Ljmp;->b:Ljava/lang/Boolean;

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->UndoAddImage()Z

    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->c(I)V

    :goto_37
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v2, v0, Ljmx;->F:Ljmu;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v2, v0, Ljmx;->h:Ljne;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3b
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop
.end method
