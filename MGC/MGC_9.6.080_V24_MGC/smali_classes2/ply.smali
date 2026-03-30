.class public final Lply;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpro;


# instance fields
.field private final a:Lpn;

.field private final b:Ltxs;


# direct methods
.method private final 3fd9578e124c68aa49885b22b61b4ec8m()Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lply;->b:Ltxs;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ltxs;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Landroid/hardware/camera2/TotalCaptureResult;

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
.end method

.method public constructor <init>(Lpn;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Leot;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lply;->a:Lpn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lply;->b:Ltxs;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p1}, Ltxz;-><init>(Luaz;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0xe

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

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1, p0, v0}, Leot;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ltxz;

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lrc;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrc;->b:Lrd;

    nop

    nop

    nop

    goto/32 :goto_9

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

    :goto_4
    return-object p0

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

    nop

    :goto_6
    const p0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lply;->a:Lpn;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0, p1}, Lpo;->b(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    goto/32 :goto_3

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
    check-cast p0, Lrc;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrc;->a:Ljava/lang/String;

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

    :goto_3
    iget-object p0, p0, Lply;->a:Lpn;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final d()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    invoke-direct {p0}, Lply;->3fd9578e124c68aa49885b22b61b4ec8m()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final dy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_d

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
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    const-class v0, Landroid/hardware/camera2/TotalCaptureResult;

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

    nop

    nop

    :goto_8
    const-class v0, Landroid/hardware/camera2/CaptureResult;

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

    :goto_9
    sget p1, Luct;->a:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p1, Lucb;

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

    :goto_b
    invoke-direct {p1, v0}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    :goto_d
    const-class v0, Landroid/hardware/camera2/TotalCaptureResult;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget p1, Luct;->a:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_10
    invoke-direct {p1, v0}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    const-class v0, Landroid/hardware/camera2/CaptureResult;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0, p1}, Lpn;->c(Ludp;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    new-instance p1, Lucb;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lply;->a:Lpn;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0, p1}, Lpn;->c(Ludp;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lply;->a:Lpn;

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final e()J
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lrc;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    return-wide v0

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lply;->a:Lpn;

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

    :goto_4
    const v0, 0xd

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lrc;->b:Lrd;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_2

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lrd;->a()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x16

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public final f()Lprj;
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrc;->c:Lsb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const-class v2, Landroid/hardware/camera2/CaptureRequest;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Lpnb;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    goto/32 :goto_11

    nop

    nop

    :goto_3
    check-cast p0, Landroid/hardware/camera2/CaptureRequest;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    const v0, 0x11

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Lucb;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lpnb;

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

    :goto_8
    invoke-direct {v1, v2}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_c

    nop

    nop

    :goto_9
    invoke-virtual {p0, v1}, Lsb;->c(Ludp;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    const v1, 0x12

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

    nop

    :goto_c
    iget-object p0, p0, Lply;->a:Lpn;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    return-object v0

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    :goto_13
    sget v1, Luct;->a:I

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

    :goto_14
    check-cast p0, Lrc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final g()Ljava/util/List;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lply;->3fd9578e124c68aa49885b22b61b4ec8m()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getKeys()Ljava/util/List;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h()Ljava/util/Map;
    .locals 5

    goto/32 :goto_e

    nop

    nop

    :goto_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v1, Ljava/util/Map$Entry;

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

    nop

    nop

    :goto_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

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

    :goto_5
    invoke-direct {p0}, Lply;->3fd9578e124c68aa49885b22b61b4ec8m()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v4

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v4}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraResults()Ljava/util/Map;

    move-result-object p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v3, v1}, Lpnd;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/util/LinkedHashMap;

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

    :goto_a
    return-object v0

    nop

    nop

    :catchall_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v1}, Lrkm;->R(I)I

    move-result v1

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

    :goto_c
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    :try_start_1
    invoke-virtual {v4}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraTotalResults()Ljava/util/Map;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x7

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    check-cast v1, Landroid/hardware/camera2/CaptureResult;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

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

    :goto_17
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v3, Lpnd;

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

    :goto_20
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_21
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_22
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_23
    const v1, 0x12

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
.end method

.method public final i()Ljava/util/Map;
    .locals 5

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
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

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Lply;->3fd9578e124c68aa49885b22b61b4ec8m()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v4

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v4}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraTotalResults()Ljava/util/Map;

    move-result-object p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_b
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ljava/util/LinkedHashMap;

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

    :goto_e
    goto :goto_f

    nop

    nop

    nop

    nop

    :catchall_1
    :try_start_1
    invoke-virtual {v4}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraResults()Ljava/util/Map;

    move-result-object p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_14

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1}, Lrkm;->R(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_1b
    return-object v0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v1, Ljava/util/Map$Entry;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1f
    new-instance v3, Lpnq;

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

    nop

    :goto_20
    invoke-direct {v3, v1}, Lpnq;-><init>(Landroid/hardware/camera2/TotalCaptureResult;)V

    goto/32 :goto_6

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_19

    nop

    :goto_23
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method public final j()Lpic;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_3
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Lply;->3fd9578e124c68aa49885b22b61b4ec8m()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_d

    nop

    nop

    :goto_8
    invoke-direct {v0, p0}, Lpic;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    const-string v1, "Please use unwrapAndroidObject to prevent the extra object wrapper."

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

    :goto_b
    goto/32 :goto_f

    nop

    :goto_c
    const-string v0, "CameraPipeCaptureResult"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    new-instance v0, Lpic;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
