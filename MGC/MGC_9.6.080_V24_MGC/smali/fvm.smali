.class public final Lfvm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lknk;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Landroid/graphics/PointF;

.field private final c:Landroid/graphics/PointF;

.field private final d:I

.field private final e:Lqek;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lfvm;->a:Lsdb;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "fvm"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Lqek;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfvm;->b:Landroid/graphics/PointF;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

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

    :goto_3
    iput p4, p0, Lfvm;->d:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lfvm;->e:Lqek;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lfvm;->c:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public static c(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Lfvm;
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    rem-int/lit8 v0, p2, 0x5a

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_20

    nop

    :goto_2
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3
    const-string v3, "sensorOrientation must be a multiple of 90"

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    const v0, 0xe

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    invoke-direct {v1, p2}, Lqek;-><init>(I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_8
    move v0, v2

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "sensorOrientation must not be negative"

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1a

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

    :goto_d
    rem-int/lit16 p2, p2, 0x168

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v3}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    :goto_11
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    if-gez p2, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    :goto_18
    goto/32 :goto_17

    nop

    :goto_19
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_1b
    new-instance v1, Lqek;

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

    :goto_1c
    new-instance v0, Lfvm;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v1, v0}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    :goto_1e
    invoke-direct {v0, p0, p1, v1, v2}, Lfvm;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Lqek;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move v1, v2

    nop

    nop

    :goto_20
    goto/32 :goto_a

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 6

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_0
    int-to-float v5, v5

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
    iget v2, p2, Landroid/graphics/Rect;->right:I

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

    :goto_2
    float-to-int v0, v0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-float/2addr v4, v0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_5
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_50

    nop

    :cond_0
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_7
    if-gez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_1
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_8
    iget v0, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1, v2}, Lfvm;->e(III)I

    move-result v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x9

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

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

    :goto_c
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v3, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_e
    iget v1, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    iput v0, p2, Landroid/graphics/Rect;->top:I

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

    :goto_10
    new-instance p2, Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_11
    if-lez v0, :cond_2

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    :goto_12
    mul-float/2addr p1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    new-instance p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v2, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_15
    iget p1, p1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    add-float/2addr v2, v3

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_17
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

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

    :goto_18
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v1, 0xa

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

    :goto_1b
    check-cast v0, Lscz;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0, v1, v2}, Lfvm;->e(III)I

    move-result v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1e
    iput v0, p1, Landroid/graphics/Rect;->left:I

    nop

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

    :goto_1f
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_20
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_21
    invoke-static {v0, v1, v2}, Lfvm;->e(III)I

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_22
    iget v0, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x0

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

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_25
    iput v0, p2, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v2, p2, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_27
    goto/32 :goto_66

    nop

    nop

    :goto_28
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_2b
    iget v1, p2, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2c
    sget-object v0, Lfvm;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2d
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2e
    iput v0, p2, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v1, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_30
    iput v0, p1, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v1, p2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_32
    int-to-float v2, v2

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

    :goto_33
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_34
    const-string v1, "Negative cropRegion: %s"

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_35
    mul-float/2addr v0, v3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_36
    invoke-interface {v0, v1, p2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_37
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

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

    :goto_39
    if-ltz v0, :cond_3

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_3
    :goto_3a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3c
    iget-object v1, p0, Lfvm;->e:Lqek;

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

    :goto_3d
    sub-float/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v1, p1}, Lqek;->a(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_3f
    iget v2, v1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_40
    sub-float/2addr v3, v0

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

    nop

    nop

    :goto_41
    iget v3, v1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_42
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_43
    iget v1, v1, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_45
    iget v4, v1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_46
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_47
    iget v0, p2, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_49
    int-to-float v0, v0

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

    :goto_4a
    const v3, 0x3d7ae148    # 0.06125f

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    nop

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

    :goto_4c
    invoke-static {v0, v1, p2}, Lfvm;->e(III)I

    move-result p2

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

    :goto_4d
    iget v4, p2, Landroid/graphics/Rect;->top:I

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

    nop

    nop

    :goto_4e
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

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

    :goto_4f
    const/16 p0, 0x7a

    nop

    :goto_50
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_51
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget p0, p0, Lfvm;->d:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_53
    invoke-direct {p1, v0, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_54
    iget v0, p2, Landroid/graphics/Rect;->top:I

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

    :goto_55
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

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

    :goto_56
    add-float/2addr v4, p1

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

    :goto_57
    float-to-int v3, v4

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_58
    mul-float/2addr v3, v4

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_59
    float-to-int v1, v1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_5a
    float-to-int v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_5b
    invoke-direct {p2, p1, p0}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_5c
    int-to-float v4, v4

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget v2, p2, Landroid/graphics/Rect;->right:I

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

    :goto_5e
    float-to-int v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_5f
    iget v0, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget v0, p1, Landroid/graphics/Rect;->right:I

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

    nop

    :goto_61
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_62
    const v0, 0xe

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

    :goto_63
    iget v0, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_64
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_65
    return-object p2

    nop

    nop

    :goto_66
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_67
    new-instance v1, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_68
    add-float/2addr v1, v0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop
.end method

.method private static final e(III)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    filled-new-array {p0}, [Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

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
    invoke-direct {p0, v0, p1}, Lfvm;->da190e616797844b591057d0190e7728m(Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lfvm;->c:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop
.end method

.method public final b(Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    filled-new-array {p0}, [Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object v0, p0, Lfvm;->b:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {p0, v0, p1}, Lfvm;->da190e616797844b591057d0190e7728m(Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
