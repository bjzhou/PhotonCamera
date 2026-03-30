.class public final Lffy;
.super Lfgz;
.source "PG"


# static fields
.field public static final a:Lfht;


# instance fields
.field public final b:Lffw;

.field public final c:Lfho;

.field public final d:Lfhp;

.field public final e:Landroid/hardware/camera2/CameraManager;

.field public final f:Landroid/media/MediaActionSound;

.field public g:Lfhm;

.field public final h:Ljava/util/List;

.field private final j:Landroid/os/HandlerThread;

.field private k:I


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m()V
    .locals 6

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lffy;->a:Lfht;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
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

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    :try_start_0
    invoke-static {}, Lcom/a;->ac()[Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    new-instance v1, Ljava/util/HashSet;

    nop

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    nop

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    nop

    move v3, v2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v4, p0, Lffy;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    if-ge v3, v4, :cond_1

    nop

    iget-object v4, p0, Lffy;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_0

    nop

    iget-object v4, p0, Lffy;->h:Ljava/util/List;

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v4, p0, Lffy;->k:I

    nop

    nop

    add-int/lit8 v4, v4, -0x1

    nop

    iput v4, p0, Lffy;->k:I

    nop

    nop

    nop

    nop

    :cond_0
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v3, p0, Lffy;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    array-length v3, v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ge v2, v3, :cond_4

    nop

    nop

    aget-object v4, v0, v2

    nop

    nop

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_2

    nop

    nop

    nop

    iget-object v5, p0, Lffy;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lffy;->k:I

    nop

    nop

    nop

    nop

    add-int/lit8 v4, v4, 0x1

    nop

    nop

    iput v4, p0, Lffy;->k:I

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    :goto_d
    goto :goto_9

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v1, p0}, Lfhu;->b(Lfht;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_3

    nop

    nop

    :goto_11
    const-string v1, "Could not get device listing from camera subsystem"

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1b

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1}, Lfht;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lffy;->a:Lfht;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, "AndCam2AgntImp"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lfht;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lffy;->e:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2}, Lfhp;->start()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Landroid/media/MediaActionSound;->load(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v2, v1}, Lfhm;-><init>(Landroid/os/Handler;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Lffy;->k:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

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

    goto/32 :goto_14

    nop

    nop

    :goto_8
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "camera"

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v1, Lffw;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1}, Landroid/media/MediaActionSound;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lffy;->f:Landroid/media/MediaActionSound;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x12

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

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    :goto_f
    iput-object v2, p0, Lffy;->c:Lfho;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_10
    new-instance v2, Lfho;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v2, v1, v0}, Lfhp;-><init>(Landroid/os/Handler;Landroid/os/HandlerThread;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, p0, v2}, Lffw;-><init>(Lffy;Landroid/os/Looper;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lffy;->j:Landroid/os/HandlerThread;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Landroid/os/HandlerThread;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    :goto_18
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v2, p0, Lffy;->g:Lfhm;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    invoke-direct {p0}, Lffy;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x0

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

    nop

    :goto_1d
    const-string v1, "Camera2 Handler Thread"

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

    :goto_1e
    new-instance v2, Lfhm;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1f
    const v0, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_20
    iput-object v1, p0, Lffy;->b:Lffw;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_29

    nop

    nop

    :goto_22
    iput-object v2, p0, Lffy;->d:Lfhp;

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

    :goto_23
    invoke-direct {v2}, Lfho;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_25
    iput-object p1, p0, Lffy;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_26
    invoke-direct {p0}, Lfgz;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v2, Lfhp;

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

    :goto_28
    goto/32 :goto_18

    nop

    :goto_29
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p1, Landroid/media/MediaActionSound;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2b
    check-cast p1, Landroid/hardware/camera2/CameraManager;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lffy;->b:Lffw;

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

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final b()Lfhi;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lffy;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    const v1, 0x19

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

    :goto_5
    new-array v2, v2, [Ljava/lang/String;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v1, [Ljava/lang/String;

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

    :goto_a
    return-object v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lffy;->e:Landroid/hardware/camera2/CameraManager;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lffy;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, p0, v1}, Lffo;-><init>(Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lffo;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Lfhm;
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    iget-object p0, p0, Lffy;->g:Lfhm;

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
.end method

.method protected final d()Lfho;
    .locals 0

    goto/32 :goto_1

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
    iget-object p0, p0, Lffy;->c:Lfho;

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

.method public final e()Lfhp;
    .locals 0

    goto/32 :goto_1

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
    iget-object p0, p0, Lffy;->d:Lfhp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final f(Lfhm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lffy;->g:Lfhm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method
