.class public Lrir;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public c:[I

.field public d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3
    move-object v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_5
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    filled-new-array {p3}, [I

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_b
    iput p3, p0, Lrir;->e:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_e
    const/high16 p1, 0x437f0000    # 255.0f

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

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

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    :goto_11
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    filled-new-array {p3}, [I

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    mul-float/2addr p3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_14
    if-nez p4, :cond_1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput p1, p0, Lrir;->d:I

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

    nop

    :goto_16
    const/16 p3, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_17
    goto/16 :goto_3c

    nop

    :goto_18
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1a
    iput p4, p0, Lrir;->g:I

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

    :goto_1b
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

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

    :goto_1c
    invoke-static {p1, p2, p3, v1}, Lqqy;->e(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result p3

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    float-to-int p3, p3

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1, p3, v2}, Lrgw;->g(Landroid/content/Context;II)I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_1f
    const/4 v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_20
    const/4 p3, 0x1

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

    :goto_21
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_40

    nop

    nop

    :goto_25
    iput p4, p0, Lrir;->i:I

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const p3, 0x1010033

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_27
    if-ne v1, p3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p2, v1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

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

    :goto_29
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

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

    :goto_2a
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

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

    :goto_2c
    const/4 p4, 0x3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2d
    const/16 p4, 0xc

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

    :goto_2e
    const/4 p3, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_30
    const-string p1, "indicatorColors cannot be empty when indicatorColor is not used."

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

    :goto_31
    iget p1, p0, Lrir;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_32
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_0

    nop

    nop

    :goto_34
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p2, v1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

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

    :goto_36
    const/16 p4, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_37
    goto :goto_3c

    nop

    :goto_38
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    array-length p3, p3

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez p3, :cond_3

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

    :cond_3
    :goto_3c
    goto/32 :goto_2e

    nop

    nop

    :goto_3d
    iput p1, p0, Lrir;->d:I

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_3f
    const p3, 0x7f0401a8

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_41
    const/4 p3, 0x5

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_42
    const v2, 0x7f070657

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

    nop

    :goto_43
    if-eqz v1, :cond_4

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

    :cond_4
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_45
    const p3, 0x3e4ccccd    # 0.2f

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_47
    const/4 p4, 0x2

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

    nop

    :goto_48
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_49
    const/16 p4, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iput-object p3, p0, Lrir;->c:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    filled-new-array {p3}, [I

    move-result-object p3

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_4d
    iput p3, p0, Lrir;->b:I

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v1, v1, Landroid/util/TypedValue;->type:I

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

    :goto_4f
    move v5, p3

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_50
    const/16 p4, 0xb

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_52
    goto/16 :goto_3e

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_5f

    nop

    nop

    :goto_54
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_55
    iput v1, p0, Lrir;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_56
    iput-object v1, p0, Lrir;->c:[I

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_57
    return-void

    nop

    nop

    :goto_58
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_59
    iput p3, p0, Lrir;->d:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_57

    nop

    nop

    :goto_5b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

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

    nop

    :goto_5c
    iput p4, p0, Lrir;->k:I

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_5d
    const/16 v1, 0xd

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_5e
    iput p3, p0, Lrir;->a:I

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object p3, p0, Lrir;->c:[I

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

    :goto_60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_61
    div-float/2addr p3, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_62
    invoke-static {p1, p3}, Lrgw;->e(II)I

    move-result p1

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

    nop

    nop

    :goto_63
    iput p4, p0, Lrir;->f:I

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_64
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_65
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_66
    new-array v1, v0, [I

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

    :goto_67
    invoke-static {p1, p2, p4, v0}, Lqqy;->e(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result p4

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    move v6, p4

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

    :goto_69
    const v0, 0xb

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

    :goto_6a
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_6b
    iput-object p3, p0, Lrir;->c:[I

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p1, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_6d
    sget-object v4, Lrjx;->a:[I

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_6e
    aget p3, p3, v0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    new-array v7, v0, [I

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-static/range {v2 .. v7}, Lric;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    move-object v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_72
    iput-object p3, p0, Lrir;->c:[I

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_73
    int-to-float p3, p3

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iput p4, p0, Lrir;->j:I

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public a()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lrir;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    :goto_2
    const-string v0, "indicatorTrackGapSize must be >= 0."

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    if-gez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

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

    :goto_5
    goto/32 :goto_6

    nop

    nop

    :goto_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b(Z)Z
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    if-lez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    :goto_2
    if-gtz p0, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p1, :cond_2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    iget p0, p0, Lrir;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    :goto_c
    goto :goto_7

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget p0, p0, Lrir;->i:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return v1

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    return v1

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x1

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

    :goto_17
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

    :goto_18
    const v1, 0x6

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

    :goto_19
    if-gtz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Lrir;->j:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    move v1, v0

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
.end method

.method public final c()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lrir;->f:I

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
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop
.end method

.method public final d()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    iget p0, p0, Lrir;->e:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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
.end method
