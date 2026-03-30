.class public final synthetic Lsze;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lszf;


# direct methods
.method public synthetic constructor <init>(Lszf;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lsze;->a:Lszf;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

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

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

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
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Lcom/google/ar/core/CameraIntrinsics;->getImageDimensions()[I

    move-result-object v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    or-int/2addr p1, v3

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_4
    iput v7, v6, Lsvh;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Lcom/google/ar/core/PointCloud;->getPoints()Ljava/nio/FloatBuffer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lt v2, v5, :cond_1

    nop

    nop

    goto/32 :goto_8e

    nop

    :cond_1
    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_8
    if-eqz v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    :cond_2
    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_a
    iget-object v6, v5, Lsvl;->b:Ltkl;

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_b
    aget v4, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    :goto_c
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v6, Lsvh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    :goto_f
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_10
    check-cast v7, Lsvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v4, :cond_4

    nop

    goto/32 :goto_6e

    nop

    :cond_4
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v4}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_13
    iput v5, v4, Lsvh;->b:I

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_14
    invoke-virtual {v5}, Ltkb;->o()V

    :goto_15
    goto/32 :goto_141

    nop

    nop

    nop

    :goto_16
    iget v9, v8, Lsvg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v7, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_19
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_1a
    iput v7, v8, Lsvg;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1b
    iget-object v4, p1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_1c
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_1d
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_1e
    iget-object v7, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v5}, Ltkg;->m()Ltkb;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_21
    iget-object p1, p0, Lszf;->f:Lcom/google/ar/core/PointCloud;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_22
    iget v2, v1, Lsve;->b:I

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    :goto_23
    iput v7, v8, Lsvg;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    or-int/lit8 p1, p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, v4, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, p0, Lszf;->d:Lcom/google/ar/core/CameraIntrinsics;

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

    :goto_28
    aget v1, v1, v3

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

    :goto_29
    or-int/lit8 v5, v5, 0x8

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2a
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_2b
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2c
    iget v9, v8, Lsvg;->b:I

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Ltkg;->m()Ltkb;

    move-result-object p1

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_2e
    invoke-static {v2}, Lrrf;->Y([F)Ljava/util/List;

    move-result-object v2

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

    :goto_2f
    iget-object v4, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v5, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Lcom/google/ar/core/PointCloud;->getIds()Ljava/nio/IntBuffer;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v5}, Ltkb;->o()V

    :goto_33
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput v7, v6, Lsvh;->b:I

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v5}, Ltkb;->o()V

    :goto_36
    goto/32 :goto_fe

    nop

    nop

    :goto_37
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_38
    iget-object v4, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_3a
    add-int/lit8 v6, v6, 0x3

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_143

    nop

    :goto_3c
    check-cast v5, Lsvg;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1, v7}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_3e
    iput v5, v4, Lsvh;->b:I

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

    nop

    nop

    :goto_3f
    aget v4, v1, v2

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_41
    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_43
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_44
    iput v1, v4, Lsvh;->d:F

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

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

    :goto_46
    or-int/lit8 v8, v8, 0x8

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_48
    goto/32 :goto_5f

    nop

    nop

    :goto_49
    invoke-virtual {v1}, Lcom/google/ar/core/CameraIntrinsics;->getPrincipalPoint()[F

    move-result-object v1

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

    :goto_4a
    iget-object v7, v5, Ltkb;->b:Ltkg;

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

    :goto_4b
    iput v7, v8, Lsvg;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

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

    :goto_4d
    invoke-static {v4}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v5, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_4f
    or-int/lit8 v7, v7, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    or-int/lit8 v9, v9, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_52
    iput v1, v4, Lsvh;->h:F

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iput v9, v8, Lsvg;->b:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-eqz p1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_6
    goto/32 :goto_42

    nop

    nop

    :goto_55
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v4

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

    :goto_56
    if-eqz v8, :cond_7

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p0, p0, Lsze;->a:Lszf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_58
    check-cast v1, Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iput-object p1, v1, Lsvf;->d:Lsvl;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p1, v6}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v4}, Ltkg;->m()Ltkb;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iput p1, v1, Lsve;->b:I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-direct {v4, p1, v2}, Lszd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b6

    nop

    nop

    :goto_5f
    iget-object v5, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_61
    iget p1, v1, Lsvf;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_63
    check-cast p1, Lsve;

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p1}, Ltkb;->i()Ltkg;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {p1}, Lrrf;->Y([F)Ljava/util/List;

    move-result-object p1

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

    :goto_67
    iput v8, v7, Lsvg;->b:I

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {p1, v2}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_69
    iget-object v1, p0, Lszf;->f:Lcom/google/ar/core/PointCloud;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_6a
    iget v5, v4, Lsvh;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-lez v0, :cond_8

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    :cond_8
    goto/32 :goto_142

    nop

    :goto_6c
    check-cast v8, Lsvg;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_6e
    goto/32 :goto_2f

    nop

    nop

    :goto_6f
    iget v7, v6, Lsvh;->b:I

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_71
    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_72
    check-cast p1, Lsvl;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v4}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v7, v6, Lsvf;->c:Ltkv;

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

    :goto_76
    iget-object v5, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_77
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_78
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_79
    iget v8, v7, Lsvg;->b:I

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

    nop

    :goto_7a
    new-instance v4, Lszd;

    nop

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

    :goto_7b
    sget-object v1, Lsvl;->a:Lsvl;

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-interface {v7}, Ltkv;->c()Z

    move-result v8

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

    :goto_7d
    aget v1, v1, v3

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v5, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    :goto_7f
    iget-object p1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_80
    iput p0, p1, Lsve;->g:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_81
    iget-object v1, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_82
    or-int/lit8 v5, v5, 0x20

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    sget-object v0, Lsve;->a:Lsve;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iput v8, v7, Lsvg;->b:I

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_85
    sget-object v4, Lrvj;->a:Lj$/util/stream/Collector;

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    :goto_86
    invoke-interface {v5}, Ltkl;->c()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    or-int/lit8 v8, v8, 0x10

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {p1}, Lcom/google/ar/core/Pose;->getTranslation()[F

    move-result-object v2

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

    :goto_89
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_8a
    iget-object v5, v5, Lsvl;->b:Ltkl;

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    sget-object p1, Lsvh;->a:Lsvh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_8c
    iget v5, v4, Lsvh;->b:I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    goto/16 :goto_5c

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_127

    nop

    nop

    :goto_8f
    check-cast v6, Lsvh;

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    or-int/lit8 v9, v9, 0x2

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_91
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_92
    const v0, 0x2

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_96
    sget v1, Lryb;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_97
    iget-object v8, v5, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_98
    iput p1, v1, Lsvf;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iput-object p1, v1, Lsve;->e:Lsvh;

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {p1}, Lcom/google/ar/core/Pose;->getRotationQuaternion()[F

    move-result-object p1

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-interface {v6}, Ltkl;->c()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_9c
    invoke-static {v1}, Lj$/util/DesugarArrays;->stream([I)Lj$/util/stream/IntStream;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    or-int/lit8 p1, p1, 0x2

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

    :goto_9f
    iput-object v7, v6, Lsvf;->c:Ltkv;

    nop

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v5}, Ltkb;->o()V

    :goto_a2
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    if-eqz v8, :cond_9

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_a4
    iget-object v8, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_a5
    check-cast v6, Lsvh;

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

    nop

    :goto_a6
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a7
    check-cast v6, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a8
    if-eqz v6, :cond_a

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_a
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v1, v2}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_aa
    iget-object v7, v5, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_ab
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_ac
    or-int/lit8 v5, v5, 0x2

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iput v6, v7, Lsvg;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_ae
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_af
    check-cast v1, Lsvf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    if-eqz v5, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-static {v2, v1}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v1

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

    :goto_b2
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_b3
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b4
    or-int/2addr v7, v3

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_b5
    move-object v6, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-interface {v1, v4}, Lj$/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Lj$/util/stream/Stream;

    move-result-object p1

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_b7
    iget p1, v1, Lsve;->b:I

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    array-length v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    iget-object v5, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_bb
    invoke-interface {v6, v5}, Ltkv;->add(Ljava/lang/Object;)Z

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_bd
    iput v9, v8, Lsvg;->b:I

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_bf
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_c0
    check-cast v6, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_c1
    or-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    if-eqz v5, :cond_c

    nop

    goto/32 :goto_c7

    nop

    :cond_c
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    check-cast v4, Lsvh;

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_c7
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_c8
    iput v5, v4, Lsvh;->b:I

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    if-eqz v7, :cond_d

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_125

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {v1}, Lryb;->size()I

    move-result v5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    move-object v6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_cd
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget p1, v2, Lsve;->b:I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {p1, v7}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v5}, Ltkb;->i()Ltkg;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_d1
    check-cast v5, Lsvl;

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

    :goto_d2
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_d3
    check-cast v1, Lsve;

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_d4
    iget-object v5, v1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    check-cast p1, Lryb;

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

    :goto_d6
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_d7
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    iget-object v8, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    iget-object v7, v5, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_da
    invoke-virtual {v0, p1}, Ltkb;->O(Ljava/lang/Iterable;)V

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_db
    check-cast v7, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_dc
    iget-object v1, p0, Lszf;->d:Lcom/google/ar/core/CameraIntrinsics;

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    iput v1, v4, Lsvh;->f:F

    nop

    goto/32 :goto_134

    nop

    nop

    :goto_de
    if-eqz v8, :cond_e

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_14

    nop

    nop

    :goto_df
    if-eqz v4, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    iget-object v8, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    iput v7, v6, Lsvh;->b:I

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-static {v5}, Ltkg;->s(Ltkl;)Ltkl;

    move-result-object v5

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_e3
    aget v1, v1, v3

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    iget v5, v4, Lsvh;->b:I

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_e5
    iput v9, v8, Lsvg;->b:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    check-cast v6, Lsvf;

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

    :goto_e7
    iput-object p1, v2, Lsve;->f:Lsvf;

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_e8
    iget-object v5, p1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    iget v7, v6, Lsvh;->b:I

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    or-int/lit8 v7, v7, 0x4

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

    :goto_eb
    add-int/lit8 v7, v6, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_ec
    if-eqz v8, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_ee
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_ef
    if-eqz v1, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    :cond_11
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    if-eqz v5, :cond_12

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_12
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_f2
    check-cast p1, Lsvh;

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_f3
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_f4
    or-int/2addr v9, v3

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_f5
    iget-object v6, v6, Lsvf;->c:Ltkv;

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_f6
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    iget v8, v7, Lsvg;->b:I

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

    :goto_f8
    iput v2, v1, Lsve;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_f9
    iput-object v5, v2, Lsvl;->c:Ltkl;

    nop

    nop

    :goto_fa
    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    invoke-virtual {p1, v6}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_fc
    iget v7, v6, Lsvh;->b:I

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_fd
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_fe
    iget-object v8, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object p1

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

    :goto_100
    check-cast p1, Ltsi;

    nop

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

    :goto_101
    check-cast p1, Lsvf;

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    add-int/lit8 v7, v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_103
    iget v1, p1, Lsve;->b:I

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    :goto_104
    check-cast v7, Lsvg;

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    move-object v2, v1

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    :goto_106
    check-cast v1, Lsve;

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

    :goto_107
    sget-object v1, Lrvj;->a:Lj$/util/stream/Collector;

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_108
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_109
    goto/32 :goto_57

    nop

    nop

    :goto_10a
    iput v1, p1, Lsve;->b:I

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_10b
    invoke-static {v2, v5}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    iput-boolean v3, v1, Lsve;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    goto/32 :goto_139

    nop

    nop

    :goto_10e
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    iput p1, v2, Lsve;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :goto_110
    iget-object v2, v2, Lsvl;->c:Ltkl;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_111
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_112
    if-eqz v6, :cond_13

    nop

    nop

    goto/32 :goto_fa

    nop

    :cond_13
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_113
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_115
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_116
    invoke-static {v7}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_117
    iget-object v5, v2, Lsvl;->c:Ltkl;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_118
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_119
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_11a
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->capacity()I

    move-result v4

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_11b
    iget p0, p0, Lszf;->h:I

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

    :goto_11c
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_11d
    invoke-interface {v1}, Lj$/util/stream/IntStream;->boxed()Lj$/util/stream/Stream;

    move-result-object v1

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

    nop

    :goto_11e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    iget v9, v8, Lsvg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_120
    check-cast v4, Lsvh;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_121
    invoke-virtual {v5}, Ltkb;->o()V

    :goto_122
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_123
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_124
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    :goto_125
    invoke-static {v6}, Ltkg;->s(Ltkl;)Ltkl;

    move-result-object v6

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    :goto_126
    aget v4, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_127
    iget-object p1, p0, Lszf;->g:Lcom/google/ar/core/Pose;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    check-cast v2, Lsve;

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    iput v4, v6, Lsvh;->c:F

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_12b
    check-cast v7, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_12c
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_12d
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_12e
    iput v4, v6, Lsvh;->e:F

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_12f
    iput v6, v7, Lsvg;->g:I

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    :goto_130
    invoke-interface {v1, v4}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_131
    check-cast v2, Lsvl;

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    sget-object v5, Lsvg;->a:Lsvg;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_133
    iput v4, v6, Lsvh;->g:F

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_134
    iget-object v1, p0, Lszf;->d:Lcom/google/ar/core/CameraIntrinsics;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_135
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_136
    check-cast v4, Lsvh;

    nop

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

    :goto_137
    if-eqz v7, :cond_14

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_a1

    nop

    nop

    :goto_138
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :goto_139
    if-eqz v7, :cond_15

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_13a
    check-cast v8, Lsvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_13b
    move-object v6, v5

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    iput-object v6, v5, Lsvl;->b:Ltkl;

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    goto/32 :goto_8a

    nop

    nop

    :goto_13e
    invoke-virtual {v4}, Ltkb;->i()Ltkg;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    :goto_13f
    invoke-virtual {v1}, Lcom/google/ar/core/CameraIntrinsics;->getFocalLength()[F

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_140
    if-eqz v1, :cond_16

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    :cond_16
    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_141
    iget-object v8, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_142
    goto/32 :goto_f

    nop

    :goto_143
    goto/32 :goto_100

    nop

    nop

    nop

    :goto_144
    const/4 v3, 0x1

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_145
    mul-int/lit8 v6, v2, 0x4

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_146
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_147
    if-eqz v2, :cond_17

    nop

    goto/32 :goto_78

    nop

    :cond_17
    goto/32 :goto_77

    nop

    nop

    nop

    :goto_148
    or-int/lit8 v1, v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_149
    check-cast v8, Lsvg;

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_14a
    invoke-static {p1}, Ltcw;->i(Ltsi;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    sget-object v4, Lsvf;->a:Lsvf;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

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
    return-object p0

    nop

    nop
.end method
