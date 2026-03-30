.class public final Llkt;
.super Lmec;
.source "PG"


# instance fields
.field public final a:Lkba;

.field private final b:Landroid/content/res/Resources;

.field private final c:Loyd;

.field private d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lkba;Lfdo;Loyd;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p2, p0, Llkt;->a:Lkba;

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

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p4, p0, Llkt;->c:Loyd;

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

    :goto_3
    const-string v0, "portrait_smarts_chip"

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

    :goto_4
    invoke-direct {p0, p5, p3, v0}, Lmec;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lfdo;Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Llkt;->b:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a()Lmeb;
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

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

    :goto_1
    iput-object v0, v1, Lmej;->b:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    const/16 p0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x5

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
    invoke-static {}, Lmeb;->a()Lonz;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    iput-object v0, v1, Lmej;->c:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v2, 0x1388

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Lmej;->a()Lmek;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_a
    iput-object v0, v1, Lmej;->a:Ljava/lang/String;

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

    :goto_b
    invoke-virtual {v0}, Lonz;->e()Lmeb;

    move-result-object p0

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

    :goto_c
    invoke-static {}, Lmek;->a()Lmej;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_d
    const v2, 0x7f080426

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Llkt;->b:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p0}, Lonz;->f(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, p0, v2}, Lldq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p0}, Lonz;->g(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v2, v3}, Lmej;->f(J)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Lldq;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p0, v0, Lonz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Llkt;->b:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_20
    const/16 v2, 0x8

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v2, 0x7f1404f1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final b(Lpro;)Z
    .locals 6

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5
    cmpl-float v2, v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-gez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    if-le v2, p1, :cond_2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    :goto_8
    if-lt v1, v2, :cond_3

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1b

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

    nop

    :goto_a
    goto/16 :goto_26

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    div-float/2addr v3, v4

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p1, [Landroid/hardware/camera2/params/Face;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    move v1, v0

    nop

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_15
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1b
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    nop

    goto/32 :goto_2d

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

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1d
    array-length v2, p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    :goto_1f
    iget-object v4, p0, Llkt;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_20
    const v0, 0x10

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

    :goto_21
    goto/32 :goto_19

    nop

    nop

    :goto_22
    mul-float/2addr v3, v2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Llkt;->c:Loyd;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_24
    aget-object v2, p1, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_25
    move v0, p1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    div-float/2addr v2, v5

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v2, 0x3d4ccccd    # 0.05f

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2b
    cmpg-float p0, p0, v1

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

    :goto_2c
    const/4 p1, 0x1

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

    :goto_2d
    int-to-float v5, v5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

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

    :goto_31
    if-gtz v2, :cond_5

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

    :cond_5
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_33
    iget-object v5, p0, Llkt;->d:Landroid/graphics/Rect;

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

    :goto_34
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_35
    if-gez p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_36
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_21

    nop

    nop

    nop

    nop
.end method

.method public final e(Lpnu;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Lmec;->e(Lpnu;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    check-cast p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    :goto_4
    iput-object p1, p0, Llkt;->d:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1, v0}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
