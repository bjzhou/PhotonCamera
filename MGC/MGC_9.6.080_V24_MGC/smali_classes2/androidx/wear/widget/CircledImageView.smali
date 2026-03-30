.class public Landroidx/wear/widget/CircledImageView;
.super Landroid/view/View;
.source "PG"


# instance fields
.field a:I

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/Paint;

.field private final d:Lemy;

.field private final e:Lene;

.field private final f:Landroid/graphics/drawable/Drawable$Callback;

.field private g:Landroid/content/res/ColorStateList;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:Landroid/graphics/Paint$Cap;

.field private p:F

.field private q:F

.field private r:Z

.field private s:F

.field private t:F

.field private u:Ljava/lang/Integer;

.field private v:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

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

    nop

    :goto_2
    new-instance v0, Landroid/animation/ArgbEvaluator;

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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_2

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

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
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

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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

    :goto_2
    invoke-direct {p0, p1, p2, v0}, Landroidx/wear/widget/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    goto/32 :goto_7c

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroidx/wear/widget/CircledImageView;->o:Landroid/graphics/Paint$Cap;

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

    :goto_1
    iput-object p2, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Landroidx/wear/widget/CircledImageView;->e:Lene;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p3, Lemw;

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

    :goto_4
    iput-object v1, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

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

    :goto_5
    new-instance p3, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_6
    if-gtz v3, :cond_0

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput p1, p0, Landroidx/wear/widget/CircledImageView;->t:F

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

    nop

    :goto_8
    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

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

    :goto_9
    invoke-static/range {v4 .. v10}, Ldwb;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    goto/32 :goto_57

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

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

    :goto_b
    iput-object p1, p0, Landroidx/wear/widget/CircledImageView;->u:Ljava/lang/Integer;

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Landroidx/wear/widget/CircledImageView;->setWillNotDraw(Z)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p2, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p3, p0, v0}, Lemw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_13
    invoke-direct {p1}, Lene;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

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

    :goto_16
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->a()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_17
    div-float/2addr p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_18
    if-gtz v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :cond_1
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_19
    aget-object p1, p1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_84

    nop

    :goto_1b
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0}, Landroidx/wear/widget/CircledImageView;->da190e616797844b591057d0190e7728m()V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v1, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_22
    const/16 p1, 0x1a

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_23
    cmpl-float v3, p1, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1, p3}, Lene;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/32 :goto_e

    nop

    nop

    :goto_25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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

    :goto_26
    const v1, 0x16

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_27
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object p1

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

    :goto_28
    goto/32 :goto_1b

    nop

    nop

    :goto_29
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_2b
    if-nez v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_2c
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_2d
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_2f
    iput-object p3, p0, Landroidx/wear/widget/CircledImageView;->f:Landroid/graphics/drawable/Drawable$Callback;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object p2, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v1, 0x0

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_33
    const/high16 p2, -0x1000000

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/16 p1, 0x19

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput-object p2, p0, Landroidx/wear/widget/CircledImageView;->g:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_37
    iput-object p2, p0, Landroidx/wear/widget/CircledImageView;->d:Lemy;

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

    nop

    :goto_38
    iput v1, p0, Landroidx/wear/widget/CircledImageView;->s:F

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_39
    const/16 p1, 0x13

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {p2, p1, v1, v2}, Lemy;-><init>(FFF)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    cmpl-float v3, p1, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3c
    iput-object p2, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_5

    nop

    nop

    :goto_3e
    new-instance v1, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3f
    const/high16 p2, 0x1060000

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_40
    invoke-virtual {v2, v3, p2, p2, p1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_41
    iput-boolean v0, p0, Landroidx/wear/widget/CircledImageView;->r:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_42
    iput-object v1, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move-object v7, p2

    nop

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

    :goto_44
    iget v3, p0, Landroidx/wear/widget/CircledImageView;->m:F

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_45
    iput p1, p0, Landroidx/wear/widget/CircledImageView;->s:F

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_46
    const/4 p1, 0x3

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_47
    add-float/2addr v3, p1

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

    nop

    :goto_48
    new-instance p2, Lemy;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_49
    move-object v5, p1

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

    :goto_4a
    new-instance p1, Lene;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4b
    add-float/2addr v3, p1

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_4c
    move-object v4, p0

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

    :goto_4d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 p2, 0x4

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

    :goto_4f
    move-object v8, v2

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_50
    iget v3, p0, Landroidx/wear/widget/CircledImageView;->m:F

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    sget-object v6, Lemb;->d:[I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/4 p1, 0x6

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

    :goto_53
    iput v3, p0, Landroidx/wear/widget/CircledImageView;->m:F

    nop

    :goto_54
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v2, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_3e

    nop

    nop

    :goto_57
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

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

    :goto_58
    iput-object p1, p0, Landroidx/wear/widget/CircledImageView;->v:Ljava/lang/Integer;

    nop

    nop

    :goto_59
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_5a
    iget v2, p0, Landroidx/wear/widget/CircledImageView;->p:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v2, p2, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_5c
    const/4 p2, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v2, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_5e
    if-eqz p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_60
    iput v1, p0, Landroidx/wear/widget/CircledImageView;->t:F

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

    :goto_61
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_62
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const/16 p1, 0x17

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iput v1, p0, Landroidx/wear/widget/CircledImageView;->q:F

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iput p1, p0, Landroidx/wear/widget/CircledImageView;->i:F

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const/4 p1, 0x5

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

    :goto_68
    invoke-virtual {v2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

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

    :goto_69
    invoke-virtual {p2, v3, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_6a
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1a

    nop

    :goto_6b
    iput v3, p0, Landroidx/wear/widget/CircledImageView;->m:F

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iput p1, p0, Landroidx/wear/widget/CircledImageView;->n:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_6e
    invoke-virtual {v2, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_6f
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_71
    const/16 p1, 0x9

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const/4 p2, 0x7

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_74
    if-nez p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_6
    goto/32 :goto_f

    nop

    nop

    :goto_75
    const/high16 v4, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_78
    const/16 p1, 0x18

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_79
    add-int v0, v0, v1

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_7a
    const/4 v0, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7b
    if-nez p2, :cond_7

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7d
    iput p1, p0, Landroidx/wear/widget/CircledImageView;->p:F

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_7e
    sget-object v3, Lemb;->d:[I

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_80
    const/16 v3, 0x8

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_81
    iput p1, p0, Landroidx/wear/widget/CircledImageView;->l:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_82
    iput p1, p0, Landroidx/wear/widget/CircledImageView;->k:F

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_83
    return-void

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_28

    nop

    nop

    :goto_85
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_86
    iput-object p1, p0, Landroidx/wear/widget/CircledImageView;->g:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_67

    nop

    nop

    :goto_88
    iput p1, p0, Landroidx/wear/widget/CircledImageView;->j:F

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_89
    sget v2, Lemx;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_8a
    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m()V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Landroidx/wear/widget/CircledImageView;->a:I

    nop

    nop

    goto/32 :goto_11

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
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

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

    :goto_5
    goto/32 :goto_10

    nop

    :goto_6
    iput v0, p0, Landroidx/wear/widget/CircledImageView;->a:I

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

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x17

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    iget-object v2, p0, Landroidx/wear/widget/CircledImageView;->g:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->g:Landroid/content/res/ColorStateList;

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

    nop

    :goto_e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getDrawableState()[I

    move-result-object v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

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
.end method


# virtual methods
.method public final a()F
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-float/2addr v0, p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredWidth()I

    move-result v1

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

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
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

    :cond_0
    goto/32 :goto_10

    nop

    :goto_5
    const v0, 0x8

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

    :goto_6
    cmpg-float v2, v0, v1

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
    cmpl-float v1, v2, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gtz v1, :cond_1

    nop

    goto/32 :goto_13

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

    :goto_9
    iget v1, p0, Landroidx/wear/widget/CircledImageView;->j:F

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

    nop

    :goto_a
    return v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Landroidx/wear/widget/CircledImageView;->i:F

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

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredHeight()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    mul-float/2addr v0, v1

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    :goto_16
    iget p0, p0, Landroidx/wear/widget/CircledImageView;->m:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    iget v2, p0, Landroidx/wear/widget/CircledImageView;->j:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_18
    int-to-float v0, v0

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

    :goto_19
    add-int v0, v0, v1

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
.end method

.method public final b()F
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Landroidx/wear/widget/CircledImageView;->l:F

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1b

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
    const v1, 0x11

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    if-gtz v1, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    mul-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    cmpg-float v2, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

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

    :goto_e
    goto/32 :goto_7

    nop

    :goto_f
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_11
    cmpl-float v1, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    iget p0, p0, Landroidx/wear/widget/CircledImageView;->m:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredHeight()I

    move-result v0

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

    :goto_14
    sub-float/2addr v0, p0

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

    :goto_15
    iget v2, p0, Landroidx/wear/widget/CircledImageView;->l:F

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

    :goto_16
    return v0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredWidth()I

    move-result v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Landroidx/wear/widget/CircledImageView;->k:F

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
.end method

.method public final c()V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Landroidx/wear/widget/CircledImageView;->e:Lene;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lene;->a:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method protected final drawableStateChanged()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroidx/wear/widget/CircledImageView;->da190e616797844b591057d0190e7728m()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    goto/32 :goto_1

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x2

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_2
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

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

    :goto_4
    add-float/2addr v7, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_5
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingTop()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_54

    nop

    nop

    :goto_8
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingBottom()I

    move-result v6

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingLeft()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingRight()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_e
    iget-object v5, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    add-float/2addr v6, v2

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

    :goto_10
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_47

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6d

    nop

    :goto_12
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_13
    iget-boolean v2, p0, Landroidx/wear/widget/CircledImageView;->r:Z

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_14
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_15
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->b()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

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

    :goto_1a
    mul-float/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_1b
    sub-int/2addr v5, v6

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    cmpl-float v3, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getAlpha()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_1e
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

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

    :goto_1f
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_21
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_63

    nop

    nop

    :goto_23
    iget-object v4, p0, Landroidx/wear/widget/CircledImageView;->o:Landroid/graphics/Paint$Cap;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_24
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_25
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getAlpha()F

    move-result v5

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_27
    int-to-float v4, v4

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
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2a
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_1e

    nop

    nop

    :goto_2c
    iget v3, p0, Landroidx/wear/widget/CircledImageView;->p:F

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v6, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

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

    :goto_2e
    sub-int/2addr v5, v6

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v9, 0x0

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_16

    nop

    nop

    :goto_31
    int-to-float v4, v4

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v1, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    nop

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

    :goto_33
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingBottom()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_34
    const/high16 v7, -0x3d4c0000    # -90.0f

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_35
    iget v1, p0, Landroidx/wear/widget/CircledImageView;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_38
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_39
    if-gtz v3, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_3a
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3b
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_3c
    int-to-float v1, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    mul-float v8, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_3e
    iget-object v10, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

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

    :goto_3f
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget v3, p0, Landroidx/wear/widget/CircledImageView;->q:F

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_41
    rem-int v0, v0, v1

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

    :goto_42
    sub-int/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_43
    sub-int/2addr v4, v5

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_44
    mul-float/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const v1, 0xf

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_46
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->u:Ljava/lang/Integer;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    nop

    :goto_49
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

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

    :goto_4b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_4c
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingRight()I

    move-result v5

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

    :goto_4d
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

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

    nop

    :goto_4e
    iget-object v7, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_4f
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_50
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getHeight()I

    move-result v5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_51
    const/high16 v2, 0x437f0000    # 255.0f

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

    :goto_52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getWidth()I

    move-result v4

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getAlpha()F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_57
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getHeight()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_58
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

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

    :goto_59
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_5a
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_5c
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

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

    :goto_5d
    move-object v5, p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getAlpha()F

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_60
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_61
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_62
    iget-object v1, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

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

    :goto_63
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

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

    :goto_64
    iget v4, p0, Landroidx/wear/widget/CircledImageView;->n:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_65
    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_60

    nop

    nop

    :goto_66
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getWidth()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_67
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v6, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_6a
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->b:Landroid/graphics/RectF;

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

    :goto_6b
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_6c
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_70
    mul-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_71
    sub-float/2addr v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->a()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_5f

    nop

    nop

    :goto_74
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v3, p0, Landroidx/wear/widget/CircledImageView;->c:Landroid/graphics/Paint;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_76
    goto :goto_73

    nop

    nop

    :goto_77
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    const/high16 v4, 0x43b40000    # 360.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_79
    sub-float/2addr v4, v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7a
    iget v4, p0, Landroidx/wear/widget/CircledImageView;->p:F

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
.end method

.method protected final onLayout(ZIIII)V
    .locals 8

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    :goto_2
    if-nez v6, :cond_1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_3
    mul-float/2addr v4, v1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sub-int/2addr v2, v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_5
    move v4, v7

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1e

    nop

    :goto_9
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_a
    cmpl-float v6, v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    goto/32 :goto_1d

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    cmpl-float v5, v1, v5

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_10
    move v4, v7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_12
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

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

    :goto_13
    iget v4, p0, Landroidx/wear/widget/CircledImageView;->s:F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v6, v7

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_16
    mul-float/2addr v6, v4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    const/high16 v7, 0x3f800000    # 1.0f

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

    :goto_19
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

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

    :goto_1b
    const v0, 0x5

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v4, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    :goto_1e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v5, :cond_2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_21
    div-float/2addr v6, v0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_22
    sub-int/2addr v3, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_23
    mul-float/2addr v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_25
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredWidth()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_27
    cmpl-float v6, v0, v5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_28
    mul-float/2addr v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_29
    add-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2a
    if-lez v6, :cond_3

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

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2b
    add-int/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2c
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_5

    nop

    nop

    :goto_2e
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    int-to-float v1, v1

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

    :goto_32
    int-to-float v5, v3

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

    :goto_33
    mul-float/2addr v0, v4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_34
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_35
    int-to-float v5, v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int/2addr v1, v3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_37
    iget v4, p0, Landroidx/wear/widget/CircledImageView;->t:F

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_38
    div-float/2addr v4, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_39
    int-to-float v6, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getMeasuredHeight()I

    move-result v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    div-int/lit8 v3, v3, 0x2

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

    :goto_3d
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    :goto_3f
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 6

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    move p1, p2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-float/2addr v0, v1

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

    :goto_6
    add-float v5, v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

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

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

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

    :goto_a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

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

    :goto_f
    float-to-int p1, v5

    nop

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

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

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_12
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_13
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    iget v2, v1, Lemy;->a:F

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->v:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eq v3, v2, :cond_1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    :goto_17
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-float/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_19
    float-to-int p1, p1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1a
    if-ne v3, v4, :cond_2

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x15

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

    :goto_1c
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_31

    nop

    nop

    :goto_21
    iget v1, p0, Landroidx/wear/widget/CircledImageView;->p:F

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

    :goto_22
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x0

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

    :goto_26
    add-float/2addr v0, v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_27
    iget v1, v1, Lemy;->b:F

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_28
    float-to-int p2, p2

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_29
    int-to-float p1, p1

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

    :goto_2a
    int-to-float p2, p2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2b
    if-ne v1, v4, :cond_3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    :goto_2c
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

    :goto_2d
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

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

    :goto_2f
    mul-float/2addr v2, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_30
    if-ne v0, v1, :cond_4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move p2, p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_3c

    nop

    nop

    :goto_34
    iget-object v1, p0, Landroidx/wear/widget/CircledImageView;->d:Lemy;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_35
    const/high16 v2, -0x80000000

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_36
    if-nez v0, :cond_5

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

    :cond_5
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-eq v1, v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_39
    if-ne v0, v1, :cond_7

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1f

    nop

    nop

    :goto_3a
    const/high16 v4, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->a()F

    move-result v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    float-to-int p2, v0

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onSetAlpha(I)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    goto/32 :goto_15

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

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    sub-int/2addr p1, v1

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

    :goto_2
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingLeft()I

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    if-ne p2, p4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    :goto_5
    invoke-virtual {p3, p4, v0, p1, p2}, Lemy;->a(IIII)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingBottom()I

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

    nop

    :goto_9
    sub-int/2addr p2, p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingRight()I

    move-result v1

    nop

    goto/32 :goto_1

    nop

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p3, p0, Landroidx/wear/widget/CircledImageView;->d:Lemy;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    if-eq p1, p3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingTop()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x18

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    goto :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    goto/32 :goto_2

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
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->c()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->c()V

    goto/32 :goto_2

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
.end method

.method public final setPadding(IIII)V
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getHeight()I

    move-result v2

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

    :goto_2
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getWidth()I

    move-result v1

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

    :goto_3
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingRight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    if-eq p2, v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingLeft()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-ne p4, v0, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    :goto_8
    goto/32 :goto_e

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
    invoke-virtual {v0, p1, p2, v1, v2}, Lemy;->a(IIII)V

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingTop()I

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->d:Lemy;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    :goto_11
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

    :goto_12
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    :goto_13
    if-eq p3, v0, :cond_4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    sub-int/2addr v2, p4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->getPaddingBottom()I

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    const v1, 0x14

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_17
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_16

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

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    sub-int/2addr v1, p3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final setPressed(Z)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->a()F

    move-result p1

    nop

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
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Landroidx/wear/widget/CircledImageView;->r:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    if-ne p1, v0, :cond_0

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
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->b()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    iput p1, v0, Lemy;->c:F

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

    nop

    :goto_9
    invoke-virtual {p0}, Landroidx/wear/widget/CircledImageView;->invalidate()V

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    iput-boolean p1, p0, Landroidx/wear/widget/CircledImageView;->r:Z

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lemy;->b()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroidx/wear/widget/CircledImageView;->d:Lemy;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    goto/16 :goto_1

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
