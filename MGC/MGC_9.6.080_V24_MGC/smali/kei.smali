.class final Lkei;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lkek;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lkei;->a:Ljava/lang/ref/WeakReference;

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
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :goto_1
    goto/32 :goto_13

    nop

    nop

    :goto_2
    iget-object v0, p1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Llwr;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_27

    nop

    nop

    :goto_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    long-to-int v1, v1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lkek;->E()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_7
    iget p1, p1, Landroid/os/Message;->what:I

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, v0, Llwr;->d:Llxj;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_a
    new-instance v1, Ljnu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lkek;->b()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v1, v1, Llpz;->b:J

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

    :goto_f
    const-wide/32 v3, 0xf4240

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v2

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    const/16 v0, 0xb4b

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2d

    nop

    nop

    :goto_14
    const-string v0, "Could not create temporary mosaic file. Not able to stitch."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

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

    :goto_16
    invoke-virtual {v1}, Ljnu;->start()V

    :goto_17
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v3, :cond_1

    nop

    goto/32 :goto_30

    nop

    :cond_1
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_19
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1a
    invoke-direct {v1, p1, v0}, Ljnu;-><init>(Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;Llnt;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0, p0, p1}, Llnt;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    sget-object p1, Lkek;->a:Lsdb;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1d
    check-cast p1, Lscz;

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

    :goto_1e
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetNumCapturedTargets()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    if-lez v3, :cond_2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v0, Llnt;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_b

    nop

    nop

    :goto_24
    iget-object v1, p0, Lkek;->P:Llpz;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_26
    throw p0

    nop

    nop

    nop

    :goto_27
    :pswitch_1
    goto/32 :goto_23

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lkek;->E()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    :pswitch_2
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-boolean v3, p0, Lkek;->E:Z

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2b
    iget v0, p1, Landroid/os/Message;->what:I

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1

    nop

    nop

    :goto_2d
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2f
    move v5, v4

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_5

    nop

    nop

    :goto_31
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v3, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast p0, Lkek;

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

    :goto_34
    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Llxj;->a()Ljava/io/File;

    move-result-object v0

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

    nop

    :goto_36
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_39
    throw p0

    nop

    :pswitch_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3a
    div-long/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0}, Llxj;->b()Z

    move-result v1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v2, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance p0, Ljava/lang/AssertionError;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    :goto_40
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p1, p0, Lkek;->k:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

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

    :goto_42
    monitor-enter v2

    nop

    :try_start_1
    invoke-static {v5, v0, v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->FinishCapture(ZLjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    sput-object v0, Ljmp;->b:Ljava/lang/Boolean;

    nop

    nop

    monitor-exit v2

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p0, p0, Lkei;->a:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

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
.end method
