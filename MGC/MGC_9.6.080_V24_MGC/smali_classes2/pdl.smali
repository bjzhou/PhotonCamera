.class public final Lpdl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/graphics/RectF;

.field private b:I

.field private c:Lpcg;

.field private d:Z

.field private e:Landroid/graphics/Matrix;

.field private f:Landroid/graphics/Rect;

.field private g:Lpck;


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m()V
    .locals 7

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object v4, p0, Lpdl;->c:Lpcg;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move v4, v6

    nop

    :goto_5
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v3, Lpcg;->a:Lpcg;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_8
    iget v3, p0, Lpdl;->b:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_0
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    new-instance v2, Landroid/graphics/RectF;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_c
    div-float/2addr p0, v2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_d
    if-ne v5, v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, p0, Lpdl;->e:Landroid/graphics/Matrix;

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

    :goto_f
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_10
    sget-object v3, Lpcg;->c:Lpcg;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_11
    cmpl-float v1, v1, v3

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_12
    iget-boolean v3, p0, Lpdl;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_13
    invoke-direct {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_1d

    nop

    nop

    :goto_14
    div-float/2addr v0, v2

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

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

    :goto_18
    const v0, 0x9

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, v6, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/32 :goto_15

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, p0, Lpdl;->e:Landroid/graphics/Matrix;

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

    :goto_1c
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lpdl;->e:Landroid/graphics/Matrix;

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

    :goto_1e
    iget-object v2, p0, Lpdl;->g:Lpck;

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

    :goto_1f
    iget-object v2, p0, Lpdl;->c:Lpcg;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_20
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_22
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_23
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lpdl;->e:Landroid/graphics/Matrix;

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

    :goto_26
    invoke-virtual {v2}, Lpck;->a()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

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

    :goto_28
    goto/16 :goto_6b

    nop

    :goto_29
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2a
    const/4 v5, 0x1

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    :goto_2c
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_2d
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0x11

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

    :goto_2f
    iget-boolean v3, p0, Lpdl;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v2, v4, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_31
    goto/32 :goto_20

    nop

    nop

    :goto_32
    int-to-float v2, v2

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

    :goto_33
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto/32 :goto_69

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_35
    iget-object v1, p0, Lpdl;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_4
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_37
    if-eq v2, v3, :cond_5

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_5
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_38
    iget-object v2, p0, Lpdl;->g:Lpck;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v1, p0, Lpdl;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_24

    nop

    :goto_3b
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lpdl;->f:Landroid/graphics/Rect;

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

    :goto_3e
    neg-int v3, v3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v2, p0, Lpdl;->e:Landroid/graphics/Matrix;

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

    :goto_40
    div-float/2addr v1, v2

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_41
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sub-int/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_44
    div-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_46
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_48
    if-ne v5, v3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :cond_6
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_49
    new-instance v1, Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    add-int v0, v0, v1

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_4d
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_6c

    nop

    nop

    :goto_4e
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v2}, Lpck;->a()F

    move-result v2

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

    nop

    :goto_50
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_51
    mul-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v1, p0, Lpdl;->c:Lpcg;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v3, p0, Lpdl;->g:Lpck;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    div-float/2addr v1, v2

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

    :goto_55
    invoke-virtual {v4}, Lpcg;->a()I

    move-result v4

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_56
    int-to-float v1, v1

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

    :goto_57
    const/high16 v6, 0x3f800000    # 1.0f

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

    :goto_58
    if-ne v2, v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_59
    if-gtz v1, :cond_8

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_21

    nop

    nop

    :goto_5a
    if-nez v1, :cond_9

    nop

    goto/32 :goto_46

    nop

    :cond_9
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_5b
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v2, p0, Lpdl;->e:Landroid/graphics/Matrix;

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

    :goto_5d
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5f
    div-float/2addr v0, v1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_60
    neg-int v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_61
    float-to-int v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_62
    iget-object v1, p0, Lpdl;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v1, p0, Lpdl;->g:Lpck;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_66
    invoke-virtual {v3}, Lpck;->a()F

    move-result v3

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_67
    return-void

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_69
    iget-object v0, p0, Lpdl;->a:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_6a
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iput-object v1, p0, Lpdl;->e:Landroid/graphics/Matrix;

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

    :goto_6d
    iget-object p0, p0, Lpdl;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6e
    move v4, v6

    nop

    nop

    :goto_6f
    goto/32 :goto_19

    nop

    nop

    :goto_70
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const/high16 v4, -0x40800000    # -1.0f

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    nop

    goto/32 :goto_60

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/graphics/Matrix;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpdl;->e:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b(Lpck;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lpdl;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_8

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lpdl;->g:Lpck;

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
    invoke-virtual {p1, v0}, Lpck;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lpdl;->g:Lpck;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lpdl;->e:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_1

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
    if-nez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Z)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lpdl;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lpdl;->d:Z

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

.method public final d(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget v0, p0, Lpdl;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    if-eq v0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lpdl;->e:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    return-void

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
    invoke-direct {p0}, Lpdl;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Lpdl;->b:I

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

    :goto_7
    return-void

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop
.end method

.method public final e(IIIILpcg;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_8

    nop

    nop

    :goto_1
    int-to-float p1, p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    int-to-float p4, p4

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Landroid/graphics/RectF;

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

    :goto_6
    int-to-float p2, p2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Lpdl;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lpdl;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    int-to-float p3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lpdl;->f:Landroid/graphics/Rect;

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

    :goto_b
    iput-object p5, p0, Lpdl;->c:Lpcg;

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

    :goto_c
    invoke-direct {p0}, Lpdl;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final f()Z
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

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

    nop

    :goto_5
    iget-object p0, p0, Lpdl;->e:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final g(Landroid/graphics/Rect;)V
    .locals 1

    goto/32 :goto_4

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

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

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

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lpdl;->f:Landroid/graphics/Rect;

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

    :goto_5
    iput-object p1, p0, Lpdl;->f:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    :goto_9
    iget-object v0, p0, Lpdl;->e:Landroid/graphics/Matrix;

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
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Lpdl;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_3

    nop

    nop
.end method
