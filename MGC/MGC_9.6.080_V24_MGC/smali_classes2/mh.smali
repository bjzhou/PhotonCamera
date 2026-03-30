.class public final Lmh;
.super Landroid/view/View;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Landroid/text/Layout;

.field public b:Landroid/content/res/ColorStateList;

.field public c:Ljava/lang/CharSequence;

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field private final h:Landroid/text/TextPaint;

.field private final i:F

.field private final j:F

.field private k:I

.field private l:I

.field private m:F

.field private n:I

.field private o:I


# direct methods
.method private final 7ecc92917e9c4556cc19f457ddc41af8m(IILandroid/text/Layout$Alignment;)Landroid/text/Layout;
    .locals 20

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_0
    if-gtz p2, :cond_0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1
    if-gt v4, v8, :cond_1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v3, v0, Lmh;->m:F

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_5
    iget v10, v0, Lmh;->d:F

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

    :goto_6
    new-instance v3, Landroid/text/StaticLayout;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lmh;->getPaddingTop()I

    move-result v1

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

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lmh;->getPaddingBottom()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    move v5, v7

    nop

    :goto_b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lmh;->getPaddingRight()I

    move-result v3

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_d
    move v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v5, :cond_2

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_2
    :goto_10
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    move v5, v7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_73

    nop

    nop

    :goto_15
    add-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_16
    const v1, 0x2

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_17
    move/from16 v18, v5

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

    :goto_18
    invoke-virtual {v8}, Landroid/text/TextPaint;->getTextSize()F

    move-result v8

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_19
    iget v9, v0, Lmh;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v16, p3

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

    :goto_1c
    move/from16 v17, v4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_64

    nop

    :goto_1e
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_1f
    move v15, v2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_10

    nop

    nop

    :goto_21
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    :goto_24
    iget v8, v0, Lmh;->n:I

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

    :goto_25
    return-object v3

    nop

    nop

    :goto_26
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v8, :cond_4

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v5, v0, Lmh;->e:F

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2a
    if-gt v4, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez p1, :cond_6

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :cond_6
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_2c
    move-object/from16 v9, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2d
    iput v1, v0, Lmh;->o:I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2e
    const/16 v19, 0x1

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

    :goto_2f
    sub-int v1, p2, v1

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_30
    cmpl-float v8, v8, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_31
    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v5, :cond_7

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

    :cond_7
    :goto_33
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput v3, v0, Lmh;->m:F

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_36
    iget-object v8, v0, Lmh;->h:Landroid/text/TextPaint;

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

    :goto_37
    iget v5, v0, Lmh;->n:I

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v4, v0, Lmh;->h:Landroid/text/TextPaint;

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

    :goto_39
    if-gtz v8, :cond_8

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

    :cond_8
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_3c
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_60

    nop

    :goto_3d
    iget v4, v0, Lmh;->d:F

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move v4, v7

    nop

    nop

    :goto_3f
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v6, 0x1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_42
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_43
    add-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_44
    iget-object v6, v0, Lmh;->c:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_45
    iget v11, v0, Lmh;->e:F

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move-object v5, v3

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v8}, Landroid/text/TextPaint;->getTextSize()F

    move-result v8

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
    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_49
    iget v3, v0, Lmh;->g:F

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_10

    nop

    nop

    :goto_4b
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_4c
    move v5, v6

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

    nop

    :goto_4d
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_4e
    if-gt v4, v5, :cond_a

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_d

    nop

    nop

    :goto_4f
    goto :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_51
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_52
    move v8, v7

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_14

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move v8, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_56
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_71

    nop

    nop

    :goto_58
    move v4, v7

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_5a
    const/4 v12, 0x1

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_5b
    move v8, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_5c
    iget-object v4, v0, Lmh;->h:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual/range {p0 .. p0}, Lmh;->getPaddingLeft()I

    move-result v2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_5f
    add-float/2addr v3, v4

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

    :goto_60
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const v0, 0x4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    move v8, v7

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget v9, v0, Lmh;->f:F

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_3f

    nop

    :goto_67
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-gtz v8, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_8

    nop

    nop

    :goto_6b
    if-gt v5, v1, :cond_c

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

    :cond_c
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_6c
    move v5, v6

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_6d
    cmpl-float v8, v8, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_6e
    sub-int v2, p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_6f
    iget v3, v0, Lmh;->m:F

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

    nop

    :goto_70
    iget-object v13, v0, Lmh;->c:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_72
    iget v1, v0, Lmh;->n:I

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_73
    iget-object v8, v0, Lmh;->h:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_74
    const/high16 v4, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_75
    iget-object v7, v0, Lmh;->h:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_76
    move v8, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_77
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_78
    move-object v12, v3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_79
    iget-object v14, v0, Lmh;->h:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_7a
    if-eqz v4, :cond_d

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

    :cond_d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7b
    new-instance v3, Landroid/text/StaticLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v4, Lmg;->a:[I

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lmh;->c:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_2
    iput v2, p0, Lmh;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    iget v1, p0, Lmh;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_4
    iget-object v0, p0, Lmh;->b:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_5
    iget v4, p0, Lmh;->g:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lmh;->c:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_26

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_9
    iget v1, p0, Lmh;->k:I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

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
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_c
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lmh;->e()V

    :goto_e
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_f
    iput v2, p0, Lmh;->d:F

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_11
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_12
    const/4 v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1

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

    :goto_14
    iput-object p1, p0, Lmh;->c:Ljava/lang/CharSequence;

    nop

    nop

    :goto_15
    goto/32 :goto_54

    nop

    nop

    :goto_16
    mul-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_17
    const v2, 0x7fffffff

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_18
    const/4 v0, 0x0

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

    :goto_19
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

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

    :goto_1b
    const/16 v0, 0x8

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v4, p0, Lmh;->b:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1d
    iput v0, p0, Lmh;->g:F

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_26

    nop

    :cond_0
    goto/32 :goto_25

    nop

    :goto_20
    invoke-direct {p0, p1, v0, v1, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_22
    iput v2, p0, Lmh;->k:I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v0, v1, v2}, Lmh;->d(Ljava/lang/String;II)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_25
    goto/32 :goto_55

    nop

    nop

    :goto_26
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_27
    const/16 v0, 0x9

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

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_29
    iput v0, p0, Lmh;->i:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2a
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2b
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2f
    iput v0, p0, Lmh;->k:I

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lmh;->getResources()Landroid/content/res/Resources;

    move-result-object v2

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

    nop

    :goto_31
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v2, Landroid/text/TextPaint;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_33
    iget v0, p0, Lmh;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_34
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_35
    iput v2, p0, Lmh;->n:I

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

    nop

    :goto_36
    const v0, 0x10

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_38
    const v2, 0x800033

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

    :goto_39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_6

    nop

    nop

    :goto_3a
    iget v4, p0, Lmh;->f:F

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

    :goto_3b
    const/4 v4, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3c
    mul-float/2addr v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3e
    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_3f
    iput-object v2, p0, Lmh;->h:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

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

    :goto_41
    const/4 v1, 0x6

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

    :goto_42
    invoke-virtual {p1, v0, v4, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

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

    :goto_43
    const/high16 v3, 0x41200000    # 10.0f

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_44
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_45
    iput v3, p0, Lmh;->f:F

    nop

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

    :goto_46
    const/4 v0, 0x3

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

    :goto_47
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_48
    iput v0, p0, Lmh;->n:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_49
    if-eqz p1, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4d

    nop

    nop

    :goto_4a
    const/high16 v3, 0x42700000    # 60.0f

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_4c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4d
    const-string p1, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4e
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_4f
    const/16 v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iput v0, p0, Lmh;->f:F

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_51
    iput v2, p0, Lmh;->g:F

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_52
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iput v0, p0, Lmh;->j:F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_54
    return-void

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget v0, p0, Lmh;->j:F

    nop

    goto/32 :goto_34

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput p1, p0, Lmh;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lmh;->k:I

    nop

    nop

    goto/32 :goto_5

    nop

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

    :goto_3
    invoke-virtual {p0}, Lmh;->invalidate()V

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    if-ne v0, p1, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

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
    iput-object p1, p0, Lmh;->a:Landroid/text/Layout;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    if-ne v0, p1, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lmh;->n:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lmh;->n:I

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const/4 p1, 0x0

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lmh;->invalidate()V

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lmh;->requestLayout()V

    goto/32 :goto_6

    nop

    nop
.end method

.method public final c(Landroid/graphics/Typeface;)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmh;->requestLayout()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lmh;->invalidate()V

    :goto_2
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
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    :goto_6
    iget-object v0, p0, Lmh;->h:Landroid/text/TextPaint;

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

    :goto_7
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

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

    nop

    :goto_8
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lmh;->a:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lmh;->h:Landroid/text/TextPaint;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/String;II)V
    .locals 4

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lmh;->c(Landroid/graphics/Typeface;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p3, p0, Lmh;->h:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p3, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_2d

    nop

    :goto_5
    goto/32 :goto_2c

    nop

    nop

    :goto_6
    and-int/2addr p1, v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

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

    :goto_8
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

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

    :goto_9
    goto/16 :goto_41

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_b
    and-int/2addr p1, p3

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lmh;->h:Landroid/text/TextPaint;

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
    if-gtz p3, :cond_0

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

    :cond_0
    goto/32 :goto_10

    nop

    nop

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
    goto/32 :goto_3c

    nop

    nop

    :goto_10
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p3, p0, Lmh;->h:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_12
    if-eqz p1, :cond_2

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

    :goto_13
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    :goto_17
    const v0, 0xf

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

    :goto_18
    goto/16 :goto_41

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_39

    nop

    nop

    :goto_1c
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    const/high16 p2, -0x41800000    # -0.25f

    nop

    nop

    :goto_1e
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_34

    nop

    :goto_21
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3

    nop

    nop

    :goto_23
    invoke-virtual {p0, p2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_24
    if-ne p2, v0, :cond_5

    nop

    goto/32 :goto_43

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

    :goto_25
    not-int p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p3, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_45

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

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

    :goto_2a
    iget-object p3, p0, Lmh;->h:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2b
    if-nez p1, :cond_6

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2c
    move p1, v2

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2e
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0xb

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_30
    invoke-virtual {p0, p1}, Lmh;->c(Landroid/graphics/Typeface;)V

    goto/32 :goto_e

    nop

    nop

    :goto_31
    and-int/lit8 v3, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-ne p2, v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {p3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_36

    nop

    nop

    :goto_36
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_8
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p3, p2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-ne p2, v2, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_9
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_39
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3b
    if-ne v1, v3, :cond_a

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

    :cond_a
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0, p1}, Lmh;->c(Landroid/graphics/Typeface;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_40
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_42
    goto :goto_41

    nop

    :goto_43
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_44
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v2, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto :goto_3a

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final drawableStateChanged()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lmh;->b:Landroid/content/res/ColorStateList;

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

    :goto_3
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lmh;->e()V

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    invoke-virtual {p0}, Lmh;->invalidate()V

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    iput v0, p0, Lmh;->l:I

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

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xc

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    iget v1, p0, Lmh;->l:I

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

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lmh;->getDrawableState()[I

    move-result-object v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xd

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lmh;->b:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v1, v2

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

    :goto_1
    iget v4, p0, Lmh;->k:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2
    sub-int/2addr v2, v3

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    const/16 v5, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move v2, v6

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

    :goto_a
    iget-object v3, p0, Lmh;->a:Landroid/text/Layout;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_b
    goto/16 :goto_2e

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    :goto_e
    goto/16 :goto_2e

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    iget v2, p0, Lmh;->o:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lmh;->getPaddingBottom()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_15
    sub-int/2addr v2, v3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lmh;->getPaddingRight()I

    move-result v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lmh;->getHeight()I

    move-result v2

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1b
    const v1, 0x11

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_27

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lmh;->h:Landroid/text/TextPaint;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lmh;->a:Landroid/text/Layout;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1f
    sub-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

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
    invoke-virtual {p0}, Lmh;->getPaddingLeft()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-ne v4, v5, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Lmh;->getDrawableState()[I

    move-result-object v1

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

    :goto_27
    iget-object v0, p0, Lmh;->h:Landroid/text/TextPaint;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-ne v4, v5, :cond_2

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_38

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

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

    :goto_2a
    sub-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2b
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lmh;->a:Landroid/text/Layout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    :goto_2e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v4, p0, Lmh;->o:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v1, p0, Lmh;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Lmh;->getPaddingTop()I

    move-result v1

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

    :goto_32
    add-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v1, p0, Lmh;->a:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_34
    int-to-float v0, v0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_36
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-ne v4, v5, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/16 v5, 0x30

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Lmh;->getWidth()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3a
    invoke-virtual {p1, v6, v6, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v0, :cond_4

    nop

    goto/32 :goto_36

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3d
    and-int/lit8 v4, v4, 0x70

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3e
    const v0, 0x10

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 v5, 0x50

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Lmh;->getPaddingTop()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 9

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    iget v6, p0, Lmh;->g:F

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq v1, v6, :cond_0

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq v0, v4, :cond_1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x13

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_5
    and-int/2addr p1, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6
    const/4 v7, 0x2

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

    :goto_7
    invoke-virtual {p0, v4, v5}, Lmh;->setMeasuredDimension(II)V

    goto/32 :goto_3e

    nop

    nop

    :goto_8
    const/4 v7, 0x1

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_9
    if-ne p1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_2e

    nop

    :goto_b
    goto/32 :goto_2d

    nop

    nop

    :goto_c
    iget p1, p0, Lmh;->k:I

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_f
    const v5, 0x7fffffff

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_12
    iget-object v4, p0, Lmh;->c:Ljava/lang/CharSequence;

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

    :goto_13
    move v5, p2

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_6c

    nop

    nop

    :goto_16
    const v0, 0x10

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v6, p0, Lmh;->h:Landroid/text/TextPaint;

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

    nop

    :goto_18
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_19
    if-ne p1, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_3
    goto/32 :goto_36

    nop

    nop

    :goto_1a
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, v4, v5, p1}, Lmh;->7ecc92917e9c4556cc19f457ddc41af8m(IILandroid/text/Layout$Alignment;)Landroid/text/Layout;

    move-result-object p1

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

    nop

    :goto_1d
    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    goto/32 :goto_12

    nop

    nop

    :goto_1e
    invoke-static {v4, v6}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_55

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_23
    double-to-int v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eq v0, v3, :cond_4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 p1, 0x0

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

    :goto_29
    if-ne p1, v7, :cond_5

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

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_2b
    if-eq v4, v2, :cond_6

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_2c
    if-ne p1, v7, :cond_7

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move v5, v2

    nop

    :goto_2e
    goto/32 :goto_2b

    nop

    nop

    :goto_2f
    goto/16 :goto_55

    nop

    :goto_30
    goto/32 :goto_4a

    nop

    nop

    :goto_31
    iget-object v6, p0, Lmh;->h:Landroid/text/TextPaint;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_55

    nop

    nop

    :goto_33
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v0, 0x4

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-ne p1, v0, :cond_8

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_37
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_38
    const/high16 v6, -0x80000000

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0, p1, p1}, Lmh;->setMeasuredDimension(II)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move v4, v2

    nop

    :goto_3b
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3d
    const v0, 0x800005

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3e
    return-void

    nop

    :goto_3f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_3f

    nop

    :goto_41
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-ne v2, v5, :cond_9

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

    :cond_9
    :goto_43
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iput-object p1, p0, Lmh;->a:Landroid/text/Layout;

    nop

    :goto_45
    goto/32 :goto_64

    nop

    nop

    :goto_46
    iget-object v4, p0, Lmh;->h:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_47
    const v0, 0x800003

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-ne p1, v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_a
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_49
    iput-object p1, p0, Lmh;->a:Landroid/text/Layout;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_4a
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

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

    nop

    :goto_4b
    iget v7, p0, Lmh;->m:F

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_4c
    if-eqz p1, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

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

    nop

    :goto_4e
    invoke-direct {p0, v4, v5, p1}, Lmh;->7ecc92917e9c4556cc19f457ddc41af8m(IILandroid/text/Layout$Alignment;)Landroid/text/Layout;

    move-result-object p1

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

    :goto_4f
    iget-object v2, p0, Lmh;->a:Landroid/text/Layout;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_50
    if-ne p1, v0, :cond_c

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p0}, Lmh;->getTextAlignment()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_52
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_53
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_54
    goto/16 :goto_22

    nop

    nop

    :goto_55
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-ne p1, v7, :cond_d

    nop

    nop

    goto/32 :goto_73

    nop

    :cond_d
    goto/32 :goto_6

    nop

    nop

    :goto_57
    const/high16 v3, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_58
    add-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_59
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_5a
    if-eq v5, v2, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    :goto_5c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_5d
    move v5, p2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5e
    iget-object v0, p0, Lmh;->a:Landroid/text/Layout;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_5f
    if-eqz v0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_1

    nop

    nop

    :goto_62
    float-to-double v6, v4

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_64
    iget-object p1, p0, Lmh;->a:Landroid/text/Layout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_45

    nop

    nop

    :goto_66
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_67
    move v4, p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-lez v0, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_10
    goto/32 :goto_40

    nop

    :goto_69
    if-ne p1, v0, :cond_11

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

    :cond_11
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const v8, 0x800007

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_6b
    if-eq v1, v6, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    :cond_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-ne v1, v3, :cond_13

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_4d

    nop

    nop

    :goto_6d
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

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

    :goto_6e
    if-eq v1, v3, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_14
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-eq v0, v6, :cond_15

    nop

    goto/32 :goto_20

    nop

    :cond_15
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_55

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmh;->invalidate()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lmh;->requestLayout()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lmh;->a:Landroid/text/Layout;

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop
.end method
