.class public final Lcey;
.super Lcfq;
.source "PG"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;

.field private final c:J

.field private final d:J

.field private final e:I


# direct methods
.method public constructor <init>(Ljava/util/List;JJ)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    iput-wide p2, p0, Lcey;->c:J

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide p4, p0, Lcey;->d:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lcey;->e:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iput-object p1, p0, Lcey;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lcey;->b:Ljava/util/List;

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
    invoke-direct {p0}, Lcfq;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(J)Landroid/graphics/Shader;
    .locals 12

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_0
    long-to-int v3, v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

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

    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_3
    long-to-int p1, p1

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

    :goto_4
    check-cast v1, Lcel;

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

    :goto_5
    long-to-int v7, v7

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_8a

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5d

    nop

    nop

    :goto_9
    and-long/2addr p1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_a
    shr-long/2addr v7, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_b
    invoke-static {p2, v10}, La;->p(II)Z

    move-result p0

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

    :goto_c
    shr-long/2addr v0, v2

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

    :goto_d
    long-to-int v0, v3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

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

    nop

    :goto_f
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_11
    long-to-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_12
    long-to-int p2, v7

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

    :goto_13
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    cmpg-float v4, v4, v1

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

    :goto_15
    invoke-static {p2, p0}, La;->p(II)Z

    move-result p0

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

    :goto_16
    invoke-static {v1, v2}, Lcen;->b(J)I

    move-result v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_17
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_18
    iget-wide v0, p0, Lcey;->c:J

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p2, p0}, La;->p(II)Z

    move-result p0

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

    nop

    :goto_1a
    const/16 v2, 0x20

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

    :goto_1b
    or-long/2addr p1, v3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1c
    move-object v9, p0

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    long-to-int v4, v7

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

    :goto_1f
    goto/16 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_21
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_22
    iget-wide v3, p0, Lcey;->c:J

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_23
    const-string p1, "colors must have length of at least 2 if colorStops is omitted."

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_24
    if-ge v9, v10, :cond_2

    nop

    nop

    goto/32 :goto_7a

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_26
    new-array v7, p1, [I

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

    :goto_27
    cmpg-float v1, v7, v1

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

    :goto_28
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_66

    nop

    :goto_29
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_2a
    iget-wide v7, p0, Lcey;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_2b
    shr-long v7, p1, v2

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_2c
    iget-wide v1, v1, Lcel;->g:J

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2d
    shr-long v7, p1, v2

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

    :goto_2e
    or-long/2addr v0, v7

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    and-long/2addr p1, v5

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

    :goto_31
    goto/16 :goto_64

    nop

    :goto_32
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    shl-long/2addr v3, v2

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

    :goto_34
    long-to-int v3, v3

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_35
    and-long/2addr v7, v5

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

    :goto_36
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_37
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_38
    if-eqz v4, :cond_4

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    aput v1, v7, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_54

    nop

    nop

    :goto_3b
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_92

    nop

    nop

    :goto_3e
    goto/16 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_77

    nop

    nop

    :goto_40
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_41
    move v0, p2

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_48

    nop

    nop

    :goto_43
    and-long/2addr v0, v5

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_44
    goto/32 :goto_67

    nop

    :goto_45
    int-to-long v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_46
    if-nez p0, :cond_5

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_47
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-lt v0, p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_4b
    and-long v3, p1, v5

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_4c
    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto/32 :goto_79

    nop

    nop

    :goto_4d
    sget-object p0, Landroid/graphics/Shader$TileMode;->DECAL:Landroid/graphics/Shader$TileMode;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    cmpg-float v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4f
    long-to-int p1, p1

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

    :goto_50
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_51
    new-instance v11, Landroid/graphics/LinearGradient;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    long-to-int v0, v0

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_53
    and-long/2addr v3, v5

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_0

    nop

    nop

    :goto_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_57
    if-eqz v1, :cond_7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_58
    iget-object p0, p0, Lcey;->a:Ljava/util/List;

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

    :goto_59
    shl-long/2addr v0, v2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_5b
    shr-long/2addr v3, v2

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5d
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    long-to-int v4, v7

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_5f
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {p2, p2}, La;->p(II)Z

    move-result p0

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

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

    :goto_63
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_65
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_76

    nop

    :goto_67
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_68
    if-nez p0, :cond_8

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_8
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_69
    and-long/2addr v7, v5

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_6a
    and-long/2addr p1, v5

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    move-object v2, v11

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6d
    const/4 v10, 0x2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-eqz v3, :cond_9

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

    :cond_9
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_6f
    if-nez p0, :cond_a

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

    :cond_a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_70
    iget-wide v3, p0, Lcey;->c:J

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget-wide v3, p0, Lcey;->c:J

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

    :goto_72
    shr-long v3, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_73
    const-wide v5, 0xffffffffL

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const v1, 0x7

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    throw p0

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_77
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_78
    iget-wide v7, p0, Lcey;->d:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_79
    return-object v11

    nop

    :goto_7a
    goto/32 :goto_55

    nop

    nop

    :goto_7b
    shr-long/2addr v7, v2

    nop

    :goto_7c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    int-to-long p1, p1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_7e
    int-to-long v0, p2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_7f
    and-long/2addr v3, v5

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

    :goto_80
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_81
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_82
    goto/16 :goto_20

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_64

    nop

    :goto_85
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_86
    int-to-long v7, p2

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

    :goto_87
    goto/16 :goto_42

    nop

    nop

    :goto_88
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-wide p1, p0, Lcey;->d:J

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_30

    nop

    nop

    :goto_8b
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

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

    :goto_8c
    shr-long v3, p1, v2

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_8d
    goto/16 :goto_5c

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    add-int v0, v0, v1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_90
    long-to-int v1, v3

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

    :goto_91
    cmpg-float v3, v3, v1

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_92
    iget-wide v7, p0, Lcey;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    const/4 p0, 0x3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    iget-object v1, p1, Lcey;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x10

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p0, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_7
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

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
    invoke-static {v3, v4, v5, v6}, La;->q(JJ)Z

    move-result p0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    nop

    :goto_a
    if-eq p0, p1, :cond_4

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_d
    iget-wide v5, p1, Lcey;->c:J

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

    :goto_e
    return v2

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1e

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

    goto/32 :goto_9

    nop

    nop

    :goto_11
    return v2

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_13
    return v2

    nop

    :goto_14
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_15
    return v2

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    instance-of v1, p1, Lcey;

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

    :goto_18
    return v0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-wide v3, p0, Lcey;->d:J

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

    :goto_1b
    invoke-static {v2, v2}, La;->p(II)Z

    move-result p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v1, :cond_5

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

    :cond_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return v0

    nop

    :goto_1f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_c

    nop

    nop

    :goto_22
    return v2

    nop

    nop

    :goto_23
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_24
    if-eqz p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_25
    iget p0, p1, Lcey;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_26
    check-cast p1, Lcey;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_28
    iget-wide v5, p1, Lcey;->d:J

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

    :goto_29
    iget-object v3, p1, Lcey;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2a
    return v2

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2c
    iget-wide v3, p0, Lcey;->c:J

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

    :goto_2d
    invoke-static {v3, v4, v5, v6}, La;->q(JJ)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2e
    if-eqz v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_7
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2f
    iget-object v1, p0, Lcey;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_30
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    nop

    :goto_1
    const v0, 0x16

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide v1, p0, Lcey;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

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
    add-int/2addr v0, v1

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

    :goto_7
    invoke-static {v1, v2}, La;->r(J)I

    move-result v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    mul-int/lit16 v0, v0, 0x3c1

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

    :goto_a
    add-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v1, v2}, La;->r(J)I

    move-result p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v1, p0, Lcey;->c:J

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

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcey;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    return v0

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_12

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1
    cmp-long v2, v2, v8

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    :goto_3
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_21

    nop

    nop

    :goto_5
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_9
    const/16 p0, 0x29

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_36

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

    :goto_b
    and-long/2addr v0, v6

    nop

    nop

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

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3b

    nop

    nop

    :goto_e
    const-string v10, ""

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    xor-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_10
    const-string p0, "Decal"

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_4d

    nop

    nop

    :goto_12
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4b

    nop

    nop

    :goto_15
    invoke-static {v3, v4}, Lcdi;->e(J)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_16
    invoke-static {v11, v12}, Lcdi;->e(J)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    :goto_18
    const-string p0, "Clamp"

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

    :goto_19
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_38

    nop

    nop

    :goto_1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    nop

    nop

    :goto_1b
    goto/32 :goto_3d

    nop

    nop

    :goto_1c
    add-long/2addr v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0, v0}, La;->p(II)Z

    move-result v0

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

    :goto_1f
    cmp-long v0, v0, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_20
    xor-long/2addr v2, v11

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

    :goto_21
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_2c

    nop

    nop

    :goto_23
    const-string v2, "LinearGradient(colors="

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_25
    const-string v11, "start="

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p0, p0}, La;->p(II)Z

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-wide v2, 0x7f8000007f800000L    # 1.404448428688076E306

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_32

    nop

    :goto_2a
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v2, Ljava/lang/StringBuilder;

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

    :goto_2c
    const-string p0, ", stops=null, "

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    :goto_2e
    invoke-static {p0, v0}, La;->p(II)Z

    move-result v0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_2f
    invoke-static {p0, v0}, La;->p(II)Z

    move-result p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_31
    const-string p0, "Unknown"

    nop

    nop

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
    iget-object p0, p0, Lcey;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_34
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_35
    goto :goto_32

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3f

    nop

    nop

    :goto_38
    iget-wide v11, p0, Lcey;->c:J

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-wide v0, p0, Lcey;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3e
    const-wide v6, -0x7fffffff80000000L    # -1.0609978955E-314

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3f
    iget-wide v3, p0, Lcey;->d:J

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_40
    const-string v3, "end="

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

    :goto_41
    const-string p0, "Repeated"

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

    :goto_42
    const/4 v0, 0x1

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
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_44
    add-int v0, v0, v1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    :goto_46
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

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

    :goto_49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_47

    nop

    nop

    :goto_4a
    if-eqz v2, :cond_5

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

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    :goto_4b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move-object v0, v10

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_4e
    const-string p0, "tileMode="

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

    :goto_4f
    iget-wide v11, p0, Lcey;->d:J

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_50
    add-long/2addr v2, v4

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const-wide v4, -0x100000001L

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

    :goto_52
    and-long/2addr v11, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const-string v1, ", "

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_55
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_56
    and-long/2addr v2, v6

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_57
    if-nez v0, :cond_6

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_6
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4e

    nop

    nop

    :goto_59
    const-string p0, "Mirror"

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

    :goto_5a
    const-wide/16 v8, 0x0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    and-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
