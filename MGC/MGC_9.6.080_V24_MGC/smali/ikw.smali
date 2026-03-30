.class public final synthetic Likw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lila;

.field public final synthetic b:Lcom/google/googlex/gcam/ArkInfo;

.field public final synthetic c:Lpro;


# direct methods
.method public synthetic constructor <init>(Lila;Lcom/google/googlex/gcam/ArkInfo;Lpro;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Likw;->c:Lpro;

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Likw;->a:Lila;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Likw;->b:Lcom/google/googlex/gcam/ArkInfo;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    div-int/2addr p1, p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x12

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

    :goto_3
    check-cast p0, Landroid/util/Range;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object v1, v1, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, v1}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

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

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    int-to-float p0, p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    const v1, 0x5

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_d
    invoke-virtual {v1, p0}, Ltbt;->g(Lpro;)Lpnu;

    move-result-object p0

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

    :goto_e
    iget-object v1, p0, Likw;->a:Lila;

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

    :goto_f
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    invoke-static {v1, v2, v0, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ArkInfo_gain_set(JLcom/google/googlex/gcam/ArkInfo;F)V

    goto/32 :goto_5

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

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

    :goto_15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Likw;->b:Lcom/google/googlex/gcam/ArkInfo;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_18
    iget-wide v1, v0, Lcom/google/googlex/gcam/ArkInfo;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v1, Lsxi;->d:Lsxi;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Likw;->c:Lpro;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/ArkInfo;->e(Lsxi;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
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
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
