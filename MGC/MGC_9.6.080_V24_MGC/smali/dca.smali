.class public final Ldca;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field private b:Z

.field private final c:Landroid/graphics/Outline;

.field private d:Lcfe;

.field private e:Lcfi;

.field private f:Lcfi;

.field private g:Z

.field private h:Lcfi;

.field private i:Lcdl;

.field private j:F

.field private k:J

.field private l:J

.field private m:Z


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m(Lcfi;)V
    .locals 2

    goto/32 :goto_f

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

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Outline;->canClip()Z

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ldca;->f:Lcfi;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    iget-object v1, p0, Ldca;->c:Landroid/graphics/Outline;

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

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    xor-int/lit8 v0, v0, 0x1

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

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ldca;->c:Landroid/graphics/Outline;

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
    iput-boolean v0, p0, Ldca;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1, p1}, Ldcb;->a(Landroid/graphics/Outline;Lcfi;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v0, Ldcb;->a:Ldcb;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x18

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

    :goto_10
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
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
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    new-instance v0, Landroid/graphics/Outline;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    return-void

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
    goto/32 :goto_12

    nop

    :goto_5
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x20

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
    iput-object v0, p0, Ldca;->c:Landroid/graphics/Outline;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-wide v0, p0, Ldca;->k:J

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Ldca;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    iput-wide v0, p0, Ldca;->l:J

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm()V
    .locals 14

    goto/32 :goto_6e

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    invoke-interface {v2}, Lcfi;->j()V

    goto/32 :goto_2e

    nop

    nop

    :goto_2
    or-long/2addr v1, v3

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3
    or-long/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_4
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

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

    :goto_6
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_7
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v11

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

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_9
    iget v1, v0, Lcdj;->b:F

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    :goto_b
    cmpl-float v0, v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_c
    iget v1, v0, Lcdj;->e:F

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

    nop

    :goto_d
    iget v3, v0, Lcdj;->c:F

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_e
    and-long/2addr v8, v6

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

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

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    shr-long/2addr v2, v5

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_12
    int-to-long v1, v1

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_15
    and-long/2addr v3, v6

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    iget v0, v0, Lcdl;->d:F

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

    nop

    :goto_17
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_18
    instance-of v0, v2, Lcfd;

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

    :goto_19
    iput v0, p0, Ldca;->j:F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1a
    sub-float/2addr v1, v2

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

    :goto_1b
    check-cast v2, Lcfb;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    shl-long/2addr v1, v5

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

    :goto_1d
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :cond_2
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/16 v5, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, v2}, Ldca;->19e596a3e324281407eb5c11093c0152m(Lcfi;)V

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_20
    iget v1, v0, Lcdj;->d:F

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_21
    new-instance v2, Lcdy;

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

    :goto_22
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-wide v3, p0, Ldca;->l:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_24
    long-to-int v3, v3

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_25
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    instance-of v0, v2, Lcfb;

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_27
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_28
    long-to-int v2, v2

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_29
    or-long/2addr v3, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Lcdl;->b()F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_2c
    int-to-long v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_2d
    iget-object v8, p0, Ldca;->c:Landroid/graphics/Outline;

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

    :goto_2e
    invoke-static {v2, v0}, Lcfg;->a(Lcfi;Lcdl;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-boolean v3, p0, Ldca;->m:Z

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_30
    if-gtz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    :cond_3
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_31
    move v13, v2

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

    :goto_32
    iget v1, v0, Lcdl;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_33
    iput-wide v1, p0, Ldca;->l:J

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

    :goto_34
    iget-boolean v0, p0, Ldca;->a:Z

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

    :goto_35
    iget v3, v0, Lcdl;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_36
    if-lez v0, :cond_4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    :goto_37
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_38
    int-to-long v1, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_39
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3a
    iget-wide v3, p0, Ldca;->l:J

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    int-to-long v8, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3d
    sub-float/2addr v3, v4

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
    iput-boolean v2, p0, Ldca;->g:Z

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0, v0, v3, v2, v1}, Landroid/graphics/Outline;->setRect(IIII)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    shl-long v5, v8, v5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_41
    and-long/2addr v3, v6

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_42
    iput-wide v1, p0, Ldca;->k:J

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

    :goto_43
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

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

    :goto_44
    iget-wide v3, p0, Ldca;->l:J

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_45
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

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

    nop

    nop

    :goto_46
    check-cast v2, Lcfc;

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

    :goto_47
    and-long/2addr v3, v6

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_49
    iget v8, v0, Lcdl;->b:F

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

    :goto_4a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4b
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v2, :cond_5

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    :goto_4d
    iget v2, v0, Lcdj;->d:F

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_4e
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_4f
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_50
    check-cast v2, Lcfd;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const-wide v6, 0xffffffffL

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget v3, v0, Lcdj;->e:F

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_53
    iput-object v1, p0, Ldca;->f:Lcfi;

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

    :goto_54
    int-to-long v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct {v2, v1}, Lcdy;-><init>([B)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

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

    :goto_57
    iget-object v0, v2, Lcfc;->a:Lcdj;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_58
    iget v2, v0, Lcdj;->b:F

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_59
    cmpl-float v3, v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_5a
    int-to-long v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_5b
    or-long/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_5c
    if-nez v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2d

    nop

    nop

    :goto_5d
    return-void

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object p0, p0, Ldca;->c:Landroid/graphics/Outline;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_60
    long-to-int v3, v3

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget v0, v0, Lcdj;->b:F

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_63
    iput-wide v3, p0, Ldca;->k:J

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_64
    iput-object v2, p0, Ldca;->e:Lcfi;

    nop

    nop

    :goto_65
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget v4, v0, Lcdj;->c:F

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

    :goto_67
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_69
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    int-to-long v3, v3

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

    :goto_6c
    shl-long/2addr v1, v5

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_6e
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_6f
    iput-wide v0, p0, Ldca;->k:J

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

    :goto_70
    iget-object v0, v2, Lcfb;->a:Lcfi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_71
    iget v3, v0, Lcdj;->c:F

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_72
    invoke-static {v0}, Lcdm;->b(Lcdl;)Z

    move-result v3

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_73
    iget-object p0, p0, Ldca;->c:Landroid/graphics/Outline;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_75
    return-void

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_82

    nop

    nop

    :goto_77
    iget-object v2, p0, Ldca;->d:Lcfe;

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_78
    iput-boolean v0, p0, Ldca;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_79
    instance-of v0, v2, Lcfc;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_7a
    return-void

    nop

    :goto_7b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    and-long/2addr v3, v6

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_7d
    invoke-direct {p0, v0}, Ldca;->19e596a3e324281407eb5c11093c0152m(Lcfi;)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    :goto_7f
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_80
    iput v2, p0, Ldca;->j:F

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v2, p0, Ldca;->e:Lcfi;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    :cond_8
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget v4, v0, Lcdl;->a:F

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

    nop

    nop

    :goto_85
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v12

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v0, v2, Lcfd;->a:Lcdl;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_87
    if-gtz v3, :cond_9

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v0}, Lcdl;->a()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_89
    iget-wide v2, v0, Lcdl;->e:J

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

    :goto_8a
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_8b
    int-to-long v8, v3

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_8c
    if-nez v0, :cond_a

    nop

    goto/32 :goto_7f

    nop

    :cond_a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8d
    const v1, 0x20

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_8e
    iget v4, v0, Lcdl;->c:F

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iput-boolean v2, p0, Ldca;->a:Z

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    shr-long/2addr v3, v5

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_91
    shl-long/2addr v3, v5

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/graphics/Outline;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldca;->c:Landroid/graphics/Outline;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Ldca;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Ldca;->m:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ldca;->d5484163cd8d335e6b17663474ff5f2bm()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

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

    :goto_6
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop
.end method

