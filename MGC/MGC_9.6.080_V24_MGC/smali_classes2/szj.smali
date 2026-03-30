.class public final synthetic Lszj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lszn;

.field public final synthetic b:Lcom/google/ar/core/Frame;

.field public final synthetic c:Lszp;

.field public final synthetic d:Lszh;

.field public final synthetic e:Ltar;


# direct methods
.method public synthetic constructor <init>(Lszn;Lcom/google/ar/core/Frame;Lszp;Lszh;Ltar;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lszj;->b:Lcom/google/ar/core/Frame;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iput-object p4, p0, Lszj;->d:Lszh;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-object p1, p0, Lszj;->a:Lszn;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object p5, p0, Lszj;->e:Ltar;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    iput-object p3, p0, Lszj;->c:Lszp;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 21

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v6, v7, v8}, Lsjb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 v6, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_3
    double-to-float v6, v11

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v5, Lszs;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Ltal;->a()Ltaj;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v7, Ltak;->c:Ltak;

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a0

    nop

    nop

    :goto_8
    if-ne v10, v12, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v5, v6}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_a
    const-wide v11, 0x3fd3333333333333L    # 0.3

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_b
    invoke-interface {v0, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

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

    :goto_c
    invoke-virtual {v4}, Lszp;->c()Lj$/util/Optional;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_d
    sget-object v2, Ltak;->j:Ltak;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    :goto_e
    invoke-interface {v0, v3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

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

    :goto_f
    move-object/from16 v18, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_10
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v6

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v4, v5}, Lj$/util/Optional;->filter(Ljava/util/function/Predicate;)Lj$/util/Optional;

    move-result-object v4

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v0, v3, Ltao;->b:D

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_13
    move-wide v9, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v15}, Ltcw;->h([F)Ltsl;

    move-result-object v15

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v0}, Ltar;->b(Lryb;)V

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v7, 0x4

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_17
    invoke-virtual {v5}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_11d

    nop

    :goto_19
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_1a
    const-wide v11, 0x3fc3333333333333L    # 0.15

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {}, Ltal;->a()Ltaj;

    move-result-object v1

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

    :goto_1c
    sub-double/2addr v13, v0

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v14, v15}, Ltsl;->a(Ltsl;Ltsl;)F

    move-result v15

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

    :goto_1e
    invoke-virtual {v10}, Lcom/google/ar/core/Pose;->getZAxis()[F

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v0, v7, Lszh;->f:Lj$/util/Optional;

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

    :goto_20
    invoke-static {v10}, Ltcw;->g(Lcom/google/ar/core/Pose;)Ltsl;

    move-result-object v14

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_21
    throw v0

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v13}, Ltcw;->h([F)Ltsl;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v4, 0x12

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

    :goto_25
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_26
    cmpl-float v7, v15, v13

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

    :goto_27
    invoke-virtual {v1}, Ltaj;->a()Ltal;

    move-result-object v1

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

    :goto_28
    invoke-virtual {v8, v6}, Ltaj;->c(F)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_a2

    nop

    nop

    :goto_2c
    goto/32 :goto_e8

    nop

    nop

    :goto_2d
    iget-object v1, v0, Lszj;->d:Lszh;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_93

    nop

    nop

    :goto_2f
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_30
    move-wide v9, v11

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v8}, Ltaj;->a()Ltal;

    move-result-object v6

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

    :goto_33
    if-gtz v0, :cond_2

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_34
    const/16 v8, 0x8

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_35
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v0, v7, Lszh;->g:I

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

    nop

    :goto_38
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/16 v9, 0x9

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_45

    nop

    nop

    :goto_3b
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

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

    nop

    nop

    :goto_3d
    const/4 v6, 0x0

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object v6, Ltak;->e:Ltak;

    nop

    nop

    :goto_3f
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/16 v3, 0x15a7

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

    :goto_41
    invoke-virtual {v8}, Ltaj;->a()Ltal;

    move-result-object v0

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

    :goto_42
    sget-object v2, Ltak;->i:Ltak;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_43
    invoke-virtual {v4, v5}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Ltaj;->a()Ltal;

    move-result-object v2

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_46
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-gtz v6, :cond_3

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    nop

    :goto_48
    move/from16 v19, v7

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v6}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v7

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

    :goto_4a
    iget-object v1, v1, Lszj;->e:Ltar;

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_4b
    sget v3, Lryb;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    :goto_4c
    new-instance v10, Lpnp;

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_4d
    invoke-static/range {v9 .. v18}, Ltao;->a(DDDDD)Ltao;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_4e
    invoke-direct {v3, v4}, Lpnp;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    cmpg-float v12, v12, v13

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-gtz v6, :cond_4

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_135

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_52
    move-object/from16 v20, v14

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-ne v1, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :cond_5
    goto/32 :goto_c0

    nop

    nop

    :goto_54
    invoke-direct {v3, v4}, Lszs;-><init>(I)V

    goto/32 :goto_e

    nop

    nop

    :goto_55
    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v9}, Lcom/google/ar/core/Pose;->getRotationQuaternion()[F

    move-result-object v6

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-direct {v5, v9}, Lszs;-><init>(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_58
    invoke-static {}, Ltal;->a()Ltaj;

    move-result-object v0

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_59
    move-object v0, v7

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_5a
    invoke-virtual {v8, v6}, Ltaj;->b(Ltak;)V

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_5b
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v8}, Ltaj;->a()Ltal;

    move-result-object v7

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

    :goto_5e
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_5f
    invoke-static {v9, v3, v2, v11, v5}, Lfey;->e(Ljava/lang/String;CLscz;CLjava/util/concurrent/TimeUnit;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v5, v0, Lszj;->b:Lcom/google/ar/core/Frame;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_61
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v9}, Lcom/google/ar/core/Pose;->getZAxis()[F

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v1, v2}, Ltaj;->b(Ltak;)V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_a2

    nop

    :goto_67
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const/16 v4, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_69
    if-nez v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_141

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_d4

    nop

    nop

    :goto_6b
    goto/32 :goto_d3

    nop

    nop

    :goto_6c
    iget-object v4, v1, Lszh;->f:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const/4 v11, 0x1

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_6e
    check-cast v5, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_6f
    if-ne v3, v7, :cond_8

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_70
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_71
    const/4 v0, 0x4

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    sget-object v7, Ltak;->b:Ltak;

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

    :goto_73
    invoke-direct {v3, v1, v4}, Lnaz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_127

    nop

    nop

    nop

    :goto_74
    iget-object v4, v0, Lszj;->c:Lszp;

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    :goto_75
    move-wide/from16 v17, v13

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_76
    new-instance v3, Lpnp;

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

    :goto_77
    invoke-static {v6}, Ltcw;->f([F)Ltsj;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_78
    iget-wide v11, v3, Ltao;->f:D

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_79
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    return-void

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_db

    nop

    nop

    nop

    :goto_7c
    invoke-static {}, Ltal;->a()Ltaj;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget-wide v11, v3, Ltao;->a:D

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v8, v0}, Ltaj;->c(F)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-static {v14, v7}, Ltsl;->a(Ltsl;Ltsl;)F

    move-result v7

    nop

    goto/32 :goto_12d

    nop

    nop

    :goto_80
    const-string v3, "First capture pose is not tracking, returning empty direction guidance."

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_81
    const/4 v9, 0x7

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_82
    move-wide/from16 v15, v17

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-static {v5}, Ltcw;->f([F)Ltsj;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_84
    invoke-static {}, Ltal;->a()Ltaj;

    move-result-object v12

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

    :goto_85
    throw v0

    nop

    nop

    :goto_86
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_87
    move-object/from16 v1, p0

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

    :goto_88
    sget-object v12, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_89
    float-to-double v7, v6

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

    :goto_8a
    invoke-virtual {v5}, Lcom/google/ar/core/Camera;->getDisplayOrientedPose()Lcom/google/ar/core/Pose;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v4, v6}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

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

    :goto_8c
    invoke-static/range {v9 .. v18}, Ltao;->a(DDDDD)Ltao;

    move-result-object v3

    nop

    :goto_8d
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_8e
    float-to-double v6, v15

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v1}, Lszh;->c()Lj$/util/Optional;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    :goto_90
    invoke-virtual {v10}, Lcom/google/ar/core/Pose;->getRotationQuaternion()[F

    move-result-object v5

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

    :goto_91
    check-cast v0, Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v1}, Ltaj;->a()Ltal;

    move-result-object v1

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_94
    cmpg-double v3, v5, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_95
    invoke-static {v7}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_97
    invoke-direct {v3, v4}, Lpnp;-><init>(I)V

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-gtz v7, :cond_9

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_9
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_99
    iget v6, v6, Ltsl;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v6

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

    :goto_9b
    invoke-virtual {v5}, Lszf;->a()Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_9c
    const/4 v6, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v5}, Ltsj;->a()Ltsl;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_9e
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const/16 v11, 0xe

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    :goto_a0
    move-object/from16 v8, v18

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_a1
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    :goto_a2
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-wide v11, v3, Ltao;->e:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-static {v2}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v9}, Lcom/google/ar/core/Pose;->getXAxis()[F

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a6
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_a7
    move-wide v13, v15

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_a8
    check-cast v1, Lcom/google/ar/core/Pose;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v5, v10}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    const/4 v0, 0x4

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-interface {v0, v3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    move v0, v5

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_ad
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v9}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v7}, Ltsl;->e()Ltsl;

    move-result-object v7

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {v1, v2}, Ltaj;->b(Ltak;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    if-gtz v7, :cond_a

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :cond_a
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    move-wide/from16 v15, v17

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    move-object/from16 v7, v20

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_b6
    cmpl-double v0, v13, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_b7
    iget-wide v8, v3, Ltao;->d:D

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_b8
    invoke-static {v3, v1, v0, v5, v2}, Lfey;->e(Ljava/lang/String;CLscz;CLjava/util/concurrent/TimeUnit;)V

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_b9
    add-int/lit8 v1, v0, -0x2

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v2, v3}, Ltaj;->b(Ltak;)V

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v0, v3}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_bc
    invoke-static {v7, v6}, Ltsl;->a(Ltsl;Ltsl;)F

    move-result v6

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_bd
    sget-object v0, Ltak;->g:Ltak;

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_be
    move-object v7, v1

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_bf
    new-instance v3, Lnaz;

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

    nop

    :goto_c0
    if-ne v1, v3, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_b
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {v4, v5}, Lj$/util/Optional;->filter(Ljava/util/function/Predicate;)Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_c2
    iget-object v0, v2, Ltal;->a:Ltak;

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    :goto_c3
    sget-object v3, Ltak;->h:Ltak;

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_c4
    const/16 v4, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_c5
    const/4 v13, 0x0

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {v5, v6}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    iget v5, v5, Ltsl;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {v9}, Lcom/google/ar/core/Pose;->getZAxis()[F

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_c9
    invoke-virtual {v9}, Lj$/util/Optional;->isEmpty()Z

    move-result v10

    nop

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

    nop

    :goto_ca
    const-wide/high16 v15, 0x4024000000000000L    # 10.0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_cb
    move-object v7, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_cc
    move-object v7, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-virtual {v8, v7}, Ltaj;->b(Ltak;)V

    goto/32 :goto_29

    nop

    nop

    :goto_ce
    const-wide/16 v11, 0x0

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    new-instance v6, Lsjb;

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v7}, Lszh;->c()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v5}, Lcom/google/ar/core/Camera;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    iget-object v7, v0, Lszj;->a:Lszn;

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    sget-object v0, Ltak;->f:Ltak;

    nop

    nop

    nop

    nop

    :goto_d4
    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_d5
    if-gtz v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    cmpl-double v6, v6, v11

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_d7
    const/16 v4, 0xf

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    check-cast v2, Ltal;

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_db
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_dc
    sget-object v2, Ltak;->a:Ltak;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_dd
    iget-wide v13, v3, Ltao;->c:D

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_de
    cmpl-float v6, v19, v6

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_df
    float-to-double v13, v7

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    move v0, v3

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

    :goto_e1
    goto/16 :goto_96

    nop

    nop

    nop

    nop

    :goto_e2
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    iput v0, v1, Ltar;->a:I

    nop

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

    :goto_e4
    invoke-static {}, Ltal;->a()Ltaj;

    move-result-object v2

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_e5
    invoke-direct {v5, v6}, Lszs;-><init>(I)V

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {v9}, Lcom/google/ar/core/Pose;->getYAxis()[F

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_e7
    invoke-static {v12}, Ltcw;->h([F)Ltsl;

    move-result-object v12

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_e8
    move-object/from16 v8, v18

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    const/4 v0, 0x0

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

    :goto_ea
    check-cast v9, Lcom/google/ar/core/Pose;

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_eb
    move-wide/from16 v17, v4

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_ec
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_ed
    float-to-double v13, v5

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

    :goto_ee
    invoke-virtual {v8, v0}, Ltaj;->b(Ltak;)V

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    const/4 v0, 0x0

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_f0
    sget-object v0, Ltap;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    :goto_f1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_f2
    goto/16 :goto_2f

    nop

    nop

    nop

    :goto_f3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f4
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_f5
    cmpl-double v7, v7, v11

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    new-instance v3, Lszs;

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_f7
    move v5, v11

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

    :goto_f8
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_f9
    if-nez v5, :cond_d

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    :cond_d
    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_fa
    const-string v9, "Camera is not tracking, returning empty direction guidance."

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    invoke-static {v14, v15}, Ltsl;->g(Ltsl;Ltsl;)Ltsl;

    move-result-object v14

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_fc
    if-lez v3, :cond_e

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-static {v9}, Ltcw;->g(Lcom/google/ar/core/Pose;)Ltsl;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    goto/16 :goto_3f

    nop

    :goto_100
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    sub-float/2addr v5, v6

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_102
    invoke-static {v6}, Ltcw;->h([F)Ltsl;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    :goto_103
    invoke-direct {v10, v11}, Lpnp;-><init>(I)V

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    sub-double/2addr v7, v11

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_105
    goto/16 :goto_5c

    nop

    nop

    :goto_106
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

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

    :goto_108
    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_109
    if-ne v1, v0, :cond_f

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :cond_f
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    if-eqz v10, :cond_10

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    :cond_10
    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    sub-double/2addr v6, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    move-wide/from16 v17, v13

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10d
    new-instance v5, Lsjb;

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

    :goto_10e
    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10f
    invoke-virtual {v1}, Ltaj;->a()Ltal;

    move-result-object v1

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    :goto_110
    const/16 v1, 0x15a6

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_111
    new-instance v5, Lszs;

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    goto/16 :goto_8d

    nop

    nop

    :goto_113
    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual {v6}, Ltsj;->a()Ltsl;

    move-result-object v6

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

    nop

    :goto_115
    float-to-double v5, v5

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_116
    if-lez v0, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_13d

    nop

    :goto_117
    iget-object v0, v4, Lszp;->c:Lryb;

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

    :goto_118
    invoke-virtual {v2}, Ltaj;->a()Ltal;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_119
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-virtual {v8, v7}, Ltaj;->c(F)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    new-instance v3, Lpnp;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_11c
    invoke-virtual {v2}, Ltaj;->a()Ltal;

    move-result-object v2

    nop

    nop

    nop

    :goto_11d
    goto/32 :goto_124

    nop

    nop

    nop

    :goto_11e
    if-eqz v1, :cond_12

    nop

    nop

    goto/32 :goto_f3

    nop

    :cond_12
    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_11f
    if-ltz v12, :cond_13

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_120
    invoke-static {v5, v2, v1}, Ltap;->b(Lcom/google/ar/core/Camera;Lj$/util/Optional;F)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_121
    if-ne v1, v5, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_122
    cmpl-float v0, v6, v0

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_123
    sget-object v2, Ltap;->a:Lsdb;

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    move-object v7, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_125
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_126
    invoke-virtual {v6}, Ltsl;->e()Ltsl;

    move-result-object v6

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    invoke-virtual {v0, v3}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_128
    goto/16 :goto_45

    nop

    :goto_129
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    iget v3, v1, Lszh;->g:I

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    float-to-double v4, v4

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_12c
    invoke-static {}, Ltal;->a()Ltaj;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_12d
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v15

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_12e
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    invoke-static {v12, v13}, Ltsl;->a(Ltsl;Ltsl;)F

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_130
    goto/16 :goto_36

    nop

    nop

    nop

    :goto_131
    goto/32 :goto_133

    nop

    nop

    :goto_132
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    move-object/from16 v1, p0

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_134
    invoke-static {v7}, Ltcw;->h([F)Ltsl;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_135
    sget-object v6, Ltak;->d:Ltak;

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_136
    invoke-virtual {v15}, Ltsl;->e()Ltsl;

    move-result-object v15

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

    :goto_137
    invoke-virtual {v1, v2}, Ltaj;->b(Ltak;)V

    goto/32 :goto_10f

    nop

    nop

    :goto_138
    goto/16 :goto_129

    nop

    nop

    nop

    nop

    :goto_139
    goto/32 :goto_60

    nop

    nop

    :goto_13a
    goto/16 :goto_93

    nop

    nop

    nop

    :goto_13b
    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    double-to-float v1, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_13d
    goto/32 :goto_22

    nop

    nop

    :goto_13e
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    invoke-virtual {v5}, Lj$/util/Optional;->isEmpty()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_140
    iget-object v5, v4, Lszp;->a:Lszf;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_141
    add-int/lit8 v3, v3, -0x2

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_142
    invoke-direct {v5, v7, v9}, Lsjb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_143
    move-wide/from16 v17, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_144
    sget-object v3, Lrvj;->a:Lj$/util/stream/Collector;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_145
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_146
    iget-object v7, v7, Lszn;->d:Ltap;

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

    :goto_147
    iput-object v0, v1, Ltar;->c:Ljava/lang/Object;

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

    :goto_148
    invoke-static {v5, v2, v6}, Ltap;->b(Lcom/google/ar/core/Camera;Lj$/util/Optional;F)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
