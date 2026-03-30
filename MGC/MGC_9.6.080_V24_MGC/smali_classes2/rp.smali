.class public final Lrp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqr;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/hardware/camera2/CameraCharacteristics;

.field public final c:Lejk;

.field public final cls:Ljava/lang/Object;

.field private final d:Ljava/util/Set;

.field private final e:Landroid/util/ArrayMap;

.field public final ek:Ljava/lang/Object;

.field private final f:Ltxs;

.field private final g:Ltxs;

.field private final h:Ltxs;

.field private final i:Ltxs;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Lejk;Ljava/util/Set;)V
    .locals 0

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_0
    new-instance p1, Landroid/util/ArrayMap;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrp;->ek:Ljava/lang/Object;

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p0, p3}, Lro;-><init>(Lrp;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    new-instance p1, Lro;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p2, Lcom/CameraLensSpecification;->f:Landroid/util/ArrayMap;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    invoke-static {p2, p1}, Lrgw;->al(ILuaz;)Ltxs;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    goto/32 :goto_3a

    nop

    nop

    :goto_8
    invoke-static {p2, p1}, Lrgw;->al(ILuaz;)Ltxs;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lrp;->ek:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_a
    invoke-static {p2, p1}, Lrgw;->al(ILuaz;)Ltxs;

    move-result-object p1

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

    nop

    :goto_b
    invoke-direct {p2, p1}, Lcom/CameraLensSpecification;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    const/4 p3, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string p1, "disable_cam_char_fix_keys"

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_e
    iput-object p1, p0, Lrp;->i:Ltxs;

    nop

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

    :goto_f
    const/4 p3, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    invoke-static {p2, p1}, Lrgw;->al(ILuaz;)Ltxs;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p1, p0, p2}, Lro;-><init>(Lrp;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p2, p0, Lrp;->cls:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p4, p0, Lrp;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_14
    const/4 p3, 0x3

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p1, Lro;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    const/4 p2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p1, Landroid/util/ArrayMap;

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

    :goto_19
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p1, p0, p3}, Lro;-><init>(Lrp;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    const/4 p3, 0x5

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

    nop

    :goto_1c
    goto/16 :goto_2

    nop

    :goto_1d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p1, Lro;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p2, p0, Lrp;->b:Landroid/hardware/camera2/CameraCharacteristics;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object p1, p0, Lrp;->a:Ljava/lang/String;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_21
    invoke-direct {p1, p0, p3}, Lro;-><init>(Lrp;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_22
    iput-object p3, p0, Lrp;->c:Lejk;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p2, p1}, Lrgw;->al(ILuaz;)Ltxs;

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object p1, p0, Lrp;->e:Landroid/util/ArrayMap;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_25
    iput-object p1, p0, Lrp;->h:Ltxs;

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

    :goto_26
    iput-object p1, p0, Lrp;->f:Ltxs;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object p1, p0, Lrp;->g:Ltxs;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    :goto_2a
    new-instance p1, Lro;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_20

    nop

    nop

    :goto_2c
    new-instance p1, Lro;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2d
    invoke-static {p1}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 p2, 0x6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance p1, Landroid/util/ArrayMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_30
    iput-object p1, p0, Lrp;->e:Landroid/util/ArrayMap;

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

    :goto_31
    new-instance p2, Lcom/CameraLensSpecification;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_32
    invoke-static {p2, p1}, Lrgw;->al(ILuaz;)Ltxs;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {p1, p0, p2}, Lro;-><init>(Lrp;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p1, p2, Lcom/CameraLensSpecification;->e:Landroid/util/ArrayMap;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {p2, p1}, Lrgw;->al(ILuaz;)Ltxs;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_36
    new-instance p1, Lro;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    goto/32 :goto_24

    nop

    nop

    :goto_38
    invoke-direct {p1, p0, p3}, Lro;-><init>(Lrp;I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {p1, p0, p3}, Lro;-><init>(Lrp;I)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance p1, Lro;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop
.end method

.method private static final g(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, ": Framework throw an AssertionError"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "Failed to get characteristic for "

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

    :goto_2
    invoke-static {p1, v0, v1}, La;->bn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const v0, 0x6

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_6
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    throw p0

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    :goto_a
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1c

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

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v1

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lrp;->e:Landroid/util/ArrayMap;

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

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lrp;->e:Landroid/util/ArrayMap;

    nop

    nop

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    return-object v1

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v1, p0, Lrp;->ek:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/util/ArrayMap;

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, p1}, Lrp;->g(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_b
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lrp;->b:Landroid/hardware/camera2/CameraCharacteristics;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    :catchall_2
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lrp;->d:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_16
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    monitor-enter v0

    nop

    nop

    nop

    :try_start_2
    iget-object p0, p0, Lrp;->e:Landroid/util/ArrayMap;

    nop

    nop

    nop

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_18
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lrp;->ek:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_1b
    const v0, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    const v1, 0xa

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

    :goto_1d
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    :try_start_3
    iget-object v0, p0, Lrp;->b:Landroid/hardware/camera2/CameraCharacteristics;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, p1}, Lrp;->g(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lrp;->e:Landroid/util/ArrayMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_22
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_23
    monitor-exit v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_24
    monitor-exit v0

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_4
    :goto_27
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ljava/util/Set;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrp;->h:Ltxs;

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

    nop

    :goto_3
    invoke-interface {p0}, Ltxs;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final c(Ludp;)Ljava/lang/Object;
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

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()Ljava/util/Set;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ltxs;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrp;->g:Ltxs;

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

    :goto_2
    check-cast p0, Ljava/util/Set;

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

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Ljava/util/Set;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrp;->i:Ltxs;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ltxs;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final f()Ljava/util/Set;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ljava/util/Set;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ltxs;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-object p0, p0, Lrp;->f:Ltxs;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final n()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lrp;->cls:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const-string v1, "disable_cam_char_fix_keys"

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

    :goto_2
    new-instance v0, Landroid/util/ArrayMap;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lrp;->a:Ljava/lang/String;

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

    :goto_5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lcom/CameraLensSpecification;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    const v0, 0x4

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

    :goto_9
    iget-object v1, v0, Lcom/CameraLensSpecification;->e:Landroid/util/ArrayMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Landroid/util/ArrayMap;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v1, p0, Lrp;->e:Landroid/util/ArrayMap;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    iget-object v1, v0, Lcom/CameraLensSpecification;->f:Landroid/util/ArrayMap;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_11
    invoke-direct {v0, v1}, Lcom/CameraLensSpecification;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v1}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_14
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v1, p0, Lrp;->ek:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Lrp;->ek:Ljava/lang/Object;

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Lrp;->e:Landroid/util/ArrayMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object v0, p0, Lrp;->ek:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lrp;->e:Landroid/util/ArrayMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lrp;->ek:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lrp;->e:Landroid/util/ArrayMap;

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

    :goto_6
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final n(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-object v0, p0, Lrp;->ek:Ljava/lang/Object;

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

    nop

    :goto_1
    iput-object v0, p0, Lrp;->e:Landroid/util/ArrayMap;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lrp;->e:Landroid/util/ArrayMap;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lrp;->ek:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final v()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrp;->cls:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method
