.class public final Lplo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpn;


# instance fields
.field public final a:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2
    const v1, 0x9

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v2, Loz;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1c

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_6

    nop

    nop

    nop

    nop

    :catchall_0
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraResults()Ljava/util/Map;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_6
    goto/32 :goto_27

    nop

    nop

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

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_8
    goto/32 :goto_11

    nop

    :goto_9
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v1, Ljava/lang/String;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

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

    :goto_c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    new-instance p0, Lplp;

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

    :goto_e
    goto/16 :goto_1f

    nop

    :catchall_1
    :goto_f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lplo;->a:Landroid/hardware/camera2/TotalCaptureResult;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, p1}, Lplp;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraTotalResults()Ljava/util/Map;

    move-result-object p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v2, v1}, Loz;-><init>(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p1, Landroid/util/ArrayMap;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

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

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v1, v0}, Lplp;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

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

    :goto_23
    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    :goto_25
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v1}, Loz;->b(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v1, Lplp;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method


# virtual methods
.method public final c(Ludp;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop
.end method
