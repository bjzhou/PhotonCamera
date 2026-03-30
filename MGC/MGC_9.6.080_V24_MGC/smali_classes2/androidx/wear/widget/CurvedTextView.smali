.class public Landroidx/wear/widget/CurvedTextView;
.super Landroid/view/View;
.source "PG"


# instance fields
.field public a:Z

.field public b:F

.field public c:I

.field public d:F

.field public e:Ljava/lang/String;

.field public f:I

.field private final g:Landroid/graphics/Path;

.field private final h:Landroid/graphics/Path;

.field private final i:Landroid/text/TextPaint;

.field private final j:Landroid/graphics/Rect;

.field private final k:Landroid/graphics/Rect;

.field private l:Ljava/lang/String;

.field private m:F

.field private n:F

.field private o:I

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:Landroid/graphics/Typeface;

.field private u:Z

.field private v:Landroid/text/TextUtils$TruncateAt;

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/CurvedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroidx/wear/widget/CurvedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const v0, 0x1010084

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/wear/widget/CurvedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_2
    new-instance v0, Landroid/text/TextPaint;

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p2, 0x6

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    iput-object v2, p0, Landroidx/wear/widget/CurvedTextView;->v:Landroid/text/TextUtils$TruncateAt;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v5, -0x1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, v7, Lena;->i:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_9
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_b
    iput-boolean v6, p0, Landroidx/wear/widget/CurvedTextView;->w:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput v5, p0, Landroidx/wear/widget/CurvedTextView;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_d
    iput p2, p0, Landroidx/wear/widget/CurvedTextView;->r:F

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_10
    iget-object v5, p0, Landroidx/wear/widget/CurvedTextView;->t:Landroid/graphics/Typeface;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFontVariationSettings(Ljava/lang/String;)Z

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v8, Lemb;->f:[I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_14
    const/16 p2, 0xf

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, v7, Lena;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v9, Lemb;->h:[I

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget p1, v7, Lena;->h:F

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_1f
    iget v3, v7, Lena;->f:I

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

    nop

    :goto_20
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-ne p2, v1, :cond_1

    nop

    goto/32 :goto_9e

    nop

    nop

    :cond_1
    goto/32 :goto_aa

    nop

    nop

    :goto_22
    const/16 p2, 0xd

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_23
    iput-boolean v1, p0, Landroidx/wear/widget/CurvedTextView;->a:Z

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez p2, :cond_2

    nop

    goto/32 :goto_41

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v5, :cond_3

    nop

    goto/32 :goto_73

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto/32 :goto_40

    nop

    nop

    :goto_29
    invoke-direct {p0, p1, v3, v4}, Landroidx/wear/widget/CurvedTextView;->da190e616797844b591057d0190e7728m(Landroid/graphics/Typeface;II)V

    :goto_2a
    goto/32 :goto_1e

    nop

    nop

    :goto_2b
    sget-object v9, Lemb;->i:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2c
    invoke-direct {v7}, Lena;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2d
    iput v3, p0, Landroidx/wear/widget/CurvedTextView;->n:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_80

    nop

    nop

    :goto_2f
    invoke-virtual {v8, p2, v9, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_30
    const/16 p2, 0xc

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_31
    new-instance v0, Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_33
    iput-boolean p2, p0, Landroidx/wear/widget/CurvedTextView;->u:Z

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {p0, v5, v3, v4}, Landroidx/wear/widget/CurvedTextView;->da190e616797844b591057d0190e7728m(Landroid/graphics/Typeface;II)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_35
    const v0, 0x7

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {p0, p1, v3, v4}, Landroidx/wear/widget/CurvedTextView;->da190e616797844b591057d0190e7728m(Landroid/graphics/Typeface;II)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz v5, :cond_4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_4
    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_39
    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_3a
    iput-object v2, p0, Landroidx/wear/widget/CurvedTextView;->l:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput v4, p0, Landroidx/wear/widget/CurvedTextView;->b:F

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

    :goto_3c
    iput v5, p0, Landroidx/wear/widget/CurvedTextView;->o:I

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

    :goto_3d
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget p2, v7, Lena;->e:I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 p2, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_40
    return-void

    nop

    :goto_41
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_42
    iput p2, p0, Landroidx/wear/widget/CurvedTextView;->r:F

    nop

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

    nop

    :goto_43
    if-nez p1, :cond_5

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_5
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_44
    iput-object v0, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_45
    const/high16 v4, 0x43b40000    # 360.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const-string v2, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_47
    new-instance v0, Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_48
    invoke-static {p1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_49
    const/16 p2, 0xe

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_4a
    iput v2, p0, Landroidx/wear/widget/CurvedTextView;->s:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4b
    new-instance v7, Lena;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4c
    if-ne p2, p3, :cond_6

    nop

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

    :cond_6
    goto/32 :goto_4

    nop

    nop

    :goto_4d
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-ne p2, p3, :cond_7

    nop

    goto/32 :goto_69

    nop

    :cond_7
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const v4, 0x43b3f333    # 359.9f

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_50
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_51
    goto/16 :goto_78

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_54
    iput p1, p0, Landroidx/wear/widget/CurvedTextView;->s:F

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iput-object v1, p0, Landroidx/wear/widget/CurvedTextView;->k:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_57
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

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

    :goto_58
    iget-object p1, v7, Lena;->a:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_59
    iget v4, v7, Lena;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5a
    iput-object v2, p0, Landroidx/wear/widget/CurvedTextView;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_5c
    cmpl-float p2, p2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_5d
    goto/16 :goto_ac

    nop

    nop

    :goto_5e
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_60
    iput-object v0, p0, Landroidx/wear/widget/CurvedTextView;->g:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_61
    const/high16 v3, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_62
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v9, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iput-boolean v1, p0, Landroidx/wear/widget/CurvedTextView;->u:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-nez v8, :cond_8

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_a5

    nop

    :goto_67
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

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

    :goto_68
    goto/16 :goto_2a

    nop

    :goto_69
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6a
    iput p1, p0, Landroidx/wear/widget/CurvedTextView;->f:I

    nop

    nop

    :goto_6b
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-static {p1, v7, v6}, Landroidx/wear/widget/CurvedTextView;->e(Landroid/content/res/TypedArray;Lena;Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_82

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6f
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_70
    iput v3, p0, Landroidx/wear/widget/CurvedTextView;->m:F

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

    nop

    :goto_71
    iput-object v0, p0, Landroidx/wear/widget/CurvedTextView;->h:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_72
    goto/16 :goto_2a

    nop

    nop

    :goto_73
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_75
    invoke-direct {p0, p1, v3, v4}, Landroidx/wear/widget/CurvedTextView;->da190e616797844b591057d0190e7728m(Landroid/graphics/Typeface;II)V

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_76
    iget p1, v7, Lena;->b:F

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_77
    move-object v8, v2

    nop

    nop

    :goto_78
    goto/32 :goto_65

    nop

    nop

    :goto_79
    iput-object v2, p0, Landroidx/wear/widget/CurvedTextView;->t:Landroid/graphics/Typeface;

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

    :goto_7a
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

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

    :goto_7b
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    :goto_7c
    goto/32 :goto_12

    nop

    nop

    :goto_7d
    const/4 p4, 0x2

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_7e
    iget p0, p0, Landroidx/wear/widget/CurvedTextView;->s:F

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

    :goto_7f
    invoke-direct {p0, v2, v3, v4}, Landroidx/wear/widget/CurvedTextView;->da190e616797844b591057d0190e7728m(Landroid/graphics/Typeface;II)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iput-object v1, p0, Landroidx/wear/widget/CurvedTextView;->j:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iput-object p2, p0, Landroidx/wear/widget/CurvedTextView;->v:Landroid/text/TextUtils$TruncateAt;

    nop

    nop

    :goto_82
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_83
    const/high16 v2, 0x41c00000    # 24.0f

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iput p2, p0, Landroidx/wear/widget/CurvedTextView;->c:I

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_85
    iget-object p1, v7, Lena;->j:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_86
    cmpl-float p2, p1, v3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_87
    const v1, 0xf

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

    :goto_88
    iput-object v8, v7, Lena;->a:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_89
    goto/16 :goto_2a

    nop

    nop

    :goto_8a
    goto/32 :goto_ad

    nop

    nop

    :goto_8b
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8c
    goto/16 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    goto/32 :goto_62

    nop

    nop

    :goto_8e
    const/4 v6, 0x0

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

    :goto_8f
    if-nez p3, :cond_a

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :cond_a
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_90
    iput p2, p0, Landroidx/wear/widget/CurvedTextView;->d:F

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_93
    iput-object v2, p0, Landroidx/wear/widget/CurvedTextView;->v:Landroid/text/TextUtils$TruncateAt;

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_94
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

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

    nop

    :goto_95
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_96
    if-ne p2, p4, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    :cond_b
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_97
    iget v3, p0, Landroidx/wear/widget/CurvedTextView;->r:F

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    throw p0

    nop

    nop

    :goto_9b
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_9c
    const/4 p2, 0x5

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_9d
    goto/16 :goto_2a

    nop

    nop

    nop

    :goto_9e
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_9f
    if-ne v10, v5, :cond_c

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    :cond_c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a0
    iput v3, p0, Landroidx/wear/widget/CurvedTextView;->p:F

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-static {v8, v7, v1}, Landroidx/wear/widget/CurvedTextView;->e(Landroid/content/res/TypedArray;Lena;Z)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_a2
    rem-float/2addr p2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_a3
    iput-object p2, p0, Landroidx/wear/widget/CurvedTextView;->e:Ljava/lang/String;

    nop

    nop

    :goto_a4
    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_9b

    nop

    nop

    :goto_a6
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-direct {p0, p1, v3, v4}, Landroidx/wear/widget/CurvedTextView;->da190e616797844b591057d0190e7728m(Landroid/graphics/Typeface;II)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iput p2, p0, Landroidx/wear/widget/CurvedTextView;->q:F

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    if-nez p1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    if-ne p2, p4, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    :cond_e
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    nop

    :goto_ac
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_ad
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_ae
    if-ne p2, v1, :cond_f

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_96

    nop

    nop

    :goto_af
    const-string p1, "MinSweepDegrees cannot be bigger than MaxSweepDegrees"

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_b0
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Landroid/graphics/Typeface;II)V
    .locals 3

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_0
    and-int/lit8 v2, p1, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_3
    const/high16 p3, -0x41800000    # -0.25f

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Landroidx/wear/widget/CurvedTextView;->t:Landroid/graphics/Typeface;

    nop

    nop

    :goto_6
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_8
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    :goto_f
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_11
    if-ne v0, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

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

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_23

    nop

    nop

    :goto_15
    if-nez p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_3
    :goto_16
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-gez p3, :cond_4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_4
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

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

    :goto_1c
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_1d
    invoke-static {p1, p3, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

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

    :goto_1e
    goto/16 :goto_9

    nop

    nop

    :goto_1f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->b()V

    goto/32 :goto_c

    nop

    nop

    :goto_22
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_23
    const/4 p3, 0x0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_24
    if-nez p1, :cond_6

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

    :cond_6
    goto/32 :goto_3

    nop

    nop

    :goto_25
    and-int/lit8 p2, p2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_26
    if-nez p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_7
    goto/32 :goto_3a

    nop

    nop

    :goto_27
    goto/16 :goto_3c

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_3b

    nop

    nop

    :goto_29
    invoke-virtual {p1, p2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result p2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2a
    if-eqz v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move v0, v1

    nop

    :goto_2c
    goto/32 :goto_37

    nop

    nop

    :goto_2d
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_2e
    and-int/2addr p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_2f
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x1e

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

    :goto_31
    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    not-int p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto/32 :goto_39

    nop

    nop

    :goto_34
    iput-object p1, p0, Landroidx/wear/widget/CurvedTextView;->t:Landroid/graphics/Typeface;

    nop

    nop

    :goto_35
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/32 :goto_13

    nop

    nop

    :goto_37
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3b
    move p1, v1

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3d
    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    and-int/lit8 p1, p1, 0x2

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

    :goto_3f
    if-nez p2, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_9
    :goto_40
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez p2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_42
    if-gtz p2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_b
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_43
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_44
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-eqz p1, :cond_c

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/32 :goto_5

    nop

    nop

    :goto_47
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4c
    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_4f
    iput-object p1, p0, Landroidx/wear/widget/CurvedTextView;->t:Landroid/graphics/Typeface;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p1, v2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_53
    const/16 v2, 0x3e8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_54
    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop
.end method

.method private static final e(Landroid/content/res/TypedArray;Lena;Z)V
    .locals 5

    goto/32 :goto_21

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    :goto_1
    goto/32 :goto_67

    nop

    nop

    :goto_2
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p1, Lena;->d:Z

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

    :goto_7
    move v1, v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_8
    if-ne v3, p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_1
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v1, p1, Lena;->i:Ljava/lang/String;

    nop

    :goto_b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v0, 0xd

    nop

    nop

    :goto_d
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_e
    iput v0, p1, Lena;->e:I

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

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    :goto_12
    const/16 v1, 0xc

    nop

    :goto_13
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_15
    const/16 v1, 0xb

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_4b

    nop

    :goto_17
    goto/32 :goto_4a

    nop

    nop

    :goto_18
    iput-object p0, p1, Lena;->j:Ljava/lang/String;

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1a
    iput-boolean v1, p1, Lena;->d:Z

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_15

    nop

    nop

    :goto_1c
    if-ne v3, p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_2
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1e
    if-ne v3, p2, :cond_3

    nop

    nop

    goto/32 :goto_4

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

    :goto_1f
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    xor-int/lit8 v1, p2, 0x1

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_21
    const v0, 0x2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_23
    iget v2, p1, Lena;->h:F

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_24
    float-to-int v2, v2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v2, 0x2

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

    nop

    :goto_26
    iget v0, p1, Lena;->e:I

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_27
    if-ne v3, p2, :cond_4

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v2, p1, Lena;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_29
    move v2, v0

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v0, 0x0

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

    :goto_2c
    if-ne v3, p2, :cond_5

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

    :cond_5
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2d
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-ne v3, p2, :cond_6

    nop

    nop

    goto/32 :goto_61

    nop

    :cond_6
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_30
    move v0, v2

    nop

    :goto_31
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v2, :cond_7

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

    :cond_7
    goto/32 :goto_1d

    nop

    nop

    :goto_33
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_36
    if-nez p2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v1, Lemb;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_38
    if-ne v3, p2, :cond_9

    nop

    goto/32 :goto_66

    nop

    nop

    :cond_9
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_39
    if-nez v2, :cond_a

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput v0, p1, Lena;->f:I

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput-object v1, p1, Lena;->a:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_20

    nop

    nop

    :goto_3d
    const/4 v2, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_3e
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v3, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

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

    :goto_44
    goto/16 :goto_2a

    nop

    :goto_45
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_31

    nop

    :goto_48
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4a
    const/16 v2, 0xe

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_4c
    iput v2, p1, Lena;->g:I

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

    :goto_4d
    sget-object v1, Lemb;->a:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4e
    const/4 v2, -0x1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iput-object v0, p1, Lena;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_51
    const/16 v0, 0xa

    nop

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

    :goto_52
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_55
    iget v4, p1, Lena;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_56
    iget v4, p1, Lena;->g:I

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

    :goto_57
    move v2, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_58
    const/16 v1, 0x9

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_59
    iput v1, p1, Lena;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5a
    if-ne v0, v2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :cond_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    rem-int v0, v0, v1

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
    if-eqz v0, :cond_c

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-nez v4, :cond_d

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

    :cond_d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5f
    iget v2, p1, Lena;->b:F

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_12

    nop

    nop

    :goto_62
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_63
    add-int v0, v0, v1

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

    :goto_64
    if-lez v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_e
    goto/32 :goto_0

    nop

    :goto_65
    goto/16 :goto_2e

    nop

    :goto_66
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v0, 0x3

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

    :goto_68
    iput v2, p1, Lena;->b:F

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

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
    return p0

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

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

    :goto_4
    sub-float/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

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

    :goto_8
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Landroidx/wear/widget/CurvedTextView;->a:Z

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
    const/4 v0, 0x1

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
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->postInvalidate()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->requestLayout()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method

.method public final c(FF)Z
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    mul-float v4, p2, p2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1
    iget-object v3, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

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

    :goto_3
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_4
    goto/32 :goto_1a

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    if-gez v1, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    float-to-double p1, p1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_9
    cmpg-float p0, p1, p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v1, :cond_1

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    neg-float p1, p2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

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

    :goto_10
    add-float/2addr v1, v3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sub-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x7

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

    :goto_13
    iget-object v3, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

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

    :goto_14
    if-ltz p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    div-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getWidth()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    cmpl-float v0, v3, v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return v4

    nop

    :goto_1a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingTop()I

    move-result v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_1c
    div-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1d
    int-to-float v3, v3

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

    :goto_1e
    div-float/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/high16 v2, 0x40000000    # 2.0f

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_22
    float-to-double v0, p1

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

    :goto_23
    if-gtz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getHeight()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_25
    mul-float/2addr v0, v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

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

    nop

    :goto_27
    const v1, 0x13

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_28
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    :goto_29
    iget-boolean v1, p0, Landroidx/wear/widget/CurvedTextView;->u:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2a
    mul-float v3, p1, p1

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

    :goto_2b
    sub-float v1, v0, v3

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

    :goto_2c
    sub-float/2addr p1, v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2e
    mul-float/2addr v1, v1

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

    :goto_2f
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_30
    cmpg-float v1, v3, v1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_33
    double-to-float p1, p1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_34
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_35
    sub-float/2addr p2, v3

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

    :goto_36
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_37
    add-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingBottom()I

    move-result v1

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3a
    iget p0, p0, Landroidx/wear/widget/CurvedTextView;->b:F

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v4, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    int-to-float v3, v3

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3e
    div-float/2addr p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getHeight()I

    move-result v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_40
    goto :goto_39

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_42
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 33

    goto/32 :goto_55

    nop

    nop

    :goto_0
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_0
    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v14}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 v7, 0x43340000    # 180.0f

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v11, v0, Landroidx/wear/widget/CurvedTextView;->n:F

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getTextAlignment()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_5
    if-nez v8, :cond_1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_61

    nop

    nop

    :goto_6
    if-ne v8, v14, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sub-float v19, v11, v14

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v22, :cond_3

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_9
    sub-int/2addr v5, v6

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

    nop

    :goto_a
    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v3, p1

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v5, v3}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v3

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

    :goto_d
    iget v4, v0, Landroidx/wear/widget/CurvedTextView;->b:F

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

    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v3, v0, Landroidx/wear/widget/CurvedTextView;->l:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_10
    cmpg-float v5, v5, v6

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

    :goto_11
    sub-int/2addr v5, v13

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

    :goto_12
    sub-float/2addr v11, v5

    nop

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

    :goto_13
    const/4 v14, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_14
    add-double/2addr v5, v13

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    mul-double v28, v28, v9

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v5, v0, Landroidx/wear/widget/CurvedTextView;->n:F

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getHeight()I

    move-result v11

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_18
    iget-object v4, v0, Landroidx/wear/widget/CurvedTextView;->h:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v1, v0, Landroidx/wear/widget/CurvedTextView;->p:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-double v8, v26, v9

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_1b
    add-float v6, v25, v5

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-boolean v3, v0, Landroidx/wear/widget/CurvedTextView;->a:Z

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1d
    add-double v1, v26, v1

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_1e
    iget-object v6, v0, Landroidx/wear/widget/CurvedTextView;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v13, v0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    mul-double/2addr v5, v9

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

    nop

    nop

    :goto_21
    mul-float/2addr v5, v3

    nop

    goto/32 :goto_139

    nop

    nop

    :goto_22
    add-int/lit8 v11, v11, 0x1

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_23
    iget v5, v0, Landroidx/wear/widget/CurvedTextView;->o:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_24
    add-double v9, v26, v23

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_25
    iget-object v2, v0, Landroidx/wear/widget/CurvedTextView;->k:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v5}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v5

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_27
    sub-float v2, v25, v5

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

    :goto_28
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getHeight()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_29
    iget-object v3, v0, Landroidx/wear/widget/CurvedTextView;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_2a
    div-float/2addr v6, v7

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_2b
    goto/16 :goto_133

    nop

    :goto_2c
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_2d
    iget-object v6, v0, Landroidx/wear/widget/CurvedTextView;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-float v21, v11, v14

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_31
    goto :goto_3d

    nop

    nop

    :goto_32
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_35
    iget-boolean v3, v0, Landroidx/wear/widget/CurvedTextView;->u:Z

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-eq v3, v5, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_4
    :goto_37
    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_38
    float-to-int v4, v4

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

    :goto_39
    move/from16 v22, v12

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v12, v0, Landroidx/wear/widget/CurvedTextView;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getTextAlignment()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_3c
    move v8, v12

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_e1

    nop

    nop

    :goto_3e
    move-object/from16 v17, v13

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_3f
    move-wide/from16 v26, v7

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_40
    double-to-int v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_41
    move-object/from16 v25, v4

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_44
    float-to-double v13, v5

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_45
    if-gez v7, :cond_5

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    :cond_5
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v6, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_47
    goto/16 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_11c

    nop

    nop

    :goto_49
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_4b
    iget-object v6, v0, Landroidx/wear/widget/CurvedTextView;->v:Landroid/text/TextUtils$TruncateAt;

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_4e
    div-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v14, 0x3

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

    :goto_50
    mul-double/2addr v9, v15

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_51
    move v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    float-to-double v5, v6

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    add-double v11, v6, v30

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const v0, 0x13

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

    :goto_56
    if-lt v11, v12, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_df

    nop

    nop

    :goto_57
    iput v3, v0, Landroidx/wear/widget/CurvedTextView;->n:F

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_59
    mul-double/2addr v4, v1

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    int-to-float v11, v11

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    mul-double v3, v3, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_5d
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingLeft()I

    move-result v5

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    float-to-int v1, v1

    nop

    :goto_5f
    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-boolean v3, v0, Landroidx/wear/widget/CurvedTextView;->a:Z

    nop

    goto/32 :goto_e9

    nop

    nop

    :goto_61
    if-ne v8, v11, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :cond_7
    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_62
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_42

    nop

    :goto_63
    const/high16 v6, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_13f

    nop

    nop

    :goto_64
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_65
    iget-object v3, v0, Landroidx/wear/widget/CurvedTextView;->k:Landroid/graphics/Rect;

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

    nop

    :goto_66
    iget-object v13, v0, Landroidx/wear/widget/CurvedTextView;->g:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_67
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-ne v8, v14, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_e4

    nop

    nop

    :goto_6a
    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    mul-double v23, v23, v1

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    sub-float/2addr v5, v11

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    :goto_6d
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_6e
    iget v3, v0, Landroidx/wear/widget/CurvedTextView;->b:F

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_6f
    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->descent:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_70
    mul-float v23, v3, v14

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_71
    const/high16 v8, -0x41000000    # -0.5f

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

    :goto_72
    float-to-double v9, v13

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v3, v0, Landroidx/wear/widget/CurvedTextView;->k:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const/16 v32, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_75
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_76
    mul-double/2addr v4, v9

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_10e

    nop

    nop

    :goto_78
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_79
    if-lt v11, v12, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_92

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->addArc(FFFFFF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    const/4 v11, 0x2

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

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

    :goto_7f
    sub-float v27, v11, v5

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_80
    iget-object v14, v0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_82
    const/high16 v6, 0x43340000    # 180.0f

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_83
    mul-float/2addr v8, v3

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_84
    const/4 v13, 0x0

    nop

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

    :goto_85
    add-float/2addr v13, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const-wide v18, 0x400921fb54442d18L    # Math.PI

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_87
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v5, v3}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_89
    if-gez v11, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    :cond_b
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_8a
    div-double/2addr v3, v15

    nop

    goto/32 :goto_142

    nop

    nop

    :goto_8b
    div-float/2addr v11, v4

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_8c
    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_8e
    goto/32 :goto_a1

    nop

    nop

    :goto_8f
    double-to-float v5, v5

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v5, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    nop

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_a7

    nop

    nop

    :goto_93
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    sub-float v18, v6, v14

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

    :goto_95
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    float-to-double v11, v11

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

    nop

    nop

    :goto_97
    const/high16 v5, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_98
    if-ne v8, v14, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_bc

    nop

    nop

    :goto_99
    move v3, v6

    nop

    nop

    nop

    :goto_9a
    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    if-eqz v6, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_9c
    iget v14, v14, Landroid/graphics/Paint$FontMetrics;->ascent:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_9d
    const/16 v24, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iget v14, v0, Landroidx/wear/widget/CurvedTextView;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    :goto_9f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    move-object/from16 v22, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    float-to-double v1, v14

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object v6, v0, Landroidx/wear/widget/CurvedTextView;->v:Landroid/text/TextUtils$TruncateAt;

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    :goto_a4
    move-object/from16 v17, v14

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v13}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_a6
    if-ne v8, v11, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    :cond_e
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    float-to-int v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v3, v1, v2, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/32 :goto_8

    nop

    nop

    :goto_a9
    iget-object v1, v0, Landroidx/wear/widget/CurvedTextView;->h:Landroid/graphics/Path;

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    add-float v22, v12, v5

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_ab
    add-float v20, v6, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_ac
    div-double/2addr v13, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_ad
    iget v4, v0, Landroidx/wear/widget/CurvedTextView;->b:F

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_ae
    mul-float/2addr v13, v3

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    :goto_af
    sub-float/2addr v13, v14

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_b0
    const/high16 v4, 0x43340000    # 180.0f

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_b1
    invoke-static {v14, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    iget v6, v0, Landroidx/wear/widget/CurvedTextView;->r:F

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b3
    float-to-double v4, v12

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_b4
    iget v14, v0, Landroidx/wear/widget/CurvedTextView;->m:F

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingLeft()I

    move-result v13

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_b6
    float-to-double v6, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_b7
    mul-float v31, v8, v14

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_b8
    return-void

    nop

    :goto_b9
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_ba
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_bb
    mul-float v23, v3, v4

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    move v6, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    new-instance v3, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_be
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_11a

    nop

    nop

    :goto_bf
    float-to-int v1, v6

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

    :goto_c0
    add-float v30, v12, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_c1
    iget-object v14, v0, Landroidx/wear/widget/CurvedTextView;->h:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    :goto_c2
    cmpl-float v5, v11, v5

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_c3
    iget v8, v0, Landroidx/wear/widget/CurvedTextView;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c4
    add-float/2addr v12, v3

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_c5
    neg-float v8, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    :goto_c6
    invoke-static {v9, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_c7
    iput v13, v0, Landroidx/wear/widget/CurvedTextView;->p:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_c8
    add-float v20, v6, v14

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_c9
    iget-object v3, v0, Landroidx/wear/widget/CurvedTextView;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    if-eqz v5, :cond_f

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

    :cond_f
    goto/32 :goto_47

    nop

    nop

    :goto_cb
    aput-char v11, v5, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_cc
    double-to-float v8, v8

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_cd
    float-to-double v5, v6

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_ce
    double-to-float v4, v6

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/32 :goto_75

    nop

    nop

    :goto_d0
    move v6, v13

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_d2
    double-to-float v9, v9

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_d4
    double-to-float v6, v8

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    add-int v12, v3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_d6
    if-gez v3, :cond_10

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_d7
    iget-object v5, v0, Landroidx/wear/widget/CurvedTextView;->h:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_d8
    mul-float/2addr v8, v5

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    mul-double/2addr v5, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    iget-object v13, v0, Landroidx/wear/widget/CurvedTextView;->g:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_db
    const-wide v15, 0x4066800000000000L    # 180.0

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingRight()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_dd
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_df
    const v12, 0xfeff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    const/16 v11, 0x2026

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    iget v11, v0, Landroidx/wear/widget/CurvedTextView;->d:F

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    mul-double v20, v20, v9

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    div-double/2addr v4, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_e4
    const/4 v14, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    const/high16 v12, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_e6
    invoke-static {v6, v3, v11, v12, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_e7
    iget-object v2, v0, Landroidx/wear/widget/CurvedTextView;->k:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_e8
    int-to-float v6, v6

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

    nop

    :goto_e9
    const/high16 v4, 0x40000000    # 2.0f

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

    :goto_ea
    mul-float/2addr v3, v8

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getWidth()I

    move-result v2

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

    :goto_ec
    aput-char v12, v5, v11

    nop

    nop

    nop

    :goto_ed
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {v5, v8}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_ef
    iget v5, v0, Landroidx/wear/widget/CurvedTextView;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_f0
    cmpl-float v3, v3, v4

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_f1
    double-to-float v6, v11

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_f2
    iget v3, v0, Landroidx/wear/widget/CurvedTextView;->r:F

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_f3
    add-float/2addr v12, v6

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

    :goto_f4
    float-to-double v3, v12

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

    :goto_f5
    rem-int v0, v0, v1

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

    :goto_f6
    double-to-float v1, v1

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    sub-float v26, v6, v5

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_f8
    goto/16 :goto_9a

    nop

    :goto_f9
    goto/32 :goto_99

    nop

    nop

    :goto_fa
    move/from16 v25, v6

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_fb
    iget v11, v0, Landroidx/wear/widget/CurvedTextView;->m:F

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    div-float/2addr v5, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_fd
    mul-double/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :goto_fe
    iget-object v12, v0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_100
    iget-object v3, v0, Landroidx/wear/widget/CurvedTextView;->k:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_101
    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    :goto_102
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_103
    invoke-virtual/range {v25 .. v32}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    iput-object v3, v0, Landroidx/wear/widget/CurvedTextView;->l:Ljava/lang/String;

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_105
    mul-float/2addr v14, v3

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_106
    iget-object v5, v0, Landroidx/wear/widget/CurvedTextView;->e:Ljava/lang/String;

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_107
    add-float v28, v6, v5

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    move-object/from16 v0, p0

    nop

    goto/32 :goto_125

    nop

    nop

    :goto_109
    const/high16 v6, -0x3d4c0000    # -90.0f

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_10a
    goto/16 :goto_58

    nop

    nop

    :goto_10b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    iput v4, v3, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    add-int/lit8 v11, v3, 0x1

    nop

    nop

    :goto_10e
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_10f
    iget v14, v0, Landroidx/wear/widget/CurvedTextView;->n:F

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    if-lez v5, :cond_11

    nop

    nop

    goto/32 :goto_10b

    nop

    :cond_11
    goto/32 :goto_29

    nop

    nop

    :goto_111
    float-to-double v7, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    :goto_112
    move v14, v5

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_113
    sub-float/2addr v5, v13

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    goto/16 :goto_102

    nop

    nop

    nop

    :goto_115
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_116
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_117
    sub-float v19, v11, v13

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_118
    move-object/from16 v22, v2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_119
    add-double v6, v6, v28

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_11a
    iget v5, v0, Landroidx/wear/widget/CurvedTextView;->m:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_11b
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    move v13, v11

    nop

    nop

    nop

    nop

    :goto_11d
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_11e
    iput v2, v3, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    move-wide/from16 v30, v4

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_120
    mul-float/2addr v12, v8

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    mul-float/2addr v12, v5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_122
    div-float/2addr v4, v3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_123
    cmpl-float v7, v4, v6

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

    :goto_124
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getTextAlignment()I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_125
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_126
    mul-double/2addr v13, v15

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

    :goto_127
    iget v13, v0, Landroidx/wear/widget/CurvedTextView;->m:F

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_128
    move v8, v13

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_129
    add-float v21, v11, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_12a
    iget-object v4, v0, Landroidx/wear/widget/CurvedTextView;->h:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_12b
    div-float/2addr v6, v4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12c
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_12d
    iput v5, v0, Landroidx/wear/widget/CurvedTextView;->o:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12e
    mul-float/2addr v6, v5

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

    :goto_12f
    if-eqz v6, :cond_12

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_130
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

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

    :goto_131
    iget v8, v0, Landroidx/wear/widget/CurvedTextView;->b:F

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_132
    iput v1, v2, Landroid/graphics/Rect;->right:I

    nop

    :goto_133
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_134
    if-eqz v3, :cond_13

    nop

    goto/32 :goto_2c

    nop

    :cond_13
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_135
    add-float v29, v11, v5

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

    :goto_136
    const/high16 v3, 0x40000000    # 2.0f

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_137
    goto/16 :goto_d1

    nop

    :goto_138
    goto/32 :goto_d0

    nop

    nop

    :goto_139
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getWidth()I

    move-result v6

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    add-double v8, v26, v20

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

    nop

    :goto_13c
    sub-float v18, v6, v13

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    float-to-int v4, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    mul-float v17, v3, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    if-ne v8, v3, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    :cond_14
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_140
    const/4 v8, 0x1

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    :goto_141
    const-wide v9, 0x400921fb54442d18L    # Math.PI

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

    nop

    :goto_142
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_143
    iget v11, v0, Landroidx/wear/widget/CurvedTextView;->m:F

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    goto/32 :goto_10

    nop

    nop

    :goto_0
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v3, p0, Landroidx/wear/widget/CurvedTextView;->l:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    move-object v2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    iget-object v4, p0, Landroidx/wear/widget/CurvedTextView;->g:Landroid/graphics/Path;

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

    :goto_b
    iget v1, p0, Landroidx/wear/widget/CurvedTextView;->f:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xf

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_8

    nop

    nop

    :goto_10
    const v0, 0x10

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v7, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

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
    iget-object p0, p0, Landroidx/wear/widget/CurvedTextView;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 3

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1
    const p2, 0x43b3f333    # 359.9f

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

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

    :goto_3
    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean p2, p0, Landroidx/wear/widget/CurvedTextView;->u:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingLeft()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    int-to-float p2, p2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

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

    :goto_9
    const/4 v2, 0x0

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

    :goto_a
    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

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

    :goto_b
    iget-object v1, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    add-float/2addr p1, p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    neg-float p2, p2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    iput p1, p0, Landroidx/wear/widget/CurvedTextView;->m:F

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const p2, 0x40490fdb    # (float)Math.PI

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    iput p1, p0, Landroidx/wear/widget/CurvedTextView;->b:F

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/wear/widget/CurvedTextView;->j:Landroid/graphics/Rect;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput p1, p0, Landroidx/wear/widget/CurvedTextView;->n:F

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
    div-float/2addr p1, p2

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingBottom()I

    move-result v0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_35

    nop

    nop

    :goto_16
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p2, p0, Landroidx/wear/widget/CurvedTextView;->i:Landroid/text/TextPaint;

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

    :goto_19
    iget p2, p0, Landroidx/wear/widget/CurvedTextView;->r:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    sub-float/2addr p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1b
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_22

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_1d
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingRight()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1e
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

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

    :goto_1f
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p1, p0, Landroidx/wear/widget/CurvedTextView;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_23
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_24
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_18

    nop

    nop

    :goto_27
    goto/32 :goto_22

    nop

    nop

    :goto_28
    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

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

    :goto_29
    const v0, 0x9

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p0, Landroidx/wear/widget/CurvedTextView;->j:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2b
    div-float/2addr p1, v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-float/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2e
    div-float/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2f
    add-float/2addr p1, p2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v1, p0, Landroidx/wear/widget/CurvedTextView;->m:F

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

    :goto_31
    return-void

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getPaddingTop()I

    move-result v0

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getMeasuredWidth()I

    move-result p1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1, p1, v2, p2, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_37
    if-nez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_38
    add-int v0, v0, v1

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

    :goto_39
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->getMeasuredHeight()I

    move-result p2

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3a
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v1, 0xd

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

    nop

    :goto_3c
    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

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

    :goto_3d
    iget p2, p0, Landroidx/wear/widget/CurvedTextView;->q:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3e
    mul-float/2addr p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3f
    const/high16 p2, 0x43340000    # 180.0f

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Landroidx/wear/widget/CurvedTextView;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/wear/widget/CurvedTextView;->b()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_0
    mul-double/2addr v12, v10

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1
    sub-float/2addr v3, v2

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

    :goto_2
    goto/32 :goto_10

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

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_4
    iput-boolean v2, v0, Landroidx/wear/widget/CurvedTextView;->w:Z

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_8
    iget v4, v0, Landroidx/wear/widget/CurvedTextView;->p:F

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
    float-to-double v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1, v3}, Landroidx/wear/widget/CurvedTextView;->c(FF)Z

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

    :goto_b
    iget-boolean v4, v0, Landroidx/wear/widget/CurvedTextView;->w:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    add-double/2addr v8, v10

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v4, :cond_0

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
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    :goto_f
    goto/32 :goto_1f

    nop

    :goto_10
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_11
    add-double/2addr v6, v10

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v5, 0x3

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

    nop

    :goto_13
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_14
    div-int/lit8 v4, v4, 0x2

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

    :goto_15
    float-to-double v10, v3

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

    :goto_16
    iget-boolean v4, v0, Landroidx/wear/widget/CurvedTextView;->w:Z

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    sub-double/2addr v8, v12

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

    :goto_18
    mul-double/2addr v10, v3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_19
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0xb

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getHeight()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1e
    return v2

    nop

    :goto_1f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    double-to-float v1, v8

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_21
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getWidth()I

    move-result v1

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

    :goto_22
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_23
    mul-double/2addr v6, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_24
    add-double/2addr v6, v10

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

    :goto_25
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    double-to-float v3, v6

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

    :goto_27
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getHeight()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_28
    neg-double v4, v4

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_29
    mul-double/2addr v8, v6

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-boolean v5, v0, Landroidx/wear/widget/CurvedTextView;->w:Z

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_b

    nop

    nop

    :goto_2c
    if-lez v0, :cond_2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_2d
    sub-float/2addr v3, v4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2e
    div-int/lit8 v1, v1, 0x2

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

    :goto_2f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

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

    :goto_30
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_31
    move-object/from16 v0, p0

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

    :goto_32
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_33
    if-eq v4, v5, :cond_3

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_3
    :goto_34
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

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

    :goto_36
    div-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_37
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_38
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_39
    sub-float/2addr v1, v3

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_3a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3b
    if-eqz v4, :cond_4

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3c
    int-to-double v10, v1

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

    :goto_3d
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_5
    :goto_3e
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3f
    return v0

    nop

    nop

    :goto_40
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_41
    float-to-double v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_42
    sub-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_43
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

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

    :goto_44
    div-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_46
    iget-boolean v1, v0, Landroidx/wear/widget/CurvedTextView;->w:Z

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

    :goto_47
    move-object/from16 v2, p1

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

    :goto_48
    int-to-double v10, v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_49
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_4a
    const v0, 0x18

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4b
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/CurvedTextView;->getWidth()I

    move-result v3

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

    :goto_4c
    if-eqz v1, :cond_6

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_4e
    if-ne v4, v5, :cond_7

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_7
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop
.end method