.method public final b()Lcfi;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ldca;->d5484163cd8d335e6b17663474ff5f2bm()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldca;->f:Lcfi;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final c(Lcei;)V
    .locals 14

    goto/32 :goto_88

    nop

    nop

    :goto_0
    cmpg-float v10, v10, v12

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

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v1, p0, Ldca;->h:Lcfi;

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    long-to-int v5, v5

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_5
    cmpg-float v7, v10, v7

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

    :goto_6
    shr-long/2addr v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_7
    if-gtz v1, :cond_0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    int-to-long v11, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_9
    long-to-int v0, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_a
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_b
    cmpl-float v1, v0, v1

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_c
    if-eqz v6, :cond_2

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_83

    nop

    nop

    :goto_d
    invoke-interface {v1}, Lcfi;->j()V

    :goto_e
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v7, p0, Ldca;->k:J

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

    :goto_10
    iget-wide v6, p0, Ldca;->k:J

    nop

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

    :goto_11
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_3

    nop

    nop

    :goto_13
    goto/32 :goto_85

    nop

    nop

    :goto_14
    iget v7, v5, Lcdl;->c:F

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-wide v0, p0, Ldca;->k:J

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_17
    long-to-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_19
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

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

    :goto_1a
    goto :goto_13

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_54

    nop

    nop

    :goto_1c
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

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

    :goto_1d
    add-float/2addr v10, v11

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1e
    iget v0, p0, Ldca;->j:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    :goto_21
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_23
    add-float/2addr v5, v4

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_24
    invoke-static {p1, v0}, Lceh;->a(Lcei;Lcfi;)V

    goto/32 :goto_7d

    nop

    nop

    :goto_25
    if-eqz v10, :cond_4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    :goto_26
    if-nez v5, :cond_5

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

    :cond_5
    goto/32 :goto_61

    nop

    nop

    :goto_27
    invoke-static {p1, v1}, Lceh;->a(Lcei;Lcfi;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_28
    shr-long/2addr v5, v4

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2a
    shr-long/2addr v7, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    and-long/2addr v6, v2

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_2c
    iget v7, v5, Lcdl;->d:F

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, p0, Ldca;->h:Lcfi;

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2f
    long-to-int v5, v5

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v10, v5, Lcdl;->b:F

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_31
    cmpg-float v6, v7, v6

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_32
    iput-object v0, p0, Ldca;->i:Lcdl;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_34
    and-long/2addr v8, v2

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_35
    long-to-int v11, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_36
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    nop

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

    :goto_37
    shr-long v11, v6, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_38
    if-eqz v10, :cond_6

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_6
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_39
    int-to-long v9, v9

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

    :goto_3a
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_86

    nop

    nop

    nop

    :goto_3c
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3d
    and-long/2addr v5, v2

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_41
    long-to-int v8, v8

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

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

    :goto_43
    iget-wide v5, p0, Ldca;->k:J

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_44
    and-long/2addr v6, v2

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    and-long/2addr v8, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_46
    or-long/2addr v9, v2

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

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

    :goto_48
    iget-wide v5, p0, Ldca;->k:J

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

    :goto_49
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_4a
    iget-wide v6, p0, Ldca;->l:J

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

    nop

    :goto_4b
    long-to-int v4, v6

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

    :goto_4c
    long-to-int v0, v7

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    and-long/2addr v2, v6

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

    :goto_4e
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

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

    :goto_4f
    long-to-int v11, v12

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_50
    iget-wide v8, p0, Ldca;->l:J

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v0, :cond_7

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_52
    iget-wide v6, p0, Ldca;->k:J

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_53
    iget-wide v8, p0, Ldca;->l:J

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget v10, v5, Lcdl;->a:F

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_55
    cmpg-float v7, v7, v10

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_56
    long-to-int v0, v5

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

    :goto_57
    return-void

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

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

    :goto_5a
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_5b
    shr-long/2addr v5, v4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_5c
    and-long/2addr v2, v11

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

    :goto_5d
    invoke-direct {v1, v2}, Lcdy;-><init>([B)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_5e
    add-float/2addr v7, v0

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

    nop

    :goto_5f
    cmpg-float v0, v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_60
    if-eqz v7, :cond_8

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_8
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v5}, Lcdm;->b(Lcdl;)Z

    move-result v10

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_62
    shr-long v12, v8, v4

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_63
    and-long/2addr v6, v2

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

    :goto_64
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_65
    shr-long/2addr v6, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_66
    if-eqz v7, :cond_9

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    long-to-int p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_68
    long-to-int v8, v8

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

    :goto_69
    and-long/2addr v8, v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6a
    long-to-int v4, v6

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-wide v6, p0, Ldca;->l:J

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    new-instance v1, Lcdy;

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_6e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6f
    iget-wide v8, p0, Ldca;->k:J

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_70
    iget-wide v6, p0, Ldca;->k:J

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_71
    long-to-int v7, v7

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

    :goto_72
    add-float/2addr v8, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_73
    long-to-int v6, v6

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

    :goto_74
    iget-object v5, p0, Ldca;->i:Lcdl;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_75
    if-lez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3a

    nop

    :goto_76
    add-float/2addr v4, p0

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

    :goto_77
    long-to-int v1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_78
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const-wide v2, 0xffffffffL

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_7a
    long-to-int v0, v6

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_7b
    shr-long/2addr v0, v4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-wide v7, p0, Ldca;->l:J

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

    :goto_7d
    return-void

    nop

    nop

    :goto_7e
    goto/32 :goto_87

    nop

    nop

    nop

    :goto_7f
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

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

    :goto_80
    shr-long/2addr v5, v4

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_81
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_82
    add-float/2addr v6, v8

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget-wide v5, v5, Lcdl;->e:J

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_84
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_85
    iget-wide v5, p0, Ldca;->k:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_86
    invoke-virtual {p0}, Ldca;->b()Lcfi;

    move-result-object v0

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

    :goto_87
    iget v0, p0, Ldca;->j:F

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

    :goto_88
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_89
    invoke-static {p1, v0, v1, v5, v4}, Lceh;->b(Lcei;FFFF)V

    goto/32 :goto_57

    nop

    nop

    :goto_8a
    const v1, 0x18

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

    :goto_8b
    if-eqz v1, :cond_b

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_8c
    shl-long/2addr v9, v4

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-static {v1, v0}, Lcfg;->a(Lcfi;Lcdl;)V

    goto/32 :goto_32

    nop

    nop

    :goto_8e
    const/16 v4, 0x20

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

    :goto_8f
    invoke-static/range {v5 .. v10}, Lcdm;->a(FFFFJ)Lcdl;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop
.end method

.method public final d()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Ldca;->g:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

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

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    goto/32 :goto_6

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(J)Z
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p2, p1}, Ldcl;->a(Lcfe;FF)Z

    move-result p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    and-long/2addr p1, v2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    const v1, 0x1e

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

    :goto_3
    iget-object p0, p0, Ldca;->d:Lcfe;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    shr-long v0, p1, v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

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

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    iget-boolean v0, p0, Ldca;->m:Z

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

    :goto_c
    const-wide v2, 0xffffffffL

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_e

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v0, 0x20

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    long-to-int p1, p1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return p0

    nop

    nop

    :goto_18
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1a
    long-to-int p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1b
    if-nez p0, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Lcfe;FZFJ)Z
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p2, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1
    if-gtz p1, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p2}, Landroid/graphics/Outline;->setAlpha(F)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    iput-boolean v1, p0, Ldca;->a:Z

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    xor-int/lit8 v0, p2, 0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p2, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean p2, p0, Ldca;->m:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    :goto_c
    cmpl-float p1, p4, p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    return v0

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x10

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

    :goto_10
    iget-boolean p1, p0, Ldca;->m:Z

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Ldca;->d:Lcfe;

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

    :goto_12
    iget-object p2, p0, Ldca;->d:Lcfe;

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

    :goto_13
    iget-object v0, p0, Ldca;->c:Landroid/graphics/Outline;

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

    :goto_14
    const/4 p1, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    :goto_18
    if-ne p1, p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    :goto_19
    const v1, 0x6

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1a
    move p2, v1

    nop

    nop

    :goto_1b
    goto/32 :goto_10

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

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-boolean v1, p0, Ldca;->a:Z

    nop

    :goto_1f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    iput-wide p5, p0, Ldca;->l:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz p3, :cond_5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop
.end method
