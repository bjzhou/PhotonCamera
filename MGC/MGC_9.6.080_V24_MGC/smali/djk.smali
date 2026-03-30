.class public final Ldjk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field public final a:F

.field public final b:Z

.field public final c:F

.field public final d:Z

.field public e:I

.field public f:I

.field private final g:I

.field private final h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(FIZZFZ)V
    .locals 0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-gez p0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p3, p0, Ldjk;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    const-string p1, "topRatio should be in [0..1] range or -1"

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Ldjk;->k:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput p1, p0, Ldjk;->a:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    const/high16 p0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_c
    iput p1, p0, Ldjk;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    iput-boolean p6, p0, Ldjk;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    iput p1, p0, Ldjk;->i:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    iput p1, p0, Ldjk;->l:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    iput p2, p0, Ldjk;->g:I

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
    const/high16 p0, -0x40800000    # -1.0f

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    cmpg-float p0, p5, p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_13
    cmpg-float p0, p5, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    iput-boolean p4, p0, Ldjk;->b:Z

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_17
    const/high16 p1, -0x80000000

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-gtz p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_2
    :goto_1a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    cmpg-float p0, p5, p0

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

    :goto_1c
    iput p5, p0, Ldjk;->c:F

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


# virtual methods
.method public final chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 2

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p6}, Ldjl;->a(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

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

    nop

    :goto_1
    goto/16 :goto_7f

    nop

    nop

    :goto_2
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_3
    if-lez p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    :goto_4
    if-eqz p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget p0, p0, Ldjk;->k:I

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_7
    cmpg-float v0, p4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_8
    float-to-double p3, p3

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    iget p3, p0, Ldjk;->i:I

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move p1, p4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    move p2, p1

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

    :goto_d
    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_e
    int-to-float p3, p3

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_f
    if-eq p3, p5, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_11
    iput p3, p0, Ldjk;->f:I

    nop

    :goto_12
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    int-to-float p4, p4

    nop

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

    :goto_14
    sub-int/2addr p3, p4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    if-nez p2, :cond_4

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    :goto_18
    if-nez p3, :cond_5

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_5
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/high16 v0, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1c
    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1e
    if-eqz p3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    :cond_6
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-boolean p3, p0, Ldjk;->h:Z

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :cond_7
    goto/32 :goto_3e

    nop

    nop

    :goto_21
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_22
    iget p0, p0, Ldjk;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_23
    iget p5, p0, Ldjk;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x1b

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

    :goto_25
    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_36

    nop

    nop

    :goto_27
    iput p4, p0, Ldjk;->i:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_29
    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_2a
    iget p2, p0, Ldjk;->j:I

    nop

    nop

    :goto_2b
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p6}, Ldjl;->a(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_2d
    iget p5, p0, Ldjk;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_2e
    int-to-float p3, p3

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-boolean p3, p0, Ldjk;->h:Z

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-boolean p3, p0, Ldjk;->b:Z

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

    :goto_32
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez p1, :cond_8

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_34
    if-lez p1, :cond_9

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-boolean p3, p0, Ldjk;->b:Z

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    double-to-float p3, p3

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

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

    nop

    :goto_3a
    sub-int/2addr p4, p5

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3b
    mul-float/2addr p3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_3c
    iget p4, p0, Ldjk;->i:I

    nop

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

    :goto_3d
    iget p2, p0, Ldjk;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_3e
    if-lez p3, :cond_a

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3f
    iput p4, p0, Ldjk;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_40
    iput p0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_41
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_42
    float-to-double v0, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_43
    iput p5, p0, Ldjk;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 p4, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_45
    iput p4, p0, Ldjk;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_49
    add-int/2addr p4, p3

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4b
    invoke-static {p6}, Ldjl;->a(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_4c
    const/high16 v0, 0x3f800000    # 1.0f

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

    nop

    :goto_4d
    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_4e
    iput p3, p0, Ldjk;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4f
    const/4 p1, 0x1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-nez p2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_51
    iput p3, p0, Ldjk;->l:I

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

    :goto_52
    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_27

    nop

    nop

    :goto_54
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_56
    move p2, p4

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_54

    nop

    :goto_59
    float-to-int p3, p3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_5a
    float-to-double p3, p3

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_5b
    iput p4, p0, Ldjk;->f:I

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    float-to-int p5, p5

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_5d
    sub-int p3, p5, p3

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    return-void

    nop

    :goto_5f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_60
    iput p3, p0, Ldjk;->e:I

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

    :goto_61
    iput p3, p0, Ldjk;->l:I

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

    :goto_62
    iget p3, p0, Ldjk;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_63
    iput p4, p0, Ldjk;->k:I

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

    :goto_64
    goto/16 :goto_57

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_66
    if-eq p3, p5, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    :cond_d
    goto/32 :goto_7b

    nop

    nop

    :goto_67
    iput p3, p0, Ldjk;->k:I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_68
    goto :goto_5f

    nop

    nop

    :goto_69
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_6a
    iget p5, p0, Ldjk;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_6b
    sub-float/2addr v0, p4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6c
    mul-float/2addr p3, p4

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

    :goto_6d
    double-to-float p5, v0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6f
    iget p4, p0, Ldjk;->c:F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    sub-int/2addr p3, p4

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_71
    iget-boolean v0, p0, Ldjk;->d:Z

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_72
    div-float/2addr p4, v0

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_3

    nop

    nop

    :goto_74
    const/high16 p5, -0x80000000

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

    :goto_75
    goto/16 :goto_12

    nop

    nop

    :goto_76
    goto/32 :goto_6f

    nop

    nop

    :goto_77
    if-eqz v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :cond_e
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_78
    if-nez p3, :cond_f

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

    :cond_f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-nez p3, :cond_10

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    add-int v0, v0, v1

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

    nop

    :goto_7e
    iget p3, p0, Ldjk;->k:I

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop
.end method
