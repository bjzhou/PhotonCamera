.class public Ltbt;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static ActiveCamID:I = 0x0

.field public static CaptureRequestKey:Ljava/util/Map; = null

.field private static final b:Ljava/lang/String; = "tbt"

.field private static final c:[I

.field public static center:F

.field public static channelGains:[F

.field public static cols:I

.field private static final d:Lprb;

.field public static edge:F

.field public static h:Ljava/lang/Object;

.field public static i:I

.field public static ia:[F

.field public static isoCompFactor:F

.field public static k:I

.field public static rows:I


# instance fields
.field public final a:Lpnv;

.field private final e:Lpnu;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Ltbt;->c:[I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_14

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    const/16 v1, 0x20

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

    :goto_6
    sput-object v0, Ltbt;->d:Lprb;

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

    :goto_7
    const v1, 0xc

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v2, 0x25

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v3, 0x24

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0x26

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

    :goto_b
    sget v0, Lcom/a;->aa:I

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

    :goto_c
    const/16 v0, 0x26

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_13
    filled-new-array {v2, v0, v1, v3}, [I

    move-result-object v0

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v2, 0x25

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    const/16 v0, 0x20

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {}, Lprb;->b()Lprb;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpnu;Lpnv;)V
    .locals 7

    goto/32 :goto_c

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const/4 p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ltbt;->e:Lpnu;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    sput p1, Ltbt;->ActiveCamID:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x9

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_c
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    iput-object p2, p0, Ltbt;->a:Lpnv;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method private static A(Lprk;)F
    .locals 6

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    invoke-static {v4, v5, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aput-object v3, v2, v5

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    const v0, 0x5

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

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_c
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    new-array v2, v2, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_f
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v4, 0x104

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    const v1, 0xd

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    return p0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0, v0}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_17
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop
.end method

.method private static B(Lpnu;)F
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lnyo;->n:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, v0}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
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

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, v0}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v0, Lnyo;->n:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

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

    nop

    :goto_e
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method private static C(Lprk;Lpnu;)Landroid/graphics/Rect;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ltbt;->P(Lprk;)Z

    move-result p0

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

    nop

    :goto_3
    check-cast p0, Landroid/graphics/Rect;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1, p0}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method private static D(Lpnu;)Landroid/util/SizeF;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v0}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    check-cast p0, Landroid/util/SizeF;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private static E(Lpnu;Lpnv;Lpro;Lpnx;)Lpnu;
    .locals 6

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    return-object v5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_31

    nop

    nop

    :goto_4
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_5
    invoke-interface {p1, p3}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p3, Lpnx;

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eq p3, v1, :cond_0

    nop

    nop

    goto/32 :goto_6a

    nop

    :cond_0
    goto/32 :goto_5a

    nop

    nop

    :goto_a
    invoke-interface {p2, p3}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_b
    const-string p1, "ERROR"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v3, 0x0

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_d
    check-cast p2, Lpro;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_e
    return-object v5

    nop

    :goto_f
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_63

    nop

    nop

    :goto_14
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_15
    if-nez p3, :cond_2

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1, p3}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object p3

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Lpnx;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v4, "Physical cameras must have single focal length."

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    :goto_1f
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p3, Lpnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_26
    sget-object p3, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p0}, Lpnu;->C()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

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

    :goto_2b
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p2}, Lpro;->i()Ljava/util/Map;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez p3, :cond_4

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2f
    cmpl-float v0, v2, v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_30
    if-nez p3, :cond_5

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_5
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_31
    sget-object p1, Ltbt;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_32
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_33
    return-object p0

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_35
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {p2}, Lpro;->i()Ljava/util/Map;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_37
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v1, :cond_7

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_7
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_39
    const-string p0, "Physical camera with matching ID not found: "

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move v2, v3

    nop

    nop

    :goto_3b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-eq v2, v1, :cond_8

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

    nop

    :cond_8
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {p3}, Lpnu;->s()Ljava/util/List;

    move-result-object v0

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

    nop

    :goto_3e
    invoke-interface {p1, p0}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_76

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_42
    return-object p3

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_45
    iget-object p3, p3, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_39

    nop

    nop

    :goto_48
    invoke-interface {p2, p3}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-nez p3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4b
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-interface {p2}, Lpro;->b()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_4e
    sget-object p3, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_4f
    move-object/from16 v5, p0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_51
    invoke-interface {v0}, Lpro;->b()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {p2}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_86

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_56
    const-string p0, "ERROR"

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

    :goto_57
    const-string p2, "Physical camera ID not found: %s in %s"

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_58
    invoke-interface {p3, p2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_5e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    .local p0, "p0":Lpnu;
    .local p1, "p1":Lpnv;
    .local p2, "p2":Lpro;
    .local p3, "p3":Lpnx;
    :goto_61
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_62
    check-cast p2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-interface {p0}, Lpnu;->C()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_65
    if-nez v2, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_4d

    nop

    nop

    :goto_66
    check-cast p2, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-eqz v2, :cond_c

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    :cond_c
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_68
    if-lez v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :cond_d
    goto/32 :goto_60

    nop

    :goto_69
    goto/16 :goto_86

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_6b
    invoke-interface {p0}, Lpnu;->E()Z

    move-result v0

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_6c
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_6d
    if-eq v2, v1, :cond_e

    nop

    goto/32 :goto_71

    nop

    nop

    :cond_e
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_6e
    check-cast p3, Lpro;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-interface {p1, p3}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v1, p3, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-nez p3, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    :cond_f
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_75
    return-object p0

    nop

    :goto_76
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_78
    invoke-static {v2, v4}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_79
    check-cast v0, Lpro;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {p2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    if-eqz v0, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_27

    nop

    nop

    :goto_83
    goto/16 :goto_5f

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    check-cast p2, Ljava/lang/Float;

    nop

    :goto_86
    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_87
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_88
    if-eq v0, v1, :cond_11

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_89
    const-string p1, "Physical camera with matching focal length not found."

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_8a
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop
.end method

.method private static F(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    new-array v1, v0, [Landroid/util/Rational;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([Landroid/util/Rational;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Lcom/google/googlex/gcam/FloatArray9;-><init>()V

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    aget-object v3, v1, v2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    const v1, 0xc

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

    :goto_e
    const/16 v0, 0x9

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

    :goto_f
    invoke-virtual {v3}, Landroid/util/Rational;->floatValue()F

    move-result v3

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
    if-lt v2, v0, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_11
    new-instance p0, Lcom/google/googlex/gcam/FloatArray9;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    goto :goto_b

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v2, v3}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method private static G(Lpnu;Lpro;)Lsyi;
    .locals 10

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    :goto_3
    cmpl-float v1, v1, v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Lpnx;->a()I

    move-result v1

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

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_6
    sget-object p0, Lsyi;->g:Lsyi;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v2, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Lpnu;->j()Lpnx;

    move-result-object v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/high16 v1, 0x40600000    # 3.5f

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_a
    invoke-static {p1}, Ltbt;->I(Lprk;)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :goto_b
    goto/16 :goto_d1

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    :goto_e
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_f
    if-gez v1, :cond_1

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

    :cond_1
    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p1, :cond_2

    nop

    goto/32 :goto_cc

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    :goto_12
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    iget-boolean p1, p1, Lprb;->t:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_14
    iget-boolean p0, p0, Lprb;->v:Z

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean v0, p1, Lprb;->s:Z

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_17
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0}, Lpnu;->u()Ljava/util/List;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_69

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eq v4, p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :cond_4
    goto/32 :goto_df

    nop

    nop

    nop

    :goto_1e
    move v5, v2

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v0, v1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_23
    sget-object p0, Lsyi;->r:Lsyi;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-gez v0, :cond_6

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :cond_6
    :goto_25
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-ltz v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_28
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_29
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_RAW_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_2b
    sget-object p0, Lsyi;->j:Lsyi;

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    :goto_2d
    if-nez v1, :cond_9

    nop

    goto/32 :goto_ad

    nop

    nop

    :cond_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :goto_2f
    invoke-static {p1}, Ltbt;->O(Lprk;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_30
    if-ltz p0, :cond_a

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz p1, :cond_b

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_7e

    nop

    nop

    :goto_34
    goto :goto_33

    nop

    :goto_35
    goto/32 :goto_54

    nop

    nop

    :goto_36
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_37
    if-ltz v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_4d

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {p1, v6}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz v0, :cond_d

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3f
    const/high16 v9, 0x40a00000    # 5.0f

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_c6

    nop

    :goto_41
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sget-object p0, Ltbt;->d:Lprb;

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_43
    iget-boolean v2, v0, Lprb;->j:Z

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez p1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_11c

    nop

    nop

    :goto_45
    invoke-interface {p0}, Lpnu;->l()Lpog;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return-object v0

    nop

    nop

    :goto_47
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_48
    invoke-static {p1}, Ltbt;->O(Lprk;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_49
    if-ne v2, v1, :cond_f

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :cond_f
    :goto_4a
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4b
    const v0, 0x7

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    return-object p0

    nop

    nop

    :goto_4d
    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_4e
    if-nez v2, :cond_10

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_10
    goto/32 :goto_34

    nop

    nop

    :goto_4f
    goto/16 :goto_d1

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v5, :cond_11

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {}, Ltbt;->N()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-nez p0, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_118

    nop

    nop

    nop

    :goto_54
    sget-object p0, Lsyi;->s:Lsyi;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_55
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_56
    invoke-static {p1}, Ltbt;->P(Lprk;)Z

    move-result p1

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    :goto_57
    cmpl-float v3, v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_58
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_5a
    sget-object p0, Lsyi;->h:Lsyi;

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_5b
    sget-object p0, Lsyi;->b:Lsyi;

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_POSE_REFERENCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    :goto_5d
    cmpg-float v0, v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    sget-object p0, Lsyi;->s:Lsyi;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5f
    cmpg-float p0, p0, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_61
    sget-object p0, Lsyi;->i:Lsyi;

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_62
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_64
    check-cast v6, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const v1, 0x40066666    # 2.1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_66
    sget-object v0, Lcom/a;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-static {p1}, Ltbt;->I(Lprk;)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-gtz p0, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_13
    :goto_69
    goto/32 :goto_23

    nop

    nop

    :goto_6a
    sget-object v5, Lnyq;->F:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_e

    nop

    nop

    :goto_6c
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_d1

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_6f
    if-nez p1, :cond_14

    nop

    nop

    goto/32 :goto_107

    nop

    :cond_14
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_70
    invoke-static {p0}, Ltbt;->r(Lpnu;)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-nez v1, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_15
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    if-eqz v0, :cond_16

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_16
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-nez v1, :cond_17

    nop

    goto/32 :goto_94

    nop

    nop

    :cond_17
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_74
    sget-object p0, Lsyi;->u:Lsyi;

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_75
    invoke-static {v0}, Lsyi;->a(I)Lsyi;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_76
    cmpl-float p0, p0, p1

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_77
    if-eq v0, v1, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {p1}, Lprb;->c()Z

    move-result v0

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_79
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-boolean v0, p1, Lprb;->h:Z

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    if-ne v5, v6, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget-boolean p1, p0, Lprb;->o:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_7e
    if-nez v2, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_7f
    if-eqz v0, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_80
    if-nez v1, :cond_1c

    nop

    goto/32 :goto_ad

    nop

    :cond_1c
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_81
    if-nez v0, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-nez v2, :cond_1e

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_83
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_84
    cmpg-float v0, v0, v9

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_85
    sget-object v0, Ltbt;->d:Lprb;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_86
    if-gez v0, :cond_1f

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :cond_1f
    :goto_87
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_89
    const-string v0, "Z29vZ2xlX2lkX2tleQ"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-static {p1}, Ltbt;->P(Lprk;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    sget-object p1, Ltbt;->d:Lprb;

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_8c
    sget v0, Lcom/a;->aa:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_8d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_8e
    sget-object v7, Lpog;->b:Lpog;

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_8f
    if-eqz v0, :cond_20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_20
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_90
    if-eq v0, p0, :cond_21

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    :cond_21
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_91
    return-object p0

    nop

    nop

    :goto_92
    goto/32 :goto_cd

    nop

    nop

    :goto_93
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_95
    iget-boolean p1, v0, Lprb;->s:Z

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_96
    if-nez v6, :cond_22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :cond_22
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_97
    if-gtz p0, :cond_23

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_23
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_99
    if-nez v0, :cond_24

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    const p1, 0x409ccccd    # 4.9f

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-static {}, Ltbt;->N()Z

    move-result v0

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    return-object p0

    nop

    nop

    :goto_9d
    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    if-ne v0, v1, :cond_25

    nop

    nop

    goto/32 :goto_c4

    nop

    :cond_25
    :goto_9f
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    sget v0, Lcom/a;->aa:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_a1
    invoke-static {p1}, Ltbt;->P(Lprk;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iget-boolean p1, v0, Lprb;->t:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    sget-object p0, Lsyi;->m:Lsyi;

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

    nop

    :goto_a5
    const/high16 v0, 0x40c00000    # 6.0f

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    const/16 v6, 0x64

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    return-object p0

    nop

    nop

    nop

    :goto_a8
    goto/32 :goto_de

    nop

    nop

    :goto_a9
    if-nez v2, :cond_26

    nop

    goto/32 :goto_f8

    nop

    :cond_26
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-interface {p0, v0}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_ab
    invoke-virtual {v6, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    goto/16 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    cmpl-float p0, p0, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    sget-object p0, Lsyi;->p:Lsyi;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    if-nez p1, :cond_27

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_27
    :goto_b1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_b2
    move v5, v3

    nop

    :goto_b3
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    if-eq v0, v7, :cond_28

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :cond_28
    goto/32 :goto_73

    nop

    nop

    :goto_b5
    goto/16 :goto_d1

    nop

    :goto_b6
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-static {p1}, Ltbt;->I(Lprk;)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_b8
    cmpg-float v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b9
    sget-object p0, Lsyi;->f:Lsyi;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    return-object p0

    nop

    nop

    :goto_bb
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {p1}, Lprb;->q()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_bd
    sget-object p0, Lsyi;->p:Lsyi;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_be
    if-eqz p1, :cond_29

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    goto/16 :goto_94

    nop

    nop

    nop

    nop

    :goto_c0
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    if-eqz v0, :cond_2a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-static {v0}, Lsyi;->a(I)Lsyi;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    goto/32 :goto_a0

    nop

    nop

    :goto_c5
    return-object p0

    nop

    nop

    :goto_c6
    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {p1}, Lprb;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_c8
    if-nez v5, :cond_2b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :cond_2b
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_c9
    const/high16 v8, 0x40900000    # 4.5f

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_ca
    check-cast v0, Lnne;

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_cb
    goto/16 :goto_b3

    nop

    nop

    nop

    nop

    :goto_cc
    goto/32 :goto_b2

    nop

    nop

    :goto_cd
    sget-object p0, Lsyi;->n:Lsyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    if-nez v0, :cond_2c

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    :cond_2c
    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    sget-object v1, Lnne;->k:Lnne;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    sget-object p0, Lsyi;->b:Lsyi;

    nop

    :goto_d1
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_d2
    if-eq v8, v2, :cond_2d

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_d3
    if-eqz v2, :cond_2e

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_2e
    goto/32 :goto_a

    nop

    nop

    :goto_d4
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_d5
    iget-boolean v0, p1, Lprb;->u:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    goto :goto_d1

    nop

    nop

    nop

    :goto_d7
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    return-object p0

    nop

    nop

    :goto_d9
    goto/32 :goto_6

    nop

    nop

    :goto_da
    if-eqz p1, :cond_2f

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_db
    if-nez v5, :cond_30

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_dd
    if-gez p0, :cond_31

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    sget-object p0, Lsyi;->q:Lsyi;

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_df
    sget-object p0, Lsyi;->t:Lsyi;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    if-ltz p0, :cond_32

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    mul-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    cmpg-float v0, v0, v1

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

    :goto_e3
    invoke-static {p0}, Ltbt;->D(Lpnu;)Landroid/util/SizeF;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_e4
    if-eqz p1, :cond_33

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_33
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_e5
    cmpg-float p0, p0, v0

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_e6
    if-nez p0, :cond_34

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :cond_34
    :goto_e7
    goto/32 :goto_96

    nop

    nop

    :goto_e8
    if-nez v5, :cond_35

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    :cond_35
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e9
    if-gez v3, :cond_36

    nop

    nop

    goto/32 :goto_d7

    nop

    :cond_36
    goto/32 :goto_22

    nop

    nop

    :goto_ea
    iget-boolean v0, p1, Lprb;->a:Z

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_eb
    const/4 p0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_ec
    move v1, v3

    nop

    nop

    nop

    :goto_ed
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    sget-object v6, Lnyq;->F:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_ef
    if-eqz v0, :cond_37

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_37
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    sget-object p0, Lsyi;->o:Lsyi;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_f1
    sget-object p0, Lsyi;->f:Lsyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-interface {p1, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_f3
    if-nez v1, :cond_38

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :cond_38
    :goto_f4
    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_f5
    invoke-interface {p0}, Lpnu;->E()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    if-nez p0, :cond_39

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    :cond_39
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_f7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_f9
    goto/16 :goto_7a

    nop

    :goto_fa
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    const-string v1, ""

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    sget-object p0, Lsyi;->l:Lsyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-static {p1, v0}, Ltbt;->J(Lprk;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_100
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_101
    goto/32 :goto_41

    nop

    :goto_102
    if-eqz v0, :cond_3a

    nop

    goto/32 :goto_fa

    nop

    nop

    :cond_3a
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_103
    return-object p0

    nop

    :goto_104
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_105
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_106
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    :goto_107
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_108
    sget-object p0, Lpog;->b:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_109
    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_10a
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    return-object p0

    nop

    nop

    :goto_10c
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_10d
    if-nez v0, :cond_3b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_3b
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_10e
    sget-object p0, Lsyi;->d:Lsyi;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10f
    if-nez v1, :cond_3c

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_3c
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_110
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_111
    invoke-interface {p0, v6}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    if-lez v0, :cond_3d

    nop

    goto/32 :goto_41

    nop

    :cond_3d
    goto/32 :goto_40

    nop

    :goto_113
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_114
    goto/32 :goto_8a

    nop

    nop

    :goto_115
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_116
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_117
    cmpg-float p0, p0, v9

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_118
    sget-object p0, Lsyi;->c:Lsyi;

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_119
    sget-object p0, Lsyi;->k:Lsyi;

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_11a
    return-object p0

    nop

    nop

    nop

    :goto_11b
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_11e
    if-nez v0, :cond_3e

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :cond_3e
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    const/high16 v0, 0x41200000    # 10.0f

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_120
    if-eqz p1, :cond_3f

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :cond_3f
    goto/32 :goto_95

    nop

    nop

    :goto_121
    invoke-static {p1}, Ltbt;->O(Lprk;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_122
    goto/16 :goto_39

    nop

    nop

    :goto_123
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_124
    sget-object p0, Lsyi;->e:Lsyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    if-nez v2, :cond_40

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :cond_40
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_126
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static H(Lpnu;Lpnv;Lpro;Lpnx;)Lsyi;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Ltbt;->E(Lpnu;Lpnv;Lpro;Lpnx;)Lpnu;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {p0, p2}, Ltbt;->G(Lpnu;Lpro;)Lsyi;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop
.end method

.method private static I(Lprk;)Ljava/lang/Integer;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, -0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    goto :goto_3

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :goto_8
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    invoke-static {p0, v0}, Ltbt;->J(Lprk;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop
.end method

.method private static J(Lprk;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method private static K([Landroid/hardware/camera2/params/MeteringRectangle;ZLcom/google/googlex/gcam/WeightedPixelRectVector;)V
    .locals 10

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v6, v4, v5, v0}, Lcom/google/googlex/gcam/PixelRect;-><init>(JZ)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    cmp-long v6, v4, v6

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

    :goto_2
    move-object v6, p2

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_5
    const-wide/16 v6, 0x0

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
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_21

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

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_f

    nop

    :goto_a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v5, v3, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    if-eqz v3, :cond_1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move v1, v0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v4, v9, Lcom/google/googlex/gcam/WeightedPixelRect;->a:J

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v4, v5}, Lcom/google/googlex/gcam/PixelRect;->k(I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    iget v5, v3, Landroid/graphics/Rect;->top:I

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

    :goto_14
    aget-object v2, p0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v4, v5}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-wide v3, v9, Lcom/google/googlex/gcam/WeightedPixelRect;->a:J

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v4, v6

    nop

    :goto_1c
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    invoke-static/range {v4 .. v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->WeightedPixelRectVector_add(JLcom/google/googlex/gcam/WeightedPixelRectVector;JLcom/google/googlex/gcam/WeightedPixelRect;)V

    :goto_1f
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v9, Lcom/google/googlex/gcam/WeightedPixelRect;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v6, :cond_2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    :goto_23
    iget-wide v7, v9, Lcom/google/googlex/gcam/WeightedPixelRect;->a:J

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz p1, :cond_3

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

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    :goto_25
    array-length v2, p0

    nop

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

    :goto_26
    if-lt v1, v2, :cond_4

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

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_1c

    nop

    nop

    :goto_28
    goto/32 :goto_29

    nop

    nop

    :goto_29
    new-instance v6, Lcom/google/googlex/gcam/PixelRect;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v4, v3}, Lcom/google/googlex/gcam/PixelRect;->l(I)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v5, v3, Landroid/graphics/Rect;->left:I

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

    :goto_2f
    invoke-static {v3, v4, v9, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->WeightedPixelRect_weight_set(JLcom/google/googlex/gcam/WeightedPixelRect;F)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v4, v5}, Lcom/google/googlex/gcam/PixelRect;->j(I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {v9}, Lcom/google/googlex/gcam/WeightedPixelRect;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    :goto_32
    invoke-static {v4, v5, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->WeightedPixelRect_rect_get(JLcom/google/googlex/gcam/WeightedPixelRect;)J

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_1f

    nop

    :goto_34
    goto/32 :goto_20

    nop

    nop

    :goto_35
    iget-wide v4, p2, Lcom/google/googlex/gcam/WeightedPixelRectVector;->a:J

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_5
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v0, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method private static L(Lcom/google/googlex/gcam/MeshWarp;Landroid/graphics/Rect;Lprk;)V
    .locals 9

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1
    add-int/2addr v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_2
    xor-int/2addr v0, v6

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v1, [I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Lnyp;->i:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_5
    aget p2, v1, v3

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    move-object v0, v2

    nop

    :goto_8
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PixelRect;->k(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->MeshWarp_is_forward_mesh_set(JLcom/google/googlex/gcam/MeshWarp;Z)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_d
    aget v2, v2, v4

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_e
    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_11
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_8

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aget v1, v2, v3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_15
    cmp-long v2, v0, v4

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PixelRect;->j(I)V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_18
    sget-object v2, Lnym;->g:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->MeshWarp_mesh_warp_dst_region_get(JLcom/google/googlex/gcam/MeshWarp;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_1a
    check-cast v0, [F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v1, p1, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1c
    invoke-interface {p2, p1}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_1d
    add-int/2addr v5, v5

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lcom/google/googlex/gcam/MeshWarp;->c()Lcom/google/googlex/gcam/FloatVector;

    move-result-object v5

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_1f
    sget-object v0, Lnym;->g:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_20
    invoke-static {v0, v1, p1}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x20

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_22
    aget v4, v2, v4

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

    :goto_23
    goto/32 :goto_60

    nop

    :goto_24
    sget-object p1, Lnyp;->i:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PixelRect;->k(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_26
    if-eq v3, v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_27
    const-string p2, "Mesh data length (%d) and grid dimension (%dx%dx2) mismatch."

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_28
    sget-object v0, Lnym;->i:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v0, Lnym;->f:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_2a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2b
    iget-wide v7, p0, Lcom/google/googlex/gcam/MeshWarp;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v2, v0, v1, v3}, Lcom/google/googlex/gcam/PixelRect;-><init>(JZ)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    array-length v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_2e
    aget v0, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v1, :cond_2

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v1, Lnym;->f:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_33
    if-eq v3, v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_4
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_37
    aget v0, v1, v6

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_38
    invoke-interface {p2, v0}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_39
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_c

    nop

    :cond_5
    :goto_3a
    goto/32 :goto_58

    nop

    nop

    :goto_3b
    iget-wide v7, p0, Lcom/google/googlex/gcam/MeshWarp;->a:J

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/PixelRect;->l(I)V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Lcom/google/googlex/gcam/MeshWarp;->e()Lcom/google/googlex/gcam/PixelRect;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3f
    if-eqz v2, :cond_6

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_6
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_40
    add-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_41
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PixelRect;->l(I)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_43
    if-nez p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {p2, v0}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_45
    array-length v3, v1

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

    :goto_46
    iget v1, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_47
    array-length v7, v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_48
    sget-object v0, Lnym;->h:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PixelRect;->j(I)V

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_4a
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_8
    goto/32 :goto_6d

    nop

    nop

    :goto_4b
    aget v1, v2, v3

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

    :goto_4c
    sget-object p1, Lnyp;->i:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const-string v1, "Invalid physical scaler crop region: %s"

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-wide v0, p0, Lcom/google/googlex/gcam/MeshWarp;->a:J

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4f
    invoke-interface {p2, v0}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_50
    const/4 v4, 0x3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_51
    if-nez v0, :cond_9

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_53
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_54
    mul-int/2addr v5, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v7, v8, p0, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->MeshWarp_grid_cols_set(JLcom/google/googlex/gcam/MeshWarp;I)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_56
    check-cast v2, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_57
    aget v1, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_58
    sget-object v0, Lnym;->h:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_59
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_5a
    invoke-static {v0, v5}, Lcom/google/googlex/gcam/BufferUtils;->e([FLcom/google/googlex/gcam/FloatVector;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_5c
    if-eq v7, v5, :cond_b

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_b
    goto/32 :goto_1e

    nop

    nop

    :goto_5d
    invoke-interface {p2, v2}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-interface {p2, v1}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5f
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_61
    sget-object p0, Ltbt;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_62
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    return-void

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_65
    new-instance v2, Lcom/google/googlex/gcam/PixelRect;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const/4 v5, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_67
    aget v5, v1, v3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_68
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_69
    aget v0, v1, v6

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

    :goto_6a
    iget-wide v0, p0, Lcom/google/googlex/gcam/MeshWarp;->a:J

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6b
    if-nez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6d
    sget-object v0, Lnym;->i:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_6e
    if-nez v2, :cond_d

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_d
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_70
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_71
    iget v1, p1, Landroid/graphics/Rect;->left:I

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

    :goto_72
    invoke-static {v7, v8, p0, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->MeshWarp_grid_rows_set(JLcom/google/googlex/gcam/MeshWarp;I)V

    goto/32 :goto_3d

    nop

    nop

    :goto_73
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_75
    aget v1, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-interface {p2, p1}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_77
    aget v7, v1, v6

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_78
    if-nez p1, :cond_e

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_79
    if-lez v0, :cond_f

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_5f

    nop
.end method

.method private static M(Lpnu;Lprk;Ljava/util/Map;Lcom/google/googlex/gcam/FaceInfoVector;)V
    .locals 23

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 v5, -0x40800000    # -1.0f

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_2
    filled-new-array {v14, v12}, [Ljava/lang/Object;

    move-result-object v12

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_3
    new-instance v8, Lcom/google/googlex/gcam/FaceInfo;

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

    :goto_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_5
    array-length v12, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_6
    invoke-static {v13, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v8}, Ltbt;->C(Lprk;Lpnu;)Landroid/graphics/Rect;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v4, [I

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v9, v8, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_d
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_e
    aget v5, v6, v9

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_10
    const/4 v12, 0x0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_12
    move-object/from16 v4, p3

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_13
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object/from16 v18, v5

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

    :goto_15
    invoke-static {v4, v5, v8, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FaceInfo_confidence_set(JLcom/google/googlex/gcam/FaceInfo;F)V

    goto/32 :goto_c4

    nop

    nop

    :goto_16
    const/4 v9, 0x1

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_19
    array-length v10, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v3, Lnyl;->m:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move/from16 v17, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    cmpl-float v1, v4, v21

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1d
    div-float/2addr v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-object/from16 v21, v6

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    cmpl-float v22, v10, v21

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-wide v4, v8, Lcom/google/googlex/gcam/FaceInfo;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_24
    invoke-static {v9, v10, v8, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FaceInfo_pan_angle_set(JLcom/google/googlex/gcam/FaceInfo;F)V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v15}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v15

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v4, v6}, Lcom/google/googlex/gcam/FaceInfo$Landmark;->c(F)V

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v16

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v8, v11}, Lcom/google/googlex/gcam/FaceInfo;->c(F)V

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_29
    check-cast v6, [F

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_2a
    cmpl-float v22, v11, v21

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v0, v6}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_FaceInfo__SWIG_0()J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int/lit8 v5, v1, 0x1

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_30
    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v15}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_33
    aget v5, v7, v1

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_34
    sget-object v3, Lnyl;->n:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_35
    const/4 v6, 0x3

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v12, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    :cond_1
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/16 v18, 0x0

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v6, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v4, 0x2

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v6, :cond_2

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :cond_2
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_3b
    const-string v9, "Face data is bad: (%d, %d) - (%d, %d), score %d"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    :goto_3c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v0, v5}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_3e
    if-lez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_116

    nop

    nop

    nop

    :goto_3f
    div-float v9, v9, v16

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v8}, Lcom/google/googlex/gcam/FaceInfo;->a()Lcom/google/googlex/gcam/LandmarkMap;

    move-result-object v9

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_41
    check-cast v3, [I

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_42
    move-object/from16 v19, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    array-length v9, v6

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

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

    nop

    :goto_45
    cmpg-float v1, v4, v18

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_92

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_6e

    nop

    nop

    :goto_48
    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_49
    sget-object v5, Lnyl;->n:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v3, :cond_6

    nop

    goto/32 :goto_5a

    nop

    :cond_6
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v3, 0x0

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

    :goto_4d
    if-nez v1, :cond_7

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    filled-new-array {v5, v4, v1}, [I

    move-result-object v1

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v10, v9}, Lcom/google/googlex/gcam/FaceInfo$Landmark;->c(F)V

    goto/32 :goto_40

    nop

    nop

    :goto_52
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    div-float v10, v16, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_54
    add-int/lit8 v6, v6, -0x1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v4, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    :cond_8
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_56
    aget v9, v21, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-nez v3, :cond_9

    nop

    goto/32 :goto_8c

    nop

    :cond_9
    goto/32 :goto_5c

    nop

    nop

    :goto_58
    int-to-float v4, v4

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_97

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_5b
    if-eq v14, v13, :cond_a

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_5c
    array-length v5, v3

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_5d
    mul-float v4, v4, v22

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5e
    iget-wide v9, v8, Lcom/google/googlex/gcam/FaceInfo;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v4, v9}, Lcom/google/googlex/gcam/FaceInfo$Landmark;->b(F)V

    goto/32 :goto_16

    nop

    nop

    :goto_60
    move-object/from16 v1, p2

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_61
    if-gez v8, :cond_b

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_62
    cmpl-float v8, v1, v21

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_63
    invoke-interface {v0, v3}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    sget-object v7, Lnyl;->q:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    return-void

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v1, 0x0

    nop

    nop

    :goto_68
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_69
    sget-object v4, Lnyr;->F:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v8, v4}, Lcom/google/googlex/gcam/FaceInfo;->e(F)V

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_6c
    if-lez v22, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_6d
    const-string v14, "Expect 3 face pose angles for each face. Only got %d angles for %d faces in total."

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v15}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-lt v4, v6, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_70
    if-nez v4, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_71
    aget v6, v21, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_66

    nop

    :goto_73
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_74
    cmpg-float v8, v1, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget-wide v4, v8, Lcom/google/googlex/gcam/FaceInfo;->a:J

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_76
    if-ne v6, v5, :cond_f

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_f
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_77
    filled-new-array {v9, v10, v11, v8, v15}, [Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v16

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-nez v18, :cond_10

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_67

    nop

    nop

    :goto_7a
    invoke-static {v14, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-nez v6, :cond_11

    nop

    goto/32 :goto_12a

    nop

    nop

    :cond_11
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    if-ne v6, v9, :cond_12

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_8d

    nop

    nop

    :goto_7d
    if-nez v4, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const/4 v12, 0x1

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    const/16 v1, 0x2e

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    move-object/from16 v5, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_81
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v10, v11}, Lcom/google/googlex/gcam/FaceInfo$Landmark;->b(F)V

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    div-float v9, v9, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    move/from16 v8, v20

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    const/16 v9, 0x2d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    check-cast v7, [F

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_87
    array-length v10, v4

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_88
    sget-object v6, Ltbt;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_89
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_8a
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_8b
    goto/16 :goto_110

    nop

    nop

    :goto_8c
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :goto_8e
    move-object/from16 v0, p1

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    cmpg-float v22, v10, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    if-eq v5, v1, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :cond_14
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v15}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v9

    nop

    nop

    :goto_92
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_93
    add-int/lit8 v13, v13, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_94
    if-gtz v8, :cond_15

    nop

    goto/32 :goto_107

    nop

    nop

    :cond_15
    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    aget v6, v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_96
    const/4 v7, 0x0

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v8}, Lcom/google/googlex/gcam/FaceInfo;->a()Lcom/google/googlex/gcam/LandmarkMap;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v6, v5, v4}, Lcom/google/googlex/gcam/LandmarkMap;->b(ILcom/google/googlex/gcam/FaceInfo$Landmark;)V

    goto/32 :goto_121

    nop

    nop

    nop

    :goto_9a
    aget v10, v4, v9

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    :goto_9b
    add-int/2addr v14, v4

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_9c
    new-instance v10, Lcom/google/googlex/gcam/FaceInfo$Landmark;

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-interface {v0, v6}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_9e
    int-to-float v9, v9

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v9, v6, v10}, Lcom/google/googlex/gcam/LandmarkMap;->b(ILcom/google/googlex/gcam/FaceInfo$Landmark;)V

    :goto_a0
    goto/32 :goto_11a

    nop

    nop

    :goto_a1
    if-lt v9, v10, :cond_16

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_a2
    add-int/2addr v1, v4

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_a3
    iget v11, v8, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a4
    move/from16 v22, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_a5
    move-object/from16 v8, p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a6
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    goto/16 :goto_68

    nop

    nop

    nop

    :goto_a8
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_a9
    move-object/from16 v21, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-direct {v4}, Lcom/google/googlex/gcam/FaceInfo$Landmark;-><init>()V

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    const/high16 v8, 0x42c60000    # 99.0f

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_ac
    if-lez v22, :cond_17

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_ae
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iget-wide v9, v8, Lcom/google/googlex/gcam/FaceInfo;->a:J

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_b0
    if-lt v1, v4, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    aget v1, v7, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_b3
    const/high16 v22, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_b4
    move-object/from16 v4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_b5
    invoke-static {v4, v5, v8, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FaceInfo_roll_angle_set(JLcom/google/googlex/gcam/FaceInfo;F)V

    :goto_b6
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v15}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v18

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    move/from16 v9, v22

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_b9
    add-int v6, v5, v5

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_ba
    check-cast v5, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_bb
    const/high16 v21, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_bc
    invoke-direct {v8, v5, v6, v9}, Lcom/google/googlex/gcam/FaceInfo;-><init>(JZ)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-interface {v0, v7}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_be
    iget-wide v9, v8, Lcom/google/googlex/gcam/FaceInfo;->a:J

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_bf
    new-instance v4, Lcom/google/googlex/gcam/FaceInfo$Landmark;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_c0
    sget-object v3, Lnyl;->m:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_c1
    mul-int/lit8 v13, v12, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_c2
    iget v9, v9, Landroid/graphics/Point;->y:I

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_c4
    invoke-virtual {v15}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v1

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

    :goto_c5
    int-to-float v1, v8

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_c6
    if-gez v1, :cond_19

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_1c

    nop

    nop

    :goto_c7
    move-object/from16 v6, v21

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_c8
    if-nez v3, :cond_1a

    nop

    goto/32 :goto_5a

    nop

    nop

    :cond_1a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    if-gez v21, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :cond_1b
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    sget-object v13, Ltbt;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_cb
    if-lez v0, :cond_1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :cond_1c
    goto/32 :goto_72

    nop

    :goto_cc
    if-eq v10, v9, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_cd
    div-float/2addr v1, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_ce
    invoke-interface {v0, v2}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    sget-object v4, Lnyr;->E:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d0
    move-object/from16 v18, v5

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    array-length v14, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :goto_d3
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    aget v4, v3, v13

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_d5
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    :goto_d6
    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_d7
    mul-int/lit8 v1, v13, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_d8
    div-float v11, v11, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_da
    if-eq v10, v1, :cond_1e

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :cond_1e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual {v4, v8}, Lcom/google/googlex/gcam/FaceInfoVector;->c(Lcom/google/googlex/gcam/FaceInfo;)V

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    int-to-float v11, v11

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-static {v4, v5, v8, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FaceInfo_id_set(JLcom/google/googlex/gcam/FaceInfo;I)V

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_df
    iget-wide v4, v8, Lcom/google/googlex/gcam/FaceInfo;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e0
    invoke-direct {v10}, Lcom/google/googlex/gcam/FaceInfo$Landmark;-><init>()V

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_e1
    move-object/from16 v1, p2

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-static {v9, v10, v8, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FaceInfo_tilt_angle_set(JLcom/google/googlex/gcam/FaceInfo;F)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_e4
    iget v10, v8, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-static {v9, v10, v8, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FaceInfo_monk_skin_type_set(JLcom/google/googlex/gcam/FaceInfo;F)V

    goto/32 :goto_eb

    nop

    nop

    :goto_e6
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_e7
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_e8
    add-int v5, v14, v1

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_e9
    goto/16 :goto_12a

    nop

    nop

    nop

    :goto_ea
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_eb
    array-length v1, v2

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_ec
    goto/16 :goto_e7

    nop

    :goto_ed
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    iget-wide v9, v8, Lcom/google/googlex/gcam/FaceInfo;->a:J

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    move/from16 v20, v8

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    :goto_f0
    if-gtz v1, :cond_1f

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v16

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_f3
    goto/16 :goto_92

    nop

    nop

    nop

    :goto_f4
    goto/32 :goto_91

    nop

    nop

    :goto_f5
    sget-object v3, Lnyl;->o:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_f6
    aget v5, v7, v5

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_f7
    sget-object v6, Lnyl;->o:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    iget v11, v9, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    move-object/from16 v1, p2

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_fa
    div-float v11, v16, v10

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_fb
    move/from16 v16, v1

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_fc
    if-nez v9, :cond_20

    nop

    goto/32 :goto_a0

    nop

    :cond_20
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-interface {v0, v4}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_fe
    const v0, 0x1f

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_100
    check-cast v2, [Landroid/hardware/camera2/params/Face;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_101
    if-gez v22, :cond_21

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_102
    invoke-virtual {v15}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_103
    if-nez v7, :cond_22

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_22
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_104
    if-lt v13, v15, :cond_23

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :cond_23
    goto/32 :goto_119

    nop

    nop

    :goto_105
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v18

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_106
    goto/16 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_107
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_108
    invoke-virtual {v15}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_109
    if-nez v21, :cond_24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_10a
    sget-object v4, Lnyr;->E:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_10b
    move-object/from16 v8, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10c
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_10d
    add-int/2addr v6, v9

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_10e
    const/4 v6, 0x0

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    goto/16 :goto_126

    nop

    nop

    nop

    nop

    :goto_110
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_111
    add-int v4, v16, v18

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    move-object/from16 v1, p2

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_113
    sget-object v6, Lnyr;->F:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_114
    array-length v15, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_115
    div-float v6, v6, v16

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_116
    int-to-float v1, v8

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    invoke-static {v9, v10, v8, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->FaceInfo_familiarity_set(JLcom/google/googlex/gcam/FaceInfo;F)V

    :goto_118
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_119
    aget-object v15, v2, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_11a
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    goto/16 :goto_92

    nop

    nop

    nop

    nop

    :goto_11c
    goto/32 :goto_120

    nop

    nop

    nop

    :goto_11d
    add-int/lit8 v8, v18, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_11e
    cmpg-float v21, v11, v18

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_11f
    invoke-virtual {v8, v10}, Lcom/google/googlex/gcam/FaceInfo;->d(F)V

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_120
    invoke-virtual {v15}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v9

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_121
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_122
    aget-byte v5, v18, v5

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_123
    goto/16 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_124
    goto/32 :goto_d9

    nop

    nop

    :goto_125
    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_126
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_127
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_128
    const/4 v5, 0x1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :goto_12a
    goto/32 :goto_5e

    nop

    nop

    :goto_12b
    int-to-float v10, v9

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_12c
    move/from16 v22, v9

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop
.end method

.method private static N()Z
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lprb;->l()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    :goto_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lprb;->e()Z

    move-result v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_a
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    if-gtz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    :goto_f
    iget-boolean v1, v0, Lprb;->r:Z

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v0, Ltbt;->d:Lprb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v1, :cond_5

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

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    iget-boolean v1, v0, Lprb;->o:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lprb;->q()Z

    move-result v1

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

    :goto_18
    sget v0, Lcom/a;->sCorrectorAutoHDRP:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_19
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_7

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_11

    nop

    :goto_1b
    iget-boolean v1, v0, Lprb;->n:Z

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lprb;->c()Z

    move-result v1

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

    :goto_1d
    iget-boolean v0, v0, Lprb;->v:Z

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

    nop

    :goto_1e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v1, :cond_8

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v1, :cond_9

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop
.end method

.method private static O(Lprk;)Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ltbt;->I(Lprk;)Ljava/lang/Integer;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const/4 p0, 0x1

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

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    if-eq p0, v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method private static P(Lprk;)Z
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_PIXEL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const v1, 0x14

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1d

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    if-eq p0, v1, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    return v1

    nop

    nop

    nop

    nop

    :catchall_0
    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return v0

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static Q(Landroid/hardware/camera2/CaptureResult$Key;Lpro;)[B
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_1
    rem-int v0, v0, v1

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
    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    move-object v0, p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v1, Ltbt;->b:Ljava/lang/String;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    :goto_7
    return-object v0

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_3

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    :try_start_0
    invoke-interface {p1, p0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, [B

    nop

    nop
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    :goto_b
    const-string v2, "Error retrieving "

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

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

    :goto_e
    const v1, 0xc

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method private static R(Lpnu;Lpro;)[F
    .locals 7

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lnyn;->t:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3
    sget-object p1, Ltbt;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_4
    if-gtz v3, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aget v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const v1, 0x2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Ltbt;->B(Lpnu;)F

    move-result v2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_8
    if-ltz v4, :cond_1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string p1, "Analog gain is < 1.0f for camera ID %s (physical IDs: %s). sensitivity: %f (min: %f, max analog: %f)"

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    aput v5, p0, p1

    nop

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

    nop

    :goto_b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    :goto_10
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_20

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_14
    goto :goto_1f

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_16
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    filled-new-array {v4, p0, p1, v0, v2}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

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

    :goto_19
    div-float v5, p1, v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    new-array p0, p0, [F

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p0}, Ltbt;->u(Lpnu;)[F

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1e
    move v5, v4

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_4

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

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

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

    :goto_24
    aput v3, p0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_26
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_27
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_e

    nop

    nop

    :goto_29
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    div-float v3, v2, v0

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

    nop

    :goto_2b
    invoke-interface {p0}, Lpnu;->C()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v6, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2d
    int-to-float p1, p1

    nop

    :goto_2e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2f
    cmpg-float v4, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_12

    nop

    :goto_31
    goto/32 :goto_11

    nop

    nop

    :goto_32
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_34
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_35
    cmpl-float v3, p1, v2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    div-float v3, p1, v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {p0}, Lpnu;->j()Lpnx;

    move-result-object v4

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

    nop

    :goto_38
    const/4 p0, 0x2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_39
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

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

    :goto_3e
    sget-object v0, Lnyn;->t:Landroid/hardware/camera2/CaptureResult$Key;

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
.end method

.method public static SetVALUES(Lpnt;)V
    .locals 5

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_1
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "Y19zaGFkX21hcF9jZW50ZXJfa2V5"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v2, v2, -0x1

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_4
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    :goto_6
    invoke-static {v3, v2}, Ltbt;->capReq(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lpha;

    move-result-object v2

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v2, :cond_1

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    :goto_d
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_e
    sget v2, Lcom/a;->ab:I

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v2}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_10
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v0, "Y19zaGFkX21hcF9jaGFubmVsZ2FpbnNfZ2Vfa2V5"

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_12
    const-string v0, "Y19zaGFkX21hcF9jaGFubmVsZ2FpbnNfZ29fa2V5"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "Yl9ibF9rZXk"

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x7

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sput v0, Ltbt;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    const-string v2, "Y19jX2lfcXVhbGl0eV9rZXk"

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_17
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0, v1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1d
    invoke-static {v2, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v3, v2}, Ltbt;->capReq(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lpha;

    move-result-object v2

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v2, "YW50aWJhbmRpbmdfa2V5"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_20
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_21
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_22
    const-string v2, "c2NlbmVfbW9kZV9rZXk"

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_23
    sput v0, Ltbt;->isoCompFactor:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_24
    const-string v0, "0.7"

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_111

    nop

    nop

    nop

    :goto_26
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_27
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v0, "ZF9ibF9rZXk"

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string v0, "13"

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v0, v1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v3, v2}, Ltbt;->capReq(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lpha;

    move-result-object v2

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_2d
    invoke-static {v0, v1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    :goto_2e
    invoke-static {v0, v1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_2f
    const-string v2, "c19tX3F1YWxpdHlfa2V5"

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_31
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_34
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_35
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_36
    goto/32 :goto_125

    nop

    nop

    :goto_37
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_38
    aput v0, v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_3b
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_3d
    aput v0, v3, v2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3e
    if-nez v2, :cond_4

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

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_41
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_43
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_44
    const-string v0, "pref_af_mode_back"

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_45
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-ne v0, v1, :cond_6

    nop

    goto/32 :goto_141

    nop

    :cond_6
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {v2, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_4c
    invoke-static {v3, v2}, Ltbt;->capReq(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lpha;

    move-result-object v2

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4e
    invoke-static {}, Lcom/a;->loadConfinesExposureISO()V

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_4f
    aput v0, v4, v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    :goto_52
    sget v2, Lcom/a;->ab:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_54
    goto/32 :goto_137

    nop

    nop

    nop

    :goto_55
    invoke-static {v0, v1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_56
    sput-object v0, Ltbt;->ia:[F

    nop

    nop

    :goto_57
    goto/32 :goto_4e

    nop

    nop

    :goto_58
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    :goto_59
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_5b
    invoke-static {v3, v2}, Ltbt;->capReq(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lpha;

    move-result-object v2

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_d

    nop

    nop

    :catchall_0
    goto/32 :goto_c3

    nop

    nop

    :goto_5d
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_5e
    sget-object v3, Lcom/CameraLensesScan;->sCameraLens:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {v2, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v2

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_60
    const-string v2, "bl9yX21fcXVhbGl0eV9rZXk"

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_62
    const-string v0, "Y19zaGFkX21hcF9pc29fZ2Fpbl9lZHVjdGlvbl9rZXk"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_63
    sput-object v0, Ltbt;->CaptureRequestKey:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {v0}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_65
    const-string v0, "1.0"

    nop

    :goto_66
    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const-string v0, "Y19zaGFkX21hcF9lZGdlX2tleQ"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_69
    const-string v0, "Y19zaGFkX21hcF9jaGFubmVsZ2FpbnNfcl9rZXk"

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6a
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6b
    const-string v0, "17"

    nop

    :goto_6c
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_6e
    const-string v0, "Ymxfa2V5"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6f
    const v0, 0x1b

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_70
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_72
    sput v0, Ltbt;->rows:I

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_73
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

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

    :goto_74
    invoke-static {v2, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_75
    sput v0, Ltbt;->cols:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_76
    invoke-static {v2, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_77
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_78
    const-string v0, "Zml4X3NhdHVyYXRpb25fa2V5"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    :goto_79
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_da

    nop

    nop

    nop

    :goto_7a
    const-string v2, "dF9tX3F1YWxpdHlfa2V5"

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {v0, v1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_7c
    if-eq v3, v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :cond_8
    goto/32 :goto_af

    nop

    nop

    :goto_7d
    new-array v4, v4, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_7e
    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    :cond_9
    :try_start_0
    invoke-virtual {p0}, Lpnt;->S()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    if-eqz v3, :cond_a

    nop

    nop

    nop

    nop

    check-cast v3, Lcom/CameraLensSpecification;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lcom/CameraLensSpecification;->A:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v3, Landroid/hardware/camera2/CameraCharacteristics;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5c

    nop

    nop

    :goto_7f
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_80
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_81
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_83
    invoke-virtual {p0, v2, v0}, Lpnt;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    const-string v2, "dF9tX3F1YWxpdHlfa2V5"

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-static {v0, v1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_88
    invoke-static {v2, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v2

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_89
    const/4 v3, 0x4

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_8a
    sput-object v3, Ltbt;->ia:[F

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_8b
    invoke-static {v3, v2}, Ltbt;->capReq(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lpha;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    const-string v2, "ZF9jX21fcXVhbGl0eV9rZXk"

    nop

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    :goto_8d
    if-nez v2, :cond_b

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    :cond_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p0, v0, v2}, Lpnt;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_121

    nop

    nop

    nop

    :goto_90
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-static {v3, v2}, Ltbt;->capReq(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lpha;

    move-result-object v2

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_95
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_96
    aput v0, v3, v2

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_98
    if-eqz v2, :cond_c

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    :cond_c
    goto/32 :goto_b4

    nop

    nop

    :goto_99
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9a
    goto/32 :goto_1f

    nop

    nop

    :goto_9b
    invoke-static {v3, v2}, Ltbt;->capReq(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lpha;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_9c
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-static {v2, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_9e
    invoke-static {v2, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    :goto_9f
    invoke-static {v2, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v2

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_a1
    if-eqz v2, :cond_d

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_85

    nop

    nop

    :goto_a2
    const-string v0, "1.0"

    nop

    nop

    :goto_a3
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-direct {v0, v1}, Lcom/ColorTune;-><init>(I)V

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    const-string v0, "Y19zaGFkX21hcF9jb2xzX2tleQ"

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_a6
    const-string v0, "1.0"

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_a9
    const-string v0, "pref_af_mode_front"

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_ab
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    aput v0, v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    :goto_ad
    if-nez v2, :cond_e

    nop

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

    :cond_e
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-static {v0, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    const-string v2, "dF9tX2N1cnZlX3F1YWxpdHlfa2V5"

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b0
    if-nez v2, :cond_f

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_b1
    add-int/lit8 v2, v2, -0x1

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_b2
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b4
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

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

    :goto_b5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_b6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    :goto_b7
    new-array v3, v3, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    :goto_b8
    if-nez v2, :cond_10

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_10
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    if-nez v3, :cond_11

    nop

    nop

    goto/32 :goto_a3

    nop

    :cond_11
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    if-nez v2, :cond_12

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    goto/16 :goto_57

    nop

    nop

    :goto_bd
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    const/4 v4, 0x4

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-static {v3, v2}, Ltbt;->capReq(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lpha;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_c0
    if-eq v0, v2, :cond_13

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_c1
    invoke-static {v0, v1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_c2
    const-string v2, "Y19jX2FfbV9xdWFsaXR5X2tleQ"

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {p0, v2}, Lpnt;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :goto_c4
    if-eqz v2, :cond_14

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-static {v0, v2}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_a9

    nop

    nop

    :goto_c8
    if-eqz v2, :cond_15

    nop

    goto/32 :goto_bd

    nop

    :cond_15
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_ca
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_cb
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_cc
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_ce
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    const/4 v2, 0x0

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_d1
    const-string v0, "Y19zaGFkX21hcF9yb3dzX2tleQ"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_d2
    const-string v0, "1.0"

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_d6
    if-nez v2, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :cond_16
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    add-int/lit8 v2, v2, -0x1

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_d9
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_da
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-static {v3, v2}, Ltbt;->capReq(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lpha;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :goto_df
    aput v0, v4, v2

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

    :goto_e0
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e1
    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_e2
    const/4 v3, 0x3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_e4
    const-string v2, "aF9wX21fcXVhbGl0eV9rZXk"

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-static {v0, v1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    const-string v0, "cmVzZXRfbWFudWFsX2ZvY3VzX2tleQ"

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_e7
    if-nez v2, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :cond_17
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_e8
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_e9
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    const-string v2, "Y19lX3pfcXVhbGl0eV9rZXk"

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_eb
    if-nez v2, :cond_18

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_18
    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_ec
    return-void

    nop

    nop

    nop

    :goto_ed
    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    if-nez v2, :cond_19

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    sput-object v4, Ltbt;->channelGains:[F

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_f0
    invoke-static {v0, v1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    const-string v0, "Y19mX2Ffa2V5"

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_f3
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-static {v3, v2}, Ltbt;->capReq(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lpha;

    move-result-object v2

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_f5
    invoke-static {v2, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v2

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_f6
    const-string v2, "Y19jX2lfcXVhbGl0eV9rZXk"

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    :goto_f7
    new-instance v0, Lcom/NoiseModels;

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    if-nez v2, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_61

    nop

    nop

    :goto_f9
    const-string v2, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-static {v0, v1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    const-string v0, "Y19zaGFkX21hcF9jaGFubmVsZ2FpbnNfYl9rZXk"

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    const-string v2, "0"

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_fd
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_fe
    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-static {v2, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    :goto_100
    const-string v0, "1.0"

    nop

    nop

    :goto_101
    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_102
    if-lez v0, :cond_1b

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

    :cond_1b
    goto/32 :goto_9

    nop

    :goto_103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_104
    new-instance v0, Lcom/ColorTune;

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_105
    const-string v0, "1.0"

    nop

    :goto_106
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_107
    invoke-static {v0, v1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_109
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_10a
    if-nez v2, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10c
    sget v0, Ltbt;->ActiveCamID:I

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    aput v0, v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_110
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_111
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_112
    sput v0, Ltbt;->k:I

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_113
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_114
    sput v0, Ltbt;->center:F

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    if-nez v2, :cond_1d

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_a6

    nop

    nop

    :goto_116
    invoke-direct {v0, v1}, Lcom/NoiseModels;-><init>(I)V

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_117
    if-eq v3, v2, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_ea

    nop

    nop

    :goto_118
    invoke-static {v0, v1}, Lcom/a;->ad_ma(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_119
    if-nez v3, :cond_1f

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_PRESET_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_11b
    const/4 v3, 0x5

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_11c
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_11d
    if-nez v2, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_90

    nop

    nop

    :goto_11e
    if-nez v2, :cond_21

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_b1

    nop

    nop

    :goto_11f
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_120
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_121
    goto/16 :goto_13e

    nop

    nop

    nop

    :goto_122
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_123
    invoke-static {v2, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_124
    if-nez v2, :cond_22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_125
    const-string v2, "ZV9tX3F1YWxpdHlfa2V5"

    nop

    goto/32 :goto_f5

    nop

    nop

    :goto_126
    const-string v0, "Y19ibF9rZXk"

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    if-eqz v2, :cond_23

    nop

    goto/32 :goto_ce

    nop

    nop

    :cond_23
    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :goto_128
    invoke-static {v3, v2}, Ltbt;->capReq(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lpha;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_129
    if-nez v3, :cond_24

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_12a
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    aput v0, v3, v2

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

    :goto_12c
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    goto/32 :goto_10b

    nop

    nop

    :goto_12e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    if-eqz v2, :cond_25

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    :cond_25
    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_131
    const-string v0, "bWluX2ZvY3VzX2Rpc3RhbmNlX2tleQ"

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_132
    sput v0, Ltbt;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_133
    sput v0, Ltbt;->edge:F

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_134
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_135
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_136
    const-string v0, "YV9ibF9rZXk"

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_137
    const-string v2, "Y19jX21fcXVhbGl0eV9rZXk"

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_138
    sget-object v2, Lcom/CameraLensesScan;->sActiveCamIDValue:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_139
    invoke-static {v2, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    invoke-static {v2, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_13d
    invoke-virtual {p0, v0}, Lpnt;->n(Ljava/lang/Object;)V

    :goto_13e
    goto/32 :goto_148

    nop

    nop

    nop

    nop

    :goto_13f
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_140
    sput v1, Ltbt;->ActiveCamID:I

    nop

    nop

    nop

    nop

    :goto_141
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_142
    invoke-static {v2, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v2

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_143
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_60

    nop

    nop

    :goto_144
    invoke-static {v0, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_145
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_146
    invoke-static {v3, v2}, Ltbt;->capReq(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lpha;

    move-result-object v2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_147
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_148
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop
.end method

.method public static c(J)F
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    double-to-float p0, p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-wide v0, 0x412e848000000000L    # 1000000.0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    long-to-double p0, p0

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

    nop

    :goto_8
    const v0, 0x15

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    div-double/2addr p0, v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_b
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop
.end method

.method public static capReq(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lpha;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, p1}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance v0, Lpha;

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
.end method

.method public static d(Lpnu;)J
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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

    :goto_3
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_5
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, v0}, Ltbt;->e(Lpnu;Lpck;)J

    move-result-wide v0

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

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static e(Lpnu;Lpck;)J
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, v1, p1}, Lpnu;->h(ILpck;)J

    move-result-wide p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iget v1, v0, Lpou;->a:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    const v0, 0xc

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

    :goto_6
    invoke-static {p0}, Ltbt;->i(Lpnu;)Lpou;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    return-wide p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x12

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, v0, Lpou;->b:Lpck;

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static f(F)J
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1a

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_3
    mul-float/2addr p0, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    float-to-long v0, p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x49742400    # 1000000.0f

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

.method public static i(Lpnu;)Lpou;
    .locals 18

    goto/32 :goto_3b

    nop

    nop

    :goto_0
    invoke-static {v5}, Lolx;->aI(Ljava/util/List;)Lpck;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-virtual {v2, v7}, Lryb;->contains(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_5
    if-lt v2, v3, :cond_1

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_1
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface/range {p0 .. p0}, Lpnu;->R()Lpns;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-interface {v2, v1}, Lpnu;->y(I)Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, v0, Lpns;->a:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_a
    move-object/from16 v4, p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v4, v3}, Lpnu;->y(I)Ljava/util/List;

    move-result-object v5

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lt v5, v3, :cond_3

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

    :cond_3
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    nop

    :goto_d
    add-int/lit8 v10, v10, 0x1

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

    :goto_e
    move/from16 v3, v17

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    :goto_10
    sget-object v4, Ltbt;->c:[I

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v7}, Lpck;->b()J

    move-result-wide v15

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/16 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_13
    return-object v0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "No HDR+ compatible raw format supported."

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_16
    array-length v3, v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_18
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1c
    invoke-virtual {v12}, Lpck;->b()J

    move-result-wide v13

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, v6, v7}, Lpou;-><init>(ILpck;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_16

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-gtz v11, :cond_4

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_23
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v8, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5b

    nop

    nop

    :goto_25
    move v10, v1

    nop

    :goto_26
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/16 v17, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_28
    invoke-static {v2}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_26

    nop

    nop

    :goto_2a
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v11, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    cmp-long v8, v8, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2d
    const/16 v1, 0x23

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v17, :cond_7

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_30
    cmp-long v11, v13, v15

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_31
    const v1, 0xd

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2

    nop

    nop

    :goto_33
    return-object v1

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_32

    nop

    nop

    :goto_35
    instance-of v1, v0, Lpnt;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v0, Lpou;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v0, v3, v1}, Lpou;-><init>(ILpck;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_39
    move-object/from16 v2, p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3a
    invoke-static {v2, v1}, Llhg;->e(Ljava/util/List;I)Lpou;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v0, 0x8

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_3c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3d
    new-instance v0, Lpou;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move v5, v1

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_b

    nop

    nop

    :goto_40
    array-length v5, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move-object/from16 v4, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_42
    if-eqz v6, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-lt v10, v9, :cond_9

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {v12, v13, v11}, Lpck;-><init>(II)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_45
    array-length v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getOutputFormats()[I

    move-result-object v2

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v11}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    aget v6, v4, v5

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_49
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4a
    invoke-static {v2}, Lrrf;->S([I)Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4b
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v7}, Lpck;->b()J

    move-result-wide v8

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v7, :cond_a

    nop

    goto/32 :goto_14

    nop

    :cond_a
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_4e
    return-object v0

    nop

    nop

    nop

    :catchall_0
    :goto_4f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v0, v6}, Lpns;->a(I)Lryb;

    move-result-object v8

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_51
    aget v3, v0, v2

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_52
    move/from16 v17, v0

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-lez v0, :cond_b

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1

    nop

    :goto_55
    const-string v0, "ERROR"

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_56
    move/from16 v6, v17

    nop

    nop

    :goto_57
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_58
    new-instance v7, Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget v0, v0, Lpnt;->or:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    sget-object v0, Ltbt;->c:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_14

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_1f

    nop

    :goto_5e
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_5f
    move-object v7, v12

    nop

    :goto_60
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_61
    new-instance v12, Lpck;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_62
    if-nez v17, :cond_c

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v0, Lpnt;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-direct {v7, v1, v1}, Lpck;-><init>(II)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v11}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static j(Lpro;Ljava/lang/String;)Lpro;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

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

    :goto_1
    check-cast p0, Lpro;

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    :goto_3
    const v1, 0x13

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, p1, p0}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    nop

    nop

    :goto_7
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    :goto_b
    invoke-interface {p0}, Lpro;->i()Ljava/util/Map;

    move-result-object v0

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

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public static k(Lpro;Lpnu;)Lcom/google/googlex/gcam/AwbInfo;
    .locals 8

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/googlex/gcam/FloatArray9;-><init>()V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v1}, Ltbt;->F(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, v6, v7}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    invoke-static {v5, p0}, L_029;->FIX_SATURATION(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    sget v7, Lcom/a;->ah:I

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v5, [F

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_37

    nop

    nop

    :goto_8
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_c
    aget v7, p1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_d
    sget v7, Lcom/a;->ab:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_f
    return-object v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ltz v2, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_12
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_1
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, p1, v5}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_16
    if-lt p1, v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_2
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_2

    nop

    :goto_18
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1a
    check-cast v2, Landroid/hardware/camera2/params/RggbChannelVector;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 p1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    :goto_1d
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, p1, v6}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([Landroid/util/Rational;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1f
    if-gtz v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p0, v0}, Ltbt;->j(Lpro;Ljava/lang/String;)Lpro;

    move-result-object p0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/16 p1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_2

    nop

    :goto_24
    goto/32 :goto_1

    nop

    nop

    :goto_25
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    cmpl-float v2, v6, v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v0}, Lcom/google/googlex/gcam/AwbInfo;-><init>()V

    goto/32 :goto_6b

    nop

    nop

    :goto_2a
    const/16 p1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_2b
    const v2, 0x3f8ccccd    # 1.1f

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v2, v7}, Landroid/hardware/camera2/params/RggbChannelVector;->getComponent(I)F

    move-result v7

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v2, "CaptureResult missing COLOR_CORRECTION_GAINS."

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, v0, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_31
    if-lez v0, :cond_4

    nop

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

    :cond_4
    goto/32 :goto_1c

    nop

    :goto_32
    sget v7, Lcom/a;->aa:I

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_40

    nop

    :goto_34
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p1}, Lpnu;->j()Lpnx;

    move-result-object v0

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

    :goto_36
    if-nez p1, :cond_5

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_5
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v5}, Lcom/ColorTune;->ColorMod1([F)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0, v3, v5}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v1, 0x1b

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v3, 0x4

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3c
    invoke-static {p1}, L_029;->TRANSFORM_A([Landroid/util/Rational;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const v0, 0x20

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_3e
    sget-object p1, Ltbt;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3f
    move p1, v4

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_41
    const/4 p1, 0x3

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_43
    if-eqz v7, :cond_6

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_6
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    sget-object p0, Ltbt;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v0, Lcom/google/googlex/gcam/AwbInfo;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_47
    sget p1, Ltbt;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_48
    array-length v2, p1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_49
    const/4 p1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4a
    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    new-instance p0, Lcom/google/googlex/gcam/FloatArray9;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    new-instance v1, Lcom/google/googlex/gcam/FloatArray4;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_4d
    invoke-static {p0}, L_029;->MI_COLOR_CORRECTION_GAINS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v5, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/AwbInfo;->d(Lcom/google/googlex/gcam/FloatArray4;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move v6, v4

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_52
    goto :goto_51

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_54
    if-lt v6, v3, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto :goto_53

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v1, p1, v5}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-eqz v7, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_5

    nop

    nop

    :goto_5a
    if-eqz v7, :cond_a

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const/4 p1, 0x1

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_5c
    invoke-virtual {v0, p0}, Lcom/google/googlex/gcam/AwbInfo;->c(Lcom/google/googlex/gcam/FloatArray9;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {p1}, Ltbt;->v(I)[I

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_1d

    nop

    :goto_5f
    const/4 p1, 0x2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_62
    invoke-static {p0}, L_029;->COLOR_TUNE_WB(Ljava/lang/Object;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-eqz v2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_b
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {p0, v4, v5}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_65
    aget v6, v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_66
    sget v7, Lcom/a;->ac:I

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-interface {p0, p1}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_68
    invoke-direct {v1}, Lcom/google/googlex/gcam/FloatArray4;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-eqz v7, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_c
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6a
    invoke-interface {p0, v2}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-static {p1}, Ltbt;->r(Lpnu;)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    new-array p1, p1, [Landroid/util/Rational;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_6d
    check-cast v1, Lcom/google/googlex/gcam/FloatArray4;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    check-cast v1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_6f
    const-string p1, "CaptureResult missing COLOR_CORRECTION_TRANSFORM."

    nop

    goto/32 :goto_61

    nop

    nop
.end method

.method public static n(Landroid/graphics/Rect;Lprk;)Lcom/google/googlex/gcam/MeshWarp;
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lcom/google/googlex/gcam/MeshWarp;

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

    nop

    :goto_2
    goto/32 :goto_c

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_MeshWarp()J

    move-result-wide v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    const/4 v3, 0x1

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

    :goto_6
    invoke-static {v0, p0, p1}, Ltbt;->L(Lcom/google/googlex/gcam/MeshWarp;Landroid/graphics/Rect;Lprk;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_8
    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlex/gcam/MeshWarp;-><init>(JZ)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x7

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public static o(Lpnu;)Lsyi;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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
    return-object p0

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Ltbt;->G(Lpnu;Lpro;)Lsyi;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static r(Lpnu;)Ljava/lang/Integer;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-interface {p0, v0}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

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

.method public static s(Lpnu;Lprk;Lcom/google/googlex/gcam/FaceInfoVector;)V
    .locals 1

    goto/32 :goto_1

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

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {p0, p1, v0, p2}, Ltbt;->M(Lpnu;Lprk;Ljava/util/Map;Lcom/google/googlex/gcam/FaceInfoVector;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static u(Lpnu;)[F
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v0}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    new-array v1, v1, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, v0}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

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

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object v1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lnyo;->m:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    int-to-float p0, p0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    int-to-float v0, v0

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_14
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_16
    aput p0, v1, v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    check-cast v0, [F

    nop

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

    :goto_19
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    nop

    :goto_1a
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

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

    :goto_1b
    const v0, 0x12

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v0, Lnyo;->m:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    :goto_1d
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_1e
    aput v0, v1, v2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_20
    check-cast p0, Landroid/util/Range;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static v(I)[I
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_b

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

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4
    const/4 v3, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    if-ne p0, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ne p0, v2, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, "CameraCharacteristics: unsupported colorFilterArrangment"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p0, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    goto :goto_17

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    const v1, 0x15

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    if-eq p0, v1, :cond_3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    :goto_15
    filled-new-array {v0, v3, v2, v1}, [I

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    filled-new-array {v0, v2, v3, v1}, [I

    move-result-object p0

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

    :goto_19
    rem-int v0, v0, v1

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

    nop

    :goto_1a
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    :goto_1b
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop
.end method

.method public static x(Lpnu;)Lcom/google/googlex/gcam/StaticMetadata;
    .locals 18

    goto/32 :goto_115

    nop

    nop

    :goto_0
    new-instance v6, Lcom/google/googlex/gcam/FloatVector;

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v1, Landroid/util/Size;

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_2
    if-lt v3, v2, :cond_0

    nop

    goto/32 :goto_cf

    nop

    :cond_0
    goto/32 :goto_179

    nop

    nop

    :goto_3
    invoke-virtual {v4, v3}, Lcom/google/googlex/gcam/DngColorCalibration;->c(Lcom/google/googlex/gcam/FloatArray9;)V

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :cond_1
    goto/32 :goto_71

    nop

    :goto_5
    goto/16 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v3, v1, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_9
    new-instance v6, Lcom/google/googlex/gcam/PixelRectVector;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    iget v3, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aput-wide v1, v5, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v6, v4}, Lcom/google/googlex/gcam/PixelRectVector;->a(Lcom/google/googlex/gcam/PixelRect;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v2}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    iget-wide v2, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v11, v13, Lcom/google/googlex/gcam/DarkShadingData;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_14f

    nop

    nop

    :goto_15
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2, v3, v7, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_has_flash_set(JLcom/google/googlex/gcam/StaticMetadata;Z)V

    goto/32 :goto_6a

    nop

    nop

    :goto_17
    invoke-direct {v6}, Lcom/google/googlex/gcam/PixelRectVector;-><init>()V

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    :goto_18
    new-array v5, v8, [J

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

    :goto_19
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_1b
    invoke-interface {v0, v3}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v5, v3, Landroid/graphics/Rect;->left:I

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

    :goto_1d
    new-instance v1, Ljava/lang/String;

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v7, v1}, Lcom/google/googlex/gcam/StaticMetadata;->m(F)V

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-object v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_21
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_d7

    nop

    :cond_3
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eq v4, v5, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_23
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_25
    sget-object v2, Lsxs;->a:Lsxs;

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v2, v3, v7, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_software_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_27
    const-string v1, "ZGV2aWNlX2hkcnBsdXNfa2V5"

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v4, Lcom/google/googlex/gcam/PixelRect;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_29
    int-to-long v1, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static/range {p0 .. p0}, Ltbt;->u(Lpnu;)[F

    move-result-object v1

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object v0, Ltbt;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v4, v3}, Lcom/google/googlex/gcam/PixelRect;->l(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-ne v2, v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e8

    nop

    nop

    :goto_2e
    invoke-virtual {v7, v1}, Lcom/google/googlex/gcam/StaticMetadata;->r(Lsyi;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v2, Lsxs;->d:Lsxs;

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    :goto_30
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v2, :cond_6

    nop

    goto/32 :goto_69

    nop

    nop

    :cond_6
    goto/32 :goto_197

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v4}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_33
    new-instance v8, Lcom/google/googlex/gcam/DarkShadingData;

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v4, v5}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v7, v1}, Lcom/google/googlex/gcam/StaticMetadata;->p(I)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-ne v1, v8, :cond_7

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_7
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_37
    iget-wide v2, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_38
    if-ne v1, v9, :cond_8

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v0, v1}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

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

    nop

    nop

    :goto_3b
    invoke-static/range {p0 .. p0}, Ltbt;->i(Lpnu;)Lpou;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v1, v2, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_dark_shading_data_get(JLcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_3d
    invoke-interface {v0, v1}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_a7

    nop

    nop

    :goto_3f
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    sget-object v3, Lsyi;->d:Lsyi;

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    :goto_43
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_44
    invoke-static {v5, v6}, Ltbt;->c(J)F

    move-result v2

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v1}, Lsxg;->a(I)Lsxg;

    move-result-object v1

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v4, v2}, Lcom/google/googlex/gcam/DngColorCalibration;->d(Lcom/google/googlex/gcam/FloatArray9;)V

    goto/32 :goto_3

    nop

    nop

    :goto_47
    invoke-virtual {v4, v2}, Lcom/google/googlex/gcam/DngColorCalibration;->d(Lcom/google/googlex/gcam/FloatArray9;)V

    goto/32 :goto_172

    nop

    nop

    nop

    :goto_48
    sget-object v4, Lcom/google/vr/ndk/base/qbMr/qVSTXuYNqkCvm;->XbWLJutAMVke:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_49
    invoke-interface/range {p0 .. p0}, Lpnu;->J()Z

    move-result v1

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

    :goto_4a
    goto/16 :goto_18a

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_c6

    nop

    nop

    :goto_4c
    const/4 v9, 0x1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_4e
    cmp-long v3, v1, v3

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move-object v3, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    :goto_50
    iget-wide v4, v6, Lcom/google/googlex/gcam/FloatVector;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v1, :cond_a

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v3, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v4, v1}, Lcom/google/googlex/gcam/DngColorCalibration;->b(Lsxg;)V

    goto/32 :goto_46

    nop

    nop

    :goto_54
    if-ne v2, v3, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    :cond_b
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v1, [F

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_56
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    :goto_57
    const-string v3, "Cameras must have at least one focal length."

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-wide v2, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_59
    sget-object v1, Lsxc;->c:Lsxc;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5a
    move-object v13, v8

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    sget-wide v1, Landroid/os/Build;->TIME:J

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_5d
    check-cast v1, Ljava/lang/Byte;

    nop

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {v3, v4, v7, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_max_analog_iso_set(JLcom/google/googlex/gcam/StaticMetadata;F)V

    goto/32 :goto_182

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v2, v1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_60
    invoke-direct {v6}, Lcom/google/googlex/gcam/DngColorCalibrationVector;-><init>()V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_61
    iget v5, v3, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    :goto_62
    if-lt v2, v3, :cond_c

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_eb

    nop

    nop

    :goto_63
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_64
    invoke-static {v2, v3, v7, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_device_os_version_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v7, v1}, Lcom/google/googlex/gcam/StaticMetadata;->k(I)V

    goto/32 :goto_cb

    nop

    nop

    :goto_66
    if-eqz v3, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_14b

    nop

    nop

    nop

    :goto_67
    new-instance v2, Lcom/google/googlex/gcam/PixelRect;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/16 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_ac

    nop

    nop

    :goto_6a
    invoke-interface/range {p0 .. p0}, Lpnu;->l()Lpog;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-interface {v0, v1}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-wide v1, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-interface {v0, v2}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-ne v1, v8, :cond_e

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_6f
    array-length v2, v1

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    :goto_70
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    :goto_74
    check-cast v1, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_75
    iget-wide v8, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v1, v1, Lpou;->b:Lpck;

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_77
    sget-object v3, Lsyi;->b:Lsyi;

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_78
    invoke-virtual {v7, v2}, Lcom/google/googlex/gcam/StaticMetadata;->l(I)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-direct {v4}, Lcom/google/googlex/gcam/DngColorCalibration;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7b
    check-cast v3, Landroid/util/Range;

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    aget-wide v5, v5, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_7d
    goto/16 :goto_5b

    nop

    nop

    :goto_7e
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_7f
    const-string v1, "d2xfa2V5"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_81
    sget-object v1, Lnyp;->l:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_82
    invoke-direct {v8, v1, v2, v10}, Lcom/google/googlex/gcam/DarkShadingData;-><init>(JZ)V

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-nez v1, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget v5, v3, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_86
    iget-object v2, v2, Lpnx;->a:Ljava/lang/String;

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

    nop

    :goto_87
    if-nez v1, :cond_10

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_88
    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_available_f_numbers_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/FloatVector;)V

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_89
    if-ne v2, v3, :cond_11

    nop

    goto/32 :goto_175

    nop

    :cond_11
    goto/32 :goto_15e

    nop

    nop

    :goto_8a
    move v3, v10

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-static {v2, v3, v7, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_model_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-static {v2, v3}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    :goto_8e
    aget v3, v1, v10

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

    nop

    :goto_8f
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    :goto_90
    sget-object v2, Lsxs;->b:Lsxs;

    nop

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_d5

    nop

    nop

    :goto_92
    iget-wide v2, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_93
    if-eqz v1, :cond_12

    nop

    goto/32 :goto_11

    nop

    :cond_12
    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    :goto_94
    invoke-interface/range {p0 .. p0}, Lpnu;->l()Lpog;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    :goto_95
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-static {v1, v3, v4}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :goto_97
    goto :goto_91

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_90

    nop

    nop

    nop

    :goto_99
    invoke-interface {v0, v3}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v2, v3}, Lcom/google/googlex/gcam/PixelRect;->j(I)V

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-static {v3, v4, v7, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_lens_facing_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    goto/32 :goto_129

    nop

    nop

    :goto_9c
    const-string v1, "2D BLC data size does not meet expected length or it is empty."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    int-to-float v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-static {v2, v3, v7, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_make_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    goto/32 :goto_111

    nop

    nop

    :goto_9f
    invoke-virtual {v2, v3}, Lcom/google/googlex/gcam/PixelRect;->k(I)V

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    new-array v1, v8, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    check-cast v2, Landroid/hardware/camera2/params/ColorSpaceTransform;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_a3
    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_a4
    if-gtz v2, :cond_13

    nop

    goto/32 :goto_ee

    nop

    nop

    :cond_13
    goto/32 :goto_15d

    nop

    nop

    nop

    :goto_a5
    invoke-static {v3, v4}, Ltbt;->c(J)F

    move-result v2

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-static/range {p0 .. p0}, Ltbt;->B(Lpnu;)F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    check-cast v1, Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    :goto_a8
    iget-wide v2, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    iget-wide v1, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v6, v4}, Lcom/google/googlex/gcam/DngColorCalibrationVector;->a(Lcom/google/googlex/gcam/DngColorCalibration;)V

    :goto_ab
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iget-wide v1, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_ae
    if-ne v1, v9, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-interface {v0, v2}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-static {v2, v3, v7, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_hardware_revision_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    :goto_b1
    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    check-cast v1, Landroid/util/Range;

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    array-length v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-static/range {p0 .. p0}, Ltbt;->D(Lpnu;)Landroid/util/SizeF;

    move-result-object v1

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-interface {v0, v1}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_b6
    invoke-virtual {v2, v1}, Lcom/google/googlex/gcam/PixelRect;->l(I)V

    goto/32 :goto_168

    nop

    nop

    :goto_b7
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-static {v1, v2}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_b9
    invoke-virtual {v6, v4}, Lcom/google/googlex/gcam/DngColorCalibrationVector;->a(Lcom/google/googlex/gcam/DngColorCalibration;)V

    :goto_ba
    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    if-ne v2, v3, :cond_15

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_199

    nop

    nop

    :goto_bd
    check-cast v1, Lcom/c;

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_be
    sget-object v1, Lsxc;->e:Lsxc;

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_bf
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_c0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_c1
    if-nez v1, :cond_16

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_c2
    iget-wide v2, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v1, v2}, Lpic;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_c5
    check-cast v3, Landroid/hardware/camera2/params/ColorSpaceTransform;

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    sget-object v2, Ltbt;->d:Lprb;

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_c8
    invoke-static {v1}, Lcom/google/googlex/gcam/BufferUtils;->a(Ljava/nio/Buffer;)J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    :goto_c9
    invoke-direct {v7}, Lcom/google/googlex/gcam/StaticMetadata;-><init>()V

    goto/32 :goto_138

    nop

    nop

    nop

    :goto_ca
    const-string v2, "ro.revision"

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_cb
    invoke-static/range {p0 .. p0}, Ltbt;->d(Lpnu;)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_cc
    invoke-static/range {p0 .. p0}, Ltbt;->o(Lpnu;)Lsyi;

    move-result-object v2

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_cd
    sget-object v3, Lsyi;->k:Lsyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    goto/16 :goto_8b

    nop

    nop

    nop

    :goto_cf
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_d0
    check-cast v1, [I

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-static {v3}, Ltbt;->F(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object v3

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    nop

    :goto_d4
    iget-wide v2, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    iget-wide v3, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    :goto_d6
    aput v2, v1, v9

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-virtual {v7, v2}, Lcom/google/googlex/gcam/StaticMetadata;->q(I)V

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-interface {v0, v1}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_da
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_OPTICAL_BLACK_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_db
    goto/16 :goto_18a

    nop

    nop

    nop

    nop

    :goto_dc
    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    check-cast v2, Landroid/hardware/camera2/params/ColorSpaceTransform;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v4, v5}, Lcom/google/googlex/gcam/PixelRect;->j(I)V

    goto/32 :goto_61

    nop

    nop

    :goto_df
    check-cast v0, [B

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    :goto_e0
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e1
    goto/32 :goto_fb

    nop

    nop

    :goto_e2
    invoke-virtual {v2}, Lprb;->o()Z

    move-result v2

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_e3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_optically_black_regions_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/PixelRectVector;)V

    :goto_e6
    goto/32 :goto_131

    nop

    nop

    :goto_e7
    sget-object v2, Lsxs;->c:Lsxs;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    sget-object v3, Lsyi;->p:Lsyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-interface {v0}, Lpnu;->j()Lpnx;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_eb
    aget-object v3, v1, v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-static {v3, v4, v7, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_iso_range_set(JLcom/google/googlex/gcam/StaticMetadata;[F)V

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    goto/16 :goto_143

    nop

    nop

    nop

    nop

    :goto_ee
    goto/32 :goto_142

    nop

    nop

    nop

    :goto_ef
    invoke-static {v2, v3}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_14d

    nop

    nop

    :goto_f0
    invoke-static {v1, v2}, Lcom/a;->zb(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    sget-object v1, Lnyp;->l:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    goto/16 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    if-nez v0, :cond_17

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    :goto_f6
    goto/32 :goto_124

    nop

    nop

    :goto_f7
    invoke-static {v1, v2}, Ltbt;->c(J)F

    move-result v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_f8
    iget v1, v2, Lsxs;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_f9
    const-string v3, "convertToBayerPattern: unsupported color filter arrangement: "

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    array-length v2, v1

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_fb
    return-object v7

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    goto/32 :goto_194

    nop

    nop

    :goto_fd
    check-cast v3, Landroid/hardware/camera2/params/ColorSpaceTransform;

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    goto/16 :goto_91

    nop

    nop

    :goto_ff
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    iget-wide v1, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-virtual {v7, v2}, Lcom/google/googlex/gcam/StaticMetadata;->t(F)V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_102
    array-length v1, v0

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    iget-wide v3, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_106
    if-ne v2, v3, :cond_18

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    invoke-static {v2, v3, v7, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_white_level_set(JLcom/google/googlex/gcam/StaticMetadata;I)V

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_108
    check-cast v1, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_109
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :goto_10a
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    invoke-interface {v0, v1}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_10d
    sget-object v1, Lsxc;->a:Lsxc;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-static/range {v11 .. v17}, Lcom/google/googlex/gcam/GcamModuleJNI;->DarkShadingData_SetDarkShadingDataFromBytes(JLcom/google/googlex/gcam/DarkShadingData;JJ)Z

    move-result v0

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_10f
    aput v2, v1, v9

    nop

    nop

    nop

    nop

    nop

    :goto_110
    goto/32 :goto_d4

    nop

    nop

    :goto_111
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    invoke-virtual {v2}, Lpnx;->a()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_113
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_114
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_115
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    :goto_116
    sget v3, Lcom/a;->fa:I

    nop

    goto/32 :goto_18b

    nop

    nop

    :goto_117
    invoke-interface {v0, v1}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_118
    invoke-direct {v6}, Lcom/google/googlex/gcam/FloatVector;-><init>()V

    goto/32 :goto_187

    nop

    nop

    :goto_119
    iget v1, v1, Lpck;->b:I

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-static {v1}, Lsxg;->a(I)Lsxg;

    move-result-object v1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_11c
    const v2, 0x46bb8000    # 24000.0f

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    goto/16 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    :goto_11f
    if-eqz v0, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    :cond_19
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_120
    iget-wide v3, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_121
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_122
    invoke-static {v2, v3, v7, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_device_set(JLcom/google/googlex/gcam/StaticMetadata;Ljava/lang/String;)V

    goto/32 :goto_17b

    nop

    nop

    :goto_123
    iget-wide v3, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    invoke-direct {v6}, Lcom/google/googlex/gcam/FloatVector;-><init>()V

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_126
    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_available_focal_lengths_mm_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/FloatVector;)V

    goto/32 :goto_13a

    nop

    nop

    :goto_127
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    aput v2, v1, v9

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_129
    invoke-interface/range {p0 .. p0}, Lpnu;->s()Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    :goto_12a
    iget-wide v4, v6, Lcom/google/googlex/gcam/DngColorCalibrationVector;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    :goto_12b
    invoke-direct {v4}, Lcom/google/googlex/gcam/DngColorCalibration;-><init>()V

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    iget v2, v2, Lpck;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    :goto_12e
    if-eqz v2, :cond_1a

    nop

    goto/32 :goto_14a

    nop

    nop

    :cond_1a
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    invoke-static {v2}, Ltbt;->F(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    invoke-interface {v0, v1}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_131
    invoke-static/range {p0 .. p0}, Ltbt;->r(Lpnu;)Ljava/lang/Integer;

    move-result-object v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_132
    invoke-static {v8, v9, v7, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_has_ois_set(JLcom/google/googlex/gcam/StaticMetadata;Z)V

    :goto_133
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_134
    invoke-virtual {v1, v7}, Lcom/c;->a(Lcom/google/googlex/gcam/StaticMetadata;)V

    :goto_135
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_136
    sget-object v1, Lcom/a;->ed:Ljava/lang/Object;

    nop

    nop

    nop

    .local v1, "v1":Ljava/lang/Object;
    goto/32 :goto_3e

    nop

    nop

    :goto_137
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_138
    const-string v1, "Z29vZ2xl"

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    :goto_139
    if-eqz v2, :cond_1b

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_13b
    invoke-virtual {v2}, Lpnx;->a()I

    move-result v2

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    iget-object v2, v1, Lpou;->b:Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    new-instance v4, Lcom/google/googlex/gcam/DngColorCalibration;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    invoke-static {v3}, Ltbt;->F(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object v3

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    aput v2, v1, v10

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_140
    move-object v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    :goto_141
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->GetVersion()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_142
    move v2, v10

    nop

    nop

    nop

    nop

    :goto_143
    goto/32 :goto_165

    nop

    nop

    :goto_144
    if-ne v1, v2, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1c
    goto/32 :goto_17d

    nop

    nop

    nop

    :goto_145
    sget-object v3, Lsyi;->g:Lsyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_146
    invoke-static/range {p0 .. p0}, Ltbt;->o(Lpnu;)Lsyi;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_147
    invoke-virtual {v4, v1}, Lcom/google/googlex/gcam/DngColorCalibration;->b(Lsxg;)V

    goto/32 :goto_47

    nop

    nop

    :goto_148
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    :goto_149
    if-ne v2, v3, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :cond_1d
    :goto_14a
    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_14b
    const/4 v13, 0x0

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_14c
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    new-instance v6, Lcom/google/googlex/gcam/FloatVector;

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    sget-object v1, Lsxc;->b:Lsxc;

    nop

    nop

    nop

    nop

    :goto_14f
    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    :goto_150
    new-instance v4, Lcom/google/googlex/gcam/DngColorCalibration;

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    :goto_151
    invoke-static {v0}, Lsyh;->a(Lsyh;)J

    move-result-wide v14

    nop

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    :goto_152
    const-string v4, "HDR+ "

    nop

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_153
    goto :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_154
    goto/32 :goto_a9

    nop

    nop

    :goto_155
    iget-wide v4, v6, Lcom/google/googlex/gcam/PixelRectVector;->a:J

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    const v1, 0x15

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_157
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_158
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_159
    invoke-static {v2, v3, v7, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_exposure_time_range_ms_set(JLcom/google/googlex/gcam/StaticMetadata;[F)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_15a
    move v2, v10

    nop

    nop

    nop

    nop

    :goto_15b
    goto/32 :goto_b3

    nop

    nop

    :goto_15c
    iget v3, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    move v2, v9

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_15e
    sget-object v3, Lsyi;->i:Lsyi;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_15f
    if-eq v2, v3, :cond_1e

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_18c

    nop

    nop

    :goto_160
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_161
    sget-object v3, Lpog;->b:Lpog;

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_162
    invoke-virtual {v1}, Lpog;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    :goto_163
    goto/16 :goto_a3

    nop

    nop

    nop

    nop

    :goto_164
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_165
    const-string v3, "Cameras must have at least one f-number (aperture size)."

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_166
    invoke-interface {v0, v1}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_167
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_168
    invoke-virtual {v7, v2}, Lcom/google/googlex/gcam/StaticMetadata;->i(Lcom/google/googlex/gcam/PixelRect;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_169
    aput-wide v3, v5, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    invoke-virtual {v7, v1}, Lcom/google/googlex/gcam/StaticMetadata;->j(Lsxc;)V

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    const/4 v8, 0x2

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_16c
    move-wide/from16 v16, v1

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_16d
    invoke-virtual {v4, v5}, Lcom/google/googlex/gcam/PixelRect;->k(I)V

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_16e
    invoke-static {v2}, Ltbt;->F(Landroid/hardware/camera2/params/ColorSpaceTransform;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_16f
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_WHITE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_130

    nop

    nop

    :goto_170
    xor-int/2addr v2, v9

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_171
    invoke-interface {v0}, Lpnu;->j()Lpnx;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_172
    invoke-virtual {v4, v3}, Lcom/google/googlex/gcam/DngColorCalibration;->c(Lcom/google/googlex/gcam/FloatArray9;)V

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_173
    invoke-static {v3, v4, v7, v1, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_device_os_unix_ms_set(JLcom/google/googlex/gcam/StaticMetadata;J)V

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :goto_174
    if-eq v2, v3, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    :cond_1f
    :goto_175
    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_176
    if-nez v1, :cond_20

    nop

    goto/32 :goto_f3

    nop

    :cond_20
    goto/32 :goto_38

    nop

    nop

    :goto_177
    invoke-interface {v0, v1}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_178
    invoke-direct {v0, v2, v3}, Lsyh;-><init>(J)V

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_179
    aget v4, v1, v3

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_17a
    invoke-virtual {v6, v2}, Lcom/google/googlex/gcam/FloatVector;->b(F)V

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_17b
    sget-object v1, Lprc;->a:Lpic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_17c
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    :goto_17d
    sget-object v2, Ltbt;->b:Ljava/lang/String;

    nop

    goto/32 :goto_f9

    nop

    nop

    :goto_17e
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_17f
    iget-wide v4, v6, Lcom/google/googlex/gcam/FloatVector;->a:J

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

    :goto_180
    check-cast v1, [Landroid/graphics/Rect;

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

    :goto_181
    invoke-virtual {v2, v3}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_182
    new-instance v6, Lcom/google/googlex/gcam/DngColorCalibrationVector;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_183
    if-nez v1, :cond_21

    nop

    goto/32 :goto_ba

    nop

    nop

    :cond_21
    goto/32 :goto_167

    nop

    nop

    nop

    :goto_184
    invoke-virtual {v7, v1}, Lcom/google/googlex/gcam/StaticMetadata;->s(F)V

    goto/32 :goto_70

    nop

    nop

    :goto_185
    const/high16 v2, 0x46fa0000    # 32000.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    :goto_186
    invoke-interface {v0, v3}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_187
    invoke-static {v1, v6}, Lcom/google/googlex/gcam/BufferUtils;->e([FLcom/google/googlex/gcam/FloatVector;)V

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_188
    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_dng_color_calibration_set(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/DngColorCalibrationVector;)V

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    :goto_189
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    :goto_18a
    goto/32 :goto_21

    nop

    nop

    :goto_18b
    if-nez v3, :cond_22

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :cond_22
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_18c
    goto/16 :goto_dc

    nop

    :goto_18d
    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    goto/16 :goto_91

    nop

    :goto_18f
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_190
    if-nez v1, :cond_23

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_191
    move-object v3, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_192
    iget-wide v1, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    goto/32 :goto_12a

    nop

    nop

    :goto_193
    iget-wide v2, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_194
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_195
    iget-wide v2, v7, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    :goto_196
    new-instance v0, Lsyh;

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    :goto_197
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    :goto_198
    invoke-interface {v0}, Lpnu;->j()Lpnx;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_199
    sget-object v3, Lsyi;->m:Lsyi;

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    :goto_19a
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    :goto_19b
    new-instance v7, Lcom/google/googlex/gcam/StaticMetadata;

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_19c
    sget-object v1, Lsxc;->d:Lsxc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop
.end method

.method public static final z(Lpro;Lcom/google/googlex/gcam/FrameMetadata;)Lcom/google/googlex/gcam/LiveHdrMetadata;
    .locals 9

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_2
    invoke-static {}, Lcom/a;->lsb_a_a()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v3, v4, v0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_metering_interval_ms_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_4
    if-nez v4, :cond_1

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    check-cast v1, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_6
    sget v2, Lcom/a;->sCorrectorExposure_time_ms:F

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lcom/google/googlex/gcam/FrameMetadata;->a()F

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_8
    aget v2, p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_9
    invoke-interface {p0, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    invoke-static {v3, v4, v0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_metering_interval_ms_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    const v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v2, 0xf

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/LiveHdrMetadata;->f(F)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_e
    aget v2, p0, v2

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

    nop

    :goto_f
    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/LiveHdrMetadata;->h(F)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    const v6, 0x0

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

    :goto_11
    sget v3, Lcom/a;->sCorrectorPost_raw_digital_gain:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_13
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    invoke-static {v3, v4, v0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_hdr_ratio_factor_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v6}, Lcom/google/googlex/gcam/LiveHdrMetadata;->j(F)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v6}, Lcom/google/googlex/gcam/LiveHdrMetadata;->k(F)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object v0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_19
    new-instance v0, Lcom/google/googlex/gcam/LiveHdrMetadata;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_1a
    aget v2, v1, v2

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_1b
    mul-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {}, Lcom/a;->lsb_b()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_1e
    iget-wide v3, v0, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v3, v4, v0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_motion_magnitude_pix_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_20
    mul-float/2addr v2, v3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Lcom/a;->lsb_a()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sput v6, Lcom/a;->sShort_tet:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_23
    array-length v1, p0

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v7, v8, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_actual_analog_gain_get(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v7

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_25
    mul-float/2addr v6, v7

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_27
    const/16 v3, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_28
    aget v2, p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_29
    sget-object v1, Lnym;->c:Landroid/hardware/camera2/CaptureResult$Key;

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

    :goto_2a
    iget-wide v7, p1, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    mul-float/2addr v6, v7

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2d
    aget v2, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_2e
    mul-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/LiveHdrMetadata;->j(F)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v3, v4, v0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_filtered_motion_speed_pix_per_ms_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V

    goto/32 :goto_1d

    nop

    nop

    :goto_31
    aget p0, p0, v3

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_32
    sget v3, Lcom/a;->sCorrectorDigital_gain:F

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_33
    const/16 v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_34
    return-object v0

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_4c

    nop

    nop

    :goto_36
    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/LiveHdrMetadata;->e(F)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlex/gcam/LiveHdrMetadata;-><init>(JZ)V

    goto/32 :goto_3a

    nop

    nop

    :goto_38
    check-cast p0, [F

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

    :goto_39
    iget-wide v3, v0, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3a
    sget-object v1, Lnym;->c:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_3d
    cmpg-float v4, v4, v3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/16 v2, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0, p0}, Lcom/google/googlex/gcam/LiveHdrMetadata;->i(F)V

    :goto_40
    goto/32 :goto_17

    nop

    nop

    :goto_41
    iget-wide v7, p1, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_42
    if-gt v1, v3, :cond_3

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_LiveHdrMetadata()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_44
    sget v3, Lcom/a;->sCorrectorAnalog_gain:F

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

    :goto_45
    iget-wide v3, v0, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

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

    :goto_46
    aget v2, p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_47
    goto :goto_51

    nop

    nop

    :goto_48
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v3, v4, v0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_motion_magnitude_pix_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5b

    nop

    :goto_4b
    sget v6, Lcom/a;->sShort_tet:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4c
    goto/32 :goto_5c

    nop

    nop

    :goto_4d
    const/16 v2, 0xa

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4e
    invoke-static {v3, v4, v0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_filtered_motion_speed_pix_per_ms_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-interface {p0, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v3, v4, v0, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_night_factor_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V

    :goto_51
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    aget v1, v1, v2

    nop

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

    :goto_53
    aget v2, v1, v2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_54
    iget-wide v3, v0, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_55
    sget-object v1, Lnym;->a:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const/16 v2, 0xb

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-wide v3, v0, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v1, :cond_5

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/LiveHdrMetadata;->j(F)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5d
    array-length v2, v1

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_5e
    invoke-static {v7, v8, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_post_raw_digital_gain_get(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_5f
    const/high16 v6, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_60
    const/4 v2, 0x3

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

    :goto_61
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_62
    invoke-static {v3, v4, v0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_night_factor_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_63
    if-nez v1, :cond_6

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {v7, v8, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_applied_digital_gain_get(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_40

    nop

    :goto_66
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    aget v2, v1, v2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_68
    iget-wide v7, p1, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_69
    const/16 v2, 0x9

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_6a
    iget-wide v3, v0, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-gtz v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    aget p0, p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_6d
    aget v2, p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/LiveHdrMetadata;->g(F)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-static {v4, v5, v0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_max_hdr_ratio_override_set(JLcom/google/googlex/gcam/LiveHdrMetadata;F)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_70
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget-wide v3, v0, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_72
    mul-float/2addr v6, v7

    nop

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

    nop

    :goto_73
    if-gtz v1, :cond_8

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_8
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-wide v3, v0, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_75
    iget-wide v4, v0, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-wide v3, v0, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v0, p0}, Lcom/google/googlex/gcam/LiveHdrMetadata;->i(F)V

    goto/32 :goto_65

    nop

    nop

    :goto_78
    aget v2, v1, v2

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_79
    if-gt v1, v2, :cond_9

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_27

    nop

    nop
.end method


# virtual methods
.method public final a(I)F
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroid/util/Rational;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Lpnu;->j()Lpnx;

    move-result-object v1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    :goto_7
    mul-int/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    const-string v0, "ZXhwY29tcF9rZXk"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p1, p0}, Landroid/util/Rational;-><init>(II)V

    goto/32 :goto_9

    nop

    nop

    :goto_b
    invoke-static {v0, v1}, Lcom/a;->ad_mb(Ljava/lang/Object;I)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    add-int/2addr p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x3

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

    :goto_f
    check-cast p0, Landroid/util/Rational;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    move-result v1

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

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0, v0}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_14
    iget-object p0, p0, Ltbt;->e:Lpnu;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Lpnx;->a()I

    move-result v1

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

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop
.end method

.method public final b(Lpro;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    mul-float p1, p1, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return p1

    nop

    :goto_3
    sget p1, Lcom/a;->sCorrectorExposure_time_ms:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget v0, Lcom/a;->sCorrectorAnalog_gain:F

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

    :goto_5
    sget v0, Lcom/a;->sCorrectorDigital_gain:F

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

    nop

    :goto_6
    invoke-static {p1, v0}, Lcom/a;->getExposureISOPostRAW(Lpro;Lcom/google/googlex/gcam/FrameMetadata;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    mul-float p1, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final g(Lpro;)Lpnu;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-static {v0, p0, p1, v1}, Ltbt;->E(Lpnu;Lpnv;Lpro;Lpnx;)Lpnu;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Ltbt;->e:Lpnu;

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Ltbt;->a:Lpnv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_a
    const v0, 0xd

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    :goto_c
    const v1, 0x10

    nop

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
    add-int v0, v0, v1

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
.end method

.method public final h(Lpro;Lpnx;)Lpnu;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ltbt;->e:Lpnu;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, p0, p1, p2}, Ltbt;->E(Lpnu;Lpnv;Lpro;Lpnx;)Lpnu;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ltbt;->a:Lpnv;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop
.end method

.method public final l(Lpro;Lpnx;)Lcom/google/googlex/gcam/FrameMetadata;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, v0, v0, p2}, Ltbt;->w(Lpro;Lcom/google/googlex/gcam/GyroSampleVector;Ljava/util/Map;Lpnx;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object p0

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
.end method

.method public final m(Lpro;Lpnx;)Lcom/google/googlex/gcam/FrameMetadataKey;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    :goto_2
    check-cast v0, Ljava/lang/Long;

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

    :goto_3
    iget-object p0, p0, Ltbt;->a:Lpnv;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    new-instance p1, Lcom/google/googlex/gcam/FrameMetadataKey;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v1, p0, p1, p2}, Ltbt;->H(Lpnu;Lpnv;Lpro;Lpnx;)Lsyi;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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
    const v1, 0x2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, v0, v1, p0}, Lcom/google/googlex/gcam/FrameMetadataKey;-><init>(JLsyi;)V

    goto/32 :goto_10

    nop

    nop

    :goto_9
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1, p2}, Ltbt;->h(Lpro;Lpnx;)Lpnu;

    move-result-object v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    const v0, 0x14

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

    :goto_f
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final p(Lpro;Lpnx;)Lsyi;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ltbt;->e:Lpnu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ltbt;->a:Lpnv;

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, p0, p1, p2}, Ltbt;->H(Lpnu;Lpnv;Lpro;Lpnx;)Lsyi;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final q(Lpro;)Lcom/google/googlex/gcam/SpatialGainMap;
    .locals 18

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static/range {v4 .. v10}, Lcom/google/googlex/gcam/GcamModuleJNI;->SpatialGainMap_WriteRggb(JLcom/google/googlex/gcam/SpatialGainMap;IIIF)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, v1}, Lprj;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

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
    invoke-static {v1}, Ltbt;->v(I)[I

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_63

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_26

    nop

    nop

    :goto_8
    if-lt v13, v4, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Landroid/hardware/camera2/params/LensShadingMap;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_a
    check-cast v6, Ljava/lang/Integer;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface/range {p1 .. p1}, Lpro;->f()Lprj;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget v2, Ltbt;->edge:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    sget v3, Ltbt;->center:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/hardware/camera2/params/LensShadingMap;->getColumnCount()I

    move-result v2

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_10
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    move/from16 v17, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_12
    if-lt v15, v3, :cond_2

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

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lt v10, v2, :cond_3

    nop

    goto/32 :goto_16

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v1, Ltbt;->b:Ljava/lang/String;

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_15
    goto :goto_1f

    nop

    nop

    :goto_16
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_18
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v14, v10, v15}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactor(III)F

    move-result v16

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1a
    const v1, 0xf

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v5, p1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1c
    invoke-static/range {v0 .. v8}, L_029;->CUSTOM_SHADING_MAP(IIFF[FIIIF)Lcom/google/googlex/gcam/SpatialGainMap;

    move-result-object v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    aget v14, v1, v13

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_1e
    move v10, v12

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-boolean v10, Lcom/a;->sysDigitalSensivity:Z

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v1}, Ltbt;->r(Lpnu;)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_22
    return-object v0

    nop

    :goto_23
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

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

    :goto_26
    return-object v11

    nop

    :catchall_0
    :goto_27
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_48

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_5f

    nop

    nop

    :goto_2b
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move/from16 v10, v16

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

    :goto_2d
    move v9, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2e
    iget-wide v4, v11, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2f
    const-string v0, "custom.shading_map_enable"

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_30
    add-int/lit8 v10, v17, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_31
    move-object/from16 v8, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

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

    :goto_33
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_34
    return-object v0

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_f

    nop

    nop

    :goto_36
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_CORRECTION_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v1, p1

    nop

    nop

    invoke-interface {v1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {v5, v6}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_52

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_SpatialGainMap__SWIG_2(II)J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3c
    move v8, v15

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v7, Ljava/lang/Integer;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual/range {p0 .. p1}, Ltbt;->g(Lpro;)Lpnu;

    move-result-object v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_40
    add-int/lit8 v15, v15, 0x1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_41
    new-instance v11, Lcom/google/googlex/gcam/SpatialGainMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_42
    invoke-interface {v9, v7}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast v0, Ljava/lang/Integer;

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

    :goto_44
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    :goto_45
    new-instance v0, Lcom/google/googlex/gcam/SpatialGainMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_46
    check-cast v7, Landroid/util/Range;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_47
    move v15, v12

    nop

    nop

    :goto_48
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-nez v10, :cond_6

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_4b
    move-object v6, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_4c
    add-int/lit8 v13, v13, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4d
    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v9, v7}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_4f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_50
    iget-object v9, v8, Ltbt;->e:Lpnu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    nop

    :goto_52
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_53
    sget v1, Ltbt;->rows:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    check-cast v7, Ljava/lang/Integer;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move v7, v10

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    :goto_57
    invoke-static {v0}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_58
    invoke-direct {v11, v4, v5}, Lcom/google/googlex/gcam/SpatialGainMap;-><init>(J)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-direct {v0}, Lcom/google/googlex/gcam/SpatialGainMap;-><init>()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const/4 v12, 0x0

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_5b
    sget-object v4, Ltbt;->channelGains:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_5c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_5d
    sget v8, Ltbt;->isoCompFactor:F

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

    :goto_5e
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_60
    const v0, 0x19

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_61
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5e

    nop

    :goto_62
    move v13, v12

    nop

    nop

    :goto_63
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_64
    const-string v2, "android.statistics.lensShadingMap was null, returning the empty SpatialGainMap(). Requested mode was "

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_65
    sget v0, Ltbt;->cols:I

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_66
    invoke-virtual {v0}, Landroid/hardware/camera2/params/LensShadingMap;->getRowCount()I

    move-result v3

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final t(Lpro;)[F
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aput p1, v3, v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-static {p1}, Ltbt;->A(Lprk;)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Ltbt;->g(Lpro;)Lpnu;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aget p0, p0, v2

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

    :goto_8
    const v1, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    aget v1, p0, v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_a
    return-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    aput p0, v3, p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-array v3, v3, [F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    invoke-static {p0, p1}, Ltbt;->R(Lpnu;Lpro;)[F

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v3, 0x3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    aput v1, v3, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final w(Lpro;Lcom/google/googlex/gcam/GyroSampleVector;Ljava/util/Map;Lpnx;)Lcom/google/googlex/gcam/FrameMetadata;
    .locals 33

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    move-object/from16 v3, p2

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_1
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1c

    nop

    nop

    :goto_5
    invoke-direct {v5}, Lcom/google/googlex/gcam/FrameMetadata;-><init>()V

    :try_start_0
    const-string v6, "characteristics"

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    invoke-virtual {v1, v2, v4}, Ltbt;->h(Lpro;Lpnx;)Lpnu;

    move-result-object v7

    nop

    nop

    if-nez v4, :cond_1

    nop

    nop

    nop

    invoke-interface {v7}, Lpnu;->j()Lpnx;

    move-result-object v4

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_6
    iget-object v8, v4, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v8}, Ltbt;->j(Lpro;Ljava/lang/String;)Lpro;

    move-result-object v8

    nop

    const-string v6, "physical2fm"

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->j()Lcom/google/googlex/gcam/FaceInfoVector;

    move-result-object v9

    nop

    nop

    nop

    move-object/from16 v10, p3

    nop

    invoke-static {v7, v8, v10, v9}, Ltbt;->M(Lpnu;Lprk;Ljava/util/Map;Lcom/google/googlex/gcam/FaceInfoVector;)V

    sget-object v9, Lnyn;->g:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_f

    nop

    nop

    :catch_1
    move-exception v0

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

    :goto_8
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

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

    :goto_9
    goto/16 :goto_f

    nop

    :goto_a
    :try_start_3
    sget-object v1, Lnyr;->k:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v1}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, [B

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lnyr;->l:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, [F

    nop
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_7

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_2

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :cond_2
    :goto_d
    :try_start_4
    sget-object v1, Lnyo;->r:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    if-eqz v1, :cond_14

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lnyo;->s:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    if-eqz v1, :cond_14

    nop

    sget-object v1, Lnyo;->t:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    if-eqz v1, :cond_14

    nop

    nop

    nop

    sget-object v1, Lnyo;->r:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v2, v1}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, [J

    nop

    sget-object v4, Lnyo;->s:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v4}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, [I

    nop

    nop

    nop

    sget-object v10, Lnyo;->t:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v2, v10}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    check-cast v10, [I

    nop

    nop

    nop

    if-eqz v1, :cond_14

    nop

    nop

    nop

    if-eqz v4, :cond_14

    nop

    nop

    if-eqz v10, :cond_14

    nop

    array-length v13, v1

    nop

    nop

    nop

    nop

    nop

    array-length v14, v4

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_f
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_11

    nop

    :catch_3
    :try_start_5
    sget-object v7, Ltbt;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    aget v4, v4, v13

    nop

    nop

    nop

    nop

    nop

    float-to-int v4, v4

    nop

    new-instance v13, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Touch roi type "

    nop

    nop

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not exist."

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_11
    const/4 v4, 0x2

    nop

    new-array v7, v4, [Lcom/google/googlex/gcam/AeModeResult;

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    aput-object v10, v7, v4

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    aput-object v11, v7, v4

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v7}, Lcom/google/googlex/gcam/AeResults;->d([Lcom/google/googlex/gcam/AeModeResult;)V

    goto :goto_12

    nop

    nop

    :cond_5
    invoke-static {v2}, Lcom/a;->stet(Lcom/google/googlex/gcam/AeResults;)[J

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iget-wide v10, v2, Lcom/google/googlex/gcam/AeResults;->a:J

    nop

    nop

    nop

    nop

    invoke-static {v10, v11, v2, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeResults_mode_result_set(JLcom/google/googlex/gcam/AeResults;[J)V

    :goto_12
    sget-object v4, Lnyq;->D:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    if-eqz v4, :cond_6

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Ljava/lang/Boolean;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    xor-int/2addr v4, v7

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Lcom/google/googlex/gcam/AeResults;->f(Z)V

    :cond_6
    const-string v6, "smask"

    nop

    nop

    nop

    sget-object v2, Lnyo;->l:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    if-eqz v2, :cond_4e

    nop

    nop

    sget-object v2, Lnyo;->l:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, [B

    nop

    if-eqz v2, :cond_4e

    nop

    array-length v4, v2

    nop
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_7

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_7
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_14
    const v0, 0x7

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_15
    move-object/from16 v23, v6

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v13, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v19, v6

    nop

    nop

    nop

    :try_start_6
    aget v6, v9, v16

    nop

    nop

    nop

    nop

    nop

    int-to-float v6, v6

    nop

    add-int/lit8 v10, v10, 0x3

    nop

    nop

    nop

    aget v10, v9, v10

    nop

    nop

    int-to-float v10, v10

    nop

    nop

    add-float v16, v11, v6

    nop

    nop

    const/high16 v20, 0x3f000000    # 0.5f

    nop

    nop

    mul-float v16, v16, v20

    nop

    nop

    nop

    nop

    move-object/from16 v21, v9

    nop

    nop

    nop

    int-to-float v9, v12

    nop

    nop

    nop

    nop

    div-float v9, v16, v9

    nop

    nop

    nop

    nop

    nop

    add-float v16, v15, v10

    nop

    mul-float v16, v16, v20

    nop

    nop

    nop

    move-object/from16 v22, v4

    nop

    nop

    nop

    nop

    move/from16 v4, v18

    nop

    nop

    nop

    int-to-float v1, v4

    nop

    nop

    div-float v1, v16, v1

    nop

    nop

    nop

    sub-float/2addr v6, v11

    nop

    nop

    nop

    nop

    nop

    sub-float/2addr v10, v15

    nop

    nop

    nop

    add-float/2addr v6, v10

    nop

    nop

    nop

    nop

    nop

    mul-float v6, v6, v20

    nop

    nop

    nop

    nop

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    nop

    nop

    nop

    int-to-float v10, v10

    nop

    nop

    nop

    nop

    div-float/2addr v6, v10

    nop

    nop

    nop

    new-instance v10, Lcom/google/googlex/gcam/FaceInfo;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->j()Lcom/google/googlex/gcam/FaceInfoVector;

    move-result-object v11

    nop

    nop

    invoke-virtual {v11, v14}, Lcom/google/googlex/gcam/FaceInfoVector;->b(I)Lcom/google/googlex/gcam/FaceInfo;

    move-result-object v11

    nop

    invoke-direct {v10, v11}, Lcom/google/googlex/gcam/FaceInfo;-><init>(Lcom/google/googlex/gcam/FaceInfo;)V

    invoke-virtual {v10, v9}, Lcom/google/googlex/gcam/FaceInfo;->c(F)V

    invoke-virtual {v10, v1}, Lcom/google/googlex/gcam/FaceInfo;->d(F)V

    invoke-virtual {v10, v6}, Lcom/google/googlex/gcam/FaceInfo;->e(F)V

    invoke-virtual {v13, v10}, Lcom/google/googlex/gcam/FaceInfoVector;->c(Lcom/google/googlex/gcam/FaceInfo;)V

    add-int/lit8 v14, v14, 0x1

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v1, p0

    nop

    move v11, v4

    nop

    nop

    nop

    nop

    move-object/from16 v6, v19

    nop

    nop

    nop

    nop

    move-object/from16 v9, v21

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v4, v22

    nop

    nop

    goto/16 :goto_4e

    nop

    nop

    :catch_4
    move-exception v0

    nop

    nop

    nop

    goto/16 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_8
    move-object/from16 v22, v4

    nop

    nop

    move-object/from16 v19, v6

    nop

    nop

    nop

    sget-object v1, Ltbt;->b:Ljava/lang/String;

    nop

    const-string v4, "Inconsistent number of faces (%d) vs. skin area elements (%d)."

    nop

    nop

    const/4 v6, 0x2

    nop

    nop

    new-array v9, v6, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->j()Lcom/google/googlex/gcam/FaceInfoVector;

    move-result-object v6

    nop

    invoke-virtual {v6}, Lcom/google/googlex/gcam/FaceInfoVector;->a()J

    move-result-wide v10

    nop

    nop

    nop

    nop

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    aput-object v6, v9, v10

    nop

    nop

    nop

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    const/4 v10, 0x1

    nop

    nop

    nop

    aput-object v6, v9, v10

    nop

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_9
    move-object/from16 v22, v4

    nop

    nop

    nop

    nop

    move-object/from16 v19, v6

    nop

    nop

    :goto_19
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v8, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v8, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    nop

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v8, v6}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, [Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->e()Lcom/google/googlex/gcam/AeMetadata;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v9}, Lcom/google/googlex/gcam/AeMetadata;->b()Lcom/google/googlex/gcam/WeightedPixelRectVector;

    move-result-object v9

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    invoke-static {v1, v10, v9}, Ltbt;->K([Landroid/hardware/camera2/params/MeteringRectangle;ZLcom/google/googlex/gcam/WeightedPixelRectVector;)V

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->h()Lcom/google/googlex/gcam/AwbMetadata;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lcom/google/googlex/gcam/AwbMetadata;->a()Lcom/google/googlex/gcam/WeightedPixelRectVector;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v4, v10, v1}, Ltbt;->K([Landroid/hardware/camera2/params/MeteringRectangle;ZLcom/google/googlex/gcam/WeightedPixelRectVector;)V

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->g()Lcom/google/googlex/gcam/AfMetadata;

    move-result-object v1

    nop

    invoke-virtual {v1}, Lcom/google/googlex/gcam/AfMetadata;->a()Lcom/google/googlex/gcam/WeightedPixelRectVector;

    move-result-object v1

    nop

    const/4 v4, 0x1

    nop

    nop

    invoke-static {v6, v4, v1}, Ltbt;->K([Landroid/hardware/camera2/params/MeteringRectangle;ZLcom/google/googlex/gcam/WeightedPixelRectVector;)V

    invoke-static {v2, v5}, Lcom/a;->getExposureISOPostRAW(Lpro;Lcom/google/googlex/gcam/FrameMetadata;)V

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v8, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_a

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    invoke-virtual {v5, v1}, Lcom/google/googlex/gcam/FrameMetadata;->B(F)V

    :cond_a
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/lang/Float;

    nop

    nop

    nop

    if-eqz v1, :cond_b

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v1}, Lcom/google/googlex/gcam/FrameMetadata;->z(F)V

    :cond_b
    const-string v6, "scaler"

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    sget v1, Lcom/a;->aa:I

    nop

    nop

    nop

    if-eqz v1, :cond_c

    nop

    nop

    nop

    nop

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v8, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Landroid/graphics/Rect;

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->n()Lcom/google/googlex/gcam/MeshWarp;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-static {v8, v1, v2}, Ltbt;->L(Lcom/google/googlex/gcam/MeshWarp;Landroid/graphics/Rect;Lprk;)V

    :cond_c
    const-string v8, " with value "

    nop

    nop

    nop

    nop

    const-string v9, "No enum "

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x3

    nop

    nop

    nop

    nop

    sget v1, Lcom/a;->ab:I

    nop

    if-nez v1, :cond_14

    nop

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_DATA_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v2, v1}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1a
    if-lt v4, v13, :cond_d

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :cond_d
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v6, ""

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    :goto_20
    :try_start_8
    sget-object v11, Lsxt;->d:[Lsxt;

    nop

    nop

    if-ge v10, v13, :cond_13

    nop

    nop

    nop

    aget-object v11, v11, v10

    nop

    nop

    nop

    nop

    nop

    iget v12, v11, Lsxt;->e:I

    nop

    nop

    if-ne v12, v4, :cond_12

    nop

    nop

    nop

    nop

    nop

    move-object v10, v11

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-wide v11, v15, Lcom/google/googlex/gcam/OisMetadata;->a:J

    nop

    nop

    nop

    nop

    iget v4, v10, Lsxt;->e:I

    nop

    invoke-static {v11, v12, v15, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->OisMetadata_lens_optical_stabilization_mode_set(JLcom/google/googlex/gcam/OisMetadata;I)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    nop

    nop

    move-object/from16 v18, v14

    nop

    nop

    nop

    nop

    iget-wide v13, v15, Lcom/google/googlex/gcam/OisMetadata;->a:J

    nop

    nop

    nop

    nop

    invoke-static {v13, v14, v15, v10, v11}, Lcom/google/googlex/gcam/GcamModuleJNI;->OisMetadata_timestamp_ois_clock_ns_set(JLcom/google/googlex/gcam/OisMetadata;J)V

    iget-wide v10, v15, Lcom/google/googlex/gcam/OisMetadata;->a:J

    nop

    nop

    nop

    invoke-static {v10, v11, v15}, Lcom/google/googlex/gcam/GcamModuleJNI;->OisMetadata_ois_positions_get(JLcom/google/googlex/gcam/OisMetadata;)J

    move-result-wide v10

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v13, 0x0

    nop

    nop

    nop

    cmp-long v1, v10, v13

    nop

    if-nez v1, :cond_e

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto :goto_22

    nop

    nop

    nop

    :cond_e
    new-instance v1, Lcom/google/googlex/gcam/OisPositionVector;

    nop

    const/4 v4, 0x0

    nop

    invoke-direct {v1, v10, v11, v4}, Lcom/google/googlex/gcam/OisPositionVector;-><init>(JZ)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_22
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move-object v1, v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_24
    move-object/from16 v6, v23

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_25
    if-nez v4, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_f
    :try_start_9
    invoke-static {}, Ltjv;->a()Ltjv;

    move-result-object v7

    nop

    sget-object v10, Ltij;->a:Ltij;

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    invoke-static {v10, v2, v11, v4, v7}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object v2

    nop

    invoke-static {v2}, Ltkg;->E(Ltkg;)V

    check-cast v2, Ltij;

    nop

    nop

    iget-boolean v4, v2, Ltij;->b:Z

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_4e

    nop

    iget v4, v2, Ltij;->c:I

    nop

    nop

    nop

    nop

    if-lez v4, :cond_4e

    nop

    nop

    iget v4, v2, Ltij;->d:I

    nop

    nop

    nop
    :try_end_9
    .catch Ltky; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_26
    move-object v1, v0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_28
    move-object/from16 v14, v18

    nop

    nop

    :try_start_a
    array-length v4, v14

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    :goto_29
    if-ge v10, v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    aget-object v11, v14, v10

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Landroid/hardware/camera2/params/OisSample;->getTimestamp()J

    move-result-wide v26

    nop

    nop

    invoke-virtual {v11}, Landroid/hardware/camera2/params/OisSample;->getXshift()F

    move-result v28

    nop

    nop

    invoke-virtual {v11}, Landroid/hardware/camera2/params/OisSample;->getYshift()F

    move-result v29

    nop

    nop

    nop

    nop

    iget-wide v12, v1, Lcom/google/googlex/gcam/OisPositionVector;->a:J

    nop

    nop

    move-wide/from16 v23, v12

    nop

    nop

    nop

    move-object/from16 v25, v1

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v23 .. v29}, Lcom/google/googlex/gcam/GcamModuleJNI;->OisPositionVector_emplace_back(JLcom/google/googlex/gcam/OisPositionVector;JFF)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_2a
    if-lez v4, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v16, v10, 0x2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2c
    sget-object v2, Ltbt;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_2d
    const-string v8, " with value "

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_2e
    move-object/from16 v2, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-object/from16 v23, v6

    nop

    nop

    nop

    :try_start_b
    const-string v6, "The length of oisShiftDacX (%d) and oisShiftDacY (%d) should equal the length of oisTimestamps (%d)."

    nop

    nop

    move/from16 v24, v12

    nop

    const/4 v12, 0x3

    nop

    new-array v2, v12, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move/from16 v12, v24

    nop

    nop

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    nop

    nop

    nop

    nop

    const/16 v24, 0x0

    nop

    nop

    nop

    nop

    aput-object v14, v2, v24

    nop

    nop

    nop

    nop

    array-length v14, v10

    nop

    nop

    nop

    nop

    nop

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    nop

    nop

    nop

    nop

    const/16 v24, 0x1

    nop

    aput-object v14, v2, v24

    nop

    nop

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    nop

    nop

    nop

    const/4 v14, 0x2

    nop

    nop

    nop

    aput-object v13, v2, v14

    nop

    nop

    nop

    invoke-static {v11, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v12, v2}, Lrrf;->m(ZLjava/lang/Object;)V

    iget-wide v11, v15, Lcom/google/googlex/gcam/OisMetadata;->a:J

    nop

    nop

    invoke-static {v11, v12, v15}, Lcom/google/googlex/gcam/GcamModuleJNI;->OisMetadata_ois_positions_raw_get(JLcom/google/googlex/gcam/OisMetadata;)J

    move-result-wide v11

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v13, 0x0

    nop

    nop

    nop

    cmp-long v2, v11, v13

    nop

    nop

    if-nez v2, :cond_11

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    goto :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_11
    new-instance v2, Lcom/google/googlex/gcam/OisPositionRawVector;

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v2, v11, v12, v6}, Lcom/google/googlex/gcam/OisPositionRawVector;-><init>(JZ)V

    :goto_30
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    :goto_31
    array-length v11, v1

    nop

    nop

    nop

    if-ge v6, v11, :cond_15

    nop

    nop

    nop

    aget-wide v27, v1, v6

    nop

    nop

    nop

    nop

    aget v29, v4, v6

    nop

    nop

    nop

    nop

    aget v30, v10, v6

    nop

    nop

    nop

    nop

    nop

    iget-wide v11, v2, Lcom/google/googlex/gcam/OisPositionRawVector;->a:J

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v24, v11

    nop

    nop

    nop

    move-object/from16 v26, v2

    nop

    nop

    nop

    invoke-static/range {v24 .. v30}, Lcom/google/googlex/gcam/GcamModuleJNI;->OisPositionRawVector_emplace_back(JLcom/google/googlex/gcam/OisPositionRawVector;JII)V

    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_31

    nop

    nop

    nop

    nop

    nop

    :catch_5
    move-exception v0

    nop

    nop

    nop

    goto/16 :goto_16

    nop

    :cond_12
    move-object/from16 v23, v6

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    const/4 v13, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_20

    nop

    nop

    :cond_13
    move-object/from16 v23, v6

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    const-class v2, Lsxt;

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    :cond_14
    :goto_32
    move-object/from16 v23, v6

    nop

    :cond_15
    if-eqz v3, :cond_16

    nop

    nop

    nop

    invoke-virtual {v5, v3}, Lcom/google/googlex/gcam/FrameMetadata;->F(Lcom/google/googlex/gcam/GyroSampleVector;)V

    :cond_16
    const-string v6, "geocalibration"

    nop

    nop
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5

    :try_start_c
    const/4 v1, 0x0

    nop

    nop

    if-eqz v1, :cond_18

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Lpnu;->E()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_17

    nop

    nop

    nop

    nop

    goto :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_17
    const/4 v1, 0x0

    nop

    nop

    goto :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_18
    :goto_33
    const/4 v1, 0x1

    nop

    :goto_34
    const-string v2, "Logical cameras not supported."

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Lrrf;->m(ZLjava/lang/Object;)V

    new-instance v1, Lcom/google/googlex/gcam/GeometricCalibrationVector;

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_GeometricCalibrationVector__SWIG_0()J

    move-result-wide v2

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2, v3, v4}, Lcom/google/googlex/gcam/GeometricCalibrationVector;-><init>(JZ)V

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_DISTORTION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    move-object/from16 v3, p1

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, [F

    nop

    nop

    nop

    nop

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LENS_INTRINSIC_CALIBRATION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, [F

    nop

    sget-object v10, Landroid/hardware/camera2/CaptureResult;->LENS_POSE_ROTATION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v10}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    check-cast v10, [F

    nop

    nop

    nop

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->LENS_POSE_TRANSLATION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v11}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v11

    nop

    check-cast v11, [F

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_1a

    nop

    nop

    nop

    nop

    invoke-static/range {p1 .. p1}, Ltbt;->P(Lprk;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_19

    nop

    nop

    nop

    nop

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_DISTORTION_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_19
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_DISTORTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v7, v2}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, [F

    nop

    nop

    nop

    nop

    :cond_1a
    if-nez v4, :cond_1c

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {p1 .. p1}, Ltbt;->P(Lprk;)Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_1b

    nop

    nop

    nop

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INTRINSIC_CALIBRATION_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    goto :goto_36

    nop

    nop

    nop

    :cond_1b
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INTRINSIC_CALIBRATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {v7, v4}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, [F

    nop

    nop

    nop

    :cond_1c
    if-nez v10, :cond_1d

    nop

    nop

    nop

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_POSE_ROTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v10}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    check-cast v10, [F

    nop

    nop

    nop

    :cond_1d
    if-nez v11, :cond_1e

    nop

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->LENS_POSE_TRANSLATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v7, v11}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    check-cast v11, [F

    nop

    :cond_1e
    if-nez v2, :cond_1f

    nop

    nop

    if-nez v4, :cond_1f

    nop

    if-nez v10, :cond_1f

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_24

    nop

    :cond_1f
    new-instance v12, Lcom/google/googlex/gcam/GeometricCalibration;

    nop

    nop

    invoke-direct {v12}, Lcom/google/googlex/gcam/GeometricCalibration;-><init>()V

    sget-object v13, Lsxo;->a:Lsxo;

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v13}, Lcom/google/googlex/gcam/GeometricCalibration;->d(Lsxo;)V

    if-eqz v2, :cond_20

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v2}, Lcom/google/googlex/gcam/GeometricCalibration;->b([F)V

    :cond_20
    if-eqz v4, :cond_21

    nop

    nop

    invoke-virtual {v12, v4}, Lcom/google/googlex/gcam/GeometricCalibration;->c([F)V

    :cond_21
    if-eqz v10, :cond_22

    nop

    nop

    nop

    nop

    nop

    iget-wide v13, v12, Lcom/google/googlex/gcam/GeometricCalibration;->a:J

    nop

    nop

    nop

    invoke-static {v13, v14, v12, v10}, Lcom/google/googlex/gcam/GcamModuleJNI;->GeometricCalibration_lens_pose_rotation_set(JLcom/google/googlex/gcam/GeometricCalibration;[F)V

    :cond_22
    if-eqz v11, :cond_23

    nop

    iget-wide v13, v12, Lcom/google/googlex/gcam/GeometricCalibration;->a:J

    nop

    nop

    nop

    nop

    invoke-static {v13, v14, v12, v11}, Lcom/google/googlex/gcam/GcamModuleJNI;->GeometricCalibration_lens_pose_translation_set(JLcom/google/googlex/gcam/GeometricCalibration;[F)V

    :cond_23
    invoke-virtual {v1, v12}, Lcom/google/googlex/gcam/GeometricCalibrationVector;->a(Lcom/google/googlex/gcam/GeometricCalibration;)V

    :cond_24
    sget-object v2, Lnyl;->b:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x7

    nop

    nop

    const/4 v10, 0x5

    nop

    nop

    nop

    const/4 v11, 0x6

    nop

    const/16 v13, 0x9

    nop

    nop

    const/4 v15, 0x4

    nop

    nop

    nop

    if-eqz v2, :cond_25

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lnyl;->c:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    if-eqz v2, :cond_25

    nop

    sget-object v2, Lnyl;->d:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_25

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lnyl;->e:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    if-eqz v2, :cond_25

    nop

    nop

    nop

    nop

    sget-object v2, Lnyl;->f:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    if-eqz v2, :cond_25

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lnyl;->b:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    invoke-interface {v7, v2}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, [F

    nop

    nop

    nop

    nop

    sget-object v12, Lnyl;->c:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v7, v12}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    move-object/from16 v23, v12

    nop

    nop

    check-cast v23, [F

    nop

    nop

    nop

    nop

    sget-object v12, Lnyl;->d:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    invoke-interface {v7, v12}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    move-object/from16 v24, v12

    nop

    nop

    check-cast v24, [F

    nop

    nop

    sget-object v12, Lnyl;->e:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v7, v12}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v25, v12

    nop

    nop

    check-cast v25, [I

    nop

    nop

    nop

    nop

    nop

    sget-object v12, Lnyl;->f:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    invoke-interface {v7, v12}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    move-object/from16 v26, v12

    nop

    nop

    check-cast v26, [I

    nop

    nop

    if-eqz v2, :cond_25

    nop

    nop

    if-eqz v23, :cond_25

    nop

    if-eqz v24, :cond_25

    nop

    nop

    if-eqz v25, :cond_25

    nop

    nop

    nop

    nop

    nop

    if-eqz v26, :cond_25

    nop

    nop

    new-instance v12, Lcom/google/googlex/gcam/GeometricCalibration;

    nop

    invoke-direct {v12}, Lcom/google/googlex/gcam/GeometricCalibration;-><init>()V

    sget-object v14, Lsxo;->b:Lsxo;

    nop

    nop

    invoke-virtual {v12, v14}, Lcom/google/googlex/gcam/GeometricCalibration;->d(Lsxo;)V

    invoke-virtual {v12}, Lcom/google/googlex/gcam/GeometricCalibration;->e()[F

    move-result-object v14

    nop

    const/16 v27, 0x0

    nop

    nop

    nop

    aget v28, v2, v27

    nop

    nop

    nop

    nop

    aput v28, v14, v27

    nop

    nop

    nop

    nop

    nop

    const/16 v27, 0x1

    nop

    nop

    nop

    aget v28, v2, v27

    nop

    nop

    nop

    nop

    aput v28, v14, v27

    nop

    nop

    nop

    const/16 v17, 0x2

    nop

    aget v27, v2, v17

    nop

    nop

    nop

    nop

    aput v27, v14, v17

    nop

    nop

    aget v27, v2, v11

    nop

    nop

    nop

    nop

    nop

    const/16 v18, 0x3

    nop

    aput v27, v14, v18

    nop

    nop

    nop

    nop

    nop

    aget v27, v2, v4

    nop

    nop

    nop

    aput v27, v14, v15

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v14}, Lcom/google/googlex/gcam/GeometricCalibration;->b([F)V

    invoke-virtual {v12}, Lcom/google/googlex/gcam/GeometricCalibration;->f()[F

    move-result-object v14

    nop

    nop

    nop

    aget v27, v2, v18

    nop

    nop

    nop

    nop

    const/16 v18, 0x0

    nop

    nop

    nop

    aput v27, v14, v18

    nop

    aget v18, v2, v15

    nop

    const/16 v27, 0x1

    nop

    aput v18, v14, v27

    nop

    nop

    nop

    nop

    nop

    aget v18, v2, v10

    nop

    nop

    nop

    nop

    const/16 v17, 0x2

    nop

    nop

    nop

    aput v18, v14, v17

    nop

    nop

    nop

    nop

    nop

    const/16 v18, 0x8

    nop

    nop

    nop

    nop

    nop

    aget v18, v2, v18

    nop

    nop

    const/16 v27, 0x3

    nop

    nop

    nop

    aput v18, v14, v27

    nop

    nop

    nop

    nop

    nop

    aget v27, v2, v13

    nop

    nop

    nop

    nop

    nop

    aput v27, v14, v15

    nop

    const/16 v27, 0xa

    nop

    nop

    aget v27, v2, v27

    nop

    nop

    nop

    nop

    nop

    aput v27, v14, v10

    nop

    const/16 v27, 0xb

    nop

    nop

    nop

    aget v2, v2, v27

    nop

    nop

    nop

    nop

    aput v2, v14, v11

    nop

    iget-wide v10, v12, Lcom/google/googlex/gcam/GeometricCalibration;->a:J

    nop

    nop

    invoke-static {v10, v11, v12, v14}, Lcom/google/googlex/gcam/GcamModuleJNI;->GeometricCalibration_lens_distortion_extended_set(JLcom/google/googlex/gcam/GeometricCalibration;[F)V

    invoke-virtual {v12}, Lcom/google/googlex/gcam/GeometricCalibration;->g()[F

    move-result-object v10

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    aget v14, v24, v11

    nop

    nop

    nop

    nop

    nop

    aput v14, v10, v11

    nop

    nop

    nop

    nop

    nop

    const/4 v14, 0x1

    nop

    nop

    aget v24, v24, v14

    nop

    nop

    nop

    nop

    aput v24, v10, v14

    nop

    nop

    nop

    nop

    nop

    aget v24, v23, v11

    nop

    const/4 v11, 0x2

    nop

    aput v24, v10, v11

    nop

    nop

    nop

    nop

    nop

    aget v11, v23, v14

    nop

    const/4 v14, 0x3

    nop

    nop

    aput v11, v10, v14

    nop

    nop

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    aput v14, v10, v15

    nop

    nop

    nop

    invoke-virtual {v12, v10}, Lcom/google/googlex/gcam/GeometricCalibration;->c([F)V

    new-instance v10, Lcom/google/googlex/gcam/PixelRect;

    nop

    nop

    nop

    invoke-direct {v10}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    const/4 v14, 0x0

    nop

    aget v2, v25, v14

    nop

    nop

    nop

    invoke-virtual {v10, v2}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    const/4 v2, 0x1

    nop

    nop

    aget v14, v25, v2

    nop

    invoke-virtual {v10, v14}, Lcom/google/googlex/gcam/PixelRect;->k(I)V

    const/4 v2, 0x2

    nop

    nop

    nop

    aget v14, v25, v2

    nop

    invoke-virtual {v10, v14}, Lcom/google/googlex/gcam/PixelRect;->j(I)V

    const/4 v2, 0x3

    nop

    nop

    nop

    aget v11, v25, v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v11}, Lcom/google/googlex/gcam/PixelRect;->l(I)V

    iget-wide v13, v12, Lcom/google/googlex/gcam/GeometricCalibration;->a:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {v10}, Lcom/google/googlex/gcam/PixelRect;->g(Lcom/google/googlex/gcam/PixelRect;)J

    move-result-wide v30

    nop

    nop

    move-wide/from16 v27, v13

    nop

    nop

    nop

    nop

    move-object/from16 v29, v12

    nop

    nop

    move-object/from16 v32, v10

    nop

    nop

    nop

    invoke-static/range {v27 .. v32}, Lcom/google/googlex/gcam/GcamModuleJNI;->GeometricCalibration_active_rectangle_set(JLcom/google/googlex/gcam/GeometricCalibration;JLcom/google/googlex/gcam/PixelRect;)V

    new-instance v10, Lcom/google/googlex/gcam/PixelRect;

    nop

    nop

    nop

    nop

    invoke-direct {v10}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    const/4 v13, 0x0

    nop

    aget v14, v26, v13

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v14}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    nop

    aget v14, v26, v13

    nop

    invoke-virtual {v10, v14}, Lcom/google/googlex/gcam/PixelRect;->k(I)V

    const/4 v13, 0x2

    nop

    nop

    nop

    nop

    nop

    aget v14, v26, v13

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v14}, Lcom/google/googlex/gcam/PixelRect;->j(I)V

    const/4 v2, 0x3

    nop

    aget v13, v26, v2

    nop

    nop

    nop

    invoke-virtual {v10, v13}, Lcom/google/googlex/gcam/PixelRect;->l(I)V

    iget-wide v13, v12, Lcom/google/googlex/gcam/GeometricCalibration;->a:J

    nop

    nop

    nop

    nop

    invoke-static {v10}, Lcom/google/googlex/gcam/PixelRect;->g(Lcom/google/googlex/gcam/PixelRect;)J

    move-result-wide v30

    nop

    nop

    nop

    nop

    move-wide/from16 v27, v13

    nop

    move-object/from16 v29, v12

    nop

    nop

    nop

    nop

    move-object/from16 v32, v10

    nop

    nop

    invoke-static/range {v27 .. v32}, Lcom/google/googlex/gcam/GcamModuleJNI;->GeometricCalibration_valid_rectangle_set(JLcom/google/googlex/gcam/GeometricCalibration;JLcom/google/googlex/gcam/PixelRect;)V

    invoke-virtual {v1, v12}, Lcom/google/googlex/gcam/GeometricCalibrationVector;->a(Lcom/google/googlex/gcam/GeometricCalibration;)V

    :cond_25
    invoke-virtual {v5, v1}, Lcom/google/googlex/gcam/FrameMetadata;->E(Lcom/google/googlex/gcam/GeometricCalibrationVector;)V

    const-string v6, "sensorid"

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    iget-object v10, v1, Ltbt;->a:Lpnv;

    nop

    move-object/from16 v12, v22

    nop

    nop

    invoke-static {v7, v10, v3, v12}, Ltbt;->H(Lpnu;Lpnv;Lpro;Lpnx;)Lsyi;

    move-result-object v10

    nop

    nop

    invoke-virtual {v5, v10}, Lcom/google/googlex/gcam/FrameMetadata;->K(Lsyi;)V

    const-string v6, "flash"

    nop

    nop

    nop

    nop

    sget-object v10, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v3, v10}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    check-cast v10, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    const/4 v12, 0x1

    nop

    nop

    nop

    nop

    nop

    if-ne v10, v12, :cond_26

    nop

    nop

    nop

    sget-object v10, Lsxk;->b:Lsxk;

    nop

    nop

    invoke-virtual {v5, v10}, Lcom/google/googlex/gcam/FrameMetadata;->A(Lsxk;)V

    goto :goto_37

    nop

    nop

    nop

    :cond_26
    const/4 v12, 0x2

    nop

    nop

    if-ne v10, v12, :cond_27

    nop

    sget-object v10, Lsxk;->c:Lsxk;

    nop

    nop

    invoke-virtual {v5, v10}, Lcom/google/googlex/gcam/FrameMetadata;->A(Lsxk;)V

    goto :goto_37

    nop

    nop

    nop

    nop

    :cond_27
    sget-object v10, Lsxk;->a:Lsxk;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v10}, Lcom/google/googlex/gcam/FrameMetadata;->A(Lsxk;)V

    :goto_37
    const-string v6, "awb"

    nop

    nop

    nop

    nop

    invoke-static {v3, v7}, Ltbt;->k(Lpro;Lpnu;)Lcom/google/googlex/gcam/AwbInfo;

    move-result-object v10

    nop

    nop

    invoke-virtual {v5, v10}, Lcom/google/googlex/gcam/FrameMetadata;->P(Lcom/google/googlex/gcam/AwbInfo;)V

    const-string v6, "segAwb"

    nop

    nop

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->r()Lcom/google/googlex/gcam/SpatialAwb;

    move-result-object v10

    nop

    nop

    nop

    nop

    sget-object v12, Lnyq;->i:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    const/16 v2, 0xd

    nop

    nop

    nop

    nop

    nop

    if-nez v12, :cond_28

    nop

    nop

    nop

    nop

    goto/16 :goto_3a

    nop

    :cond_28
    sget-object v12, Lnyq;->i:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v12}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    check-cast v12, [F

    nop

    nop

    nop

    if-eqz v12, :cond_2c

    nop

    array-length v11, v12

    nop

    nop

    nop

    const/16 v14, 0x18

    nop

    nop

    nop

    nop

    nop

    if-eq v11, v14, :cond_29

    nop

    nop

    nop

    sget-object v10, Ltbt;->b:Ljava/lang/String;

    nop

    const-string v11, "Unexpected array length for segAwbParams!"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    nop

    :cond_29
    new-instance v14, Lcom/google/googlex/gcam/FloatArray4;

    nop

    nop

    nop

    nop

    invoke-direct {v14}, Lcom/google/googlex/gcam/FloatArray4;-><init>()V

    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    aget v4, v12, v11

    nop

    nop

    invoke-virtual {v14, v11, v4}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    const/4 v4, 0x1

    nop

    nop

    nop

    aget v11, v12, v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v4, v11}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    aget v11, v12, v4

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    invoke-virtual {v14, v4, v11}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    aget v11, v12, v4

    nop

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    nop

    invoke-virtual {v14, v4, v11}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    move-object v4, v12

    nop

    nop

    new-instance v11, Lcom/google/googlex/gcam/FloatArray9;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v11}, Lcom/google/googlex/gcam/FloatArray9;-><init>()V

    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    const/16 v15, 0x9

    nop

    nop

    nop

    const/16 v22, 0x3

    nop

    nop

    nop

    nop

    :goto_38
    if-ge v12, v15, :cond_2a

    nop

    nop

    nop

    move-object v15, v11

    nop

    nop

    nop

    aget v11, v4, v22

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v12, v11}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    add-int/lit8 v12, v12, 0x1

    nop

    nop

    nop

    nop

    add-int/lit8 v22, v22, 0x1

    nop

    move-object v11, v15

    nop

    nop

    nop

    nop

    const/16 v15, 0x9

    nop

    nop

    nop

    goto :goto_38

    nop

    nop

    nop

    :cond_2a
    move-object v15, v11

    nop

    nop

    new-instance v11, Lcom/google/googlex/gcam/FloatArray4;

    nop

    nop

    nop

    invoke-direct {v11}, Lcom/google/googlex/gcam/FloatArray4;-><init>()V

    const/16 v12, 0xc

    nop

    aget v12, v4, v12

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v13, v12}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    aget v12, v4, v2

    nop

    nop

    nop

    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v13, v12}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    aget v12, v4, v2

    nop

    const/4 v13, 0x2

    nop

    invoke-virtual {v11, v13, v12}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    const/16 v12, 0xe

    nop

    nop

    nop

    nop

    aget v13, v4, v12

    nop

    nop

    const/4 v12, 0x3

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v12, v13}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    new-instance v13, Lcom/google/googlex/gcam/FloatArray9;

    nop

    invoke-direct {v13}, Lcom/google/googlex/gcam/FloatArray9;-><init>()V

    const/16 v2, 0x9

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    const/16 v22, 0xf

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-ge v12, v2, :cond_2b

    nop

    nop

    nop

    nop

    nop

    aget v2, v4, v22

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v12, v2}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    add-int/lit8 v12, v12, 0x1

    nop

    add-int/lit8 v22, v22, 0x1

    nop

    nop

    nop

    const/16 v2, 0x9

    nop

    nop

    goto :goto_39

    nop

    :cond_2b
    new-instance v2, Lcom/google/googlex/gcam/AwbInfo;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Lcom/google/googlex/gcam/AwbInfo;-><init>()V

    new-instance v4, Lcom/google/googlex/gcam/AwbInfo;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Lcom/google/googlex/gcam/AwbInfo;-><init>()V

    invoke-virtual {v2, v14}, Lcom/google/googlex/gcam/AwbInfo;->d(Lcom/google/googlex/gcam/FloatArray4;)V

    invoke-virtual {v4, v11}, Lcom/google/googlex/gcam/AwbInfo;->d(Lcom/google/googlex/gcam/FloatArray4;)V

    invoke-virtual {v2, v15}, Lcom/google/googlex/gcam/AwbInfo;->c(Lcom/google/googlex/gcam/FloatArray9;)V

    invoke-virtual {v4, v13}, Lcom/google/googlex/gcam/AwbInfo;->c(Lcom/google/googlex/gcam/FloatArray9;)V

    iget-wide v11, v10, Lcom/google/googlex/gcam/SpatialAwb;->a:J

    nop

    nop

    nop

    invoke-static {v2}, Lcom/google/googlex/gcam/AwbInfo;->a(Lcom/google/googlex/gcam/AwbInfo;)J

    move-result-wide v25

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v22, v11

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v24, v10

    nop

    nop

    nop

    nop

    move-object/from16 v27, v2

    nop

    nop

    nop

    invoke-static/range {v22 .. v27}, Lcom/google/googlex/gcam/GcamModuleJNI;->SpatialAwb_background_awb_set(JLcom/google/googlex/gcam/SpatialAwb;JLcom/google/googlex/gcam/AwbInfo;)V

    iget-wide v11, v10, Lcom/google/googlex/gcam/SpatialAwb;->a:J

    nop

    nop

    invoke-static {v4}, Lcom/google/googlex/gcam/AwbInfo;->a(Lcom/google/googlex/gcam/AwbInfo;)J

    move-result-wide v25

    nop

    nop

    move-wide/from16 v22, v11

    nop

    nop

    nop

    move-object/from16 v24, v10

    nop

    nop

    move-object/from16 v27, v4

    nop

    nop

    nop

    nop

    invoke-static/range {v22 .. v27}, Lcom/google/googlex/gcam/GcamModuleJNI;->SpatialAwb_subject_awb_set(JLcom/google/googlex/gcam/SpatialAwb;JLcom/google/googlex/gcam/AwbInfo;)V

    :cond_2c
    :goto_3a
    const-string v6, "bl"

    nop

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    if-nez v2, :cond_2d

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    invoke-virtual {v5, v2}, Lcom/google/googlex/gcam/FrameMetadata;->O(Z)V

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v3, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    nop

    nop

    nop

    nop

    invoke-static {v10, v11}, Ltbt;->c(J)F

    move-result v2

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v2}, Lcom/google/googlex/gcam/FrameMetadata;->D(F)V

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {v3, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    nop

    invoke-virtual {v5, v10, v11}, Lcom/google/googlex/gcam/FrameMetadata;->N(J)V

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kSensorTempUnknown_get()I

    move-result v2

    nop

    nop

    nop

    invoke-virtual {v5, v2}, Lcom/google/googlex/gcam/FrameMetadata;->L(I)V

    new-instance v2, Lcom/google/googlex/gcam/SceneFlicker;

    nop

    nop

    nop

    invoke-direct {v2}, Lcom/google/googlex/gcam/SceneFlicker;-><init>()V

    sget-object v4, Lnyn;->h:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    const/high16 v10, -0x40800000    # -1.0f

    nop

    nop

    nop

    if-eqz v4, :cond_2e

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    nop

    if-eqz v4, :cond_2e

    nop

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    int-to-float v4, v4

    nop

    goto :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_2e
    move v4, v10

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v11, Lnyn;->i:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    if-eqz v11, :cond_2f

    nop

    nop

    nop

    nop

    invoke-interface {v3, v11}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    check-cast v11, Ljava/lang/Integer;

    nop

    if-eqz v11, :cond_2f

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    nop

    nop

    int-to-float v10, v10

    nop

    nop

    nop

    const v11, 0x461c4000    # 10000.0f

    nop

    nop

    div-float/2addr v10, v11

    nop

    :cond_2f
    const/4 v11, 0x0

    nop

    nop

    nop

    cmpg-float v12, v4, v11

    nop

    nop

    nop

    if-ltz v12, :cond_30

    nop

    cmpg-float v12, v10, v11

    nop

    nop

    nop

    nop

    if-gez v12, :cond_34

    nop

    nop

    nop

    nop

    nop

    :cond_30
    sget-object v11, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v11}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    check-cast v11, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_34

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    const/high16 v12, 0x3f800000    # 1.0f

    nop

    nop

    if-eqz v11, :cond_33

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x1

    nop

    if-eq v11, v13, :cond_32

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x2

    nop

    if-eq v11, v13, :cond_31

    nop

    nop

    nop

    nop

    nop

    sget-object v11, Ltbt;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v12, "Unexpected STATISTICS_SCENE_FLICKER type!"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_31
    const/high16 v4, 0x42f00000    # 120.0f

    nop

    nop

    move v10, v12

    nop

    nop

    nop

    nop

    goto :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_32
    move v10, v12

    nop

    nop

    nop

    nop

    const/high16 v4, 0x42c80000    # 100.0f

    nop

    goto :goto_3c

    nop

    nop

    nop

    :cond_33
    move v10, v12

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    :cond_34
    :goto_3c
    iget-wide v11, v2, Lcom/google/googlex/gcam/SceneFlicker;->a:J

    nop

    nop

    invoke-static {v11, v12, v2, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->SceneFlicker_frequency_set(JLcom/google/googlex/gcam/SceneFlicker;F)V

    iget-wide v11, v2, Lcom/google/googlex/gcam/SceneFlicker;->a:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {v11, v12, v2, v10}, Lcom/google/googlex/gcam/GcamModuleJNI;->SceneFlicker_confidence_set(JLcom/google/googlex/gcam/SceneFlicker;F)V

    invoke-virtual {v5, v2}, Lcom/google/googlex/gcam/FrameMetadata;->J(Lcom/google/googlex/gcam/SceneFlicker;)V

    const-string v6, "noise"

    nop

    invoke-static {v7, v3}, Lcom/NoiseModels;->NOISE_MODEL(Lpnu;Lpro;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, [Landroid/util/Pair;

    nop

    invoke-static/range {v7 .. v7}, Ltbt;->r(Lpnu;)Ljava/lang/Integer;

    move-result-object v12

    nop

    nop

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    nop

    nop

    nop

    invoke-static {v2, v12}, Lcom/NoiseModels;->showNM([Landroid/util/Pair;I)V

    new-instance v12, Lcom/google/googlex/gcam/FloatVector;

    nop

    invoke-direct {v12}, Lcom/google/googlex/gcam/FloatVector;-><init>()V

    new-instance v15, Lcom/google/googlex/gcam/FloatVector;

    nop

    nop

    nop

    invoke-direct {v15}, Lcom/google/googlex/gcam/FloatVector;-><init>()V

    const/4 v4, 0x0

    nop

    nop

    :goto_3d
    const/4 v10, 0x4

    nop

    nop

    nop

    nop

    if-ge v4, v10, :cond_35

    nop

    nop

    aget-object v10, v2, v4

    nop

    nop

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v10, Ljava/lang/Double;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/lang/Double;->floatValue()F

    move-result v10

    nop

    invoke-virtual {v12, v10}, Lcom/google/googlex/gcam/FloatVector;->b(F)V

    aget-object v10, v2, v4

    nop

    nop

    nop

    nop

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    check-cast v10, Ljava/lang/Double;

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/lang/Double;->floatValue()F

    move-result v10

    nop

    nop

    invoke-virtual {v15, v10}, Lcom/google/googlex/gcam/FloatVector;->b(F)V

    add-int/lit8 v4, v4, 0x1

    nop

    goto :goto_3d

    nop

    nop

    nop

    nop

    nop

    :cond_35
    new-instance v2, Lcom/google/googlex/gcam/NoiseModel;

    nop

    nop

    nop

    iget-wide v10, v12, Lcom/google/googlex/gcam/FloatVector;->a:J

    nop

    nop

    nop

    nop

    iget-wide v13, v15, Lcom/google/googlex/gcam/FloatVector;->a:J

    nop

    nop

    nop

    nop

    invoke-static/range {v10 .. v15}, Lcom/google/googlex/gcam/GcamModuleJNI;->NoiseModel_FromShotReadNoiseVector(JLcom/google/googlex/gcam/FloatVector;JLcom/google/googlex/gcam/FloatVector;)J

    move-result-wide v10

    nop

    nop

    nop

    nop

    invoke-direct {v2, v10, v11}, Lcom/google/googlex/gcam/NoiseModel;-><init>(J)V

    invoke-virtual {v5, v2}, Lcom/google/googlex/gcam/FrameMetadata;->y(Lcom/google/googlex/gcam/NoiseModel;)V

    const-string v6, "dynamicbl"

    nop

    nop

    nop

    sget v2, Ltbt;->i:I

    nop

    nop

    nop

    if-eqz v2, :cond_3d

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    if-ne v2, v4, :cond_37

    nop

    nop

    nop

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_DYNAMIC_BLACK_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v3, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, [F

    nop

    nop

    if-eqz v2, :cond_3d

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance v4, Lcom/google/googlex/gcam/FloatArray4;

    nop

    invoke-direct {v4}, Lcom/google/googlex/gcam/FloatArray4;-><init>()V

    const/4 v10, 0x0

    nop

    :goto_3f
    invoke-virtual {v4}, Lcom/google/googlex/gcam/FloatArray4;->b()J

    move-result-wide v11

    nop

    nop

    nop

    int-to-long v13, v10

    nop

    nop

    nop

    nop

    nop

    cmp-long v11, v13, v11

    nop

    if-gez v11, :cond_36

    nop

    nop

    nop

    aget v11, v2, v10

    nop

    nop

    invoke-virtual {v4, v10, v11}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_36
    invoke-virtual {v5, v4}, Lcom/google/googlex/gcam/FrameMetadata;->w(Lcom/google/googlex/gcam/FloatArray4;)V

    goto/16 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_37
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    if-eq v2, v4, :cond_38

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x4

    nop

    nop

    if-eq v2, v4, :cond_39

    nop

    const/4 v4, 0x5

    nop

    nop

    nop

    nop

    if-eq v2, v4, :cond_3a

    nop

    nop

    const/4 v4, 0x6

    nop

    nop

    nop

    nop

    nop

    if-eq v2, v4, :cond_3b

    nop

    const/4 v4, 0x7

    nop

    if-eq v2, v4, :cond_3c

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    new-array v2, v2, [F

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_1

    goto :goto_3e

    nop

    :cond_38
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    new-array v2, v2, [F

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_0

    goto/16 :goto_3e

    nop

    nop

    :cond_39
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    new-array v2, v2, [F

    nop

    nop

    fill-array-data v2, :array_2

    goto/16 :goto_3e

    nop

    nop

    nop

    :cond_3a
    const/4 v2, 0x4

    nop

    nop

    nop

    new-array v2, v2, [F

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_3

    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    :cond_3b
    const/4 v2, 0x4

    nop

    nop

    new-array v2, v2, [F

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_4

    goto/16 :goto_3e

    nop

    nop

    nop

    :cond_3c
    sget-object v2, Ltbt;->ia:[F

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_3e

    nop

    nop

    nop

    :cond_3d
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_BLACK_LEVEL_PATTERN:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v2}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Landroid/hardware/camera2/params/BlackLevelPattern;

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_3f

    nop

    new-instance v4, Lcom/google/googlex/gcam/FloatArray4;

    nop

    invoke-direct {v4}, Lcom/google/googlex/gcam/FloatArray4;-><init>()V

    const/4 v10, 0x0

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v4}, Lcom/google/googlex/gcam/FloatArray4;->b()J

    move-result-wide v11

    nop

    nop

    nop

    nop

    nop

    int-to-long v13, v10

    nop

    nop

    nop

    nop

    nop

    cmp-long v11, v13, v11

    nop

    nop

    nop

    nop

    if-gez v11, :cond_3e

    nop

    nop

    nop

    rem-int/lit8 v11, v10, 0x2

    nop

    nop

    nop

    nop

    div-int/lit8 v12, v10, 0x2

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v11, v12}, Landroid/hardware/camera2/params/BlackLevelPattern;->getOffsetForIndex(II)I

    move-result v11

    nop

    nop

    int-to-float v11, v11

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v10, v11}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    add-int/lit8 v10, v10, 0x1

    nop

    nop

    goto :goto_40

    nop

    nop

    nop

    nop

    :cond_3e
    invoke-virtual {v5, v4}, Lcom/google/googlex/gcam/FrameMetadata;->w(Lcom/google/googlex/gcam/FloatArray4;)V

    :cond_3f
    :goto_41
    const-string v6, "focusdistance"

    nop

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {v3, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_FOCUS_DISTANCE_CALIBRATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v4}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    if-eqz v2, :cond_41

    nop

    if-eqz v4, :cond_41

    nop

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    nop

    const/4 v10, 0x2

    nop

    nop

    nop

    nop

    nop

    if-eq v7, v10, :cond_40

    nop

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    if-ne v4, v7, :cond_41

    nop

    nop

    nop

    nop

    :cond_40
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    invoke-virtual {v5, v2}, Lcom/google/googlex/gcam/FrameMetadata;->C(F)V

    :cond_41
    const-string v6, "livehdr"

    nop

    nop

    nop

    move-object/from16 v3, p1

    nop

    nop

    nop

    move-object/from16 v4, v5

    nop

    invoke-static/range {v3 .. v4}, Ltbt;->z(Lpro;Lcom/google/googlex/gcam/FrameMetadata;)Lcom/google/googlex/gcam/LiveHdrMetadata;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v5, v2}, Lcom/google/googlex/gcam/FrameMetadata;->H(Lcom/google/googlex/gcam/LiveHdrMetadata;)V

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->f()Lcom/google/googlex/gcam/AeResults;

    move-result-object v2

    nop

    nop

    nop

    nop

    const-string v6, "gcamae"

    nop

    nop

    nop

    nop

    sget-object v4, Lnym;->a:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    if-eqz v4, :cond_5

    nop

    nop

    nop

    nop

    sget-object v4, Lnym;->a:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, [F

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    array-length v7, v4

    nop

    if-lez v7, :cond_5

    nop

    new-instance v10, Lcom/google/googlex/gcam/AeModeResult;

    nop

    invoke-direct {v10}, Lcom/google/googlex/gcam/AeModeResult;-><init>()V

    new-instance v11, Lcom/google/googlex/gcam/AeModeResult;

    nop

    invoke-direct {v11}, Lcom/google/googlex/gcam/AeModeResult;-><init>()V

    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    aget v13, v4, v12

    nop

    nop

    invoke-virtual {v10, v13}, Lcom/google/googlex/gcam/AeModeResult;->c(F)V

    const/4 v12, 0x1

    nop

    nop

    aget v13, v4, v12

    nop

    nop

    invoke-virtual {v11, v13}, Lcom/google/googlex/gcam/AeModeResult;->c(F)V

    const/4 v12, 0x2

    nop

    nop

    aget v13, v4, v12

    nop

    nop

    invoke-virtual {v10, v13}, Lcom/google/googlex/gcam/AeModeResult;->b(F)V

    const/4 v12, 0x3

    nop

    nop

    nop

    nop

    nop

    aget v13, v4, v12

    nop

    invoke-virtual {v11, v13}, Lcom/google/googlex/gcam/AeModeResult;->b(F)V

    const/4 v13, 0x4

    nop

    aget v13, v4, v13

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v13}, Lcom/google/googlex/gcam/AeResults;->g(F)V

    const/4 v13, 0x5

    nop

    nop

    nop

    nop

    aget v13, v4, v13

    nop

    nop

    nop

    invoke-virtual {v2, v13}, Lcom/google/googlex/gcam/AeResults;->i(F)V

    const/4 v13, 0x6

    nop

    nop

    nop

    nop

    nop

    aget v13, v4, v13

    nop

    invoke-virtual {v10, v13}, Lcom/google/googlex/gcam/AeModeResult;->d(F)V

    const/4 v13, 0x7

    nop

    nop

    nop

    nop

    nop

    aget v13, v4, v13

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v13}, Lcom/google/googlex/gcam/AeResults;->e(F)V

    const/16 v13, 0xd

    nop

    nop

    nop

    nop

    if-le v7, v13, :cond_42

    nop

    nop

    nop

    nop

    aget v13, v4, v13

    nop

    invoke-virtual {v2, v13}, Lcom/google/googlex/gcam/AeResults;->h(F)V

    :cond_42
    const/16 v13, 0xf

    nop

    if-le v7, v13, :cond_43

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/googlex/gcam/AeResults;->b()Lcom/google/googlex/gcam/AeModeResult;

    move-result-object v14

    nop

    const/16 v15, 0xe

    nop

    nop

    nop

    nop

    nop

    aget v15, v4, v15

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v15}, Lcom/google/googlex/gcam/AeModeResult;->c(F)V

    aget v13, v4, v13

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v13}, Lcom/google/googlex/gcam/AeModeResult;->b(F)V

    :cond_43
    const/16 v13, 0x14

    nop

    nop

    if-le v7, v13, :cond_45

    nop

    nop

    nop

    nop

    nop

    const/16 v13, 0x11

    nop

    nop

    nop

    aget v13, v4, v13

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v13}, Lcom/google/googlex/gcam/AeModeResult;->e(F)V

    const/16 v13, 0x14

    nop

    nop

    nop

    nop

    aget v13, v4, v13

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    cmpl-float v13, v13, v14

    nop

    nop

    nop

    if-eqz v13, :cond_44

    nop

    const/4 v13, 0x1

    nop

    nop

    goto :goto_42

    nop

    nop

    nop

    nop

    :cond_44
    const/4 v13, 0x0

    nop

    nop

    :goto_42
    invoke-virtual {v10, v13}, Lcom/google/googlex/gcam/AeModeResult;->f(Z)V

    :cond_45
    const/16 v13, 0x15

    nop

    nop

    nop

    nop

    nop

    if-le v7, v13, :cond_4

    nop

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->e()Lcom/google/googlex/gcam/AeMetadata;

    move-result-object v7

    nop

    invoke-virtual {v7}, Lcom/google/googlex/gcam/AeMetadata;->a()Lsyj;

    move-result-object v7

    nop

    nop

    nop

    sget-object v14, Lsyj;->a:Lsyj;

    nop

    if-ne v7, v14, :cond_4

    nop

    aget v7, v4, v13

    nop

    nop

    nop

    nop
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_43
    new-instance v5, Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_44
    if-gez v7, :cond_46

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_46
    :try_start_d
    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->e()Lcom/google/googlex/gcam/AeMetadata;

    move-result-object v7

    nop

    nop

    aget v14, v4, v13

    nop

    nop

    float-to-int v14, v14

    nop

    invoke-static {v14}, Lsyj;->a(I)Lsyj;

    move-result-object v14

    nop

    invoke-virtual {v7, v14}, Lcom/google/googlex/gcam/AeMetadata;->i(Lsyj;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    goto/32 :goto_10

    nop

    nop

    :goto_45
    if-eq v11, v4, :cond_47

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :cond_47
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return-object v5

    nop

    :array_0
    .array-data 4
        0x41800000    # 16.0f
        0x4181999a    # 16.2f
        0x4180cccd    # 16.1f
        0x41800000    # 16.0f
    .end array-data

    :array_1
    .array-data 4
        0x42800000    # 64.0f
        0x42806666    # 64.2f
        0x42803333    # 64.1f
        0x42800000    # 64.0f
    .end array-data

    :array_2
    .array-data 4
        0x42c80000    # 100.0f
        0x42c86666    # 100.2f
        0x42c83333    # 100.1f
        0x42c80000    # 100.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x427fae14    # 63.92f
        0x427fcccd    # 63.95f
        0x427fc28f    # 63.94f
        0x427fc28f    # 63.94f
    .end array-data

    :goto_47
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_48
    move-object/from16 v19, v6

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_26

    nop

    nop

    :goto_4a
    const-string v3, "Exception in converting to Gcam FrameMetadata at "

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

    :goto_4b
    move-object/from16 v6, v19

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v9, :cond_48

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_48
    :try_start_e
    sget-object v9, Lnyn;->g:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8, v9}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    check-cast v9, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_49

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    nop

    nop

    invoke-virtual {v5, v9, v10}, Lcom/google/googlex/gcam/FrameMetadata;->M(J)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    :cond_49
    :goto_4d
    :try_start_f
    sget-object v9, Lnyp;->e:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    if-eqz v9, :cond_9

    nop

    nop

    nop

    sget-object v9, Lnyp;->e:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v8, v9}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    check-cast v9, [I

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->j()Lcom/google/googlex/gcam/FaceInfoVector;

    move-result-object v13

    nop

    invoke-virtual {v13}, Lcom/google/googlex/gcam/FaceInfoVector;->a()J

    move-result-wide v13

    nop

    nop

    const-wide/16 v15, 0x4

    nop

    mul-long/2addr v13, v15

    nop

    array-length v15, v9

    nop

    int-to-long v11, v15

    nop

    nop

    nop

    nop

    nop

    cmp-long v11, v13, v11

    nop

    nop

    nop

    nop

    if-nez v11, :cond_8

    nop

    nop

    invoke-static {v8, v7}, Ltbt;->C(Lprk;Lpnu;)Landroid/graphics/Rect;

    move-result-object v11

    nop

    nop

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->k()Lcom/google/googlex/gcam/FaceInfoVector;

    move-result-object v13

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->j()Lcom/google/googlex/gcam/FaceInfoVector;

    move-result-object v15

    nop

    nop

    invoke-virtual {v15}, Lcom/google/googlex/gcam/FaceInfoVector;->a()J

    move-result-wide v15

    nop

    nop

    nop

    nop

    nop

    move/from16 v18, v11

    nop

    nop

    nop

    nop

    nop

    int-to-long v10, v14

    nop

    nop

    nop

    nop

    cmp-long v10, v10, v15

    nop

    nop

    if-gez v10, :cond_9

    nop

    nop

    nop

    nop

    mul-int/lit8 v10, v14, 0x4

    nop

    nop

    nop

    nop

    aget v11, v9, v10

    nop

    int-to-float v11, v11

    nop

    nop

    nop

    add-int/lit8 v15, v10, 0x1

    nop

    nop

    nop

    nop

    aget v15, v9, v15

    nop

    nop

    nop

    nop

    nop
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v12, 0x1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_50
    if-gez v4, :cond_4a

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :cond_4a
    :try_start_10
    aget-object v10, v18, v4

    nop

    nop

    nop

    iget v11, v10, Lsxt;->e:I

    nop
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    goto/32 :goto_45

    nop

    nop

    :goto_51
    goto/16 :goto_65

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_58

    nop

    nop

    :goto_54
    :try_start_11
    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->p()Lcom/google/googlex/gcam/PortraitMask;

    move-result-object v4

    nop

    iget-wide v10, v4, Lcom/google/googlex/gcam/PortraitMask;->a:J

    nop

    nop

    nop

    invoke-static {v10, v11, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitMask_size_get(JLcom/google/googlex/gcam/PortraitMask;)J

    move-result-wide v10

    nop

    nop

    nop

    nop

    const-wide/16 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v7, v10, v13

    nop

    if-nez v7, :cond_4b

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    goto :goto_55

    nop

    nop

    nop

    nop

    nop

    :cond_4b
    new-instance v7, Lcom/google/googlex/gcam/Size;

    nop

    nop

    const/4 v13, 0x0

    nop

    invoke-direct {v7, v10, v11, v13}, Lcom/google/googlex/gcam/Size;-><init>(JZ)V

    :goto_55
    iget v10, v2, Ltij;->d:I

    nop

    iget-wide v13, v7, Lcom/google/googlex/gcam/Size;->a:J

    nop

    nop

    invoke-static {v13, v14, v7, v10}, Lcom/google/googlex/gcam/GcamModuleJNI;->Size_height_set(JLcom/google/googlex/gcam/Size;I)V

    iget v10, v2, Ltij;->c:I

    nop

    nop

    nop

    iget-wide v13, v7, Lcom/google/googlex/gcam/Size;->a:J

    nop

    nop

    invoke-static {v13, v14, v7, v10}, Lcom/google/googlex/gcam/GcamModuleJNI;->Size_width_set(JLcom/google/googlex/gcam/Size;I)V

    iget-wide v10, v4, Lcom/google/googlex/gcam/PortraitMask;->a:J

    nop

    nop

    invoke-static {v10, v11, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitMask_crop_get(JLcom/google/googlex/gcam/PortraitMask;)J

    move-result-wide v10

    nop

    const-wide/16 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v7, v10, v13

    nop

    nop

    nop

    if-nez v7, :cond_4c

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_4c
    new-instance v7, Lcom/google/googlex/gcam/NormalizedRect;

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v10, v11, v13}, Lcom/google/googlex/gcam/NormalizedRect;-><init>(JZ)V

    :goto_56
    iget v10, v2, Ltij;->e:F

    nop

    nop

    invoke-virtual {v7, v10}, Lcom/google/googlex/gcam/NormalizedRect;->c(F)V

    iget v10, v2, Ltij;->g:F

    nop

    nop

    invoke-virtual {v7, v10}, Lcom/google/googlex/gcam/NormalizedRect;->d(F)V

    iget v10, v2, Ltij;->f:F

    nop

    nop

    nop

    invoke-virtual {v7, v10}, Lcom/google/googlex/gcam/NormalizedRect;->e(F)V

    iget v10, v2, Ltij;->h:F

    nop

    nop

    nop

    invoke-virtual {v7, v10}, Lcom/google/googlex/gcam/NormalizedRect;->f(F)V

    iget-object v2, v2, Ltij;->i:Ltjj;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltjj;->t()[B

    move-result-object v2

    nop

    nop

    nop

    nop

    iget-wide v10, v4, Lcom/google/googlex/gcam/PortraitMask;->a:J

    nop

    nop

    nop

    invoke-static {v10, v11, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitMask_data_get(JLcom/google/googlex/gcam/PortraitMask;)J

    move-result-wide v10

    nop

    nop

    nop

    nop

    const-wide/16 v13, 0x0

    nop

    nop

    nop

    nop

    cmp-long v4, v10, v13

    nop

    nop

    if-nez v4, :cond_4d

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    goto :goto_57

    nop

    nop

    nop

    nop

    :cond_4d
    new-instance v4, Lcom/google/googlex/gcam/Uint8Vector;

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    invoke-direct {v4, v10, v11, v7}, Lcom/google/googlex/gcam/Uint8Vector;-><init>(JZ)V

    move-object v10, v4

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {v2, v10}, Lcom/google/googlex/gcam/BufferUtils;->f([BLcom/google/googlex/gcam/Uint8Vector;)V

    goto :goto_58

    nop

    :catch_6
    sget-object v2, Ltbt;->b:Ljava/lang/String;

    nop

    nop

    nop

    const-string v4, "Cannot parse the mask proto"

    nop

    nop

    nop

    nop

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    :goto_58
    const-string v6, "3a"

    nop

    nop

    nop

    nop

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Integer;

    nop

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    invoke-static {v2}, Lsxe;->a(I)Lsxe;

    move-result-object v2

    nop

    nop

    invoke-virtual {v5, v2}, Lcom/google/googlex/gcam/FrameMetadata;->x(Lsxe;)V

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->e()Lcom/google/googlex/gcam/AeMetadata;

    move-result-object v2

    nop

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {v3, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    invoke-static {v4}, Lsws;->a(I)Lsws;

    move-result-object v4

    nop

    nop

    invoke-virtual {v2, v4}, Lcom/google/googlex/gcam/AeMetadata;->f(Lsws;)V

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v3, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    invoke-virtual {v2, v4}, Lcom/google/googlex/gcam/AeMetadata;->e(Z)V

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v3, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_4f

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lswu;->a(I)Lswu;

    move-result-object v4

    nop

    invoke-virtual {v2, v4}, Lcom/google/googlex/gcam/AeMetadata;->h(Lswu;)V

    :cond_4f
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_50

    nop

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    invoke-static {v4}, Lswt;->a(I)Lswt;

    move-result-object v4

    nop

    nop

    invoke-virtual {v2, v4}, Lcom/google/googlex/gcam/AeMetadata;->g(Lswt;)V

    :cond_50
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    invoke-virtual {v1, v4}, Ltbt;->a(I)F

    move-result v1

    nop

    nop

    invoke-virtual {v2, v1}, Lcom/google/googlex/gcam/AeMetadata;->d(F)V

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->h()Lcom/google/googlex/gcam/AwbMetadata;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lsxa;->a(I)Lsxa;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AwbMetadata;->d(Lsxa;)V

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {v3, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AwbMetadata;->c(Z)V

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {v3, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    if-eqz v2, :cond_51

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    invoke-static {v2}, Lsxb;->a(I)Lsxb;

    move-result-object v2

    nop

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AwbMetadata;->e(Lsxb;)V

    :cond_51
    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->g()Lcom/google/googlex/gcam/AfMetadata;

    move-result-object v1

    nop

    nop

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v3, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    invoke-static {v2}, Lsww;->a(I)Lsww;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AfMetadata;->c(Lsww;)V

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v3, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    invoke-static {v2}, Lswx;->a(I)Lswx;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AfMetadata;->d(Lswx;)V

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {v3, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ljava/lang/Integer;

    nop

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lswy;->a(I)Lswy;

    move-result-object v2

    nop

    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AfMetadata;->e(Lswy;)V

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    if-eqz v1, :cond_55

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    sget-object v2, Lsxu;->d:[Lsxu;

    nop

    nop

    nop

    nop

    const/4 v4, 0x3

    nop

    if-ge v1, v4, :cond_52

    nop

    nop

    nop

    nop

    if-ltz v1, :cond_52

    nop

    nop

    nop

    aget-object v2, v2, v1

    nop

    nop

    nop

    nop

    nop

    iget v4, v2, Lsxu;->e:I

    nop

    nop

    if-ne v4, v1, :cond_52

    nop

    nop

    nop

    nop

    nop

    goto :goto_5a

    nop

    nop

    :cond_52
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_59
    sget-object v2, Lsxu;->d:[Lsxu;

    nop

    nop

    const/4 v4, 0x3

    nop

    if-ge v10, v4, :cond_54

    nop

    aget-object v2, v2, v10

    nop

    nop

    iget v7, v2, Lsxu;->e:I

    nop

    nop

    if-ne v7, v1, :cond_53

    nop

    nop

    :goto_5a
    invoke-virtual {v5, v2}, Lcom/google/googlex/gcam/FrameMetadata;->G(Lsxu;)V

    goto :goto_5b

    nop

    nop

    nop

    nop

    nop

    :cond_53
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    goto :goto_59

    nop

    nop

    nop

    :cond_54
    new-instance v2, Ljava/lang/IllegalArgumentException;

    nop

    nop

    const-class v3, Lsxu;

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    nop

    nop

    nop

    nop

    :cond_55
    :goto_5b
    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->q()Lsyi;

    move-result-object v1

    nop

    nop

    sget-object v2, Lsyi;->h:Lsyi;

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_56

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->q()Lsyi;

    move-result-object v1

    nop

    nop

    nop

    sget-object v2, Lsyi;->l:Lsyi;

    nop

    nop

    if-eq v1, v2, :cond_56

    nop

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->q()Lsyi;

    move-result-object v1

    nop

    nop

    sget-object v2, Lsyi;->c:Lsyi;

    nop

    if-ne v1, v2, :cond_57

    nop

    nop

    nop

    nop

    nop

    :cond_56
    invoke-static {v5}, Lsgj;->C(Lcom/google/googlex/gcam/FrameMetadata;)V

    :cond_57
    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->q()Lsyi;

    move-result-object v1

    nop

    sget-object v2, Lsyi;->o:Lsyi;

    nop

    nop

    nop

    if-ne v1, v2, :cond_58

    nop

    nop

    nop

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_RAW_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/graphics/Rect;

    nop

    if-eqz v1, :cond_58

    nop

    nop

    nop

    nop

    new-instance v2, Lcom/google/googlex/gcam/PixelRect;

    nop

    invoke-direct {v2}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    iget v4, v1, Landroid/graphics/Rect;->left:I

    nop

    nop

    invoke-virtual {v2, v4}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    iget v4, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Lcom/google/googlex/gcam/PixelRect;->k(I)V

    iget v4, v1, Landroid/graphics/Rect;->right:I

    nop

    invoke-virtual {v2, v4}, Lcom/google/googlex/gcam/PixelRect;->j(I)V

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lcom/google/googlex/gcam/PixelRect;->l(I)V

    invoke-static {v2, v5}, Lsgj;->z(Lcom/google/googlex/gcam/PixelRect;Lcom/google/googlex/gcam/FrameMetadata;)V

    :cond_58
    const-string v6, "halaf"

    nop

    sget-object v1, Lnyp;->b:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-static {v1, v3}, Ltbt;->Q(Landroid/hardware/camera2/CaptureResult$Key;Lpro;)[B

    move-result-object v1

    nop

    nop

    nop

    if-eqz v1, :cond_59

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->l()Lcom/google/googlex/gcam/HalAfMetadata;

    move-result-object v2

    nop

    nop

    invoke-static {v1, v2}, Ltcw;->b([BLcom/google/googlex/gcam/HalAfMetadata;)V

    :cond_59
    sget-object v1, Lnyp;->a:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-static {v1, v3}, Ltbt;->Q(Landroid/hardware/camera2/CaptureResult$Key;Lpro;)[B

    move-result-object v1

    nop

    if-eqz v1, :cond_5a

    nop

    nop

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->l()Lcom/google/googlex/gcam/HalAfMetadata;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ltcw;->a([B)Landroid/util/Pair;

    move-result-object v1

    nop

    new-instance v2, Lsyh;

    nop

    nop

    nop

    nop

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    nop

    invoke-direct {v2, v7, v8}, Lsyh;-><init>(J)V

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    nop

    nop

    int-to-long v12, v1

    nop

    iget-wide v7, v9, Lcom/google/googlex/gcam/HalAfMetadata;->a:J

    nop

    nop

    nop

    invoke-static {v2}, Lsyh;->a(Lsyh;)J

    move-result-wide v10

    nop

    invoke-static/range {v7 .. v13}, Lcom/google/googlex/gcam/GcamModuleJNI;->HalAfMetadata_SetAfTargetFocusInfoFromBytes(JLcom/google/googlex/gcam/HalAfMetadata;JJ)Z

    :cond_5a
    const-string v6, "clut"

    nop

    nop

    nop

    nop

    sget-object v1, Lnyr;->k:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    sget-object v1, Lnyr;->l:Landroid/hardware/camera2/CaptureResult$Key;

    nop
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_5d
    const v1, 0xd

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_5e
    if-nez v18, :cond_5b

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_5b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v1, :cond_5c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_5c
    :try_start_12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    if-nez v1, :cond_5d

    nop

    goto/16 :goto_32

    nop

    nop

    nop

    :cond_5d
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v2, v1}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Long;

    nop

    nop

    sget-object v14, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v2, v14}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    check-cast v14, [Landroid/hardware/camera2/params/OisSample;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_14

    nop

    nop

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->o()Lcom/google/googlex/gcam/OisMetadata;

    move-result-object v15

    nop

    nop

    nop

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v2, v4}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    sget-object v18, Lsxt;->d:[Lsxt;

    nop

    nop

    nop

    nop
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_60
    if-lez v0, :cond_5e

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

    :cond_5e
    goto/32 :goto_1b

    nop

    :goto_61
    goto/16 :goto_21

    nop

    nop

    :goto_62
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const-string v9, "No enum "

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_64
    const/4 v12, 0x0

    nop

    nop

    nop

    :goto_65
    :try_start_13
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_66
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    int-to-float v15, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_68
    cmpl-float v7, v7, v14

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_69
    move-object/from16 v4, p4

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_6b
    if-eq v13, v12, :cond_5f

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_5f
    goto/32 :goto_4f

    nop

    nop

    :goto_6c
    if-eq v13, v14, :cond_60

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_60
    :try_start_14
    array-length v12, v10

    nop
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_6d
    if-nez v2, :cond_61

    nop

    goto/32 :goto_f

    nop

    :cond_61
    :try_start_15
    array-length v3, v1

    nop

    nop

    array-length v4, v2

    nop

    nop

    nop

    nop

    if-eq v3, v4, :cond_62

    nop

    nop

    sget-object v1, Ltbt;->b:Ljava/lang/String;

    nop

    nop

    nop

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    const-string v7, "Unexcepted array length: CLUT IDs length (%d) should be equal to CLUT weights length (%d)!"

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x2

    nop

    nop

    new-array v8, v8, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    aput-object v3, v8, v9

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    aput-object v3, v8, v4

    nop

    nop

    invoke-static {v2, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    nop

    :cond_62
    const/4 v9, 0x0

    nop

    nop

    invoke-virtual {v5}, Lcom/google/googlex/gcam/FrameMetadata;->i()Lcom/google/googlex/gcam/ClutWeights;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3}, Lcom/google/googlex/gcam/ClutWeights;->a()Lcom/google/googlex/gcam/ClutWeightVector;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    move v12, v9

    nop

    nop

    :goto_6e
    array-length v4, v1

    nop

    nop

    nop

    nop

    nop

    if-ge v12, v4, :cond_3

    nop

    nop

    nop

    aget-byte v4, v1, v12

    nop

    nop

    nop

    nop

    and-int/lit16 v4, v4, 0xff

    nop

    nop

    nop

    nop

    nop

    if-lez v4, :cond_63

    nop

    nop

    aget v7, v2, v12

    nop

    invoke-virtual {v3, v4, v7}, Lcom/google/googlex/gcam/ClutWeightVector;->b(IF)V

    :cond_63
    add-int/lit8 v12, v12, 0x1

    nop

    goto :goto_6e

    nop

    nop

    nop

    nop

    nop

    :catch_7
    move-exception v0

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    sget-object v2, Ltbt;->b:Ljava/lang/String;

    nop

    const-string v3, "Failed to get CLUT IDs and CLUT weights!"

    nop

    nop

    nop

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6f
    const/4 v14, 0x0

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_2

    nop

    :catch_8
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop
.end method

.method public final y(Lpnx;Lcom/google/googlex/gcam/AeShotParams;Lpro;FLpck;)V
    .locals 20

    goto/32 :goto_123

    nop

    nop

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    invoke-interface {v3, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float v6, v6

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v2}, Lpnu;->j()Lpnx;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v14}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v7, "crop exceeds preCorrectionActiveArraySize!"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_7
    invoke-direct {v9, v1, v8, v10, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_a
    int-to-float v9, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_b
    iget v1, v2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    goto/32 :goto_48

    nop

    nop

    :goto_e
    sget-object v4, Lnyq;->q:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_f
    invoke-direct {v10, v14, v15, v11}, Lcom/google/googlex/gcam/NormalizedRect;-><init>(JZ)V

    :goto_10
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    mul-float/2addr v9, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v8}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_13
    const/4 v8, 0x3

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    :goto_14
    iget v8, v7, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v7}, Lcom/google/googlex/gcam/WeightedNormalizedRect;-><init>()V

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-wide/from16 v12, v16

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v18, :cond_0

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :cond_0
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    neg-int v1, v1

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_1a
    aget-object v14, v4, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v1, Ltbt;->b:Ljava/lang/String;

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/high16 v10, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_1d
    invoke-static {v2}, Lsyj;->a(I)Lsyj;

    move-result-object v2

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v11, 0x0

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_1f
    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_20
    const/high16 v10, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_22
    invoke-static {v1, v8, v9}, Lrrf;->L(III)I

    move-result v1

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

    :goto_23
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Lcom/google/googlex/gcam/MeshTranslation;->b()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    :goto_27
    const-string v1, " does not exist."

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v13

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_29
    float-to-int v1, v1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_128

    nop

    :goto_2b
    cmpl-float v4, v2, v4

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v9, v2, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_2d
    iget-wide v14, v8, Lcom/google/googlex/gcam/WeightedNormalizedRect;->a:J

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-wide/from16 v16, v12

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2f
    iget-wide v8, v0, Lcom/google/googlex/gcam/AeShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_30
    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_32
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_33
    invoke-static {v4}, Lcom/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_34
    iget v9, v2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_35
    iget v1, v2, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v7, Lcom/google/googlex/gcam/WeightedNormalizedRect;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_37
    aget v2, v1, v3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_38
    move/from16 v6, p4

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_39
    iget v8, v2, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_3a
    move v4, v6

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_3b
    move-object/from16 v2, p0

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_fc

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz v7, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v1, :cond_5

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_5
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    :cond_6
    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v14}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v15

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_44
    goto/16 :goto_b5

    nop

    nop

    :goto_45
    goto/32 :goto_58

    nop

    nop

    :goto_46
    check-cast v4, Landroid/graphics/Rect;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_47
    int-to-float v7, v7

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_48
    return-void

    nop

    :goto_49
    goto/32 :goto_ac

    nop

    nop

    :goto_4a
    check-cast v5, Landroid/graphics/Rect;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_4b
    sget v8, Lcom/a;->aa:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_4c
    if-eqz v8, :cond_7

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :cond_7
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_4d
    add-float/2addr v14, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_4f
    add-int/2addr v10, v1

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {v8}, Lcom/google/googlex/gcam/WeightedNormalizedRect;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_51
    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_52
    move v6, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_53
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_56
    iget v7, v2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v5, v1, v7}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v1}, Lcom/google/googlex/gcam/MeshWarp;->d()Lcom/google/googlex/gcam/MeshTranslation;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_3d

    nop

    nop

    :goto_5a
    goto/32 :goto_b0

    nop

    nop

    :goto_5b
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v1}, Lcom/google/googlex/gcam/MeshTranslation;->a()I

    move-result v9

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_5d
    mul-float/2addr v6, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_5e
    invoke-direct {v1, v7, v8, v6}, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;-><init>(JZ)V

    :goto_5f
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    mul-float/2addr v9, v7

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_61
    check-cast v4, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_64
    move-object/from16 v16, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-gez v4, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    div-float v9, v16, v9

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    :goto_67
    mul-float/2addr v7, v8

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_68
    invoke-static {v7, v8, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_weighted_metering_areas_get(JLcom/google/googlex/gcam/AeShotParams;)J

    move-result-wide v7

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_69
    invoke-interface {v3, v5}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-eq v8, v5, :cond_9

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_59

    nop

    nop

    :goto_6b
    sget-object v4, Lnyq;->q:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_6c
    const v9, 0x3d7ae148    # 0.06125f

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v10, v13}, Lcom/google/googlex/gcam/NormalizedRect;->f(F)V

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    float-to-int v2, v2

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {v2}, Lsyj;->a(I)Lsyj;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/AeShotParams;->l(Lsyj;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_6f
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_70
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_71
    invoke-static {v8, v9, v0, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_people_brightness_preference_set(JLcom/google/googlex/gcam/AeShotParams;F)V

    :goto_72
    goto/32 :goto_70

    nop

    nop

    :goto_73
    const v1, 0xe

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const/16 v3, 0x15

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v5, v5, v2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v1, v9}, Lcom/google/googlex/gcam/NormalizedRect;->e(F)V

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_77
    new-instance v8, Lcom/google/googlex/gcam/WeightedNormalizedRect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    aget-object v8, v4, v7

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_79
    new-instance v7, Landroid/graphics/Rect;

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_7a
    int-to-float v7, v7

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_7b
    iget v8, v2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_7c
    sub-int/2addr v8, v9

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_7d
    sget-object v4, Lsyj;->a:Lsyj;

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_7e
    goto/16 :goto_98

    nop

    nop

    :goto_7f
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_80
    div-float/2addr v9, v6

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    array-length v8, v4

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget v7, v2, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    int-to-float v9, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_84
    move-object/from16 v3, p1

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-static/range {v14 .. v19}, Lcom/google/googlex/gcam/GcamModuleJNI;->WeightedNormalizedRect_rect_set(JLcom/google/googlex/gcam/WeightedNormalizedRect;JLcom/google/googlex/gcam/NormalizedRect;)V

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_86
    iget-wide v14, v7, Lcom/google/googlex/gcam/WeightedNormalizedRect;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_87
    if-eqz v1, :cond_a

    nop

    nop

    goto/32 :goto_90

    nop

    :cond_a
    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_88
    const-wide/16 v12, 0x0

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_89
    if-nez v4, :cond_b

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :cond_b
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_8a
    invoke-static {v3, v2}, Ltbt;->C(Lprk;Lpnu;)Landroid/graphics/Rect;

    move-result-object v2

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-wide v7, v0, Lcom/google/googlex/gcam/AeShotParams;->a:J

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_8c
    if-eqz v8, :cond_c

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-static {v4, v1}, Ltbt;->n(Landroid/graphics/Rect;Lprk;)Lcom/google/googlex/gcam/MeshWarp;

    move-result-object v1

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_8e
    invoke-interface {v3, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    goto/16 :goto_5f

    nop

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_110

    nop

    nop

    :goto_91
    if-gt v2, v3, :cond_d

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_d
    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v1, v7}, Lcom/google/googlex/gcam/NormalizedRect;->f(F)V

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_94
    new-instance v19, Lcom/google/googlex/gcam/NormalizedRect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_95
    new-instance v10, Lcom/google/googlex/gcam/NormalizedRect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    sget-object v1, Lnym;->a:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_97
    move v4, v7

    nop

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_99
    cmp-long v18, v14, v16

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9a
    move/from16 v6, p4

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    const/4 v11, 0x0

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v2, v1, v3}, Ltbt;->h(Lpro;Lpnx;)Lpnu;

    move-result-object v2

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

    nop

    :goto_9d
    invoke-interface {v3, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v10, v12}, Lcom/google/googlex/gcam/NormalizedRect;->d(F)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    iget-wide v8, v0, Lcom/google/googlex/gcam/AeShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_a0
    return-void

    nop

    nop

    :catch_0
    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_a1
    const/4 v11, 0x0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    array-length v8, v4

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-wide v8, v0, Lcom/google/googlex/gcam/AeShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    div-float v7, v10, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-direct {v1}, Lcom/google/googlex/gcam/NormalizedRect;-><init>()V

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_a8
    neg-int v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v1, v8}, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;->a(Lcom/google/googlex/gcam/WeightedNormalizedRect;)V

    :goto_aa
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    div-float/2addr v15, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v7, v10}, Lcom/google/googlex/gcam/WeightedNormalizedRect;->b(F)V

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v1, v9}, Lcom/google/googlex/gcam/NormalizedRect;->c(F)V

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b0
    move v8, v6

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    if-eqz v8, :cond_e

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {v10, v9}, Lcom/google/googlex/gcam/NormalizedRect;->e(F)V

    goto/32 :goto_9e

    nop

    nop

    :goto_b3
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-static {v1, v7}, Lrrf;->m(ZLjava/lang/Object;)V

    :goto_b5
    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_b6
    move-object/from16 v0, p2

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    cmp-long v1, v7, v12

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_b8
    invoke-virtual {v5, v1, v7}, Landroid/graphics/Rect;->offset(II)V

    :goto_b9
    goto/32 :goto_75

    nop

    nop

    :goto_ba
    iget v9, v2, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_bc
    invoke-virtual {v10, v6}, Lcom/google/googlex/gcam/NormalizedRect;->c(F)V

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    int-to-float v13, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_bf
    invoke-static {v14, v15, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->WeightedNormalizedRect_rect_get(JLcom/google/googlex/gcam/WeightedNormalizedRect;)J

    move-result-wide v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_c0
    int-to-float v12, v12

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {v8, v6}, Lcom/google/googlex/gcam/WeightedNormalizedRect;->b(F)V

    goto/32 :goto_a9

    nop

    nop

    :goto_c2
    move v7, v6

    nop

    nop

    :goto_c3
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_c4
    goto/16 :goto_aa

    nop

    nop

    :goto_c5
    goto/32 :goto_77

    nop

    nop

    :goto_c6
    new-instance v1, Lcom/google/googlex/gcam/NormalizedRect;

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-interface {v3, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_c9
    invoke-static {v8, v9, v0, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_general_brightness_preference_set(JLcom/google/googlex/gcam/AeShotParams;F)V

    goto/32 :goto_10a

    nop

    nop

    :goto_ca
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    div-float v8, v10, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_cd
    sget-object v4, Lnyq;->C:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_ce
    new-instance v9, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-static {v8, v9, v10}, Lrrf;->L(III)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v7, v5}, Lpby;->d(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    sget-object v1, Lnym;->a:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    int-to-float v9, v9

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_d3
    invoke-static {v9, v11, v10}, Lrrf;->V(FFF)F

    move-result v6

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

    :goto_d4
    array-length v2, v1

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-static/range {v19 .. v19}, Lcom/google/googlex/gcam/NormalizedRect;->a(Lcom/google/googlex/gcam/NormalizedRect;)J

    move-result-wide v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {v1, v7}, Lcom/google/googlex/gcam/NormalizedRect;->d(F)V

    goto/32 :goto_32

    nop

    nop

    :goto_d7
    iget v1, v7, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_d8
    if-ge v8, v5, :cond_f

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_da
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_db
    iget v9, v5, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_dc
    iget v9, v5, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_de
    sub-int/2addr v9, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_df
    invoke-virtual {v14}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v14

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    aget v5, v4, v6

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_e1
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    add-int v0, v0, v1

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    if-nez v4, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_e7
    add-float/2addr v15, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    sub-float v9, v15, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    const-wide/16 v16, 0x0

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_ea
    if-nez v1, :cond_11

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    int-to-float v6, v6

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-static {v4, v5, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_touch_roi_type_get(JLcom/google/googlex/gcam/AeShotParams;)I

    move-result v2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_ed
    if-eq v2, v4, :cond_12

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_ee
    invoke-direct/range {v19 .. v19}, Lcom/google/googlex/gcam/NormalizedRect;-><init>()V

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_ef
    xor-int/2addr v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f1
    sub-int/2addr v9, v1

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

    :goto_f2
    move v11, v6

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    const-string v7, "crop failed to intersect with preCorrectionActiveArraySize."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_f4
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_f5
    const/4 v11, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f6
    sget-object v0, Ltbt;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    aget v1, v1, v3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_f8
    invoke-static {v9, v11, v10}, Lrrf;->V(FFF)F

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_f9
    const-string v8, "Invalid scaler crop region: %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_fa
    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_fb
    move v8, v7

    nop

    nop

    nop

    :goto_fc
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_fd
    invoke-static {v15, v11, v10}, Lrrf;->V(FFF)F

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_fe
    iget-wide v4, v0, Lcom/google/googlex/gcam/AeShotParams;->a:J

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_ff
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_100
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_101
    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_102
    goto/32 :goto_10d

    nop

    nop

    :goto_103
    invoke-static {v14, v11, v10}, Lrrf;->V(FFF)F

    move-result v13

    nop

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

    :goto_104
    int-to-float v9, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_105
    invoke-static {v8, v9, v0, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_ark_priority_set(JLcom/google/googlex/gcam/AeShotParams;Z)V

    :goto_106
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_107
    iget-object v3, v3, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_108
    if-lt v7, v8, :cond_13

    nop

    goto/32 :goto_113

    nop

    :cond_13
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_109
    add-int/2addr v7, v8

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

    :goto_10a
    aget v4, v4, v7

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_10b
    invoke-direct {v7, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_10c
    int-to-float v8, v8

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    if-nez v4, :cond_14

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_c2

    nop

    nop

    :goto_10f
    move-object/from16 v1, p3

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_110
    new-instance v1, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_111
    invoke-static {v7, v8, v5}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_112
    goto/16 :goto_c3

    nop

    nop

    nop

    nop

    :goto_113
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    iget v9, v5, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_115
    goto/16 :goto_7f

    nop

    nop

    nop

    :goto_116
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_117
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_118
    check-cast v1, [F

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_119
    if-ne v8, v7, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_15
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    if-eq v4, v8, :cond_16

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :cond_16
    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/AeShotParams;->f(Lcom/google/googlex/gcam/NormalizedRect;)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    invoke-static/range {p5 .. p5}, Lpby;->j(Lpck;)Lpby;

    move-result-object v7

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_11d
    sub-int/2addr v10, v11

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_11e
    div-float/2addr v14, v13

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    :goto_11f
    const/4 v10, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_120
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_121
    invoke-virtual {v1, v7}, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;->a(Lcom/google/googlex/gcam/WeightedNormalizedRect;)V

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_122
    invoke-static {v1, v3}, Ltbt;->j(Lpro;Ljava/lang/String;)Lpro;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_123
    const v0, 0x13

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_124
    check-cast v4, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_125
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_126
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_127
    mul-float/2addr v9, v7

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_128
    goto/32 :goto_49

    nop

    nop

    :goto_129
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    sub-float v16, v14, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_12b
    if-eqz v1, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    :cond_17
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    neg-int v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_12d
    neg-int v7, v7

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_12e
    const-string v3, "Touch roi type "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_12f
    invoke-interface {v3, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_130
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_131
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop
.end method
