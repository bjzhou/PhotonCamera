.class public Lhzu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:F

.field private final c:F

.field private final d:Landroid/graphics/PointF;

.field private final e:Landroid/graphics/PointF;

.field private final f:F

.field private final g:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lhzu;->a:Lsdb;

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
    return-void

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const-string v0, "hzu"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/util/SizeF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 10

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_1
    div-float/2addr p2, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    move v6, v4

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_3
    sget-object v0, Lhzu;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_4
    add-float/2addr v2, p4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    cmpg-float v3, p2, v0

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_7
    const/high16 v9, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_8
    iget v2, v0, Landroid/graphics/RectF;->left:F

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p3}, Landroid/util/SizeF;->getHeight()F

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_36

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_35

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

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

    :goto_d
    sub-float/2addr v0, p2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_e
    add-float/2addr v2, p2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    cmpl-float v2, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_10
    const-string v1, "Expected that the photos target area is contained in the camera window area."

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_11
    iput p2, p0, Lhzu;->c:F

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_13
    mul-float/2addr v6, p3

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_14
    sub-float/2addr p5, v0

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v1, 0x537

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_16
    add-float/2addr p3, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_19
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v1, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    invoke-direct {v0, v8, p3}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p2, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_1e
    add-float/2addr v3, p4

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

    :goto_1f
    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2d

    nop

    nop

    :goto_21
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v0, v0, Landroid/graphics/RectF;->top:F

    nop

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

    :goto_23
    iget v4, v1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_24
    div-float v6, v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_25
    mul-float/2addr p2, p2

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v8, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_28
    float-to-double p2, p2

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_29
    if-gtz v5, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2a
    div-float v4, v2, v3

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

    :goto_2b
    sub-float p2, p5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    :goto_2d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sub-float/2addr p3, v7

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

    :goto_30
    move v8, v4

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const v0, 0x4

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

    :goto_33
    new-instance p3, Landroid/util/SizeF;

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

    nop

    :goto_34
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_35
    div-float v2, v3, v0

    nop

    nop

    :goto_36
    goto/32 :goto_69

    nop

    nop

    :goto_37
    div-float/2addr v7, v9

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_38
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_39
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7b

    nop

    nop

    :goto_3b
    div-float p2, p5, p2

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

    :goto_3c
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3d
    iput-object v0, p0, Lhzu;->d:Landroid/graphics/PointF;

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

    :goto_3e
    sub-float/2addr v7, v3

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3f
    sub-float/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget v1, v1, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p4

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_45
    div-float/2addr p3, v9

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

    :goto_46
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p3}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    new-instance v0, Landroid/graphics/RectF;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const v1, 0x17

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_4a
    iget v3, p4, Landroid/graphics/RectF;->top:F

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_5c

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    div-float/2addr v6, v9

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_4e
    invoke-direct {p2, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p3}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_51
    cmpl-float v5, v6, v5

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_52
    add-float/2addr p3, v7

    nop

    :goto_53
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_54
    div-float/2addr v4, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_55
    add-float/2addr p2, p3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    sub-float/2addr p4, p5

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

    :goto_57
    mul-float/2addr p3, p3

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_58
    move p2, v0

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

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

    :goto_5b
    move v7, p3

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    cmpl-float p2, p2, v1

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

    nop

    :goto_5e
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    div-float/2addr p2, v9

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_60
    div-float/2addr v2, p2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_62
    if-gez v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_64
    div-float/2addr p5, v9

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p2

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p3}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_67
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

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

    :goto_68
    div-float/2addr p4, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_69
    iput v2, p0, Lhzu;->b:F

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_6a
    add-float/2addr v8, v6

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    move v7, v6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    add-float/2addr v8, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_6d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_6e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_6f
    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p2

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_71
    add-float/2addr v3, p5

    nop

    nop

    :goto_72
    goto/32 :goto_1d

    nop

    nop

    :goto_73
    iget v3, p2, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_74
    iput p1, p0, Lhzu;->g:F

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_75
    check-cast v0, Lscz;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_76
    if-gtz v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_5
    goto/32 :goto_60

    nop

    nop

    :goto_77
    iget v2, p4, Landroid/graphics/RectF;->left:F

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iput p2, p0, Lhzu;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_79
    invoke-direct {p3, v1, v2}, Landroid/util/SizeF;-><init>(FF)V

    goto/32 :goto_1b

    nop

    nop

    :goto_7a
    div-float v5, p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_7b
    sub-float/2addr v6, v0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_7c
    div-float v5, v4, p3

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_7d
    div-float/2addr p2, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_7f
    div-float/2addr p1, v9

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

    :goto_80
    new-instance v0, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iput-object p2, p0, Lhzu;->e:Landroid/graphics/PointF;

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_83
    iget p2, p2, Landroid/graphics/RectF;->top:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_84
    if-nez p2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_85
    move p3, v8

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_86
    div-float/2addr p3, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_87
    cmpl-float v4, v5, v4

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    double-to-float p2, p2

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

    :goto_8a
    div-float v6, v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_8b
    sub-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_8c
    if-gtz v5, :cond_7

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lhzt;
    .locals 8

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v7

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    new-instance v7, Lhzt;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    iget-object v3, p0, Lhzu;->d:Landroid/graphics/PointF;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct/range {v0 .. v6}, Lhzt;-><init>(FFLandroid/graphics/PointF;Landroid/graphics/PointF;FF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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

    :goto_6
    iget-object v4, p0, Lhzu;->e:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

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

    :goto_9
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    iget v1, p0, Lhzu;->b:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v2, p0, Lhzu;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    iget v6, p0, Lhzu;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    move-object v0, v7

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    iget v5, p0, Lhzu;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method
