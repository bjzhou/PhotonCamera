.class public Landroidx/viewpager/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "PG"


# static fields
.field public static final a:[I

.field private static final p:Ljava/util/Comparator;

.field private static final q:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:I

.field private E:I

.field private final F:Z

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:I

.field private L:Landroid/view/VelocityTracker;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:I

.field private final S:Ljava/lang/Runnable;

.field private T:I

.field public b:I

.field public final c:Ljava/util/ArrayList;

.field public d:Lekz;

.field public e:I

.field public f:I

.field public g:Landroid/os/Parcelable;

.field public h:Ljava/lang/ClassLoader;

.field public i:Lelg;

.field public j:Z

.field public k:Landroid/widget/EdgeEffect;

.field public l:Landroid/widget/EdgeEffect;

.field public m:Z

.field public n:Ljava/util/List;

.field public o:Ljava/util/List;

.field private final r:Lelc;

.field private final s:Landroid/graphics/Rect;

.field private t:Landroid/widget/Scroller;

.field private u:Z

.field private v:F

.field private w:F

.field private x:Z

.field private y:Z

.field private final z:I


# direct methods
.method private final 175bafa759041016accb75ef876de5d9m(FF)Z
    .locals 11

    goto/32 :goto_72

    nop

    nop

    :goto_0
    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->w:F

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

    :goto_1
    sub-float/2addr v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    invoke-static {v2, v1, p1}, Ldxp;->b(Landroid/widget/EdgeEffect;FF)F

    move-result p1

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

    :goto_8
    mul-float/2addr v6, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->l:Landroid/widget/EdgeEffect;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->l:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move v2, p1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_d
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_f
    div-float p1, p2, p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    neg-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_12
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/EdgeEffect;

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
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_15
    mul-float/2addr v5, v0

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

    :goto_16
    mul-float/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v9, v7, Lelc;->b:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v5, 0x38d1b717    # 1.0E-4f

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_1c
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_1d
    if-ne v9, v10, :cond_1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_65

    nop

    nop

    :goto_1e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_1f
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/EdgeEffect;

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

    :goto_20
    if-nez v2, :cond_2

    nop

    goto/32 :goto_28

    nop

    :cond_2
    goto/32 :goto_71

    nop

    nop

    :goto_21
    invoke-static {v2}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result v2

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

    :goto_22
    if-nez v7, :cond_3

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    div-float/2addr p2, v3

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, p2, p1}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    goto/32 :goto_40

    nop

    nop

    :goto_25
    if-nez v9, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    :cond_4
    goto/32 :goto_38

    nop

    nop

    :goto_26
    const/4 v3, 0x0

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_88

    nop

    nop

    :goto_28
    goto/32 :goto_87

    nop

    nop

    :goto_29
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2a
    const v1, 0x12

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_2b
    mul-float/2addr v6, v0

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_2c
    add-float/2addr p1, v3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2d
    float-to-int p2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_45

    nop

    :goto_2f
    if-ltz v8, :cond_6

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

    :cond_6
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_c

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->430f03c2ea70bd28108d593eca0c7c30m()I

    move-result v0

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-int/lit8 v10, v10, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_34
    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

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

    nop

    :goto_35
    cmpl-float v4, v3, v6

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move v3, v6

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_37
    neg-float p1, p1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v5, v7, Lelc;->e:F

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v8, Lelc;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result p1

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3c
    if-nez v1, :cond_7

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_59

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v2}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result v2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_40
    invoke-direct {p0, p2}, Landroidx/viewpager/widget/ViewPager;->92ebcae27b5395a18af07a7e07265cf7m(I)Z

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_41
    int-to-float v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_42
    cmpl-float v2, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_43
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_4c

    nop

    nop

    :goto_46
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    return v2

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_4d
    invoke-static {v1, p1, v4}, Ldxp;->b(Landroid/widget/EdgeEffect;FF)F

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4e
    move v2, p1

    nop

    nop

    :goto_4f
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-gtz v4, :cond_8

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_51
    invoke-static {p1, v3, p2}, Ldxp;->b(Landroid/widget/EdgeEffect;FF)F

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_52
    add-int/lit8 v9, v9, -0x1

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    move-result v3

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

    :goto_54
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    cmpg-float v8, v3, v5

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_56
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_46

    nop

    nop

    :goto_58
    move v2, p1

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_d

    nop

    nop

    :goto_5a
    div-float/2addr v3, v0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_5b
    iget v9, v8, Lelc;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_5c
    sub-float/2addr v3, v6

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5d
    div-float/2addr p1, v0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_43

    nop

    nop

    :goto_62
    goto/16 :goto_75

    nop

    nop

    :goto_63
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_65
    iget v6, v8, Lelc;->e:F

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_66
    move v3, v5

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

    :goto_67
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_68
    if-ltz v3, :cond_9

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :cond_9
    goto/32 :goto_7b

    nop

    nop

    :goto_69
    goto/16 :goto_78

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_6b
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_6c
    div-float/2addr p2, v1

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_6d
    sub-float/2addr v3, v0

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

    :goto_6e
    div-float v1, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6f
    cmpl-float v2, v2, v3

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_70
    move v7, v1

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->l:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_72
    const v0, 0x9

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-nez p1, :cond_a

    nop

    goto/32 :goto_63

    nop

    :cond_a
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    move p1, v1

    nop

    nop

    :goto_75
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_76
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_77
    move v7, v2

    nop

    nop

    :goto_78
    goto/32 :goto_5b

    nop

    nop

    :goto_79
    mul-float/2addr v5, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7a
    sub-float/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    return p1

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v10}, Lekz;->a()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_7e
    sub-float/2addr v4, p2

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    sub-float p1, v5, v3

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

    :goto_80
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_81
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_82
    invoke-static {v2, v1, p1}, Ldxp;->b(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_83
    int-to-float v1, v1

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_84
    sub-float p1, v4, p1

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_85
    cmpl-float p1, p1, v3

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

    :goto_86
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    move-result p1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_87
    move p1, v3

    nop

    nop

    :goto_88
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_89
    add-float/2addr v3, v0

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

    :goto_8a
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v10, p0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_8c
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->v:F

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_8d
    move p1, v2

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_8e
    cmpg-float v3, v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_8f
    check-cast v7, Lelc;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop
.end method

.method private final 430f03c2ea70bd28108d593eca0c7c30m()I
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    sub-int/2addr v0, p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    sub-int/2addr v0, v1

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result p0

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

    :goto_d
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getMeasuredWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop
.end method

.method private final 5b7bb05b5fd6d37dbb26e03fa57e326fm()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method private final 6a76c551e4658c5f4308c862164e4dd9m(Landroid/view/MotionEvent;)V
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq v1, v2, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

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

    :goto_6
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->K:I

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

    :goto_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_8
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1d

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

    :goto_a
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :goto_d
    goto/32 :goto_3

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_f
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

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

    :goto_11
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p0, :cond_2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_1a

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    :goto_17
    goto/32 :goto_4

    nop

    :goto_18
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->G:F

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
.end method

.method private final 7521e341d48b08f214d1dac0738f16d0m()Z
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/EdgeEffect;

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

    :goto_2
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->l:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_1f

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

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    const v1, 0x16

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

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_12

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->A:Z

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_10
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->B:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_11
    return v0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_14
    goto/32 :goto_9

    nop

    :goto_15
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    goto/32 :goto_5

    nop

    nop

    :goto_19
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    nop

    :goto_1a
    goto/32 :goto_0

    nop

    nop

    :goto_1b
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz p0, :cond_2

    nop

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

    nop

    :goto_1e
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/32 :goto_1

    nop

    nop

    :goto_20
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_22
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->l:Landroid/widget/EdgeEffect;

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method private final 7dd154808b1c676d3d63f3a63e9edabfm(Z)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->y:Z

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->y:Z

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
    if-ne v0, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method

.method private final 86d5c0c77e4f72baec1b0d5a6810921fm(I)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->n:Ljava/util/List;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_4
    const v1, 0x16

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    check-cast v2, Lelf;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    if-nez v2, :cond_1

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

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    goto :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lt v1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    :goto_f
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->n:Ljava/util/List;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v2, p1}, Lelf;->b(I)V

    :goto_18
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 92ebcae27b5395a18af07a7e07265cf7m(I)Z
    .locals 7

    goto/32 :goto_32

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    div-float/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    div-float/2addr p1, v4

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

    :goto_6
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_a
    sub-float/2addr p1, v6

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_b
    return v3

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xb

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v6, v0, Lelc;->e:F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_14
    return v3

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean p0, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

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

    :goto_17
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->m:Z

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

    :goto_19
    rem-int v0, v0, v1

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

    :goto_1a
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    return p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v5, v0, Lelc;->b:I

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

    nop

    :goto_1e
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_4

    nop

    :goto_21
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->c43d12f4f4da28dd6c943a4effe477b7m()Lelc;

    move-result-object v0

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

    nop

    :goto_23
    div-float/2addr v2, v4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, v3, v2}, Landroidx/viewpager/widget/ViewPager;->r(IF)V

    goto/32 :goto_0

    nop

    nop

    :goto_25
    add-float/2addr v0, v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_28
    throw p0

    nop

    :goto_29
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget v0, v0, Lelc;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, v5, p1}, Landroidx/viewpager/widget/ViewPager;->r(IF)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v1, "onPageScrolled did not call superclass implementation"

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

    :goto_30
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->430f03c2ea70bd28108d593eca0c7c30m()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_31
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_32
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1d

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    :goto_6
    sput-object v0, Landroidx/viewpager/widget/ViewPager;->p:Ljava/util/Comparator;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    const v0, 0x10100b3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1}, Ldxw;-><init>(I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1}, Ldqy;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Landroidx/viewpager/widget/ViewPager;->a:[I

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

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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

    :goto_d
    const/4 v1, 0x2

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    new-instance v0, Ldqy;

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

    :goto_f
    const/4 v1, 0x3

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    sput-object v0, Landroidx/viewpager/widget/ViewPager;->q:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ldxw;

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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->F:Z

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->f:I

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

    :goto_4
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->S:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, v1}, Lkd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_9
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    new-instance v0, Lelc;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_b
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->h:Ljava/lang/ClassLoader;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->w:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, -0x1

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
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_11
    const v1, -0x800001

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    const v0, 0xe

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/os/Parcelable;

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

    :goto_16
    new-instance v0, Lkd;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->p(Landroid/content/Context;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->v:F

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

    :goto_1a
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->z:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1b
    new-instance v0, Landroid/graphics/Rect;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1c
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->T:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x1

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

    :goto_1e
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->r:Lelc;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_23
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->m:Z

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->s:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_25
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_26
    const v1, 0x3

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

    :goto_27
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_28
    invoke-direct {v0}, Lelc;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->S:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    const v0, -0x800001

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->z:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->p(Landroid/content/Context;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/os/Parcelable;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p2, Lkd;

    nop

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

    :goto_9
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p2, Lelc;

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

    :goto_b
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->v:F

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

    :goto_c
    new-instance p2, Ljava/util/ArrayList;

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

    :goto_d
    const/4 p2, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->F:Z

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    invoke-direct {p2}, Lelc;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->h:Ljava/lang/ClassLoader;

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

    :goto_14
    const/4 v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->w:F

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

    :goto_16
    const/4 p2, -0x1

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

    :goto_17
    invoke-direct {p2, p0, v0}, Lkd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    :goto_18
    const/16 v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->T:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->s:Landroid/graphics/Rect;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->r:Lelc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    new-instance p2, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method private final a2d5024664df85075db576b91d9663e9m(Z)V
    .locals 7

    goto/32 :goto_12

    nop

    nop

    :goto_0
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1f

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_5
    if-ne v5, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v4, Lelc;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    :goto_a
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->j:Z

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Ldwd;->a:[I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->S:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

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

    :goto_11
    if-nez v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    nop

    :goto_12
    const v0, 0x10

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

    :goto_13
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v1, v3

    nop

    nop

    :goto_15
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v1

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

    :goto_1a
    goto :goto_15

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1e
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->T:I

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x1d

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_21
    move v0, v2

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
    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_34

    nop

    :goto_25
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->S:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_27
    if-nez v0, :cond_4

    nop

    goto/32 :goto_2c

    nop

    :cond_4
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x2

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2a
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0, v5}, Landroidx/viewpager/widget/ViewPager;->92ebcae27b5395a18af07a7e07265cf7m(I)Z

    :goto_2c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v3, 0x0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2

    nop

    :goto_2f
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_30
    if-eq v0, v1, :cond_7

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

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

    :goto_32
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_33
    move v0, v3

    nop

    :goto_34
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    goto/32 :goto_19

    nop

    nop

    :goto_36
    invoke-virtual {p0, v5, v6}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_37
    if-ne v4, v6, :cond_8

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

    :cond_8
    :goto_38
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {p0, v3}, Landroidx/viewpager/widget/ViewPager;->7dd154808b1c676d3d63f3a63e9edabfm(Z)V

    goto/32 :goto_10

    nop

    nop

    :goto_3a
    iput-boolean v3, v4, Lelc;->c:Z

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

    :goto_3b
    if-eq v1, v5, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-boolean v5, v4, Lelc;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_3f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

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

    :goto_41
    if-lt v1, v4, :cond_a

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_a
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_42
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop
.end method

.method private final c43d12f4f4da28dd6c943a4effe477b7m()Lelc;
    .locals 14

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v8, v8, -0x1

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    return-object v6

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move v6, v13

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

    nop

    :goto_6
    add-float/2addr v10, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    div-float v0, v1, v0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v9, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_0
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_a
    return-object v7

    nop

    nop

    :goto_b
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput v1, v11, Lelc;->d:F

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

    :goto_d
    if-gtz v0, :cond_1

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

    :cond_1
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->430f03c2ea70bd28108d593eca0c7c30m()I

    move-result v0

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

    :goto_f
    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_10
    add-int/2addr v7, v4

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move v13, v7

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    const v1, 0x5

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v1, v6, Lelc;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v2

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_15
    move v6, v1

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x0

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

    :goto_18
    if-ne v12, v10, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_19
    move-object v7, v6

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

    :goto_1a
    check-cast v11, Lelc;

    nop

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

    :goto_1b
    div-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_1d
    goto/16 :goto_3c

    nop

    :goto_1e
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1f
    cmpg-float v7, v2, v10

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/2addr v10, v5

    nop

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

    :goto_21
    move v0, v1

    nop

    nop

    :goto_22
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_37

    nop

    nop

    :goto_26
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_52

    nop

    :goto_27
    iget-object v11, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

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

    :goto_28
    if-gtz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_16

    nop

    :goto_2a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto :goto_2a

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-gez v7, :cond_5

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_5
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput v10, v11, Lelc;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_30
    if-gez v9, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_32
    iget v7, v6, Lelc;->d:F

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_33
    iget v10, v6, Lelc;->b:I

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

    nop

    :goto_34
    move-object v6, v11

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_35
    add-float/2addr v10, v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-float/2addr v1, v6

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3b
    return-object v7

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-float/2addr v1, v0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move v10, v4

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_3f
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_40
    if-eqz v9, :cond_7

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_22

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v11, p0, Landroidx/viewpager/widget/ViewPager;->r:Lelc;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_44
    cmpl-float v9, v2, v1

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

    :goto_45
    iget v10, v6, Lelc;->d:F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_46
    if-lt v8, v11, :cond_8

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_8
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v11, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_48
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_49
    int-to-float v3, v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4a
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4b
    const/4 v5, 0x1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move v9, v5

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

    :goto_4d
    move v8, v3

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    int-to-float v2, v2

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

    :goto_4f
    move v9, v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget v12, v11, Lelc;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_51
    move-object v7, v6

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_54
    if-eq v8, v7, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2b

    nop

    nop

    :goto_55
    goto/32 :goto_53

    nop

    :goto_56
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_57
    iput v1, v11, Lelc;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop
.end method

.method private final d543f409229584e2e064495967092514m(IZIZ)V
    .locals 10

    goto/32 :goto_14

    nop

    nop

    :goto_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result p2

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_32

    nop

    nop

    :goto_4
    move v5, v0

    nop

    nop

    :goto_5
    goto/32 :goto_27

    nop

    nop

    :goto_6
    mul-float/2addr p3, p2

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_8
    int-to-float v2, v2

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

    :goto_9
    if-eqz p2, :cond_0

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_77

    nop

    nop

    :goto_a
    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_b
    if-eqz v6, :cond_1

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

    :cond_1
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_c
    float-to-double v8, v2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->430f03c2ea70bd28108d593eca0c7c30m()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_e
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->92ebcae27b5395a18af07a7e07265cf7m(I)Z

    goto/32 :goto_3c

    nop

    nop

    :goto_f
    move v0, v1

    nop

    :goto_10
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_55

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    mul-float/2addr v2, v0

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

    nop

    :goto_14
    const v0, 0x5

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

    :goto_15
    float-to-int v0, v2

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

    nop

    :goto_16
    add-float/2addr p2, v0

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

    nop

    :goto_17
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->a2d5024664df85075db576b91d9663e9m(Z)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_18
    div-float/2addr p2, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_19
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->430f03c2ea70bd28108d593eca0c7c30m()I

    move-result v2

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

    :goto_1a
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->postInvalidateOnAnimation()V

    :goto_1b
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    div-int/lit8 v0, p2, 0x2

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_20
    int-to-float p2, p2

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_21
    if-nez p2, :cond_2

    nop

    goto/32 :goto_6d

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_22
    sub-int/2addr v0, v3

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v4

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

    :goto_24
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_25
    int-to-float p2, v0

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_26
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 p2, 0x1

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    neg-int v6, v4

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

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

    :goto_2a
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->f()V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2d
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->w:F

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

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

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

    :goto_2f
    if-gtz p3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    mul-float/2addr v2, v8

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

    nop

    nop

    :goto_31
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_32
    move v3, p2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v0, 0x0

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

    nop

    :goto_34
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_35
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

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

    :goto_36
    iget v0, v0, Lelc;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_37
    add-float/2addr p3, v7

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

    :goto_38
    add-float/2addr v2, v8

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_39
    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->k(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3b
    const v8, 0x3ef1463b

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3c
    return-void

    nop

    nop

    :goto_3d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

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

    :goto_3f
    move v5, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_40
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_41
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->v:F

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_42
    double-to-float v2, v8

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez p2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    :cond_5
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->k(I)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_45
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->7dd154808b1c676d3d63f3a63e9edabfm(Z)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-boolean p2, p0, Landroidx/viewpager/widget/ViewPager;->u:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_47
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2a

    nop

    :goto_48
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_49
    if-nez p4, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    :cond_7
    goto/32 :goto_6e

    nop

    nop

    :goto_4a
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

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

    :goto_4c
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_4d
    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4e
    div-float/2addr p3, p2

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

    :goto_4f
    if-eqz p2, :cond_8

    nop

    nop

    goto/32 :goto_6d

    nop

    :cond_8
    goto/32 :goto_46

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

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->86d5c0c77e4f72baec1b0d5a6810921fm(I)V

    :goto_52
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-nez p2, :cond_9

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

    :cond_9
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_54
    float-to-int p2, p3

    nop

    :goto_55
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const/16 p3, 0x258

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_57
    mul-int/lit8 p2, p2, 0x4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    add-float/2addr p2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

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

    :goto_5a
    const/high16 v8, -0x41000000    # -0.5f

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

    :goto_5b
    invoke-virtual {p2}, Landroid/widget/Scroller;->getStartX()I

    move-result p2

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_10

    nop

    :goto_5e
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p2}, Landroid/widget/Scroller;->getCurrX()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->c(I)Lelc;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/high16 p2, 0x42c80000    # 100.0f

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_62
    div-float/2addr v2, p2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto :goto_5c

    nop

    :goto_64
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_65
    int-to-float p3, p3

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

    nop

    :goto_66
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->a2d5024664df85075db576b91d9663e9m(Z)V

    goto/32 :goto_2c

    nop

    nop

    :goto_68
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_69
    if-nez p4, :cond_a

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_6a
    mul-float/2addr p2, p3

    nop

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

    :goto_6b
    if-nez v0, :cond_b

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6c
    goto/16 :goto_3

    nop

    :goto_6d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6e
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->86d5c0c77e4f72baec1b0d5a6810921fm(I)V

    :goto_6f
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_70
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_71
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->u:Z

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_72
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result p2

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

    :goto_73
    int-to-float p3, p3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_74
    const/high16 p3, 0x447a0000    # 1000.0f

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_77
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->7dd154808b1c676d3d63f3a63e9edabfm(Z)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_78
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_1c

    nop

    nop

    :goto_7a
    mul-float/2addr v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v7

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_7c
    invoke-direct {p0, p2}, Landroidx/viewpager/widget/ViewPager;->7dd154808b1c676d3d63f3a63e9edabfm(Z)V

    goto/32 :goto_7e

    nop

    nop

    :goto_7d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_7e
    const/4 p2, 0x2

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

    :goto_7f
    return-void

    nop

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_69

    nop

    nop

    nop

    nop
.end method

.method private final e94656b6137dd01f26085f984afe853em(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_b

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

    goto/32 :goto_4

    nop

    nop

    :goto_2
    add-int/2addr v0, v1

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

    nop

    :goto_3
    if-ne p2, p0, :cond_0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x4

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

    :goto_7
    const v0, 0x1e

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p1, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_a
    if-eqz p2, :cond_1

    nop

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

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_b
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

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

    :goto_c
    instance-of v0, p2, Landroid/view/ViewGroup;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

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

    :goto_e
    iput v0, p1, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, p1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_11
    add-int/2addr v0, v1

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

    :goto_12
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :goto_14
    goto/32 :goto_a

    nop

    nop

    :goto_15
    iput v0, p1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    if-nez v0, :cond_2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    add-int/2addr v0, v1

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

    nop

    nop

    :goto_1a
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_c

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

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

    :goto_1e
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

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

    :goto_1f
    goto/32 :goto_30

    nop

    nop

    :goto_20
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v0, p1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_22
    iget v0, p1, Landroid/graphics/Rect;->left:I

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

    :goto_23
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_24
    if-eqz p1, :cond_3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto :goto_1b

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_28

    nop

    nop

    :goto_27
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-object p1

    nop

    :goto_29
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-object p1

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_2d
    iput v0, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2e
    iput v0, p1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_4

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

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    :goto_32
    check-cast p2, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_33
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final a(II)Lelc;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iget-object p1, v1, Lkye;->b:Lkyf;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    const v0, 0x18

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

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

    :goto_6
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

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

    nop

    nop

    :goto_7
    const v1, 0x1d

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

    :goto_8
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_9
    iput p1, v0, Lelc;->d:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    goto :goto_15

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    if-gez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_d
    iget-object p1, p1, Lkyf;->r:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, v1, Lkye;->b:Lkyf;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_f
    if-ge p2, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    check-cast v1, Lkye;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

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

    nop

    :goto_12
    return-object v0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_22

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

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

    :goto_17
    new-instance v0, Lelc;

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_18
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

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

    :goto_19
    iput-object p1, v0, Lelc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    iput p1, v0, Lelc;->b:I

    nop

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

    nop

    :goto_1d
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1e
    invoke-virtual {p0, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto :goto_27

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_22
    goto/32 :goto_12

    nop

    nop

    :goto_23
    check-cast v1, Lkye;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0}, Lelc;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_26
    iget-object p1, p1, Lkyf;->s:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    nop

    nop

    :goto_27
    goto/32 :goto_19

    nop

    nop
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 6

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    if-eqz p2, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p2, :cond_1

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

    :cond_1
    :goto_3
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v1, p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    and-int/2addr p3, p2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_21

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2c

    nop

    nop

    :goto_a
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_4

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getDescendantFocusability()I

    move-result v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    :goto_13
    if-ne v1, v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isFocusable()Z

    move-result p2

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

    :goto_16
    const/high16 v2, 0x60000

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_17
    if-eq p3, p2, :cond_6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2a

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    :goto_19
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v3

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

    :goto_1a
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1b
    if-eq v0, p2, :cond_7

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_7
    :goto_1c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

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

    :goto_1e
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isFocusableInTouchMode()Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1f
    if-eqz v4, :cond_8

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

    :cond_8
    goto/32 :goto_30

    nop

    nop

    :goto_20
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_21
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_12

    nop

    nop

    :goto_23
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/high16 p2, 0x40000

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

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

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_27
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_28
    if-eq v4, v5, :cond_9

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_e

    nop

    nop

    :goto_29
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isInTouchMode()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2b
    iget v4, v4, Lelc;->b:I

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

    :goto_2c
    const/4 p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2d
    if-nez p1, :cond_a

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

    nop

    :cond_a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez p2, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_b
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2f
    if-lt v2, v3, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;)Lelc;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop
.end method

.method public final addTouchables(Ljava/util/ArrayList;)V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x2

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

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
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

    nop

    :goto_4
    if-lt v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_6
    iget v2, v2, Lelc;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;)Lelc;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->e:I

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

    :goto_13
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :goto_17
    goto/32 :goto_19

    nop

    nop

    :goto_18
    if-eqz v2, :cond_3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1a
    if-eq v2, v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v1, v0, Leld;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Leld;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_5
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_8
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_b
    goto/16 :goto_23

    nop

    :goto_c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v3, v0, Leld;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    :goto_11
    const/4 v3, 0x1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_12
    invoke-direct {p3}, Leld;-><init>()V

    :goto_13
    goto/32 :goto_28

    nop

    nop

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    :goto_16
    move v2, v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_1a
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1b
    or-int/2addr v1, v2

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

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1e
    const v0, 0x16

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p3, Leld;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    if-nez v2, :cond_3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    :goto_21
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    :goto_22
    const/4 v2, 0x0

    nop

    :goto_23
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

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

    nop

    :goto_25
    const-string p1, "Cannot add pager decor view during layout"

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_26
    iget-boolean v1, v0, Leld;->a:Z

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_27
    const-class v3, Lelb;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_28
    move-object v0, p3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_29
    if-nez v0, :cond_5

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

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_18

    nop

    :goto_2c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop
.end method

.method final b(Landroid/view/View;)Lelc;
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    return-object v1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    check-cast v1, Lelc;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    if-ne p1, v2, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    const v1, 0x17

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

    :goto_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, v1, Lelc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_c

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_17
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final c(I)Lelc;
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    iget v2, v1, Lelc;->b:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

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
    if-lt v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    :goto_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

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

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    if-eq v2, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

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

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    check-cast v1, Lelc;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x8

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

    :goto_18
    goto/16 :goto_8

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final canScrollHorizontally(I)Z
    .locals 4

    goto/32 :goto_18

    nop

    nop

    :goto_0
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    :goto_2
    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->w:F

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

    nop

    :goto_3
    float-to-int p0, p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    const/4 v1, 0x0

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

    :goto_5
    if-ltz p1, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_7
    return v1

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->430f03c2ea70bd28108d593eca0c7c30m()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    int-to-float p1, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_1
    goto/32 :goto_22

    nop

    :goto_c
    if-lt v2, p0, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return v1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    :goto_f
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_12
    if-gt v2, p0, :cond_3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

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
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    mul-float/2addr p1, p0

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

    :goto_17
    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->v:F

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    const v0, 0x15

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

    :goto_19
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-gtz p1, :cond_5

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1c
    int-to-float p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    mul-float/2addr p1, p0

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

    :goto_1f
    float-to-int p0, p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    const/4 v3, 0x1

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

    :goto_21
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    :goto_23
    goto/32 :goto_21

    nop

    nop
.end method

.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    instance-of v0, p1, Leld;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final computeScroll()V
    .locals 4

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    goto/32 :goto_14

    nop

    nop

    :goto_1
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

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
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v2, v3}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

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
    const v1, 0x18

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

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

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

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

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    :goto_11
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->u:Z

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
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

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
    goto/32 :goto_f

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

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

    :goto_18
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->92ebcae27b5395a18af07a7e07265cf7m(I)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_19
    if-eq v0, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v0, v3}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    :goto_1b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->a2d5024664df85075db576b91d9663e9m(Z)V

    goto/32 :goto_5

    nop

    nop

    :goto_1d
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x1f

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_10

    nop

    nop

    :goto_20
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_21
    if-ne v1, v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_3
    :goto_22
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_24
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->postInvalidateOnAnimation()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lelf;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->n:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->n:Ljava/util/List;

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_6
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->n:Ljava/util/List;

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

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    goto/32 :goto_20

    nop

    nop

    :goto_0
    const/16 p1, 0x42

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

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->l(I)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2
    if-ne v0, v3, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_2a

    nop

    :goto_8
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_22

    nop

    :goto_a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return v2

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->o()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_c

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

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_13
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

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

    :goto_14
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    :goto_15
    const v1, 0x19

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_2a

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

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

    :goto_1b
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->l(I)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1c
    const/16 v3, 0x3d

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    const/16 v3, 0x16

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

    :goto_1e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_31

    nop

    :goto_20
    const v0, 0xc

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

    :goto_21
    goto :goto_2a

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_25
    goto :goto_2a

    nop

    :goto_26
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_27
    goto :goto_2a

    nop

    :goto_28
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move p0, v2

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_32

    nop

    nop

    :goto_2e
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->l(I)Z

    move-result p0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez p1, :cond_7

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_33
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/16 p1, 0x11

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_35
    const/16 v3, 0x15

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->n()Z

    move-result p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_38
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-ne v0, v3, :cond_9

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

    :cond_9
    goto/32 :goto_1c

    nop

    nop

    :goto_3a
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3b
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->l(I)Z

    move-result p0

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

    :goto_3c
    if-ne v0, v3, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_a
    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v4, :cond_0

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

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

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

    :goto_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v4, v4, Lelc;->b:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return v1

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

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

    :goto_b
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

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

    :goto_c
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    :goto_10
    if-eq v0, v1, :cond_2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    :goto_11
    const v0, 0xc

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    return p0

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    :goto_14
    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v4, :cond_3

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

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    if-eq v4, v5, :cond_4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    :goto_1c
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1d
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    move v2, v1

    nop

    nop

    :goto_1f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;)Lelc;

    move-result-object v4

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

    nop

    :goto_21
    if-lt v2, v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_b

    nop

    nop

    :goto_22
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_23
    return p0

    nop

    nop

    :goto_24
    goto/32 :goto_26

    nop

    nop

    :goto_25
    const/16 v1, 0x1000

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

    :goto_26
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1
    if-gt v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_3
    mul-float/2addr v4, v5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_5
    neg-int v3, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float v4, v4

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_8
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_9
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_a
    neg-int v4, v4

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

    :goto_b
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->l:Landroid/widget/EdgeEffect;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/EdgeEffect;

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

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/EdgeEffect;

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

    :goto_11
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getOverScrollMode()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_14
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_15
    neg-float v5, v5

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_16
    sub-int/2addr v3, v4

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

    :goto_17
    goto :goto_f

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->w:F

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

    :goto_1b
    goto/16 :goto_2c

    nop

    :goto_1c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1d
    mul-float/2addr v5, v6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_3b

    nop

    nop

    :goto_21
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_22
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_24
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    move-result v3

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->postInvalidateOnAnimation()V

    :goto_27
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_29
    or-int/2addr v1, v2

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

    nop

    nop

    :goto_2a
    invoke-virtual {v3, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v1, 0x0

    nop

    nop

    :goto_2c
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

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

    :goto_2e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->l:Landroid/widget/EdgeEffect;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_4e

    nop

    :goto_31
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/high16 v6, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_33
    const/high16 v3, 0x43870000    # 270.0f

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v4

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    :goto_37
    add-int/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v1, :cond_4

    nop

    goto/32 :goto_27

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    int-to-float v5, v2

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

    :goto_3a
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3b
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_3c
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3d
    int-to-float v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_5
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_42
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_43
    add-float/2addr v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_44
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_48

    nop

    nop

    :goto_45
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->l:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->l:Landroid/widget/EdgeEffect;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0}, Lekz;->a()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    goto/32 :goto_e

    nop

    nop

    :goto_4a
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_4b
    const/high16 v4, 0x42b40000    # 90.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    :goto_4e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_7

    nop

    nop

    :goto_50
    sub-int/2addr v3, v4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_13

    nop

    nop

    :goto_52
    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const v1, 0x5

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_57
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->v:F

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
.end method

