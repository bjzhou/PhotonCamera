.class public final Llfs;
.super Lpuq;
.source "PG"


# instance fields
.field private final a:Lpnv;

.field private final b:Lpnu;

.field private final c:Lnoy;

.field private final d:Llfr;


# direct methods
.method public constructor <init>(Lpnv;Lpnu;Lnoy;Llfr;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p4, p0, Llfs;->d:Llfr;

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

    :goto_2
    iput-object p1, p0, Llfs;->a:Lpnv;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Llfs;->c:Lnoy;

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

    :goto_5
    iput-object p2, p0, Llfs;->b:Lpnu;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    const/4 v0, 0x0

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
.end method


# virtual methods
.method public final declared-synchronized a(Lpro;)V
    .locals 7

    goto/32 :goto_1c

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

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget v2, Lcom/a;->sCorrectorPost_raw_digital_gain:F

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    mul-float/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x17

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4
    move v3, v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_13

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    sget v0, Lcom/a;->sCorrectorExposure_time_ms:F

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

    :goto_9
    if-nez v3, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    mul-float/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    mul-float/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    :goto_10
    monitor-exit p0

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

    :goto_11
    const v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_16

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    cmpg-float v3, v3, v2

    nop

    nop

    goto/32 :goto_9

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

    nop

    :try_start_1
    sget-object v0, Lnym;->a:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    if-nez v0, :cond_2

    nop

    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    sget-object v0, Lnym;->a:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, [F

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_7

    nop

    nop

    nop

    array-length v1, v0

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0xd

    nop

    nop

    nop

    nop

    if-lt v1, v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0xb

    nop

    nop

    nop

    aget v2, v0, v2

    nop

    nop

    nop

    nop

    const/16 v3, 0xc

    nop

    aget v3, v0, v3

    nop

    nop

    nop

    nop

    const/16 v4, 0x10

    nop

    if-le v1, v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    aget v0, v0, v4

    nop

    nop

    nop

    nop

    nop

    goto :goto_16

    nop

    nop

    :cond_3
    const/16 v4, 0xf

    nop

    nop

    nop

    nop

    if-le v1, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    aget v0, v0, v4

    nop

    nop

    nop

    goto :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Llfs;->b:Lpnu;

    nop

    nop

    nop

    invoke-interface {p1}, Lpro;->h()Ljava/util/Map;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    if-ne v5, v6, :cond_5

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    nop

    nop

    nop

    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    nop

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lprk;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lprk;->b()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Llfs;->a:Lpnv;

    nop

    nop

    nop

    nop

    invoke-interface {v4, p1}, Lpnv;->d(Ljava/lang/String;)Lpnx;

    move-result-object p1

    nop

    nop

    nop

    if-eqz p1, :cond_6

    nop

    nop

    iget-object v1, p0, Llfs;->a:Lpnv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object v1

    nop

    nop

    goto :goto_17

    nop

    nop

    nop

    nop

    :cond_5
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Ljava/lang/String;

    nop

    nop

    iget-object v1, p0, Llfs;->c:Lnoy;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Lnoy;->b(Ljava/lang/String;)Lpnu;

    move-result-object v1

    nop

    :cond_6
    :goto_17
    iget-object p1, p0, Llfs;->d:Llfr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1, v2, v3, v0}, Llfr;->i(Lpnu;FFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    sget v2, Lcom/a;->sCorrectorDigital_gain:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    move v2, v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget v2, Lcom/a;->sCorrectorAnalog_gain:F

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

    :goto_1c
    const v0, 0x6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    :cond_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method
