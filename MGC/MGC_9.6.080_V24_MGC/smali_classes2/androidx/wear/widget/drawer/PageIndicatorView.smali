.class public Landroidx/wear/widget/drawer/PageIndicatorView;
.super Landroid/view/View;
.source "PG"

# interfaces
.implements Lelf;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private h:I

.field private i:F

.field private j:F

.field private k:I

.field private l:I

.field private m:Z

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:I

.field private s:I

.field private t:I

.field private u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/drawer/PageIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    nop

    :goto_2
    invoke-direct {p0, p1, p2, v0}, Landroidx/wear/widget/drawer/PageIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v6, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->l:I

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

    :goto_2
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static/range {v2 .. v7}, Landroidx/wear/widget/drawer/PageIndicatorView;->e(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_4
    new-instance v2, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5
    iget v4, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->q:F

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_6
    const/16 p2, 0x10

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_7
    iget p2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->k:I

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_8
    iget-boolean p1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a
    invoke-direct {v7, p1}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_b
    iput p2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->b:I

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v7, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    iput p2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->l:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p3, 0x0

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

    :goto_10
    iput p2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->j:F

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_11
    iput p2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->n:I

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

    :goto_12
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput p3, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->u:I

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/16 p2, 0x17

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object v2, p2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_67

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput p2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->q:F

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_1b
    const v0, 0x6

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-wide/16 v3, 0x7d0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->d:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    iput-boolean p3, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 p2, 0x14

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_21
    const/16 p2, 0x16

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-boolean p2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_24
    invoke-direct {v2, p1}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->l:I

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

    :goto_26
    iget v5, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->q:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_27
    iput p2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->p:F

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

    :goto_28
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_29
    iget v6, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->r:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2a
    invoke-static/range {v1 .. v6}, Landroidx/wear/widget/drawer/PageIndicatorView;->e(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    :goto_2c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2e
    iput p2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->a:I

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

    :goto_2f
    new-instance v1, Landroid/graphics/Paint;

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

    :goto_30
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move-object v3, v7

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_33
    const/4 p1, 0x2

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

    :goto_34
    rem-int v0, v0, v1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

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

    :goto_36
    iput p2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->r:I

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

    :goto_37
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/16 p2, 0xe

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_39
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3a
    const/16 p2, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3b
    iget v3, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->i:F

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

    :goto_3c
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3d
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_3e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v0, Lemb;->g:[I

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_40
    iput-object p2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->f:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

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

    :goto_42
    iget v5, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->k:I

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

    :goto_43
    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_45
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

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

    :goto_46
    iput p1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->t:I

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/16 p2, 0x15

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move v7, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_49
    const/16 p2, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_4a
    const/16 p2, 0x19

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_4

    nop

    nop

    :goto_4c
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget p0, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->r:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/PageIndicatorView;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_50
    const/16 p2, 0x12

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

    :goto_51
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_6c

    nop

    :goto_52
    iput p2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->h:I

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_53
    const/4 p1, 0x5

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/16 p2, 0x13

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_55
    iput-boolean p3, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->m:Z

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_5c
    iget v4, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->j:F

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/16 p2, 0x18

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const/16 p2, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_5f
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_60
    const/4 p1, 0x1

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

    :goto_61
    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_62
    iput p2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->i:F

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_63
    new-instance p2, Landroid/graphics/Paint;

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_64
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iput p2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->o:F

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

    :goto_66
    invoke-virtual {p0, p1}, Landroidx/wear/widget/drawer/PageIndicatorView;->setAlpha(F)V

    :goto_67
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const v1, 0x7f15096d

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    int-to-long v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_6a
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_2c

    nop

    :goto_6d
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_70
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/PageIndicatorView;->isInEditMode()Z

    move-result p1

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_71
    iput-object v2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->e:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_72
    iget p3, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_73
    iput-object v7, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->g:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_74
    iput p2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->k:I

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_75
    iput p1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->s:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(J)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_1
    int-to-long v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->c:Z

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->b:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    const/4 v1, 0x0

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

    :goto_b
    goto/32 :goto_10

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

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

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_9

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

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x15

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x6

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

    nop
.end method

.method private static final e(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V
    .locals 8

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v0, v7

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    div-float/2addr p2, v3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_7
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

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

    :goto_9
    const/4 p3, 0x2

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

    :goto_a
    goto/32 :goto_1f

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_d
    new-array v5, p3, [F

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p3, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    aput p3, v5, v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    add-float v3, p2, p3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v7, Landroid/graphics/RadialGradient;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    aput p2, v5, p3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    const/4 p3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    aput p2, v5, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    filled-new-array {p5, p5, v0}, [I

    move-result-object v4

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1b
    const/4 p3, 0x3

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1c
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0xb

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_20
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    goto/32 :goto_27

    nop

    nop

    :goto_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    const v1, 0x1f

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

    :goto_2
    iget p1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->u:I

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

    :goto_4
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean p1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->c:Z

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    iput p1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->u:I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_e
    if-ne v0, p1, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    :goto_14
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

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

    :goto_15
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

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

    :goto_17
    iget-boolean p1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->c:Z

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

    :goto_18
    rem-int v0, v0, v1

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

    :goto_19
    new-instance v0, Lenk;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p1, :cond_2

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

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v0, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->n:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_12

    nop

    :goto_1d
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1f
    iget-boolean v0, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->m:Z

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

    nop

    :goto_20
    int-to-long v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_21
    invoke-direct {p0, v0, v1}, Landroidx/wear/widget/drawer/PageIndicatorView;->da190e616797844b591057d0190e7728m(J)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_4

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

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_23
    int-to-long v0, v0

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

    :goto_24
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0, p0}, Lenk;-><init>(Landroidx/wear/widget/drawer/PageIndicatorView;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x15

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final b(I)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    if-ne p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iget v0, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->t:I

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

    :goto_3
    iput p1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->t:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/PageIndicatorView;->invalidate()V

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final c(IF)V
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_2
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

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

    :goto_4
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    :goto_5
    if-eqz p1, :cond_4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xf

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    goto/32 :goto_21

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    int-to-long v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->c:Z

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    const/high16 p2, 0x3f800000    # 1.0f

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

    :goto_f
    goto/32 :goto_a

    nop

    nop

    :goto_10
    iget p1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->u:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, v1, v2}, Landroidx/wear/widget/drawer/PageIndicatorView;->da190e616797844b591057d0190e7728m(J)V

    :goto_12
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

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

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-boolean p1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->m:Z

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

    :goto_16
    iget-boolean p1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->c:Z

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

    :goto_17
    if-eq p1, v0, :cond_5

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

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x11

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

    :goto_19
    const/4 p1, 0x0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget p0, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->n:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1c
    const-wide/16 v1, 0x0

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

    :goto_1d
    return-void

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-boolean p1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->c:Z

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    cmpl-float p1, p2, p1

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

    :goto_24
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_25
    const/4 v0, 0x1

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
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    int-to-float v1, v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2
    iget v3, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->q:F

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-float/2addr v1, v3

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

    :goto_4
    const/high16 v3, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_20

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_33

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    iget v1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->i:F

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

    :goto_c
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    iget v3, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->q:F

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

    :goto_10
    const v0, 0x5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_11
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->t:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_15
    if-gt v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-float/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_1b
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1c
    iget v1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->j:F

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1d
    iget v0, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->s:I

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

    :goto_1e
    iget-object v3, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->d:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v5, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->e:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x6

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

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_24
    iget v1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->h:I

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

    :goto_25
    const/4 v1, 0x1

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

    :goto_26
    iget v3, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->o:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_27
    add-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_28
    iget v4, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->p:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_29
    iget v3, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->o:F

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v5, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->g:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2b
    div-float/2addr v2, v3

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

    :goto_2c
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2e
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/PageIndicatorView;->getPaddingLeft()I

    move-result v0

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

    :goto_30
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/PageIndicatorView;->getHeight()I

    move-result v2

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, v2, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_32
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->i:F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1, v2, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v3, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->f:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_36
    div-float/2addr v1, v3

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    :goto_38
    if-lt v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_4

    nop

    nop

    :goto_3a
    iget v1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->s:I

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3c
    iget v4, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->p:F

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

    :goto_3d
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_3e
    iget v1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->j:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 4

    goto/32 :goto_21

    nop

    nop

    :goto_0
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1
    iget v2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->h:I

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

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    int-to-float v1, v1

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

    :goto_5
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/PageIndicatorView;->getPaddingTop()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

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

    goto/32 :goto_b

    nop

    nop

    :goto_7
    iget v2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->p:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1, p2}, Landroidx/wear/widget/drawer/PageIndicatorView;->setMeasuredDimension(II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-float/2addr v1, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    add-int/2addr v1, v2

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

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    if-eq v0, v1, :cond_0

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

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v1, p2, v2}, Landroidx/wear/widget/drawer/PageIndicatorView;->resolveSizeAndState(III)I

    move-result p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    iget v1, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->i:F

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_f
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v3, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->j:F

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

    :goto_13
    add-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    float-to-double v1, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_15
    const v1, 0x10

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    :goto_18
    add-int/2addr v0, v2

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

    :goto_19
    goto :goto_23

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1b
    const/high16 v1, 0x40000000    # 2.0f

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

    :goto_1c
    if-eq v2, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1e
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1f
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_20
    iget v2, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->q:F

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_21
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_22
    add-int/2addr v0, v2

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_24
    mul-int/2addr v0, v2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_25
    double-to-int v1, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1f

    nop

    nop

    :goto_29
    invoke-static {v0, p1, v2}, Landroidx/wear/widget/drawer/PageIndicatorView;->resolveSizeAndState(III)I

    move-result p1

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

    :goto_2a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

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

    :goto_2b
    iget v0, p0, Landroidx/wear/widget/drawer/PageIndicatorView;->s:I

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

    :goto_2c
    add-float/2addr v3, v2

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2d
    float-to-int v1, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/PageIndicatorView;->getPaddingLeft()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/PageIndicatorView;->getPaddingRight()I

    move-result v2

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

    :goto_30
    add-int/2addr v1, v2

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Landroidx/wear/widget/drawer/PageIndicatorView;->getPaddingBottom()I

    move-result v2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop
.end method