.method public final e()V
    .locals 8

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v1, v1

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    iput v6, v5, Lelc;->b:I

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->b:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v6, 0x0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v7, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_0
    goto/32 :goto_50

    nop

    nop

    :goto_9
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->z:I

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

    :goto_a
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

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

    :goto_d
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_f
    goto/16 :goto_3c

    nop

    :goto_10
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v7, v5, Lelc;->b:I

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_14
    check-cast v6, Lkye;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_15
    check-cast v5, Leld;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_16
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_49

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_19
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1a
    sget-object v5, Landroidx/viewpager/widget/ViewPager;->p:Ljava/util/Comparator;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    move v2, v4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-boolean v6, v5, Leld;->a:Z

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

    :goto_1f
    invoke-virtual {v0}, Lekz;->a()I

    move-result v0

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

    :goto_20
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v0

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

    :goto_24
    iget-object v6, v6, Lkye;->b:Lkyf;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_25
    const/4 v3, 0x1

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_27
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

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

    :goto_28
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0, v1, v4, v3}, Landroidx/viewpager/widget/ViewPager;->i(IZZ)V

    goto/32 :goto_4b

    nop

    nop

    :goto_2a
    move v6, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2b
    move v6, v3

    nop

    :goto_2c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2e
    if-lt v2, v5, :cond_3

    nop

    goto/32 :goto_36

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_30
    iget-object v7, v5, Lelc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_31
    goto :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_33
    iget-object v6, v6, Lkyf;->r:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v5, Lelc;

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

    :goto_35
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_c

    nop

    nop

    :goto_37
    if-lt v2, v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

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

    :goto_39
    if-eqz v6, :cond_5

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3a
    if-lt v2, v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_27

    nop

    nop

    :goto_3b
    move v2, v4

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_37

    nop

    nop

    :goto_3d
    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3f
    if-lt v1, v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_41
    iput v6, v5, Leld;->c:F

    nop

    :goto_42
    goto/32 :goto_45

    nop

    nop

    :goto_43
    move v0, v3

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_46
    if-eq v6, v7, :cond_8

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

    :cond_8
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-ne v7, v6, :cond_9

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_48
    move v0, v4

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4a
    move v0, v3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    :goto_4c
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

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

    nop

    :goto_50
    move v1, v6

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_52
    add-int/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->g(I)V

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
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->e:I

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
.end method

