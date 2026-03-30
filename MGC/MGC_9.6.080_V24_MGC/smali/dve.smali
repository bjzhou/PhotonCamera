.class public final Ldve;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ldvf;

.field private c:Landroid/view/VelocityTracker;

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private final h:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldvf;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    iput v0, p0, Ldve;->e:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    filled-new-array {v0, v1}, [I

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Ldve;->g:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Ldve;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Ldve;->b:Ldvf;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_b
    iput-object v0, p0, Ldve;->h:[I

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

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    :goto_10
    iput-object p1, p0, Ldve;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    const v1, 0x7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x7fffffff

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;I)V
    .locals 20

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int/lit8 v9, v9, 0x14

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v13, v4, Ldvs;->b:[J

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_3
    iget-object v7, v0, Ldve;->h:[I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    int-to-float v3, v4

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_a
    goto/16 :goto_3a

    nop

    :goto_b
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_c
    neg-int v4, v3

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_d
    iget-object v4, v0, Ldve;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_10
    if-eq v11, v10, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    :cond_0
    goto/32 :goto_d8

    nop

    nop

    :goto_11
    invoke-static {v11}, Ldvs;->a(F)F

    move-result v9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v3, :cond_1

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :cond_1
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, v0, Ldve;->c:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_16
    move v10, v5

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

    :goto_17
    if-nez v14, :cond_2

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v9, v9, 0x1

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

    nop

    :goto_19
    iget-object v5, v4, Ldvs;->a:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v12, v12, 0x1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1b
    iget v2, v0, Ldve;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_1c
    if-lt v10, v13, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_3
    goto/32 :goto_71

    nop

    nop

    :goto_1d
    if-gtz v7, :cond_4

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

    :cond_4
    goto/32 :goto_90

    nop

    nop

    :goto_1e
    move v8, v2

    nop

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

    :goto_1f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v8

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_20
    iput v13, v4, Ldvs;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_21
    move-object/from16 v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_22
    iget v9, v4, Ldvs;->d:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v10, 0x2

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

    :goto_24
    iget v13, v4, Ldvs;->d:I

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_25
    if-eq v12, v6, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :cond_5
    goto/32 :goto_be

    nop

    nop

    :goto_26
    mul-float/2addr v7, v5

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_27
    aput v4, v7, v6

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eq v4, v2, :cond_6

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_6
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    aget-wide v11, v11, v5

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2c
    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    cmpg-float v3, v3, v5

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_2e
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v2, :cond_7

    nop

    nop

    goto/32 :goto_d4

    nop

    :cond_7
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sub-float v7, v5, v14

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

    :goto_31
    rem-int/lit8 v13, v13, 0x14

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

    :goto_32
    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->getAxisVelocity(I)F

    move-result v1

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

    nop

    nop

    :goto_33
    sget-object v4, Ldvr;->a:Ljava/util/Map;

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

    :goto_34
    iget-object v8, v4, Ldvs;->b:[J

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_35
    cmpl-float v2, v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_36
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

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

    nop

    :goto_37
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_38
    if-eqz v3, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput v5, v4, Ldvs;->c:F

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sub-long/2addr v10, v14

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v3, v0, Ldve;->c:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/high16 v5, 0x447a0000    # 1000.0f

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_3e
    cmp-long v14, v17, v15

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3f
    iget-object v11, v4, Ldvs;->b:[J

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

    :goto_40
    invoke-virtual {v4, v8, v1, v9}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity(III)I

    move-result v8

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_41
    aget-wide v18, v8, v13

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_42
    const v0, 0x11

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_44
    iput v8, v0, Ldve;->d:F

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v3, v0, Ldve;->c:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_47
    cmpl-float v7, v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_86

    nop

    nop

    :goto_49
    goto/32 :goto_d

    nop

    nop

    :goto_4a
    sget-object v4, Ldvr;->a:Ljava/util/Map;

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_4b
    invoke-static {v11}, Ldvs;->a(F)F

    move-result v14

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_7d

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4f
    int-to-float v3, v3

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_50
    iput v3, v0, Ldve;->g:I

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-eqz v12, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :cond_9
    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_52
    iput v5, v4, Ldvs;->c:F

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_53
    iput-object v1, v0, Ldve;->c:Landroid/view/VelocityTracker;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_54
    rem-int/lit8 v15, v13, 0x14

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-eq v4, v3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_a
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_56
    div-float/2addr v9, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iput v9, v4, Ldvs;->c:F

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_58
    iget v7, v4, Ldvs;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_59
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    mul-float/2addr v11, v5

    nop

    :goto_5b
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-eq v3, v4, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    aput v8, v7, v5

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_5f
    iget-object v3, v0, Ldve;->b:Ldvf;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v6, 0x1

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

    :goto_61
    aget v3, v4, v6

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_62
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_63
    add-int/lit8 v13, v13, -0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_64
    check-cast v4, Ldvs;

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_65
    if-ne v6, v3, :cond_c

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_66
    const/16 v4, 0x3e8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-lez v0, :cond_d

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_6

    nop

    :goto_68
    add-int/lit8 v13, v13, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_69
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_6a
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-interface {v3}, Ldvf;->a()F

    move-result v3

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_6c
    iput v2, v0, Ldve;->f:I

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_6d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_6e
    cmpg-float v7, v9, v7

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object v14, v4, Ldvs;->b:[J

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_70
    add-int/lit8 v9, v9, -0x1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_71
    add-int v13, v10, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_72
    const-wide/16 v18, 0x64

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_73
    goto/16 :goto_ba

    nop

    nop

    :goto_74
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_75
    aget v5, v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_76
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    nop

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

    :goto_77
    goto/16 :goto_97

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_79
    add-float/2addr v11, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_7a
    if-gez v3, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const v1, 0xb

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

    :goto_7c
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    move v12, v10

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget v11, v4, Ldvs;->d:I

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_82
    return-void

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_84
    move/from16 v1, p2

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

    :goto_85
    move v2, v6

    nop

    nop

    :goto_86
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_87
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_88
    aget v5, v5, v13

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_89
    rsub-int/lit8 v9, v9, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8a
    move v8, v1

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v4, v8, v1, v9}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity(III)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_8d
    iget v4, v0, Ldve;->f:I

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_8e
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_8f
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_90
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_91
    invoke-interface {v3, v1}, Ldvf;->c(F)Z

    move-result v3

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

    :goto_92
    neg-float v5, v5

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_93
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v3, v0, Ldve;->b:Ldvf;

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_96
    const/4 v2, 0x0

    nop

    :goto_97
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    long-to-float v10, v10

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9b
    goto/16 :goto_12

    nop

    nop

    :goto_9c
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9d
    sub-long v7, v18, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_9e
    goto/16 :goto_8b

    nop

    nop

    :goto_9f
    goto/32 :goto_8a

    nop

    nop

    :goto_a0
    iput-object v3, v0, Ldve;->c:Landroid/view/VelocityTracker;

    nop

    :goto_a1
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iget-object v3, v0, Ldve;->b:Ldvf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_a3
    move v2, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-interface {v3}, Ldvf;->b()V

    :goto_a6
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    long-to-float v7, v7

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

    :goto_a8
    invoke-virtual {v3, v4, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    iget v4, v0, Ldve;->g:I

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    const/4 v5, 0x0

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v3, v0, Ldve;->h:[I

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_ac
    mul-float/2addr v9, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    sub-long v16, v11, v14

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

    :goto_af
    mul-float/2addr v1, v3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_b0
    goto/16 :goto_49

    nop

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_b2
    cmpl-float v3, v3, v2

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b3
    iput v1, v0, Ldve;->e:I

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_b4
    iget v4, v0, Ldve;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    add-int/2addr v13, v6

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

    :goto_b6
    if-nez v4, :cond_f

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

    :cond_f
    goto/32 :goto_22

    nop

    nop

    :goto_b7
    if-nez v2, :cond_10

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

    :cond_10
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_b8
    aget v9, v12, v9

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

    :goto_b9
    if-lt v9, v10, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :cond_11
    :goto_ba
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_bb
    if-ltz v7, :cond_12

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    aget v3, v3, v5

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_bd
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_be
    const/high16 v5, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    aget-wide v14, v13, v9

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

    :goto_c0
    aget-wide v17, v14, v13

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_c1
    neg-float v7, v7

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    if-lt v11, v10, :cond_13

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :cond_13
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    rem-int/lit8 v9, v9, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_c5
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    aget-wide v10, v13, v9

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_c7
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_c8
    cmp-long v16, v16, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

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

    :goto_ca
    if-ne v4, v1, :cond_14

    nop

    goto/32 :goto_b1

    nop

    nop

    :cond_14
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_cb
    goto/16 :goto_ba

    nop

    nop

    nop

    nop

    :goto_cc
    goto/32 :goto_ce

    nop

    nop

    :goto_cd
    iget-object v4, v0, Ldve;->h:[I

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_ce
    iget-object v12, v4, Ldvs;->a:[F

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_cf
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_d0
    const/4 v5, 0x0

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

    :goto_d1
    const v4, 0x7fffffff

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    aget-wide v15, v14, v15

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_d3
    goto/16 :goto_a6

    nop

    nop

    nop

    nop

    :goto_d4
    goto/32 :goto_96

    nop

    nop

    :goto_d5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    div-float/2addr v5, v7

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_d7
    iget v13, v4, Ldvs;->d:I

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

    :goto_d8
    add-int/2addr v9, v6

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    cmp-long v12, v14, v10

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_da
    if-gtz v16, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_db
    rem-int/lit8 v9, v9, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_dc
    if-nez v1, :cond_16

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

    :cond_16
    goto/32 :goto_4c

    nop

    nop

    nop
.end method
