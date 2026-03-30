.class public final Leej;
.super Landroid/widget/RelativeLayout$LayoutParams;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Leeg;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, v2, Leeg;->d:F

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2
    new-instance v2, Leeg;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4
    invoke-direct {v2}, Leeg;-><init>()V

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v2}, Leeg;-><init>()V

    :goto_7
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v2, Leeg;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_9
    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const/high16 v1, -0x40800000    # -1.0f

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

    :goto_b
    move-object v2, v0

    nop

    :goto_c
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_d
    iput p2, v2, Leeg;->c:F

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v2}, Leeg;-><init>()V

    :goto_10
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_2
    goto/32 :goto_67

    nop

    nop

    :goto_13
    cmpl-float v3, p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_15
    const/16 p2, 0x9

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p2, 0x2

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v2, :cond_4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    cmpl-float v3, p2, v1

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

    nop

    :goto_1c
    cmpl-float v3, p2, v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v0, Leef;->a:[I

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

    :goto_1e
    iput p2, v2, Leeg;->c:F

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput p2, v2, Leeg;->a:F

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1a

    nop

    nop

    :goto_21
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v2}, Leeg;-><init>()V

    :goto_23
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    cmpl-float v3, p2, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v3, :cond_5

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

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

    :goto_29
    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2a
    if-eqz v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v2}, Leeg;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    :goto_2c
    const/16 p2, 0x8

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput p2, v2, Leeg;->f:F

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v2}, Leeg;-><init>()V

    :goto_30
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v1, 0x12

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

    :goto_32
    cmpl-float v3, p2, v1

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_33
    iput p2, v2, Leeg;->d:F

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v2, :cond_7

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    cmpl-float v3, p2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_37
    if-nez v3, :cond_8

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

    :cond_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput-object v2, p0, Leej;->a:Leeg;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 p2, 0x5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_6b

    nop

    nop

    :goto_3d
    new-instance v0, Leeg;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_3f
    invoke-direct {v2}, Leeg;-><init>()V

    :goto_40
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_42
    if-nez v3, :cond_9

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_9

    nop

    nop

    :goto_43
    new-instance v2, Leeg;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_44
    cmpl-float v3, p2, v1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_45
    const/4 p2, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p2

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

    :goto_47
    goto :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-nez v3, :cond_a

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iput p2, v2, Leeg;->e:F

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

    :goto_4b
    new-instance v2, Leeg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4c
    if-eqz v2, :cond_b

    nop

    goto/32 :goto_76

    nop

    nop

    :cond_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-eqz v2, :cond_c

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

    :cond_c
    goto/32 :goto_73

    nop

    nop

    :goto_4e
    iput p2, v2, Leeg;->h:F

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_50
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_51
    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p2

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_52
    iput p2, v2, Leeg;->g:F

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_21

    nop

    nop

    :goto_55
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_56
    if-nez v2, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_57
    cmpl-float v0, p2, v1

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

    :goto_58
    invoke-direct {v0}, Leeg;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_59
    invoke-direct {v2}, Leeg;-><init>()V

    :goto_5a
    goto/32 :goto_0

    nop

    nop

    :goto_5b
    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez v3, :cond_e

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

    :cond_e
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_5d
    cmpl-float v3, p2, v1

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

    :goto_5e
    iput p2, v2, Leeg;->f:F

    nop

    nop

    :goto_5f
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-nez v0, :cond_f

    nop

    nop

    goto/32 :goto_69

    nop

    :cond_f
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_61
    const/4 p2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_62
    iput p2, v2, Leeg;->e:F

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_64
    const/4 p2, 0x4

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iput p2, v2, Leeg;->b:F

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_39

    nop

    nop

    :goto_67
    if-eqz v2, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_10
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iput p2, v2, Leeg;->i:F

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-nez v3, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_14

    nop

    nop

    :goto_6b
    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    new-instance v2, Leeg;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6d
    if-lez v0, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_20

    nop

    :goto_6e
    new-instance v2, Leeg;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_6f
    const/4 p2, 0x7

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    cmpl-float v2, p2, v1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const/4 v0, 0x1

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

    :goto_72
    new-instance v2, Leeg;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_73
    new-instance v2, Leeg;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-eqz v2, :cond_13

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_13
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-direct {v2}, Leeg;-><init>()V

    :goto_76
    goto/32 :goto_4e

    nop

    nop

    :goto_77
    new-instance v2, Leeg;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_78
    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p2

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Leeg;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_1
    iput-object v0, p0, Leej;->a:Leeg;

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    iget-object p0, p0, Leej;->a:Leeg;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Leej;->a:Leeg;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Leeg;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Leeg;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method

.method protected final setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

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

    :goto_3
    return-void

    nop

    nop

    :goto_4
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

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

    :goto_5
    const/4 v0, 0x0

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