.method final g(I)V
    .locals 17

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ltz v5, :cond_1

    nop

    goto/32 :goto_8

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

    :goto_4
    move v11, v6

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_5
    add-int/lit8 v5, v10, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_6
    iget v9, v8, Lelc;->b:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_164

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_9
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    :goto_a
    iget v13, v9, Lelc;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v10, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v9, v9, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v11, 0x0

    nop

    :goto_12
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1c6

    nop

    nop

    nop

    :goto_14
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_15
    goto/16 :goto_1d1

    nop

    nop

    :goto_16
    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v5, Lelc;

    nop

    nop

    :goto_18
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_95

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_1b
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v9, Lelc;

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_197

    nop

    nop

    nop

    :goto_1e
    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    :goto_1f
    add-float/2addr v11, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_20
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_21
    iget v5, v11, Lelc;->b:I

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eq v6, v7, :cond_2

    nop

    nop

    goto/32 :goto_84

    nop

    :cond_2
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1ef

    nop

    :goto_24
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_25
    iget v11, v10, Lelc;->b:I

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

    nop

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_29
    check-cast v10, Lelc;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_2a
    iget v3, v3, Lelc;->b:I

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lt v6, v9, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_2c
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    :goto_2e
    iput v1, v0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v10, Lelc;

    nop

    nop

    :goto_30
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sub-float/2addr v6, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    :goto_35
    goto/16 :goto_17a

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_134

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_be

    nop

    nop

    :goto_39
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    :goto_3a
    iget v8, v0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    :goto_3b
    add-float v9, v5, v4

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move v7, v5

    nop

    :goto_3d
    goto/32 :goto_1c9

    nop

    nop

    :goto_3e
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    :goto_40
    iget v10, v0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    :goto_41
    move v5, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v8, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    nop

    goto/32 :goto_1e9

    nop

    nop

    nop

    :goto_44
    iget-object v10, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    nop

    goto/32 :goto_1e4

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v6, 0x0

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_48
    sub-float/2addr v2, v11

    nop

    nop

    nop

    goto/32 :goto_1f6

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz v12, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_4b
    if-lt v5, v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v8, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    :goto_4d
    add-int/lit8 v7, v6, -0x1

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_4e
    iget v11, v10, Lelc;->b:I

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v9, v0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_50
    if-gez v10, :cond_7

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iput v6, v9, Lelc;->e:F

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_52
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_53
    add-int/lit8 v5, v5, 0x1

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

    :goto_54
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_1f2

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_57
    if-nez v3, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    :cond_8
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_58
    move-object v11, v5

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_59
    cmpl-float v12, v4, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget v12, v5, Lelc;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget v9, v2, Lelc;->e:F

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_1e7

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->c(I)Lelc;

    move-result-object v2

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_5f
    move-object v11, v9

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-lt v12, v5, :cond_9

    nop

    nop

    goto/32 :goto_a2

    nop

    :cond_9
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_63
    add-int/lit8 v7, v7, -0x1

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_64
    if-eqz v12, :cond_a

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->430f03c2ea70bd28108d593eca0c7c30m()I

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    :goto_66
    sub-float/2addr v2, v11

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_67
    add-float v12, v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_69
    iput v9, v0, Landroidx/viewpager/widget/ViewPager;->w:F

    nop

    nop

    :goto_6a
    goto/32 :goto_182

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v9, v10}, Lekz;->d(Ljava/lang/Object;)V

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    int-to-float v9, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    :goto_6d
    if-lt v10, v6, :cond_b

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    add-int/lit8 v5, v10, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    :goto_6f
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    :goto_70
    if-gt v10, v1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_2

    nop

    nop

    :goto_71
    const-string v4, " Pager id: "

    nop

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_175

    nop

    :goto_73
    goto/32 :goto_174

    nop

    nop

    :goto_74
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_75
    add-int/lit8 v6, v6, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_76
    iget-object v9, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    :goto_77
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_78
    iget v13, v5, Lelc;->b:I

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/16 :goto_115

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_201

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v0, v3, v5}, Landroidx/viewpager/widget/ViewPager;->a(II)Lelc;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_7d
    check-cast v5, Lelc;

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_7e
    if-nez v1, :cond_d

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    goto/16 :goto_16a

    nop

    :goto_80
    goto/32 :goto_100

    nop

    nop

    :goto_81
    iget v2, v2, Lelc;->e:F

    nop

    :goto_82
    goto/32 :goto_126

    nop

    nop

    :goto_83
    goto/16 :goto_16f

    nop

    nop

    :goto_84
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getId()I

    move-result v2

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    nop
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_85
    iget v6, v2, Lelc;->b:I

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

    :goto_86
    if-gt v10, v12, :cond_e

    nop

    goto/32 :goto_b7

    nop

    nop

    :cond_e
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_87
    const/4 v5, 0x0

    nop

    goto/32 :goto_1f5

    nop

    nop

    nop

    :goto_88
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->j:Z

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_89
    if-eq v2, v3, :cond_f

    nop

    nop

    goto/32 :goto_144

    nop

    :cond_f
    goto/32 :goto_124

    nop

    nop

    :goto_8a
    add-int/lit8 v9, v9, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_8b
    goto/16 :goto_1c1

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget v5, v3, Lelc;->d:F

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_8e
    goto/16 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_91
    if-ge v6, v10, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    :cond_10
    goto/32 :goto_12c

    nop

    nop

    :goto_92
    add-int/lit8 v10, v10, 0x1

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

    :goto_93
    const/4 v5, 0x0

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_94
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    :goto_95
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iget v8, v8, Lelc;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    :goto_97
    iput v3, v8, Lelc;->e:F

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_98
    if-eqz v1, :cond_11

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    :goto_99
    iget v5, v4, Leld;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_9a
    sub-int/2addr v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    :goto_9c
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_9d
    if-gt v6, v9, :cond_12

    nop

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    :cond_12
    goto/32 :goto_167

    nop

    nop

    :goto_9e
    if-eq v9, v1, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    if-lt v12, v5, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :cond_14
    goto/32 :goto_1cf

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    goto/16 :goto_1d1

    nop

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_1d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object v10, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_a4
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->hasFocus()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    iget v10, v8, Lelc;->b:I

    nop

    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget v5, v5, Lelc;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget v1, v3, Lelc;->b:I

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    if-gez v12, :cond_15

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_a9
    add-float v11, v5, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    :goto_aa
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    instance-of v1, v2, Landroid/view/View;

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    :goto_ad
    const v1, 0x10

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    if-lez v12, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    :cond_16
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_af
    if-gt v6, v11, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_17
    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_b0
    goto/16 :goto_3d

    nop

    :goto_b1
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    const v11, -0x800001

    nop

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1f4

    nop

    nop

    :goto_b5
    check-cast v1, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    add-float/2addr v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    if-gez v5, :cond_18

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    goto :goto_b3

    nop

    :goto_bc
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    iput v5, v4, Leld;->c:F

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_be
    iget v14, v8, Lelc;->d:F

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_bf
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iget v9, v8, Lelc;->b:I

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    :goto_c1
    add-float/2addr v4, v5

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iget v11, v10, Lelc;->d:F

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    :goto_c5
    add-float/2addr v9, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    :goto_c6
    add-int/lit8 v2, v2, 0x1

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

    :goto_c7
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_c8
    goto/16 :goto_1aa

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_1a9

    nop

    nop

    nop

    :goto_ca
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    :goto_cb
    iput v9, v10, Lelc;->e:F

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    :goto_cd
    iget v11, v10, Lelc;->b:I

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_ce
    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_cf
    sub-float v14, v13, v14

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_d0
    if-lt v6, v9, :cond_19

    nop

    goto/32 :goto_1de

    nop

    :cond_19
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_d1
    const v0, 0x1a

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_d2
    add-float/2addr v9, v13

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    :goto_d4
    check-cast v5, Lelc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_d5
    goto/16 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    cmpl-float v5, v5, v6

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    add-int/lit8 v10, v10, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    goto/16 :goto_c

    nop

    :goto_da
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual {v12, v5}, Lekz;->d(Ljava/lang/Object;)V

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_dc
    iget-object v10, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

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

    :goto_dd
    iput v11, v0, Landroidx/viewpager/widget/ViewPager;->v:F

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    :goto_de
    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    nop

    :goto_df
    const/4 v8, 0x0

    nop

    :goto_e0
    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_13d

    nop

    nop

    nop

    :goto_e2
    goto/16 :goto_b1

    nop

    nop

    nop

    :goto_e3
    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_e4
    div-float/2addr v15, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    :goto_e5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    :goto_e6
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    add-float v11, v5, v4

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_e8
    add-float/2addr v10, v5

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    :goto_e9
    add-float/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_ea
    goto/16 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    goto/32 :goto_f0

    nop

    nop

    :goto_ec
    if-eqz v9, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    goto/16 :goto_8

    nop

    :goto_ee
    goto/32 :goto_5a

    nop

    nop

    :goto_ef
    iget v9, v8, Lelc;->b:I

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_f0
    move-object v1, v2

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_f1
    iget-boolean v12, v5, Lelc;->c:Z

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    iget v11, v10, Lelc;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    iget v4, v8, Lelc;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    if-lt v2, v1, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_31

    nop

    nop

    :goto_f6
    if-eq v3, v5, :cond_1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_190

    nop

    nop

    nop

    nop

    :goto_f7
    iget-object v10, v11, Lelc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    :goto_f9
    goto/32 :goto_ae

    nop

    nop

    :goto_fa
    if-eq v9, v1, :cond_1d

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

    nop

    :cond_1d
    goto/32 :goto_191

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_fc
    throw v2

    nop

    nop

    nop

    :goto_fd
    goto/32 :goto_1fc

    nop

    nop

    nop

    :goto_fe
    invoke-virtual {v6}, Lekz;->a()I

    move-result v6

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_ff
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->e:I

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

    :goto_100
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;)Lelc;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    :goto_101
    goto/16 :goto_160

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_1cd

    nop

    nop

    :goto_102
    iget v9, v8, Lelc;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_103
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_104
    iget-object v5, v5, Lelc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    check-cast v5, Lelc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_106
    if-ne v2, v0, :cond_1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    :cond_1e
    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_107
    goto/16 :goto_fd

    nop

    :goto_108
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_10a
    iget v2, v2, Lelc;->b:I

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_10b
    div-float v9, v5, v4

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_10c
    if-gez v10, :cond_1f

    nop

    nop

    nop

    goto/32 :goto_1db

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_10e
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->z:I

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    :goto_10f
    if-lt v3, v4, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    :cond_20
    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    :goto_110
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1fa

    nop

    nop

    nop

    :goto_111
    add-float/2addr v3, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_112
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_139

    nop

    nop

    nop

    :goto_113
    iget v5, v5, Lelc;->d:F

    nop

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    :goto_114
    goto/16 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_115
    goto/32 :goto_12d

    nop

    nop

    nop

    :goto_116
    add-float/2addr v15, v5

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

    :goto_117
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_118
    if-nez v8, :cond_21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    :cond_21
    goto/32 :goto_1e3

    nop

    nop

    nop

    :goto_119
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_11a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    if-nez v2, :cond_22

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    iget v5, v11, Lelc;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    goto/16 :goto_154

    nop

    :goto_11e
    goto/32 :goto_153

    nop

    nop

    nop

    :goto_11f
    int-to-float v15, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    nop

    :goto_120
    iget v7, v0, Landroidx/viewpager/widget/ViewPager;->b:I

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

    :goto_121
    iget-object v11, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    :goto_122
    goto/16 :goto_3f

    nop

    :goto_123
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_124
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    nop

    nop

    :goto_125
    add-float/2addr v9, v10

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_126
    add-int/lit8 v6, v6, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    goto/16 :goto_18

    nop

    :goto_128
    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    :goto_129
    if-gez v16, :cond_23

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_12a
    check-cast v9, Lelc;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_12b
    if-eqz v1, :cond_24

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :cond_24
    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_12c
    if-gez v9, :cond_25

    nop

    nop

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_12d
    add-int/lit8 v3, v7, -0x1

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    iget v3, v8, Lelc;->e:F

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    goto/16 :goto_159

    nop

    nop

    nop

    nop

    nop

    :goto_130
    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_131
    iget v6, v8, Lelc;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_132
    check-cast v8, Lelc;

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    add-float/2addr v14, v15

    nop

    nop

    nop

    nop

    nop

    :goto_134
    goto/32 :goto_1d8

    nop

    nop

    nop

    :goto_135
    add-int/lit8 v11, v11, -0x1

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    :goto_136
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    :goto_137
    if-gez v3, :cond_26

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_149

    nop

    nop

    :goto_138
    iget-object v10, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    :goto_139
    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13a
    iget-object v9, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_13c
    move/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    :goto_13d
    const-string v1, " Problematic adapter: "

    nop

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    :goto_13e
    if-eqz v11, :cond_27

    nop

    goto/32 :goto_7a

    nop

    :cond_27
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_140
    if-lt v6, v11, :cond_28

    nop

    nop

    nop

    goto/32 :goto_1ff

    nop

    nop

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_a9

    nop

    nop

    :goto_141
    if-gt v6, v11, :cond_29

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

    :cond_29
    goto/32 :goto_1cb

    nop

    nop

    nop

    :goto_142
    check-cast v4, Leld;

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    :goto_143
    if-eqz v1, :cond_2a

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :cond_2a
    :goto_144
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_145
    iget-object v9, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_146
    if-ge v9, v10, :cond_2b

    nop

    goto/32 :goto_e3

    nop

    nop

    :cond_2b
    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_147
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v15

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_148
    if-lt v2, v11, :cond_2c

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_149
    cmpl-float v16, v15, v14

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    :goto_14a
    if-lt v2, v10, :cond_2d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_138

    nop

    nop

    nop

    :goto_14b
    if-gtz v4, :cond_2e

    nop

    nop

    goto/32 :goto_8f

    nop

    :cond_2e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    if-lt v11, v5, :cond_2f

    nop

    nop

    goto/32 :goto_1bb

    nop

    :cond_2f
    goto/32 :goto_1c2

    nop

    nop

    nop

    :goto_14d
    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    :goto_14e
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;)Lelc;

    move-result-object v3

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    div-float/2addr v9, v10

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_150
    add-int v0, v0, v1

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    :goto_151
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_1f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_152
    if-ne v9, v10, :cond_30

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_153
    const v9, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    :goto_154
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_155
    goto/16 :goto_1e5

    nop

    nop

    nop

    nop

    :goto_156
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_157
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    :goto_158
    const/4 v3, 0x0

    nop

    nop

    :goto_159
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    iput v6, v0, Landroidx/viewpager/widget/ViewPager;->v:F

    nop

    :goto_15b
    goto/32 :goto_d8

    nop

    nop

    :goto_15c
    add-int/lit8 v7, v7, 0x1

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

    :goto_15d
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/32 :goto_4f

    nop

    nop

    :goto_15e
    if-gez v10, :cond_31

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_110

    nop

    nop

    :goto_15f
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    nop

    :goto_160
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_161
    goto/16 :goto_d3

    nop

    :goto_162
    goto/32 :goto_1bd

    nop

    nop

    :goto_163
    move v11, v7

    nop

    nop

    nop

    nop

    :goto_164
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_165
    if-ne v1, v2, :cond_32

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :cond_32
    :goto_166
    goto/32 :goto_16e

    nop

    nop

    nop

    :goto_167
    iget-object v9, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    :goto_168
    sub-float/2addr v6, v13

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_169
    if-nez v1, :cond_33

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :cond_33
    :goto_16a
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    :goto_16c
    if-eqz v8, :cond_34

    nop

    nop

    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    :cond_34
    goto/32 :goto_195

    nop

    nop

    nop

    nop

    :goto_16d
    if-nez v1, :cond_35

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :cond_35
    goto/32 :goto_9b

    nop

    nop

    :goto_16e
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    :goto_16f
    goto/32 :goto_1dc

    nop

    nop

    :goto_170
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    nop

    goto/32 :goto_1f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_171
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;)Lelc;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_172
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto/32 :goto_1fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_173
    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    :goto_174
    const/4 v11, 0x0

    nop

    :goto_175
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_176
    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_177
    add-int/lit8 v12, v11, 0x1

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    :goto_178
    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_179
    goto/16 :goto_30

    nop

    :goto_17a
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_17b
    add-int/2addr v8, v1

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_17c
    if-nez v2, :cond_36

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1eb

    nop

    :cond_36
    goto/32 :goto_85

    nop

    nop

    nop

    :goto_17d
    if-eqz v5, :cond_37

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_37
    goto/32 :goto_99

    nop

    nop

    :goto_17e
    int-to-float v3, v12

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_17f
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    :goto_180
    iget v5, v11, Lelc;->b:I

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    nop

    :goto_181
    iget v2, v2, Lelc;->d:F

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_182
    if-gez v3, :cond_38

    nop

    goto/32 :goto_1c5

    nop

    nop

    :cond_38
    goto/32 :goto_145

    nop

    nop

    :goto_183
    iget-boolean v5, v4, Leld;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    :goto_184
    add-float/2addr v9, v2

    nop

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    :goto_185
    if-nez v5, :cond_39

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_39
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_186
    add-float/2addr v13, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    :goto_187
    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_188
    if-gtz v9, :cond_3a

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    :cond_3a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_189
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

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

    :goto_18b
    check-cast v5, Lelc;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    if-lt v7, v5, :cond_3b

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :cond_3b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18d
    check-cast v11, Lelc;

    nop

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    :goto_18e
    invoke-virtual {v1}, Lekz;->a()I

    move-result v1

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    :goto_18f
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_190
    iget-boolean v5, v11, Lelc;->c:Z

    nop

    nop

    nop

    goto/32 :goto_200

    nop

    nop

    :goto_191
    iget v9, v8, Lelc;->d:F

    nop

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    :goto_192
    if-eqz v5, :cond_3c

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    :cond_3c
    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    :goto_193
    if-eq v10, v12, :cond_3d

    nop

    goto/32 :goto_1c1

    nop

    nop

    :cond_3d
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_194
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->430f03c2ea70bd28108d593eca0c7c30m()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    :goto_195
    if-gtz v6, :cond_3e

    nop

    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    :cond_3e
    goto/32 :goto_198

    nop

    nop

    nop

    nop

    :goto_196
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    nop

    :goto_197
    iget v12, v9, Lelc;->b:I

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_198
    iget v8, v0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    goto/32 :goto_1d5

    nop

    nop

    nop

    nop

    nop

    :goto_199
    iput v2, v4, Leld;->f:I

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    :goto_19a
    add-float/2addr v9, v11

    nop

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19b
    iget v9, v8, Lelc;->d:F

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_19c
    add-float/2addr v3, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    iget v6, v8, Lelc;->d:F

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    :goto_19f
    add-float/2addr v8, v5

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    :goto_1a0
    iget v10, v10, Lelc;->d:F

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :goto_1a1
    cmpg-float v5, v4, v13

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

    :goto_1a2
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    add-float/2addr v3, v6

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    :goto_1a4
    const/high16 v13, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    :goto_1a5
    const-string v1, " Pager class: "

    nop

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    :goto_1a6
    if-eq v3, v5, :cond_3f

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :cond_3f
    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    nop

    :goto_1a9
    const/4 v2, 0x0

    nop

    nop

    :goto_1aa
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1ab
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    :goto_1ac
    check-cast v10, Lelc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    :goto_1ad
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    :goto_1ae
    int-to-float v10, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    :goto_1af
    const/high16 v11, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    if-lez v12, :cond_40

    nop

    goto/32 :goto_38

    nop

    :cond_40
    goto/32 :goto_1e0

    nop

    nop

    :goto_1b1
    goto/16 :goto_175

    nop

    nop

    nop

    nop

    :goto_1b2
    goto/32 :goto_1fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b3
    add-int/lit8 v10, v10, -0x1

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b4
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_1b5
    add-float/2addr v9, v6

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_1b6
    const/4 v9, 0x0

    nop

    nop

    nop

    :goto_1b7
    goto/32 :goto_1ed

    nop

    nop

    nop

    nop

    nop

    :goto_1b8
    iget v5, v5, Lelc;->d:F

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    if-eqz v1, :cond_41

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :cond_41
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ba
    goto :goto_1c1

    nop

    nop

    :goto_1bb
    goto/32 :goto_1a2

    nop

    nop

    nop

    :goto_1bc
    if-eq v10, v13, :cond_42

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_42
    goto/32 :goto_1b8

    nop

    nop

    nop

    :goto_1bd
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_1be
    iput v9, v0, Landroidx/viewpager/widget/ViewPager;->w:F

    nop

    :goto_1bf
    goto/32 :goto_97

    nop

    nop

    :goto_1c0
    move v11, v12

    nop

    nop

    nop

    nop

    nop

    :goto_1c1
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c2
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    :goto_1c3
    add-float/2addr v15, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    :goto_1c4
    goto/16 :goto_6a

    nop

    nop

    nop

    nop

    :goto_1c5
    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    :goto_1c6
    const-string v4, ", found: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_1c7
    add-float/2addr v9, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    :goto_1c8
    add-int/lit8 v10, v9, -0x1

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_1c9
    iget-object v8, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    :goto_1ca
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cb
    iget-object v11, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_1cc
    iget v10, v0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    goto/32 :goto_1f8

    nop

    nop

    nop

    :goto_1cd
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getId()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    :goto_1ce
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_1cf
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_1d0
    const/4 v5, 0x0

    nop

    nop

    :goto_1d1
    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    nop

    :goto_1d2
    if-lt v7, v2, :cond_43

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :cond_43
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1d3
    if-lt v6, v11, :cond_44

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    :cond_44
    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    :goto_1d4
    invoke-virtual {v0, v10, v11}, Landroidx/viewpager/widget/ViewPager;->a(II)Lelc;

    move-result-object v5

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_1d5
    invoke-virtual {v0, v8, v7}, Landroidx/viewpager/widget/ViewPager;->a(II)Lelc;

    move-result-object v8

    nop

    :goto_1d6
    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d7
    add-float/2addr v9, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    :goto_1d8
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1d9
    iput v3, v4, Leld;->e:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1da
    goto/16 :goto_12

    nop

    nop

    :goto_1db
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1dc
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

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

    :goto_1dd
    goto/16 :goto_202

    nop

    nop

    nop

    nop

    :goto_1de
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1df
    if-nez v3, :cond_45

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :cond_45
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_1e0
    const/4 v14, 0x0

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

    :goto_1e1
    if-ne v2, v1, :cond_46

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :cond_46
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_1e2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e3
    add-int/lit8 v10, v7, -0x1

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_1e4
    const/4 v2, 0x0

    nop

    :goto_1e5
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_1e6
    add-float/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_1e7
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    :goto_1e8
    if-lt v7, v8, :cond_47

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    :cond_47
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e9
    iget v6, v8, Lelc;->e:F

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ea
    goto/16 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_1eb
    goto/32 :goto_176

    nop

    nop

    :goto_1ec
    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

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

    :goto_1ed
    move v10, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_1ee
    iget v10, v8, Lelc;->b:I

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_1ef
    goto/32 :goto_1fd

    nop

    nop

    nop

    :goto_1f0
    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    :goto_1f1
    check-cast v10, Lelc;

    nop

    nop

    nop

    :goto_1f2
    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_1f3
    if-le v6, v10, :cond_48

    nop

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    nop

    :cond_48
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_1f4
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_1f5
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f6
    iput v2, v10, Lelc;->e:F

    nop

    nop

    goto/32 :goto_1ea

    nop

    nop

    nop

    :goto_1f7
    add-int/lit8 v10, v10, -0x1

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_1f8
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    :goto_1f9
    check-cast v5, Lelc;

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    :goto_1fa
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1fb
    if-nez v11, :cond_49

    nop

    goto/32 :goto_128

    nop

    nop

    :cond_49
    goto/32 :goto_180

    nop

    nop

    nop

    nop

    :goto_1fc
    return-void

    nop

    nop

    nop

    :goto_1fd
    goto/32 :goto_de

    nop

    nop

    :goto_1fe
    goto/16 :goto_56

    nop

    nop

    nop

    nop

    :goto_1ff
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_200
    if-eqz v5, :cond_4a

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    :cond_4a
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_201
    check-cast v8, Lelc;

    nop

    :goto_202
    goto/32 :goto_102

    nop

    nop
