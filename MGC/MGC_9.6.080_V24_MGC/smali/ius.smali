.class public final Lius;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Liuj;


# instance fields
.field public a:Liwz;

.field public final b:Liuk;

.field private final c:[F


# direct methods
.method public constructor <init>(Liuk;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lius;->c:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const/16 v0, 0x10

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

    :goto_3
    new-array v0, v0, [F

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput-object p1, p0, Lius;->b:Liuk;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lius;->a:Liwz;

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

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
    iget-object v0, p0, Lius;->a:Liwz;

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
    invoke-virtual {v0}, Liwz;->a()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 14

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1, v6, v3, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    :goto_2
    iget v0, v0, Liuk;->q:F

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/high16 v3, 0x3e800000    # 0.25f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_4
    invoke-static {v0, v1, v3, v6, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_6
    iget-object v0, p0, Lius;->b:Liuk;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_7
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_8
    iget v0, v0, Liuk;->d:F

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_9
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    div-float/2addr v7, v0

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 v9, 0x42b40000    # 90.0f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_7b

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lius;->b:Liuk;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/high16 v3, -0x40c00000    # -0.75f

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v3, p0, Lius;->c:[F

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

    :goto_11
    mul-float/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_12
    iget-object p0, p0, Lius;->b:Liuk;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_13
    iget v0, v0, Liuk;->q:F

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

    :goto_14
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    mul-float/2addr v0, v7

    nop

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

    :goto_16
    iget-object v0, p0, Lius;->b:Liuk;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3d

    nop

    :goto_18
    iget v2, v0, Liuk;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lius;->b:Liuk;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0, v1, v2, v3, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v2, v0}, Liwz;->d(FF)V

    :goto_1d
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    div-float v7, v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_1f
    iget v3, v0, Liuk;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_22
    neg-float v0, v0

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v7, v0, Liuk;->g:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x0

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

    :goto_25
    iget-boolean v0, v0, Liuk;->n:Z

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_26
    mul-float/2addr v0, v3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_27
    iget v0, v0, Liuk;->g:F

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v2, v1, v0, v6, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :goto_29
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v0, v4}, Liwz;->d(FF)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lius;->c:[F

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_18

    nop

    nop

    :goto_2d
    iget-boolean v2, v0, Liuk;->h:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    mul-float/2addr v0, v7

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

    :goto_2f
    const v2, 0x3f666666    # 0.9f

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/high16 v4, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-float/2addr v3, v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_32
    add-float/2addr v3, v0

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Lius;->c:[F

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_34
    const/16 v0, 0xbe2

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v3, v1, v6, v0, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :goto_36
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_39
    if-eqz v3, :cond_2

    nop

    goto/32 :goto_7e

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

    :goto_3a
    return-void

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_3b

    nop

    nop

    :goto_3d
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3e
    const/16 v0, 0x302

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

    nop

    nop

    :goto_3f
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-boolean v3, v0, Liuk;->m:Z

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v1, p0, Lius;->a:Liwz;

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

    :goto_43
    iget v0, v0, Liuk;->p:F

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

    :goto_44
    iget v7, v0, Liuk;->g:F

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

    :goto_45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_46
    sub-float v7, v4, v7

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-float/2addr v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_48
    goto/16 :goto_29

    nop

    nop

    :goto_49
    goto/32 :goto_82

    nop

    nop

    :goto_4a
    iget v3, v0, Liuk;->g:F

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4b
    invoke-static {v2, v1, v6, v3, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0}, Lcom/google/android/libraries/vision/opengl/Texture;->unbind()V

    :goto_4e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0, v1}, Liwz;->e([F)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_50
    const v3, 0x3d4ccccd    # 0.05f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_51
    iget-object p0, p0, Liuk;->o:Lcom/google/android/libraries/vision/opengl/Texture;

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

    :goto_52
    move v13, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_53
    div-float v7, v3, v0

    nop

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

    :goto_54
    iget v0, v0, Liuk;->e:F

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_3
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-eqz v3, :cond_4

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

    :cond_4
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_57
    iget v0, v0, Liuk;->g:F

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_58
    add-float/2addr v0, v3

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

    :goto_59
    invoke-virtual {v0}, Liwz;->b()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5a
    iget-object v0, p0, Lius;->b:Liuk;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_5b
    iget-object v0, p0, Lius;->b:Liuk;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_5c
    const/high16 v12, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_5d
    iget-object v0, p0, Lius;->a:Liwz;

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_5e
    iget-object v7, p0, Lius;->c:[F

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_60
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_61
    iget-object v2, p0, Lius;->c:[F

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v0, p0, Lius;->a:Liwz;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_80

    nop

    nop

    :goto_64
    iget-object v1, p0, Lius;->c:[F

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_65
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_66
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_5
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v3, p0, Lius;->c:[F

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_69
    const/16 v1, 0x303

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6a
    iget v0, v0, Liuk;->p:F

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_6b
    iget-boolean v1, v0, Liuk;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v1, p0, Lius;->a:Liwz;

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

    :goto_6d
    iget-object v0, p0, Lius;->c:[F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v0, p0, Lius;->b:Liuk;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_6f
    const v1, 0x1f

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

    :goto_70
    iget-object v0, p0, Lius;->b:Liuk;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_71
    sub-float/2addr v3, v0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-boolean v3, v0, Liuk;->m:Z

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_75
    div-float/2addr v7, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v0, p0, Lius;->c:[F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_77
    sub-float v7, v4, v7

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

    :goto_78
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_79
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7a
    move v2, v13

    nop

    nop

    :goto_7b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-static {v3, v1, v0, v6, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :goto_7e
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    const/4 v11, 0x0

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_80
    iget-boolean v0, v0, Liuk;->h:Z

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_81
    const/high16 v3, -0x41800000    # -0.25f

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v2, p0, Lius;->c:[F

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    move v3, v2

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
.end method

.method public final c(II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method
