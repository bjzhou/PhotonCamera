.class public final synthetic Lhim;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lhip;


# direct methods
.method public synthetic constructor <init>(Lhip;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lhim;->a:Lhip;

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

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 28

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget v2, v1, v16

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v3, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_0
    goto/32 :goto_129

    nop

    nop

    :goto_3
    iget-boolean v4, v0, Lhip;->j:Z

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

    :goto_4
    aget v9, v1, v24

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_5
    if-ne v1, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    :cond_1
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v4, v0, Lhip;->s:Lpic;

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

    nop

    :goto_7
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object/from16 v27, v4

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

    :goto_9
    float-to-double v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v4, v0, Lhip;->q:Lhjh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    aget v11, v1, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_d
    iget-object v3, v0, Lhip;->t:Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    check-cast v1, Ljava/lang/Float;

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

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

    :goto_12
    sget-wide v3, Lhip;->a:D

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_13
    const/16 v16, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    aget v1, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    double-to-float v4, v6

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_17
    check-cast v4, Lhii;

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    float-to-double v4, v4

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    :goto_19
    if-nez v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    :cond_2
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1a
    float-to-double v14, v14

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_1c
    float-to-double v1, v1

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 v2, 0xb4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_47

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_61

    nop

    nop

    :goto_20
    invoke-direct {v3, v2}, Lpic;-><init>([I)V

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, v0, Lhim;->a:Lhip;

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_22
    new-instance v2, Ljzb;

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_23
    double-to-float v4, v4

    nop

    goto/32 :goto_113

    nop

    nop

    :goto_24
    new-instance v1, Landroid/util/Pair;

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

    :goto_25
    invoke-virtual {v4}, Lhjh;->f()V

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

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

    :goto_27
    const/16 v23, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_28
    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v4, Lhii;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_2a
    const/4 v2, 0x1

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

    :goto_2b
    invoke-static {v2, v3}, Lhip;->m(FF)Z

    move-result v2

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

    nop

    :goto_2c
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2d
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v2, Ljava/lang/Float;

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_2f
    iget-object v4, v0, Lhip;->h:Lrss;

    nop

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

    :goto_30
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_31
    invoke-virtual {v4, v5}, Lixe;->g(Lixg;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v3, v0, Lhip;->c:[F

    nop

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

    :goto_36
    invoke-virtual {v3, v5, v2}, Lpic;->E(II)D

    move-result-wide v6

    nop

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

    :goto_37
    goto/16 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_39
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_3a
    iget-object v2, v0, Lhip;->e:[F

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_3b
    iget-boolean v4, v0, Lhip;->j:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :goto_3c
    const v1, 0x12

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

    nop

    :goto_3d
    iget-object v1, v0, Lhip;->d:Lnpk;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_3f
    const/16 v26, 0x9

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    float-to-double v13, v13

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_42
    invoke-virtual {v3, v5, v2}, Lpic;->E(II)D

    move-result-wide v2

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

    :goto_43
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v4, v0, Lhip;->i:Lrss;

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_45
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v0}, Lhio;->a()V

    :goto_47
    goto/32 :goto_97

    nop

    nop

    nop

    :goto_48
    move-object/from16 v3, v22

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v2, v3}, Lhip;->m(FF)Z

    move-result v2

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

    nop

    :goto_4a
    check-cast v1, Lhze;

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

    :goto_4b
    if-ltz v2, :cond_5

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

    :cond_5
    goto/32 :goto_10e

    nop

    nop

    :goto_4c
    invoke-direct {v1, v2}, Lpic;-><init>([I)V

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    sget-object v5, Lixg;->e:Lixg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v1}, Lhze;->g()Z

    move-result v1

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_4f
    invoke-virtual {v4}, Lhii;->e()V

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v0}, Lhip;->b()V

    :goto_51
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_52
    float-to-double v3, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_53
    new-instance v3, Lpic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_54
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_56
    float-to-double v3, v4

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_57
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_58
    move-object/from16 v4, v27

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const-string v1, "Invalid device orientation value!"

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-direct {v5, v4, v2, v3, v6}, Lhil;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;FFI)V

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    new-instance v1, Landroid/util/Pair;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    new-instance v1, Landroid/util/Pair;

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_5e
    aget v4, v1, v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    check-cast v3, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v5, v4, Lhii;->d:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_61
    iget-object v1, v0, Lhip;->b:Lrss;

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v3, 0x0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iput-boolean v2, v0, Lhip;->k:Z

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_65
    aget v4, v1, v3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_66
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    float-to-double v9, v9

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v1, v1, Lhxs;->a:[F

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    float-to-double v6, v2

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-boolean v2, v0, Lhip;->l:Z

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_6d
    iput-object v1, v0, Lhip;->n:Lrss;

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    float-to-double v3, v1

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_6f
    invoke-static {v1, v2}, Lnzk;->K([FLnpk;)V

    goto/32 :goto_11b

    nop

    nop

    :goto_70
    cmpg-double v1, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_71
    if-nez v3, :cond_6

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_6
    goto/32 :goto_34

    nop

    nop

    :goto_72
    aget v14, v1, v26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_73
    if-nez v5, :cond_7

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-eqz v4, :cond_8

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_51

    nop

    :goto_76
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v3, v5, v2}, Lpic;->E(II)D

    move-result-wide v2

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

    :goto_78
    aget v2, v1, v24

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7a
    aget v13, v1, v25

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_7b
    move-object/from16 v0, p0

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

    :goto_7c
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_7d
    const/4 v3, 0x0

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

    :goto_7e
    invoke-virtual {v1, v3}, Lnpk;->b([F)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    aget v4, v1, v3

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_80
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_81
    iget-object v3, v0, Lhip;->s:Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    :goto_82
    move-wide/from16 v19, v3

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_83
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v3, v0, Lhip;->d:Lnpk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_86
    if-gez v1, :cond_9

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_9
    :goto_87
    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual/range {v3 .. v21}, Lpic;->G(DDDDDDDDD)V

    goto/32 :goto_ee

    nop

    nop

    :goto_89
    float-to-double v1, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8a
    iget-object v4, v0, Lhip;->i:Lrss;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_8c
    float-to-double v11, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_8e
    check-cast v2, Ljava/lang/Float;

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_90
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-direct {v1, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_92
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_94
    float-to-double v10, v10

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    const/16 v24, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_96
    iget-object v1, v0, Lhip;->e:[F

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

    :goto_97
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_99
    iget-object v1, v2, Ljzb;->a:[F

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_9a
    const/4 v3, 0x6

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

    nop

    :goto_9b
    move-object/from16 v22, v3

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_9c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_9d
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

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

    :goto_9e
    if-eq v1, v2, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v1, v2}, Lnpk;->b([F)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a0
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_a1
    throw v0

    nop

    nop

    :goto_a2
    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_a4
    move-wide/from16 v21, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_a5
    const/16 v2, 0x10e

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v1, v0, Lhip;->p:Llad;

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

    :goto_a7
    const v0, 0x4

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-direct {v2, v1}, Ljzb;-><init>([F)V

    goto/32 :goto_43

    nop

    nop

    :goto_a9
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_aa
    iget v1, v1, Lpcg;->e:I

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    check-cast v1, Ljzb;

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_ac
    const/4 v2, 0x6

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_ad
    const/4 v5, 0x0

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_ae
    float-to-double v2, v2

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_af
    float-to-double v2, v2

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {v3, v4, v5}, Lpic;->E(II)D

    move-result-wide v6

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_b2
    invoke-virtual {v1}, Llad;->a()Lpcg;

    move-result-object v1

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_b3
    goto/16 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_b5
    double-to-float v3, v6

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_b6
    iget-object v2, v0, Lhip;->f:Lnpk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v1}, Lhze;->d()Lhxs;

    move-result-object v1

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    sget-wide v4, Lhip;->a:D

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    iget-boolean v4, v4, Liuy;->a:Z

    nop

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

    :goto_ba
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_bb
    iget-object v4, v0, Lhip;->q:Lhjh;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_bc
    aget v5, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_bd
    invoke-virtual {v3, v5, v4}, Lpic;->E(II)D

    move-result-wide v6

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

    :goto_be
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    double-to-float v2, v5

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

    :goto_c0
    goto/16 :goto_92

    nop

    nop

    :goto_c1
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    aget v2, v1, v2

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_c3
    cmpg-double v2, v2, v4

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_c4
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    iget-object v1, v0, Lhip;->m:Lrss;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_c6
    aget v12, v1, v25

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

    nop

    nop

    :goto_c7
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_c8
    float-to-double v12, v12

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_c9
    iget-object v4, v0, Lhip;->i:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_ca
    check-cast v1, Lrsx;

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_cc
    new-instance v1, Landroid/util/Pair;

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    iget-object v4, v0, Lhip;->r:Liuy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_ce
    move-wide v15, v3

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    check-cast v1, Lrsx;

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_d0
    if-nez v5, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_d1
    aget v15, v1, v26

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d2
    invoke-static {v1, v3}, Lnzk;->K([FLnpk;)V

    goto/32 :goto_3d

    nop

    nop

    :goto_d3
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    goto/16 :goto_128

    nop

    nop

    :goto_d5
    goto/32 :goto_bb

    nop

    nop

    :goto_d6
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_125

    nop

    :goto_d7
    move-wide/from16 v16, v2

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_d8
    move-wide/from16 v20, v1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_d9
    const/16 v2, 0x5a

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_da
    if-eqz v2, :cond_d

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    double-to-float v2, v2

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

    :goto_dc
    aget v10, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_dd
    iget-object v1, v0, Lhip;->b:Lrss;

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_df
    float-to-double v2, v2

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_e0
    iget-object v1, v1, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_e1
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_e2
    if-nez v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    const/16 v2, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e4
    invoke-virtual {v3, v4, v2}, Lpic;->E(II)D

    move-result-wide v6

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_e6
    iget-boolean v5, v4, Lhii;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_e7
    iget-object v1, v1, Ljzb;->a:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_e8
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_e9
    move-wide/from16 v18, v2

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    neg-float v2, v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {v3, v2, v5}, Lpic;->E(II)D

    move-result-wide v6

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    goto/16 :goto_92

    nop

    :goto_ed
    goto/32 :goto_114

    nop

    nop

    :goto_ee
    new-instance v1, Lpic;

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

    :goto_ef
    const/16 v25, 0x5

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_f0
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_f1
    move-wide/from16 v17, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {v2}, Lhjh;->d()V

    goto/32 :goto_109

    nop

    nop

    :goto_f3
    iput-boolean v4, v0, Lhip;->j:Z

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

    :goto_f4
    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    nop

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

    :goto_f5
    invoke-virtual {v4, v5}, Lhjh;->e(Lrss;)V

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_f6
    iget-object v2, v0, Lhip;->q:Lhjh;

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    iget-object v1, v0, Lhip;->c:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_f8
    goto/32 :goto_126

    nop

    nop

    :goto_f9
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

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

    :goto_fa
    aget v7, v1, v23

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_fb
    if-nez v2, :cond_f

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    aget v2, v1, v23

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    iget-object v1, v1, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_fe
    double-to-float v3, v3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_ff
    const/16 v3, 0xa

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_100
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_101
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_102
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_103
    if-nez v4, :cond_10

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

    nop

    :cond_10
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_104
    iget-object v4, v0, Lhip;->h:Lrss;

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    aget v1, v1, v3

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_106
    float-to-double v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_107
    check-cast v4, Lixe;

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

    :goto_108
    iget-object v2, v0, Lhip;->t:Lpic;

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_109
    const/4 v2, 0x1

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    if-ne v1, v2, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    const/4 v2, 0x0

    nop

    nop

    :goto_10c
    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-virtual/range {v4 .. v22}, Lpic;->G(DDDDDDDDD)V

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_10f
    invoke-virtual {v3, v1}, Lpic;->W(Lpic;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    invoke-direct {v1, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_c0

    nop

    nop

    :goto_111
    float-to-double v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_112
    const/4 v15, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_113
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_114
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_115
    invoke-static {v1, v2, v3}, Lpic;->S(Lpic;Lpic;Lpic;)V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_116
    invoke-virtual {v4, v5}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->post(Ljava/lang/Runnable;)Z

    :goto_117
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_118
    sget-object v5, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_119
    if-eqz v4, :cond_12

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_12
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_11b
    iget-object v1, v0, Lhip;->f:Lnpk;

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

    :goto_11c
    double-to-float v2, v2

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_11d
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_11e
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_11f
    check-cast v4, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    :goto_120
    new-instance v5, Lhil;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_121
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_122
    iget-object v1, v0, Lhip;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_123
    check-cast v1, Lhze;

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_124
    float-to-double v8, v2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_125
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_126
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    iput-boolean v2, v0, Lhip;->l:Z

    nop

    :goto_128
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_129
    iget-object v0, v0, Lhip;->o:Lhio;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_12a
    double-to-float v2, v6

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    neg-float v2, v2

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    iget-object v4, v4, Lhii;->d:Lrss;

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_12d
    invoke-virtual {v3, v2, v4}, Lpic;->E(II)D

    move-result-wide v5

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop
.end method
