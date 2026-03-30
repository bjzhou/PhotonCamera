.class public final Llsi;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    goto/32 :goto_d

    nop

    nop

    :goto_0
    if-ne p1, p3, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const p1, 0x3fa2e8ba

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput p1, p0, Llsi;->b:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p1, p0, Llsi;->c:Z

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

    :goto_5
    const p2, 0x40955556

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
    const/4 p1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    const p2, 0x3fb33333    # 1.4f

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    const/high16 p1, 0x40600000    # 3.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    goto :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    if-ne p1, p3, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    goto :goto_8

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    iput-boolean p2, p0, Llsi;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    iput p2, p0, Llsi;->a:F

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
.end method


# virtual methods
.method public final a(Llso;Ljava/util/Collection;Z)Llsn;
    .locals 19

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_0
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1
    div-float/2addr v11, v6

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_2
    invoke-static {v6}, La;->au(Z)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v14, v9}, Ljava/lang/Math;->max(FF)F

    move-result v14

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v9, v4}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v12, v12, Llsy;->a:[Llsx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_8
    if-eqz v13, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_0
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v7, v6, -0x1

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_a
    aput v10, v3, v6

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

    :goto_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    nop

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

    :goto_c
    const/4 v4, 0x0

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_d
    iget-wide v5, v1, Llso;->a:J

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v13, :cond_1

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

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v4, v2}, Llsn;-><init>(FF)V

    goto/32 :goto_90

    nop

    nop

    :goto_10
    goto/16 :goto_8e

    nop

    :goto_11
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v14, 0x0

    nop

    :goto_13
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v9, v9, 0x1

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    double-to-float v6, v6

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

    :goto_16
    if-eqz v13, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :cond_2
    goto/32 :goto_99

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

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

    :goto_18
    if-nez v15, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_3
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move v5, v6

    nop

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

    :goto_1a
    aget v15, v6, v9

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

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

    :goto_1f
    array-length v8, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_20
    move v9, v6

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aget v5, v3, v9

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :cond_4
    goto/32 :goto_c8

    nop

    :goto_24
    mul-float/2addr v14, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_25
    iget-object v11, v11, Llso;->p:Lrss;

    nop

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

    :goto_26
    invoke-virtual {v12}, Lrss;->c()Ljava/lang/Object;

    move-result-object v12

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

    :goto_27
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v8

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v7, [F

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_29
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v12}, Lrss;->h()Z

    move-result v13

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0xd

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v6, v6, Llso;->r:Lrss;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_2e
    sub-float v7, v7, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_2f
    check-cast v16, Ljava/util/List;

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

    :goto_30
    const/4 v11, 0x0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_31
    iget-object v11, v11, Llsy;->a:[Llsx;

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

    :goto_32
    array-length v9, v6

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_33
    new-array v3, v0, [F

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

    :goto_34
    if-nez v13, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    :goto_36
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v9, 0x0

    nop

    nop

    :goto_38
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_39
    move-object/from16 v5, v16

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v12, Llsy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3b
    if-lt v9, v8, :cond_6

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sub-float/2addr v6, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_3d
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_3e
    goto/16 :goto_57

    nop

    :goto_3f
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_a5

    nop

    nop

    :goto_41
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_43
    add-float/2addr v13, v15

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
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_45
    const/4 v7, 0x2

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_46
    const/high16 v6, 0x41200000    # 10.0f

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_cb

    nop

    nop

    :goto_48
    const/4 v12, 0x0

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_49
    iget-boolean v3, v0, Llsi;->c:Z

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4b
    aget v4, v3, v4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    aput v5, v3, v7

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

    :goto_4d
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_4e
    mul-float/2addr v6, v7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_2a

    nop

    nop

    :goto_50
    goto/32 :goto_29

    nop

    nop

    :goto_51
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v11}, Lrss;->c()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_53
    if-ne v1, v6, :cond_7

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :cond_7
    goto/32 :goto_9e

    nop

    nop

    :goto_54
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_55
    iget-boolean v0, v0, Llsi;->d:Z

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_56
    const/4 v9, 0x0

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_6

    nop

    nop

    :goto_58
    mul-float/2addr v5, v3

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_59
    check-cast v6, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v8, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

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

    :goto_5b
    const/high16 v14, 0x41200000    # 10.0f

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const-string v4, "The vector sizes are different."

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_5e
    if-eq v8, v9, :cond_9

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

    :cond_9
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

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

    :goto_60
    invoke-virtual {v11, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_61
    iget v3, v0, Llsi;->b:F

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_62
    mul-float/2addr v2, v3

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_63
    mul-float/2addr v7, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_64
    check-cast v11, Llsy;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_65
    mul-float v17, v14, v15

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_66
    float-to-double v6, v12

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

    :goto_67
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v11}, Lrss;->h()Z

    move-result v13

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v12}, Lrss;->h()Z

    move-result v13

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6d
    if-lt v9, v0, :cond_a

    nop

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

    :cond_a
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6e
    add-int/lit8 v8, v8, 0x1

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    check-cast v7, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_70
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

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

    :goto_71
    if-ltz v7, :cond_b

    nop

    goto/32 :goto_95

    nop

    nop

    :cond_b
    goto/32 :goto_19

    nop

    nop

    :goto_72
    invoke-virtual {v7}, Lrss;->h()Z

    move-result v8

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-nez p3, :cond_c

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_74
    aget v14, v7, v9

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v12, v1, Llso;->p:Lrss;

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

    :goto_76
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_78
    move v10, v14

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_7a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-static/range {p1 .. p2}, Llto;->b(Llso;Ljava/util/Collection;)F

    move-result v2

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_7d
    goto/16 :goto_bc

    nop

    :goto_7e
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_79

    nop

    nop

    :goto_80
    if-eqz v13, :cond_d

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

    :cond_d
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_81
    add-float/2addr v9, v7

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-le v8, v7, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :cond_e
    goto/32 :goto_3d

    nop

    nop

    :goto_83
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_38

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_5

    nop

    nop

    :goto_86
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_87
    add-float/2addr v12, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_89
    new-instance v0, Llsn;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v11, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    if-ltz v5, :cond_f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8d
    const/4 v6, 0x0

    nop

    nop

    :goto_8e
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_90
    return-object v0

    nop

    nop

    :goto_91
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    double-to-float v7, v7

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_93
    check-cast v11, Llso;

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_94
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    nop

    :goto_95
    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_96
    check-cast v18, Ljava/lang/Float;

    nop

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

    :goto_97
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

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

    :goto_99
    goto/16 :goto_a5

    nop

    nop

    :goto_9a
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_9c
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_9d
    if-ne v1, v11, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_10
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iget-object v7, v1, Llso;->r:Lrss;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    aput v2, v3, v4

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    check-cast v5, Ljava/util/List;

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

    :goto_a2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a3
    if-eq v6, v8, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_11
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_a4
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_a6
    invoke-static {v11}, Llto;->f([Llsx;)Ljava/util/HashMap;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_a7
    const/4 v13, 0x0

    nop

    nop

    :goto_a8
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-static {v12}, Llto;->f([Llsx;)Ljava/util/HashMap;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_ac
    add-float v11, v11, v17

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

    :goto_ad
    check-cast v15, Ljava/util/List;

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_ae
    check-cast v16, Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_af
    goto :goto_a8

    nop

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_b1
    float-to-double v7, v13

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_b2
    const/high16 v6, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    check-cast v15, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_b4
    goto/16 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    cmpg-float v5, v14, v10

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

    :goto_b7
    goto/16 :goto_95

    nop

    :goto_b8
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    if-nez v11, :cond_12

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_12
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    if-nez v3, :cond_13

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    goto/16 :goto_47

    nop

    nop

    nop

    :goto_bc
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    if-nez v13, :cond_14

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_bf
    const v1, 0xb

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_c0
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    check-cast v6, Llso;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_c2
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_c3
    if-nez v6, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v11}, Lrss;->h()Z

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c6
    mul-float/2addr v15, v15

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

    nop

    :goto_c7
    if-eqz v8, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_c8
    goto/32 :goto_91

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    const v3, 0x3a03126f    # 5.0E-4f

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_cb
    cmpg-float v7, v6, v5

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_cc
    if-nez v0, :cond_17

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-static {v6, v4}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_ce
    move-object/from16 v0, p0

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    iget v3, v0, Llsi;->a:F

    nop

    nop

    nop

    :goto_d0
    goto/32 :goto_55

    nop

    nop

    :goto_d1
    const/4 v6, 0x1

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

    :goto_d2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-interface {v13, v14}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v13

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

    :goto_d4
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop
.end method
