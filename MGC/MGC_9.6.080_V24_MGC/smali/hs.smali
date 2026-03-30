.class Lhs;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final b:[I


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field private final c:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :goto_1
    filled-new-array {v0, v1}, [I

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lhs;->b:[I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const v1, 0x101013c

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    const v0, 0x15

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    :goto_a
    goto/32 :goto_c

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

    goto/32 :goto_0

    nop

    nop

    :goto_c
    const v0, 0x101013b

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lhs;->c:Landroid/widget/ProgressBar;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    goto/32 :goto_a

    nop

    nop

    :goto_0
    check-cast v0, Ldue;

    nop

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

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_0
    goto/32 :goto_51

    nop

    nop

    :goto_2
    const v6, 0x102000d

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_3
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v0

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    goto/32 :goto_27

    nop

    nop

    :goto_5
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    goto/32 :goto_57

    nop

    nop

    :goto_6
    move v3, v2

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_9
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

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

    nop

    :goto_a
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p1

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data

    :goto_c
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1c

    nop

    :goto_e
    goto/32 :goto_63

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    goto/32 :goto_64

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    const/4 p2, 0x3

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_11
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v0

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

    :goto_17
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_1c
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p1

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

    :goto_20
    goto/16 :goto_3f

    nop

    nop

    :goto_21
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_23
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_24
    move v4, v1

    nop

    :goto_25
    goto/32 :goto_54

    nop

    nop

    :goto_26
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v0

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

    :goto_28
    new-array v2, v2, [F

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_0

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2a
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_2d
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p2

    nop

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

    :goto_30
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {v0}, Ldue;->b()V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_32
    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_33
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_34
    return-object p1

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_36
    const v6, 0x102000f

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_37
    move v4, v2

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_38
    if-ne v4, v6, :cond_4

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto/32 :goto_6c

    nop

    nop

    :goto_3a
    if-eq v4, v6, :cond_5

    nop

    goto/32 :goto_68

    nop

    nop

    :cond_5
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_3b
    iput-object v0, p0, Lhs;->a:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_3e
    return-object p0

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
    if-lt v3, p2, :cond_6

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {p1, p0, p2, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_42
    new-instance v2, Landroid/graphics/BitmapShader;

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_43
    aput-object v4, v0, v3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_44
    if-eqz v2, :cond_7

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_48
    invoke-interface {v0}, Ldue;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_30

    nop

    nop

    :goto_4c
    if-lez v0, :cond_8

    nop

    goto/32 :goto_1a

    nop

    :cond_8
    goto/32 :goto_19

    nop

    :goto_4d
    invoke-direct {v3, v2, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const v1, 0x1f

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

    :goto_4f
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_6b

    nop

    nop

    :goto_51
    move-object v0, p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_52
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p0, v5, v4}, Lhs;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0, v1, p2}, Lhs;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_57
    add-int/lit8 v2, v2, 0x1

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

    :goto_58
    iget-object v2, p0, Lhs;->a:Landroid/graphics/Bitmap;

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

    :goto_59
    goto/32 :goto_1a

    nop

    :goto_5a
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_9
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_25

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_60
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_61
    instance-of v0, p1, Ldue;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_62
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_63
    return-object p0

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-lt v2, p2, :cond_a

    nop

    goto/32 :goto_e

    nop

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

    nop

    :goto_67
    goto :goto_5f

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_69
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6a
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_6d
    const/4 v4, 0x0

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
.end method

.method public b(Landroid/util/AttributeSet;I)V
    .locals 8

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/wear/ambient/AmbientDelegate;->u(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v6, 0x2710

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

    :goto_2
    const v1, 0x7

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    goto/32 :goto_26

    nop

    nop

    :goto_5
    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_2a

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

    :goto_9
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    if-nez v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lhs;->c:Landroid/widget/ProgressBar;

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
    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_11
    if-nez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    :goto_12
    invoke-virtual {v4, v7, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    if-lt v5, v3, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lhs;->c:Landroid/widget/ProgressBar;

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

    :goto_19
    const v0, 0x1f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/wear/ambient/AmbientDelegate;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1c
    instance-of v3, p2, Landroid/graphics/drawable/AnimationDrawable;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p2, v2}, Lhs;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

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

    :goto_1e
    sget-object v1, Lhs;->b:[I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_21
    add-int/lit8 v5, v5, 0x1

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

    :goto_22
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_23
    invoke-virtual {p0, v7, v0}, Lhs;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_24
    if-nez p2, :cond_3

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

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_4
    goto/32 :goto_14

    nop

    :goto_26
    move-object p2, v4

    nop

    nop

    :goto_27
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_29
    move v5, v2

    nop

    :goto_2a
    goto/32 :goto_1

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lhs;->c:Landroid/widget/ProgressBar;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

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
    invoke-virtual {p1, v2}, Landroidx/wear/ambient/AmbientDelegate;->u(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_30
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_32
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop
.end method
