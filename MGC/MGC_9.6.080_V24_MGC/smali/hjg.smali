.class public final Lhjg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final n:F

.field private static final o:F


# instance fields
.field public final a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Ljava/util/function/BooleanSupplier;

.field public h:Z

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-float v0, v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    int-to-float v0, v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput v0, Lhjg;->n:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lnnr;->b(F)I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Lnnr;->b(F)I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sput v0, Lhjg;->o:F

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

    :goto_7
    const/high16 v0, 0x41900000    # 18.0f

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;Ljava/util/function/BooleanSupplier;)V
    .locals 9

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-float v5, v5

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    invoke-static {v3}, Lnnr;->b(F)I

    move-result v4

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

    :goto_2
    invoke-virtual {p1, v4, v6, v5, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_4
    int-to-float v8, v8

    nop

    nop

    goto/32 :goto_34

    nop

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

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    invoke-static {v0}, Lnnr;->b(F)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_9
    invoke-static {v5}, Lnnr;->b(F)I

    move-result v5

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v5, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_b
    goto/32 :goto_23

    nop

    :goto_c
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_d
    int-to-float v4, v4

    nop

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

    :goto_e
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_f
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Lhjg;->k:F

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p1, Landroid/graphics/Paint;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_13
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v0, p0, Lhjg;->m:Z

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_15
    int-to-float v5, v5

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

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

    :goto_19
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

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

    nop

    :goto_1b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    int-to-float v5, v5

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1d
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p1, p0, Lhjg;->c:Landroid/graphics/Paint;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v4, "#FDD663"

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x4116cbe4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_21
    iput-object p2, p0, Lhjg;->g:Ljava/util/function/BooleanSupplier;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v5, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_26
    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_27
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_5c

    nop

    nop

    :goto_29
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_2b
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/high16 v3, 0x40800000    # 4.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/16 v2, 0xff

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v0}, Lnnr;->b(F)I

    move-result v8

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

    :goto_32
    int-to-float v0, v0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_33
    const/4 p2, -0x1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1, v5, v6, v8, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_35
    iput-object p1, p0, Lhjg;->e:Landroid/graphics/Paint;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_37
    const/high16 v7, -0x1000000

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3a
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    int-to-float v5, v5

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3c
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3d
    iput-object p1, p0, Lhjg;->b:Landroid/graphics/Paint;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_40
    const/high16 v5, 0x40000000    # 2.0f

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

    :goto_41
    iput-object p1, p0, Lhjg;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

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

    :goto_42
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_43
    invoke-static {v0}, Lnnr;->b(F)I

    move-result v0

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

    :goto_44
    const/4 v0, 0x0

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

    :goto_45
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_4b

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_52

    nop

    nop

    :goto_49
    invoke-virtual {p1, v3, v6, v0, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4a
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_4d
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_4e
    invoke-static {v0}, Lnnr;->b(F)I

    move-result v5

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

    :goto_4f
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_50
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_51
    iput-object p1, p0, Lhjg;->f:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_52
    iput-object p1, p0, Lhjg;->d:Landroid/graphics/Paint;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iput v0, p0, Lhjg;->l:F

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_57
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_58
    invoke-static {v3}, Lnnr;->b(F)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {v0}, Lnnr;->b(F)I

    move-result v5

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {v3}, Lnnr;->b(F)I

    move-result v3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop
.end method

.method public static a(FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 9

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_21

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

    nop

    :goto_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sub-float v6, p0, v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    div-float v2, p3, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x19

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

    :goto_8
    move v4, p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v6, p2

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_a
    move v6, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    sget p3, Lhjg;->n:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    add-float v4, p0, v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object v3, p4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    move v7, p1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget v0, Lhjg;->o:F

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    sub-float v5, p1, v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    const v0, 0x19

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_16
    move v2, p0

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

    :goto_17
    move v5, p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    div-float v2, p3, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_19
    sub-float v4, p0, v2

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

    :goto_1a
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p4, p0, p1, v0, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    div-float v2, p3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1e
    add-float v6, p0, v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v1, p4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_20
    sub-float v7, p1, v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    div-float/2addr p3, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_4

    nop

    nop

    :goto_24
    add-float v5, p1, v0

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

    :goto_25
    move-object v8, p2

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

    :goto_26
    add-float v3, p1, p3

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
.end method


# virtual methods
.method public final b()V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v1, p0, Lhjg;->m:Z

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

    :goto_1
    iput v0, p0, Lhjg;->k:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const v0, 0x4116cbe4

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
    const/4 v1, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Lhjg;->l:F

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->invalidate()V

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_10
    iput-boolean v1, p0, Lhjg;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    iget-boolean v0, p0, Lhjg;->h:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lhjg;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

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

    :goto_14
    const v0, 0xd

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method
