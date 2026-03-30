.class public final Lffi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;

.field private static final b:Ljava/lang/ThreadLocal;

.field private static final c:Ljava/lang/ThreadLocal;

.field private static final d:Ljava/lang/ThreadLocal;

.field private static final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lffh;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lffi;->b:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_3
    double-to-float v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    new-instance v0, Lffe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    const v1, 0x7

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lffi;->a:Ljava/lang/ThreadLocal;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    invoke-direct {v0}, Lffg;-><init>()V

    goto/32 :goto_17

    nop

    nop

    :goto_d
    invoke-direct {v0}, Lfff;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0}, Lffh;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

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
    div-double/2addr v2, v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lffg;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lfff;

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

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    invoke-direct {v0}, Lffe;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_17
    sput-object v0, Lffi;->d:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sput-object v0, Lffi;->c:Ljava/lang/ThreadLocal;

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

    :goto_1a
    sput v0, Lffi;->e:F

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
.end method

.method public static a()F
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

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

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    :goto_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(Landroid/graphics/Matrix;)F
    .locals 6

    goto/32 :goto_19

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lffi;->a:Ljava/lang/ThreadLocal;

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

    :goto_2
    check-cast v0, [F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    aget v1, v0, v5

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4
    aput v2, v0, v4

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

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    const/4 v1, 0x0

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

    :goto_8
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    aput v2, v0, v5

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

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    aget v1, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_d
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

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

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_11
    sub-float/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    double-to-float p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    const/4 v5, 0x3

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

    nop

    :goto_15
    aget p0, v0, v4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_17
    float-to-double v0, v1

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

    :goto_18
    float-to-double v2, p0

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
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1b
    sget v2, Lffi;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1c
    aput v2, v0, v1

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

    :goto_1d
    aget v0, v0, v3

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1e
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1f
    aput v2, v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_20
    sub-float/2addr p0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_21
    const/4 v4, 0x2

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

.method public static c(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq v0, p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_7

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
    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-object p1

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

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

    nop

    :goto_7
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eq v0, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public static d(Landroid/graphics/Path;FFF)V
    .locals 9

    goto/32 :goto_45

    nop

    nop

    :goto_0
    goto :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v6, p1, v2, p2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4
    check-cast v2, Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, v3}, Lffd;->b(FF)I

    move-result p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6
    if-gez v4, :cond_1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_7
    cmpg-float p1, v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, v3}, Lffd;->b(FF)I

    move-result p1

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

    :goto_b
    const/high16 v5, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :goto_d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_e
    cmpl-float p2, v4, p1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    int-to-float v4, p2

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_13
    cmpg-float v4, v3, v4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    cmpg-double v4, v4, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_15
    sget-object v2, Lffi;->d:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v1, Lffi;->c:Ljava/lang/ThreadLocal;

    nop

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

    :goto_17
    add-float/2addr p1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-float/2addr v4, p3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    int-to-float p1, p1

    nop

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    cmpl-float v5, p1, v4

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_1c
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    int-to-float p1, p1

    nop

    nop

    :goto_1e
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_21
    cmpl-float p3, p1, v3

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

    :goto_22
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto/32 :goto_52

    nop

    nop

    :goto_27
    const/4 v3, 0x0

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 p2, 0x1

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

    :goto_29
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v0, Landroid/graphics/PathMeasure;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0x11

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

    nop

    nop

    :goto_2c
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    cmpg-float p2, v4, v6

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_30
    cmpl-float p2, v4, v3

    nop

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

    :goto_31
    invoke-static {v4, v3}, Lffd;->b(FF)I

    move-result p2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_33
    mul-float/2addr p3, v3

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

    nop

    :goto_34
    if-ltz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_35
    add-float/2addr v4, v5

    nop

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

    :goto_36
    if-ltz v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_47

    nop

    nop

    :goto_37
    add-float/2addr v4, v3

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_38
    if-gtz p3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_4
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, v4, v3, v2, p2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/32 :goto_c

    nop

    nop

    :goto_3a
    goto/16 :goto_d

    nop

    nop

    :goto_3b
    goto/32 :goto_7

    nop

    nop

    :goto_3c
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_56

    nop

    nop

    :goto_3f
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

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

    nop

    :goto_40
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_42
    mul-float/2addr p1, v3

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_43
    if-ltz p2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    :goto_44
    cmpg-float p2, p1, v6

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_46
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v4, p1, v1, p2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/32 :goto_21

    nop

    nop

    :goto_4a
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_64

    nop

    nop

    :goto_4b
    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4c
    cmpl-float p2, p1, v3

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_4d
    const/4 v6, 0x0

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0, p0, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    float-to-double v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_50
    mul-float/2addr p2, v3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {v4, v3}, Lffd;->b(FF)I

    move-result p2

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

    nop

    :goto_52
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_53
    if-gez p2, :cond_6

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

    nop

    :cond_6
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_54
    if-nez v5, :cond_7

    nop

    goto/32 :goto_1

    nop

    :cond_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_55
    int-to-float v4, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_56
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_57
    check-cast v1, Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_58
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_59
    if-lez v0, :cond_8

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_24

    nop

    :goto_5a
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

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

    :goto_5b
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_5c
    cmpl-float v5, p2, v6

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_5d
    sget-object v0, Lffi;->b:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    sub-float/2addr v4, v3

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-gez p2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_62
    if-eqz v5, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_a
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    sub-float v4, p2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_64
    rem-float/2addr p1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_65
    if-gez p2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_5f

    nop

    nop

    :goto_66
    if-ltz p2, :cond_c

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop
.end method

.method public static e(Ljava/io/Closeable;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

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

.method public static f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_1

    nop

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

    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
