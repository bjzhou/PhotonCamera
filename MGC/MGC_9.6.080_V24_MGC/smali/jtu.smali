.class public final Ljtu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljts;


# static fields
.field private static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    sput-object v0, Ljtu;->a:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/HashMap;

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
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/Map;Lrss;Loyd;)V
    .locals 0

    goto/32 :goto_26

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result p1

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

    :goto_1
    invoke-interface {p1}, Lphh;->d()Lpnx;

    move-result-object p1

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

    nop

    :goto_2
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p2, p1}, Ljtu;->b(Llhv;Llhv;Ljava/util/Map;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    sget-object p0, Llhv;->d:Llhv;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p2, Lphh;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p2, p1}, Ljtu;->b(Llhv;Llhv;Ljava/util/Map;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const-string p2, "Matching physical stream not found for "

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Lphh;->d()Lpnx;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_b
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

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

    :goto_c
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    :goto_d
    iget-object p2, p2, Lpnx;->a:Ljava/lang/String;

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
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, Ljava/lang/Boolean;

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

    :goto_10
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_14
    sget-object p0, Llhv;->b:Llhv;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_15
    invoke-interface {p2}, Lphh;->d()Lpnx;

    move-result-object p2

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_16
    check-cast p0, Lphh;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    sget-object p0, Llhv;->h:Llhv;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p2}, Lrss;->h()Z

    move-result p0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p0, p2, p1}, Ljtu;->b(Llhv;Llhv;Ljava/util/Map;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p3}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

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

    :goto_1d
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object p2, Llhv;->i:Llhv;

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

    :goto_1f
    check-cast p1, Lphh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_20
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_21
    sget-object p2, Llhv;->f:Llhv;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_23
    sget-object p1, Ljtu;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_24
    if-nez p0, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_25
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    :goto_26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    :goto_28
    iget-object p1, p1, Lpnx;->a:Ljava/lang/String;

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

    :goto_29
    sget-object p2, Llhv;->c:Llhv;

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

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2

    nop

    nop
.end method

.method private static b(Llhv;Llhv;Ljava/util/Map;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lphh;

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

    :goto_1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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
    check-cast p0, Lphh;

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

    :goto_3
    sget-object p2, Ljtu;->a:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iget-object p0, p0, Lpnx;->a:Ljava/lang/String;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    iget-object p1, p1, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    invoke-interface {p0}, Lphh;->d()Lpnx;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Lphh;->d()Lpnx;

    move-result-object p1

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

    :goto_b
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lpro;)Lpro;
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Landroid/graphics/Rect;

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

    :goto_1
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_3
    iput-object v0, p0, Ljtt;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x6

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, p1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7
    check-cast v0, Ljava/lang/String;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ge v1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/2addr p2, p2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    goto/32 :goto_20

    nop

    nop

    :goto_d
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_e
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_PIXEL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0, v1}, Ljtt;->c(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    :goto_10
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    iget v0, p1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_12
    const/16 v1, 0x1f

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

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int/2addr v2, v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, p2, p1}, Ljtt;->c(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    :goto_18
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v0, Ljtu;->a:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    if-nez p1, :cond_3

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1b
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p2, p1}, Ltbt;->j(Lpro;Ljava/lang/String;)Lpro;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_22
    add-int/2addr v1, v1

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

    :goto_23
    const v1, 0x8

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_24
    add-int/2addr v0, v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, p2}, Ljtt;-><init>(Lpro;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance p0, Ljtt;

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

    :goto_28
    invoke-interface {p1, p2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_29
    iget p2, p1, Landroid/graphics/Rect;->left:I

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
.end method