.end method

.method protected final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Leld;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    new-instance p0, Leld;

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    :goto_2
    new-instance v0, Leld;

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

    :goto_3
    invoke-direct {v0, p0, p1}, Leld;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method protected final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance p0, Leld;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Leld;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final getChildDrawingOrder(II)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(I)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    const v0, 0x8

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

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->m:Z

    nop

    goto/32 :goto_d

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

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->j:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->i(IZZ)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    xor-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    const v1, 0x8

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final i(IZZ)V
    .locals 1

    goto/32 :goto_1

    nop

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

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/viewpager/widget/ViewPager;->j(IZZI)V

    goto/32 :goto_0

    nop

    nop
.end method

.method final j(IZZI)V
    .locals 4

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sub-int/2addr v0, p3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_2c

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    goto/16 :goto_23

    nop

    :goto_8
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1, p2, p4, v1}, Landroidx/viewpager/widget/ViewPager;->d543f409229584e2e064495967092514m(IZIZ)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    if-lt p3, v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-ne p3, p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

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

    :goto_d
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->7dd154808b1c676d3d63f3a63e9edabfm(Z)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->g(I)V

    goto/32 :goto_9

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

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

    nop

    nop

    :goto_10
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    :goto_12
    add-int/lit8 p3, p3, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    if-le p1, v2, :cond_2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

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

    :goto_16
    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->z:I

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_19
    move p1, v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-boolean p3, p0, Landroidx/viewpager/widget/ViewPager;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p3, :cond_3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1c
    move v1, v3

    nop

    :goto_1d
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1e
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1f
    invoke-virtual {p3}, Lekz;->a()I

    move-result p3

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

    :goto_20
    if-eq p3, p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    goto/32 :goto_3c

    nop

    nop

    :goto_22
    move p3, v1

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_24
    if-ge p1, p3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_5
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Lekz;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v0, Lelc;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2a
    const v0, 0x9

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

    :goto_2b
    return-void

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_11

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

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

    :goto_31
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1

    nop

    :goto_32
    iput-boolean v3, v0, Lelc;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_33
    add-int v2, v0, p3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz p3, :cond_7

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_35
    if-lt p1, v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_8
    :goto_36
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Lekz;->a()I

    move-result p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_45

    nop

    nop

    :goto_3a
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3b
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    return-void

    nop

    :goto_3d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-lez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_18

    nop

    nop

    :goto_42
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v0, :cond_b

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_25

    nop

    nop

    :goto_44
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->7dd154808b1c676d3d63f3a63e9edabfm(Z)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_45
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->86d5c0c77e4f72baec1b0d5a6810921fm(I)V

    :goto_46
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_47
    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_48
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_49
    rem-int v0, v0, v1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_4b
    if-nez p3, :cond_c

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

    :cond_c
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-ltz p1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(I)V
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->n:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_5
    if-eq v0, p1, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    check-cast v2, Lelf;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v2, :cond_2

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v1, v1, 0x1

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

    :goto_9
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->T:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->T:I

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

    :goto_d
    invoke-interface {v2, p1}, Lelf;->a(I)V

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1d

    nop

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
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    if-lt v1, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    const v1, 0xb

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

    :goto_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->n:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_1

    nop

    nop

    :goto_18
    goto/32 :goto_1c

    nop

    nop

    :goto_19
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

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

    :goto_1a
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    :goto_1d
    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method public final l(I)Z
    .locals 5

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v3, v0, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->s:Landroid/graphics/Rect;

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

    nop

    :goto_2
    if-nez v3, :cond_0

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->s:Landroid/graphics/Rect;

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

    :goto_4
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    if-ne p1, v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

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

    :goto_b
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

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

    nop

    nop

    :goto_c
    goto/16 :goto_66

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ne v1, v0, :cond_3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_3
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_f
    if-eq v0, p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_4
    :goto_10
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_66

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_57

    nop

    nop

    :goto_13
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v2, "arrowScroll tried to find focus based on non-child current focused view "

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, v3, v0}, Landroidx/viewpager/widget/ViewPager;->e94656b6137dd01f26085f984afe853em(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

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

    :goto_18
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->playSoundEffect(I)V

    :goto_19
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    instance-of v3, v2, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_51

    nop

    :goto_1d
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_51

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_20
    const-string v2, "ViewPager"

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_22
    goto/16 :goto_51

    nop

    :goto_23
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v3, 0x42

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/16 v4, 0x11

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_51

    nop

    nop

    :goto_27
    goto/32 :goto_2c

    nop

    nop

    :goto_28
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_44

    nop

    nop

    :goto_29
    if-nez v3, :cond_6

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

    :cond_6
    goto/32 :goto_34

    nop

    nop

    :goto_2a
    if-eq p1, v0, :cond_7

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :goto_2b
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_8
    goto/32 :goto_3a

    nop

    :goto_2e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

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

    nop

    :goto_2f
    goto/16 :goto_51

    nop

    nop

    :goto_30
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_5b

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {p0, v3, v0}, Landroidx/viewpager/widget/ViewPager;->e94656b6137dd01f26085f984afe853em(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

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

    nop

    :goto_34
    const-string v3, " => "

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

    :goto_35
    goto/16 :goto_23

    nop

    :goto_36
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_39
    if-ne p1, v3, :cond_9

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3c
    if-eq v2, p0, :cond_a

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3d
    const v0, 0xb

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3e
    move-object v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_40
    iget v2, v2, Landroid/graphics/Rect;->left:I

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

    :goto_41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v2

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

    :goto_43
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_44
    if-ge v2, v3, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-direct {p0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->e94656b6137dd01f26085f984afe853em(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_46
    if-eq p1, v4, :cond_c

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

    :cond_c
    goto/32 :goto_1

    nop

    nop

    :goto_47
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_56

    nop

    nop

    :goto_49
    invoke-direct {p0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->e94656b6137dd01f26085f984afe853em(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->s:Landroid/graphics/Rect;

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

    :goto_4b
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v0, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->o()Z

    move-result v2

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
    return v2

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->n()Z

    move-result v2

    nop

    nop

    :goto_51
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_52
    const/4 v1, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_53
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_54
    if-le v2, v3, :cond_e

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_60

    nop

    nop

    :goto_55
    if-eq p1, v0, :cond_f

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_f
    goto/32 :goto_35

    nop

    nop

    :goto_56
    invoke-interface {v0}, Landroid/view/ViewParent;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_57
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_59
    iget v2, v2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5a
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-nez v1, :cond_11

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_11
    goto/32 :goto_e

    nop

    nop

    :goto_5f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->o()Z

    move-result v2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

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

    :goto_62
    iget v3, v3, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_63
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->n()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->s:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_65
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_38

    nop

    nop

    :goto_67
    if-eq p1, v3, :cond_12

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_69
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_6a
    iget v3, v3, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_4c

    nop

    nop
.end method

.method protected final m(Landroid/view/View;ZIII)Z
    .locals 12

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {v6 .. v11}, Landroidx/viewpager/widget/ViewPager;->m(Landroid/view/View;ZIII)Z

    move-result v6

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2
    if-ge v6, v8, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3
    move v9, p3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_35

    nop

    nop

    :goto_7
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move v1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    :goto_b
    const/4 v2, 0x1

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

    :goto_c
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_d
    instance-of v1, v0, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return v2

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_21

    nop

    nop

    :goto_10
    neg-int v1, v1

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

    :goto_11
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    nop

    :goto_12
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_13
    if-lt v6, v8, :cond_1

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

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_14
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    sub-int v10, v6, v9

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object v1, v0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1a
    if-eqz v6, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez p2, :cond_5

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6

    nop

    :goto_1e
    add-int v8, p5, v4

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

    nop

    :goto_1f
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_22
    if-lt v8, v9, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_7
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int v6, p4, v3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_24
    if-ge v8, v9, :cond_8

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_8
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

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

    :goto_26
    move-object v0, p1

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

    :goto_27
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

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

    :goto_2a
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-gez v5, :cond_9

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v5, v5, -0x1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v6, p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2f
    sub-int v11, v8, v6

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

    :goto_30
    add-int v0, v0, v1

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

    :goto_31
    check-cast v1, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_32
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_34
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method final n()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-gtz v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v0, v0, -0x1

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

    :goto_4
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->q(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop
.end method

.method final o()Z
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lekz;->a()I

    move-result v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    :goto_5
    return v1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    if-lt v1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    add-int/2addr v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->q(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onAttachedToWindow()V
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

    nop

    nop

    :goto_1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Z

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->S:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_1

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    goto/32 :goto_4

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

    nop
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1
    goto/16 :goto_b9

    nop

    :goto_2
    goto/32 :goto_2d

    nop

    nop

    :goto_3
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_4
    return v8

    nop

    :goto_5
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_6
    cmpl-float v0, v0, v2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->postInvalidateOnAnimation()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    cmpg-float v3, v0, v3

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v10, v12}, Landroidx/viewpager/widget/ViewPager;->175bafa759041016accb75ef876de5d9m(FF)Z

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eq v0, v9, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :cond_1
    goto/32 :goto_7f

    nop

    nop

    :goto_d
    goto/16 :goto_b9

    nop

    nop

    :goto_e
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v6, p0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_91

    nop

    nop

    :goto_12
    iput v10, v6, Landroidx/viewpager/widget/ViewPager;->G:F

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_7c

    nop

    :cond_3
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_15
    invoke-static {v0}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result v0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_16
    sub-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_17
    if-ne v0, v1, :cond_4

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    :goto_18
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

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

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_6

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_6
    goto/32 :goto_84

    nop

    nop

    nop

    :goto_1c
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_7
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1d
    if-ltz v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_61

    nop

    :goto_1f
    goto/32 :goto_72

    nop

    nop

    :goto_20
    float-to-int v3, v1

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

    :goto_21
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_24
    iput v12, v6, Landroidx/viewpager/widget/ViewPager;->H:F

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, v6, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_26
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->A:Z

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/EdgeEffect;

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->E:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2b
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->A:Z

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_5

    nop

    nop

    :goto_2f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_30
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_31
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_33
    invoke-direct/range {p0 .. p1}, Landroidx/viewpager/widget/ViewPager;->6a76c551e4658c5f4308c862164e4dd9m(Landroid/view/MotionEvent;)V

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    float-to-int v4, v10

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0, v9}, Landroidx/viewpager/widget/ViewPager;->k(I)V

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->H:F

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_37
    iput-boolean v8, v6, Landroidx/viewpager/widget/ViewPager;->j:Z

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v0}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sub-int/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_3a
    div-float/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3b
    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->E:I

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->l:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_3d
    cmpl-float v0, v0, v2

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_3e
    add-float/2addr v0, v1

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    cmpl-float v0, v14, v0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_40
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_41
    iput v12, v6, Landroidx/viewpager/widget/ViewPager;->H:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_42
    const v0, 0x1f

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

    nop

    nop

    :goto_43
    if-gtz v13, :cond_9

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :cond_9
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move-object/from16 v7, p1

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_47
    cmpl-float v1, v11, v14

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_48
    iget v4, v6, Landroidx/viewpager/widget/ViewPager;->D:I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4b
    cmpl-float v0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v0, v2, v3}, Ldxp;->b(Landroid/widget/EdgeEffect;FF)F

    :goto_4d
    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_4e
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_4f
    if-lez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_c9

    nop

    :goto_50
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_b9

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/4 v2, 0x0

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

    nop

    nop

    :goto_55
    if-nez v0, :cond_b

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_56
    iget-boolean v3, v6, Landroidx/viewpager/widget/ViewPager;->A:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_57
    if-gtz v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :cond_c
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_58
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/ViewPager;->7dd154808b1c676d3d63f3a63e9edabfm(Z)V

    goto/32 :goto_49

    nop

    nop

    :goto_59
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->B:Z

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_5b
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->A:Z

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

    :goto_5c
    cmpl-float v13, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_5d
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->I:F

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_5e
    invoke-virtual {p0, v9}, Landroidx/viewpager/widget/ViewPager;->k(I)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_5f
    if-eqz v3, :cond_d

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_5

    nop

    nop

    :goto_61
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_2

    nop

    :goto_63
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_64
    div-float/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_65
    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    :cond_e
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_67
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->5b7bb05b5fd6d37dbb26e03fa57e326fm()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->K:I

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_69
    sub-float v1, v10, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez v13, :cond_f

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

    :cond_f
    goto/32 :goto_85

    nop

    nop

    :goto_6c
    iput-object v0, v6, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->J:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_6f
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_70
    if-nez v3, :cond_10

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_1e

    nop

    nop

    :goto_71
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget v3, v6, Landroidx/viewpager/widget/ViewPager;->D:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/EdgeEffect;

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

    :goto_74
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->5b7bb05b5fd6d37dbb26e03fa57e326fm()V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v3

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_77
    iput-boolean v8, v6, Landroidx/viewpager/widget/ViewPager;->B:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_78
    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->K:I

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_79
    cmpg-float v0, v1, v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->A:Z

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_7b
    return v8

    nop

    :goto_7c
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-direct {p0, v8}, Landroidx/viewpager/widget/ViewPager;->a2d5024664df85075db576b91d9663e9m(Z)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_7e
    const/high16 v1, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    goto/16 :goto_a5

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_81
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->7521e341d48b08f214d1dac0738f16d0m()Z

    goto/32 :goto_87

    nop

    nop

    :goto_82
    invoke-virtual {p0, v9}, Landroidx/viewpager/widget/ViewPager;->k(I)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->E:I

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_84
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->l:Landroid/widget/EdgeEffect;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->G:F

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_86
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->I:F

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

    :goto_87
    return v8

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_89
    if-gt v0, v1, :cond_11

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_6a

    nop

    nop

    :goto_8a
    float-to-int v5, v12

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iput-boolean v8, v6, Landroidx/viewpager/widget/ViewPager;->A:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->G:F

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

    :goto_8d
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->T:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8e
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->A:Z

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-static {v0}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result v0

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

    :goto_90
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

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

    nop

    :goto_92
    invoke-static {v0}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result v0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_93
    goto/16 :goto_c3

    nop

    nop

    :goto_94
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_95
    mul-float/2addr v11, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_96
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_97
    cmpl-float v0, v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_98
    int-to-float v3, v3

    nop

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

    :goto_99
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    if-nez v0, :cond_12

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9b
    if-ne v0, v1, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->H:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_9d
    sub-float/2addr v3, v1

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

    :goto_9e
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->f()V

    goto/32 :goto_8e

    nop

    nop

    :goto_9f
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a0
    if-eqz v0, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    :cond_14
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    if-nez v0, :cond_15

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_62

    nop

    nop

    :goto_a2
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_a3
    if-nez v3, :cond_16

    nop

    goto/32 :goto_b7

    nop

    :cond_16
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_81

    nop

    nop

    :goto_a6
    if-gtz v1, :cond_17

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

    :cond_17
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v14

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->J:F

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_aa
    if-ltz v3, :cond_18

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    goto/16 :goto_b9

    nop

    nop

    :goto_ac
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_ad
    if-ne v0, v1, :cond_19

    nop

    nop

    goto/32 :goto_53

    nop

    :cond_19
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    const/4 v8, 0x0

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_af
    if-gtz v0, :cond_1a

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

    :cond_1a
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_b0
    invoke-virtual/range {v0 .. v5}, Landroidx/viewpager/widget/ViewPager;->m(Landroid/view/View;ZIII)Z

    move-result v0

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

    :goto_b1
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->u:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_b2
    iget-boolean v3, v6, Landroidx/viewpager/widget/ViewPager;->B:Z

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_b3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

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

    :goto_b4
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->l:Landroid/widget/EdgeEffect;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    cmpl-float v1, v11, v0

    nop

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

    :goto_b6
    return v9

    nop

    nop

    nop

    nop

    :goto_b7
    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_b8
    invoke-static {v0, v2, v1}, Ldxp;->b(Landroid/widget/EdgeEffect;FF)F

    :goto_b9
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->B:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_bb
    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->P:I

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_bc
    cmpl-float v0, v0, v2

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_be
    int-to-float v3, v3

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_bf
    iget-boolean v3, v6, Landroidx/viewpager/widget/ViewPager;->F:Z

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

    nop

    :goto_c0
    goto/16 :goto_b9

    nop

    nop

    nop

    :goto_c1
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_c2
    sub-float/2addr v0, v1

    nop

    :goto_c3
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_c4
    and-int/lit16 v0, v0, 0xff

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_c5
    if-lez v13, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1b
    :goto_c6
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_c7
    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->G:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_c8
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_88

    nop

    nop

    :goto_ca
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/32 :goto_7a

    nop

    nop

    :goto_cc
    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->I:F

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_cd
    if-gtz v1, :cond_1c

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_ce
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->H:F

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

    :goto_d0
    sub-float v0, v12, v0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->G:F

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_d2
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 17

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v13, :cond_0

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_0
    goto/32 :goto_96

    nop

    nop

    :goto_1
    sub-int/2addr v11, v2

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr v4, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3
    add-int/2addr v10, v3

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ne v8, v12, :cond_1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sub-int v11, p4, p2

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_6
    float-to-int v14, v14

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_29

    nop

    nop

    :goto_9
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

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

    :goto_a
    iput v9, v0, Landroidx/viewpager/widget/ViewPager;->R:I

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

    :goto_b
    sub-int v8, v10, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v8}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_e
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v14, 0x30

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

    :goto_11
    check-cast v8, Leld;

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

    :goto_12
    const/4 v15, 0x1

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    and-int/lit8 v14, v12, 0x7

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_4f

    nop

    nop

    :goto_15
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_17
    const/16 v14, 0x50

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1b
    move v10, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1c
    sub-int/2addr v10, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v7, 0x0

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

    :goto_20
    invoke-virtual {v6, v13, v3, v8, v14}, Landroid/view/View;->layout(IIII)V

    :goto_21
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_23
    goto/16 :goto_49

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_25
    sub-int/2addr v10, v12

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_26
    add-int/2addr v11, v2

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move v9, v8

    nop

    nop

    :goto_2b
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sub-int/2addr v11, v14

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2f
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_30
    move v11, v2

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_31
    add-int/2addr v13, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_32
    if-ne v12, v14, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_33
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_34
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    float-to-int v13, v13

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_36
    move v8, v7

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

    :goto_37
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_38
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_3a

    nop

    :goto_39
    iget-boolean v13, v8, Leld;->a:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v14, :cond_4

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

    :cond_4
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_3d
    move v3, v10

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_3e
    div-int/lit8 v11, v11, 0x2

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    add-int/2addr v14, v3

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_41
    if-ne v14, v12, :cond_5

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_65

    nop

    nop

    :goto_44
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_45
    sub-int v10, p5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_46
    goto :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_18

    nop

    nop

    :goto_48
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v13, v2, v3, v12, v14}, Landroid/view/View;->layout(IIII)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-boolean v14, v12, Leld;->a:Z

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_4d
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    move/from16 v3, v16

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move v2, v11

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_52
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_53
    sub-int/2addr v11, v14

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_54
    sub-int/2addr v11, v4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v15, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_56
    const/16 v12, 0x8

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v4

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_5a
    const/high16 v15, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-ne v12, v14, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez v13, :cond_7

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_97

    nop

    nop

    :goto_5d
    invoke-static {v8, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_5e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_5f
    if-nez v15, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_60
    if-ne v14, v15, :cond_9

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_9
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_61
    if-ne v12, v14, :cond_a

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget v12, v12, Leld;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_63
    add-int/2addr v14, v3

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

    :goto_64
    check-cast v12, Leld;

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

    :goto_65
    move/from16 v16, v11

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-lt v4, v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_67
    move v11, v2

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_68
    if-nez v1, :cond_c

    nop

    goto/32 :goto_6b

    nop

    :cond_c
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    sub-int/2addr v11, v4

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-direct {v0, v1, v7, v7, v7}, Landroidx/viewpager/widget/ViewPager;->d543f409229584e2e064495967092514m(IZIZ)V

    :goto_6b
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_6c
    add-int/2addr v2, v6

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_6d
    move/from16 v2, v16

    nop

    nop

    :goto_6e
    goto/32 :goto_98

    nop

    nop

    nop

    :goto_6f
    iput-boolean v7, v8, Leld;->d:Z

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_70
    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget v8, v8, Leld;->c:F

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_72
    mul-float/2addr v13, v14

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_73
    mul-float/2addr v14, v8

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_74
    add-int/2addr v8, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_75
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v5

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    sub-int/2addr v10, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_77
    const/4 v15, 0x3

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_78
    iget-boolean v15, v8, Leld;->d:Z

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    add-int/2addr v12, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_7a
    and-int/lit8 v12, v12, 0x70

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    add-int/2addr v5, v12

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

    :goto_7c
    goto/16 :goto_6e

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_7e
    iput-boolean v7, v0, Landroidx/viewpager/widget/ViewPager;->m:Z

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7f
    invoke-virtual {v6, v14, v8}, Landroid/view/View;->measure(II)V

    :goto_80
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

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

    :goto_83
    move v4, v7

    nop

    nop

    :goto_84
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_85
    move/from16 v16, v10

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_86
    div-int/lit8 v10, v10, 0x2

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

    :goto_87
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_1

    nop

    nop

    :goto_89
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->m:Z

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8c
    if-ne v14, v15, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    :cond_d
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_8e
    goto :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_90
    move v10, v3

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_91
    if-lt v8, v1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :cond_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v2

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_93
    sub-int/2addr v8, v5

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

    :goto_94
    if-ne v14, v15, :cond_f

    nop

    goto/32 :goto_59

    nop

    :cond_f
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_95
    add-int/lit8 v8, v8, 0x1

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v0, v6}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;)Lelc;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_97
    int-to-float v14, v11

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_98
    const/16 v14, 0x10

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_99
    iget v13, v13, Lelc;->e:F

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
.end method

.method protected onMeasure(II)V
    .locals 16

    goto/32 :goto_25

    nop

    nop

    :goto_0
    move v10, v7

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v12, 0x3

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_5
    move v8, v12

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v10, v6, Leld;->a:Z

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_8
    goto/16 :goto_80

    nop

    :goto_9
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v2, v3}, Landroidx/viewpager/widget/ViewPager;->setMeasuredDimension(II)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v3

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_c
    move v1, v3

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_e
    check-cast v6, Leld;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_f
    if-eq v10, v12, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :cond_0
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move v13, v2

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    div-int/lit8 v3, v2, 0xa

    nop

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

    :goto_14
    iput v3, v0, Landroidx/viewpager/widget/ViewPager;->D:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-ne v1, v15, :cond_1

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    :goto_16
    iget v11, v6, Leld;->width:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move v12, v8

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_1a
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_6

    nop

    nop

    :goto_1c
    goto/32 :goto_c

    nop

    nop

    :goto_1d
    move v7, v1

    nop

    nop

    :goto_1e
    goto/32 :goto_49

    nop

    nop

    :goto_1f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_21
    and-int/lit8 v11, v10, 0x7

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_6a

    nop

    nop

    :goto_24
    sub-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_25
    const v0, 0x15

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_26
    if-nez v10, :cond_2

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_27
    iget v1, v6, Leld;->height:I

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v1, v2}, Landroidx/viewpager/widget/ViewPager;->getDefaultSize(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x15

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

    :goto_2a
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    :goto_2b
    const/4 v14, -0x1

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_2c
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v10, v6, Leld;->b:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v1, v3}, Landroidx/viewpager/widget/ViewPager;->getDefaultSize(II)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sub-int/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_30
    const/16 v6, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_31
    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

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

    :goto_32
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    int-to-float v9, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_34
    move v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_35
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_36
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_37
    iget v11, v6, Leld;->width:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_38
    move v11, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_39
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_3a
    iget v13, v6, Leld;->width:I

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

    nop

    :goto_3b
    const/4 v12, 0x5

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_3c
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v4

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_3d
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getMeasuredHeight()I

    move-result v3

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v7, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    :cond_4
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_40
    iget v1, v6, Leld;->height:I

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

    :goto_41
    if-lt v3, v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_42
    iget-boolean v9, v7, Leld;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-ne v7, v6, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6d

    nop

    nop

    :goto_44
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v4

    nop

    :goto_45
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    sub-int/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_5e

    nop

    nop

    :goto_48
    check-cast v7, Leld;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_49
    const/high16 v11, -0x80000000

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_4a
    if-lt v5, v4, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_31

    nop

    nop

    :goto_4b
    const/4 v1, 0x0

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

    :goto_4c
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v3

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

    :goto_4d
    move v12, v11

    nop

    :goto_4e
    goto/32 :goto_3a

    nop

    nop

    :goto_4f
    move v11, v8

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_50
    const/16 v12, 0x30

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_51
    if-ne v13, v15, :cond_8

    nop

    nop

    goto/32 :goto_69

    nop

    :cond_8
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget v1, v6, Leld;->height:I

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

    :goto_53
    goto/16 :goto_45

    nop

    :goto_54
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->f()V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getMeasuredWidth()I

    move-result v2

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

    :goto_58
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_59
    and-int/lit8 v10, v10, 0x70

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

    :goto_5a
    iget v7, v7, Leld;->c:F

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_5b
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_5c
    rem-int v0, v0, v1

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

    :goto_5d
    if-nez v10, :cond_9

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    add-int/lit8 v5, v5, 0x1

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

    :goto_5f
    if-nez v7, :cond_a

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_60
    if-nez v7, :cond_b

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_61
    if-nez v6, :cond_c

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

    :cond_c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_62
    if-ne v1, v14, :cond_d

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    float-to-int v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_64
    move v12, v11

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_65
    move v13, v11

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_4e

    nop

    :goto_67
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/16 :goto_11

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_0

    nop

    nop

    :goto_6d
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

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

    :goto_6e
    const/high16 v8, 0x40000000    # 2.0f

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

    :goto_6f
    if-ne v10, v6, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_70
    iput-boolean v7, v0, Landroidx/viewpager/widget/ViewPager;->x:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_71
    const/4 v15, -0x2

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_47

    nop

    :goto_73
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-eq v11, v12, :cond_f

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :cond_f
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_76
    sub-int/2addr v3, v4

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_77
    const/16 v12, 0x50

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

    :goto_78
    move v10, v1

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/16 :goto_4e

    nop

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_7b
    sub-int/2addr v3, v1

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

    :goto_7c
    move/from16 v2, p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    if-ne v11, v14, :cond_10

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

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

    :goto_7f
    move v13, v2

    nop

    nop

    :goto_80
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->C:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_82
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_85
    move/from16 v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_86
    move v5, v1

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_88
    sub-int/2addr v2, v3

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

    :goto_89
    move-object/from16 v0, p0

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

    :goto_8a
    invoke-virtual {v5, v7, v1}, Landroid/view/View;->measure(II)V

    :goto_8b
    goto/32 :goto_2c

    nop

    nop

    :goto_8c
    if-ne v10, v12, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_77

    nop

    nop

    :goto_8d
    if-eqz v9, :cond_12

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :cond_12
    :goto_8e
    goto/32 :goto_33

    nop

    nop

    :goto_8f
    iput-boolean v3, v0, Landroidx/viewpager/widget/ViewPager;->x:Z

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_90
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_91
    goto/16 :goto_6c

    nop

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_93
    if-nez v10, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v9, v6, v1}, Landroid/view/View;->measure(II)V

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_95
    mul-float/2addr v9, v7

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_96
    if-ne v11, v12, :cond_14

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_98
    goto/16 :goto_6

    nop

    :goto_99
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;)Lelc;

    move-result-object v6

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

    :goto_1
    const/4 v3, 0x1

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

    nop

    :goto_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    if-ne v1, v4, :cond_0

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    :goto_5
    iget v6, v6, Lelc;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_6
    add-int/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, -0x1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    move v1, v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v6, :cond_2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move v4, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

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

    :goto_e
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    and-int/lit8 v0, p1, 0x2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move v0, v3

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_11
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v1, v1, -0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    move v4, v0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

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

    :goto_16
    if-eq v6, v7, :cond_4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2

    nop

    :goto_19
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    :goto_1b
    goto :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1e
    goto :goto_14

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v5, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_22
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    nop

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

    :goto_23
    const v0, 0x17

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto :goto_29

    nop

    :goto_25
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_26
    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->e:I

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

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return v3

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

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
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Lelh;->e:Ljava/lang/ClassLoader;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    iget-object v0, p1, Lelh;->e:Ljava/lang/ClassLoader;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_b
    iget p1, p1, Lelh;->a:I

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->i(IZZ)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p1, Ldxv;->d:Landroid/os/Parcelable;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/os/Parcelable;

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

    :goto_10
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->h:Ljava/lang/ClassLoader;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p1, Lelh;->b:Landroid/os/Parcelable;

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

    :goto_12
    goto/32 :goto_1b

    nop

    nop

    :goto_13
    check-cast p1, Lelh;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    instance-of v0, p1, Lelh;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_15
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_19
    iget-object v0, p1, Lelh;->b:Landroid/os/Parcelable;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1e
    iget v0, p1, Lelh;->a:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_21
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_1

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

    goto/32 :goto_5

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_5
    iput-object p0, v1, Lelh;->b:Landroid/os/Parcelable;

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    return-object v1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    :goto_f
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, v1, Lelh;->a:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v1, Lelh;

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

    :goto_12
    invoke-direct {v1, v0}, Lelh;-><init>(Landroid/os/Parcelable;)V

    goto/32 :goto_f

    nop

    nop

    :goto_13
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->c(I)Lelc;

    move-result-object p2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result p2

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3
    float-to-int p1, p2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p2, 0x0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_8
    sub-int/2addr p1, p2

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

    nop

    :goto_9
    sub-int/2addr p1, p3

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

    :goto_a
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result p3

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

    :goto_b
    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto/32 :goto_2a

    nop

    nop

    :goto_c
    if-gtz p3, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz p2, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    div-float/2addr p2, p3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_f
    mul-int/2addr p2, p0

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

    nop

    :goto_10
    sub-int/2addr p1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_11
    if-ne p1, p3, :cond_2

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

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_14
    sub-int/2addr p1, p2

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    int-to-float p3, p3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    invoke-virtual {p0, p1, p4}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    :goto_18
    mul-float/2addr p2, p1

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

    :goto_19
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    :goto_1b
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result p2

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

    :goto_1d
    return-void

    nop

    nop

    :goto_1e
    sub-int/2addr p3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1f
    mul-float/2addr p2, p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_20
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result p4

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_23
    const/4 p2, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz p2, :cond_4

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

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

    :goto_26
    int-to-float p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_27
    invoke-direct {p0, p2}, Landroidx/viewpager/widget/ViewPager;->a2d5024664df85075db576b91d9663e9m(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_28
    float-to-int p1, p2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_29
    int-to-float p1, p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2d
    if-ne p1, p3, :cond_5

    nop

    goto/32 :goto_1b

    nop

    :cond_5
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_30
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_32
    iget p2, p2, Lelc;->e:F

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

    nop

    :goto_33
    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->w:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result p3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_36
    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->e:I

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

    :goto_37
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_38
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->430f03c2ea70bd28108d593eca0c7c30m()I

    move-result p0

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

    :goto_39
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    goto/32 :goto_11

    nop

    nop

    :goto_3a
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result p2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sub-int/2addr p3, p2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    goto/32 :goto_db

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_e4

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_4
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_5
    div-float v8, v4, v5

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_6
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_8
    cmpl-float p1, p1, v4

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_9
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_a
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->H:F

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :goto_d
    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_f
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->430f03c2ea70bd28108d593eca0c7c30m()I

    move-result v5

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_10
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->A:Z

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

    :goto_11
    if-gt p1, v7, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, v1, Lelc;->b:I

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->A:Z

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

    :goto_14
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    nop

    nop

    :goto_15
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_17
    iget v5, v7, Lelc;->d:F

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_19
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->H:F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v6, 0x3e8

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_1b
    if-eq v0, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_eb

    nop

    :goto_1d
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_22
    float-to-int v0, v0

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_23
    sub-float/2addr v6, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0xd

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_25
    neg-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_26
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->7521e341d48b08f214d1dac0738f16d0m()Z

    move-result p1

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

    :goto_27
    return v1

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_4a

    nop

    nop

    :goto_29
    sub-float/2addr p1, v7

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

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

    :goto_2b
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->postInvalidateOnAnimation()V

    goto/32 :goto_e9

    nop

    nop

    :goto_2c
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v1, Lelc;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz p1, :cond_4

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

    :cond_4
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    cmpl-float p1, p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_31
    float-to-int p1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eq p1, v9, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Lekz;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_35
    add-float/2addr v3, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_36
    goto/16 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_58

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_57

    nop

    nop

    :goto_3a
    invoke-static {p1}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3b
    if-ne v0, v3, :cond_6

    nop

    goto/32 :goto_9c

    nop

    :cond_6
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_3d
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->7dd154808b1c676d3d63f3a63e9edabfm(Z)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-gtz v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_40
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_41
    add-int/2addr v6, v3

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_42
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->l:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_43
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->7521e341d48b08f214d1dac0738f16d0m()Z

    move-result p1

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    return v1

    nop

    nop

    :goto_49
    goto/32 :goto_ed

    nop

    nop

    :goto_4a
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    and-int/lit16 v0, v0, 0xff

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->f()V

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :cond_9
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_50
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->H:F

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_51
    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->I:F

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

    nop

    nop

    :goto_52
    cmpl-float v3, v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_54
    iget v9, v7, Lelc;->b:I

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v6

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_56
    const p1, 0x3ecccccd    # 0.4f

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_57
    const p1, 0x3f19999a    # 0.6f

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_e8

    nop

    nop

    :goto_59
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->N:I

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_5a
    div-float/2addr v6, v5

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5b
    invoke-static {p1}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_5c
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_5d
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_5f
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_60
    if-nez p1, :cond_b

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v0, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_63
    if-eqz v0, :cond_c

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

    :cond_c
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_64
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->j:Z

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-ne v0, v2, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_33

    nop

    nop

    :goto_66
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_67
    goto/16 :goto_a4

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_a0

    nop

    nop

    :goto_69
    goto/16 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->k(I)V

    goto/32 :goto_3e

    nop

    nop

    :goto_6c
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_6d
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_6e
    const/4 v3, 0x3

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

    :goto_6f
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->G:F

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

    :goto_72
    const/4 v1, 0x5

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-gtz v3, :cond_e

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    :cond_e
    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_75
    sub-float v3, v1, v3

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_76
    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->M:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_78
    if-ne v0, v5, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_7a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_7c
    if-gt p1, v7, :cond_10

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_7d
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->A:Z

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_7f
    if-gtz v6, :cond_11

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_11
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_80
    invoke-direct {p0, v1, p1}, Landroidx/viewpager/widget/ViewPager;->175bafa759041016accb75ef876de5d9m(FF)Z

    move-result p1

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_82
    goto/16 :goto_d

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_84
    if-eqz v0, :cond_12

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_45

    nop

    nop

    :goto_85
    int-to-float v5, v5

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

    :goto_86
    cmpl-float p1, p1, v4

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_88
    sub-float/2addr v3, v1

    nop

    :goto_89
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->l:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_8b
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    goto/16 :goto_90

    nop

    nop

    :goto_8d
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_6

    nop

    nop

    :goto_91
    if-nez p1, :cond_13

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_2b

    nop

    nop

    :goto_92
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_95
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->7521e341d48b08f214d1dac0738f16d0m()Z

    move-result v1

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

    :goto_96
    goto/16 :goto_a4

    nop

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_98
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-direct {p0, p1, v2, v1, v1}, Landroidx/viewpager/widget/ViewPager;->d543f409229584e2e064495967092514m(IZIZ)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    check-cast v3, Lelc;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9b
    goto/16 :goto_90

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_9e
    cmpl-float v1, v1, v4

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_9f
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->A:Z

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a1
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_a3
    move p1, v1

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_91

    nop

    nop

    :goto_a5
    goto/16 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    sub-float v5, v0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_a8
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a9
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

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

    :goto_aa
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->J:F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_ab
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    cmpl-float v6, v3, v6

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_ad
    int-to-float v1, v1

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

    nop

    :goto_ae
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_af
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_b0
    iget v10, v7, Lelc;->e:F

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_b1
    if-eqz v0, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_b2
    sub-float/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_b3
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->c43d12f4f4da28dd6c943a4effe477b7m()Lelc;

    move-result-object v7

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b6
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->I:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b9
    div-float/2addr v6, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_bb
    if-gtz v0, :cond_15

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    if-eqz v0, :cond_16

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

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

    :goto_be
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->E:I

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_bf
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_c0
    if-eqz v0, :cond_17

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    if-nez v0, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_18
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_c3
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->l:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_c4
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->I:F

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_c5
    iget v3, v3, Lelc;->b:I

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_c6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_c7
    if-ne v0, v1, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    :cond_19
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_c8
    rem-int v0, v0, v1

    nop

    nop

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

    :goto_c9
    cmpl-float p1, p1, v4

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_ca
    if-eqz p1, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1a
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->O:I

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->A:Z

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    goto/16 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->E:I

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

    :goto_d0
    if-ne v0, v1, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :cond_1b
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {p0, p1, v2, v2, v0}, Landroidx/viewpager/widget/ViewPager;->j(IZZI)V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    if-nez v0, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    goto/16 :goto_e4

    nop

    nop

    nop

    nop

    :goto_d4
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-static {p1}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_d6
    if-ge v9, p1, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_d7
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_da
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_dc
    move p1, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_dd
    add-int/lit8 p1, v9, 0x1

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

    :goto_de
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_df
    if-gtz v1, :cond_1e

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    add-float/2addr v5, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_e1
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    add-int/2addr p1, v9

    nop

    nop

    nop

    nop

    :goto_e4
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_e5
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->6a76c551e4658c5f4308c862164e4dd9m(Landroid/view/MotionEvent;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-static {p1}, Ldxp;->a(Landroid/widget/EdgeEffect;)F

    move-result p1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_e7
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->5b7bb05b5fd6d37dbb26e03fa57e326fm()V

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_e8
    add-float/2addr v6, p1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_e9
    goto/16 :goto_90

    nop

    nop

    nop

    :goto_ea
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_eb
    goto/32 :goto_28

    nop

    :goto_ec
    goto/32 :goto_e2

    nop

    nop

    :goto_ed
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->d:Lekz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_ee
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->E:I

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_ef
    float-to-int p1, p1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_f0
    if-nez v0, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :cond_1f
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    if-nez p1, :cond_20

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_a8

    nop

    nop

    nop
.end method

.method final p(Landroid/content/Context;)V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1
    float-to-int p1, p1

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

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setDescendantFocusability(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    const v0, 0x12

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_4
    float-to-int p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    new-instance v1, Landroid/widget/EdgeEffect;

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

    :goto_6
    invoke-static {p0, p1}, Ldvw;->j(Landroid/view/View;Ldvo;)V

    goto/32 :goto_12

    nop

    nop

    :goto_7
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->O:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    mul-float/2addr p1, v2

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
    invoke-direct {v1, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_b
    add-float p1, v2, v2

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

    :goto_c
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_d
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->l:Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    invoke-direct {v1, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p1, p0}, Lele;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_11
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->C:I

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_29

    nop

    nop

    :goto_14
    new-instance p1, Lela;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

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

    :goto_16
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setFocusable(Z)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setImportantForAccessibility(I)V

    :goto_18
    goto/32 :goto_14

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1a
    const/high16 p1, 0x41c80000    # 25.0f

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getImportantForAccessibility()I

    move-result p1

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

    :goto_1d
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/EdgeEffect;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    float-to-int v3, v3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1f
    new-instance v1, Landroid/widget/EdgeEffect;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_20
    invoke-direct {v1, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->M:I

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

    :goto_22
    const/high16 v3, 0x43c80000    # 400.0f

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

    :goto_23
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->N:I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_24
    const v1, 0xe

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_25
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_35

    nop

    :goto_26
    if-eqz p1, :cond_1

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

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

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

    :goto_28
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->E:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2a
    invoke-static {p0, p1}, Ldwd;->h(Landroid/view/View;Ldvd;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    mul-float/2addr v2, p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/high16 p1, 0x41800000    # 16.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2d
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->t:Landroid/widget/Scroller;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2e
    mul-float/2addr v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2f
    new-instance v1, Landroid/widget/Scroller;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/high16 v0, 0x40000

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

    :goto_31
    invoke-direct {p1, p0}, Lela;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_32
    float-to-int p1, p1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_33
    new-instance p1, Lele;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_35
    goto/32 :goto_13

    nop

    :goto_36
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_38
    sget-object v2, Landroidx/viewpager/widget/ViewPager;->q:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setWillNotDraw(Z)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3a
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final q(I)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

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

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->i(IZZ)V

    goto/32 :goto_2

    nop

    nop

    :goto_7
    const/4 v0, 0x0

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    const v1, 0xa

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->j:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method protected final r(IF)V
    .locals 12

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v8, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :goto_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v10, v9, Leld;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_26

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_7
    sub-int/2addr v9, v10

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/2addr v9, v3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lt v7, v6, :cond_0

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

    :cond_0
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v3, :cond_1

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    :goto_b
    if-lt v1, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v0

    nop

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

    :goto_e
    add-int/2addr v3, v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    move v3, v11

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v3, Lelf;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    sub-int/2addr v3, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_15
    add-int/2addr v4, v10

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

    :goto_16
    move v9, v3

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

    :goto_17
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->n:Ljava/util/List;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_19
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1a

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

    :goto_1b
    iget v9, v9, Leld;->b:I

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_1c
    invoke-interface {v3, p1, p2}, Lelf;->c(IF)V

    :goto_1d
    goto/32 :goto_38

    nop

    nop

    :goto_1e
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->n:Ljava/util/List;

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

    :goto_20
    sub-int v9, v5, v4

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sub-int v9, v5, v9

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_22
    const/4 v10, 0x3

    nop

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

    :goto_23
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->R:I

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

    :goto_24
    if-gtz v0, :cond_3

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    :goto_28
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2a
    const/4 v10, 0x5

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move v11, v9

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2f
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_4
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_30
    div-int/lit8 v9, v9, 0x2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_31
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_33
    move v9, v3

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

    nop

    :goto_34
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v10, :cond_5

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    :goto_36
    goto/32 :goto_28

    nop

    :goto_37
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_38
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_39
    if-ne v9, v10, :cond_6

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3a
    check-cast v9, Leld;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_3b
    move v3, v9

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_3d
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_36

    nop

    :goto_3e
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3f
    const/4 v2, 0x1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move v7, v1

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    and-int/lit8 v9, v9, 0x7

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0, v7}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_45
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_46
    goto :goto_42

    nop

    :goto_47
    goto/32 :goto_1f

    nop

    nop

    :goto_48
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v6

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v4

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

    nop

    nop

    :goto_4b
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4c
    if-ne v9, v10, :cond_8

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

    :cond_8
    goto/32 :goto_33

    nop

    nop

    :goto_4d
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_50
    if-nez v3, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_9
    goto/32 :goto_0

    nop

    nop

    :goto_51
    if-ne v9, v2, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_22

    nop

    nop

    :goto_52
    add-int/lit8 v7, v7, 0x1

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
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method protected final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

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

    :goto_4
    goto :goto_9

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
