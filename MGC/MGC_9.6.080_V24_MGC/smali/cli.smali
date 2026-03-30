.class public final Lcli;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private a:J

.field private final b:Landroid/util/SparseLongArray;

.field private final c:Landroid/util/SparseBooleanArray;

.field private final d:Ljava/util/List;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lcli;->b:Landroid/util/SparseLongArray;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Landroid/util/SparseLongArray;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lcli;->c:Landroid/util/SparseBooleanArray;

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
    iput v0, p0, Lcli;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Landroid/util/SparseBooleanArray;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_b
    iput v0, p0, Lcli;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_d
    iput-object v0, p0, Lcli;->d:Ljava/util/List;

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
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;Lcml;)Lcmb;
    .locals 45

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_0
    if-eq v3, v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    :cond_0
    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v6, 0x9

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    const/4 v7, 0x0

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

    :goto_4
    iget-object v12, v0, Lcli;->d:Ljava/util/List;

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

    nop

    :goto_5
    move v6, v4

    nop

    nop

    :goto_6
    goto/32 :goto_140

    nop

    nop

    nop

    :goto_7
    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_8
    or-long/2addr v4, v11

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

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

    nop

    :goto_b
    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_c
    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    and-long v11, v11, v20

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_e
    new-instance v2, Lcmb;

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    const/4 v12, 0x3

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    :goto_13
    const/16 v6, 0x9

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_15
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v6, 0x0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_149

    nop

    nop

    :goto_18
    goto/16 :goto_13e

    nop

    :goto_19
    goto/32 :goto_70

    nop

    nop

    :goto_1a
    if-ne v6, v12, :cond_1

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_1c
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_13c

    nop

    nop

    nop

    :goto_1e
    if-ltz v12, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_1f
    const/4 v12, 0x3

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    and-long v4, v4, v20

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_21
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_22
    move-object/from16 v17, v2

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_24
    if-lt v13, v12, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :cond_3
    goto/32 :goto_125

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v5

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_26
    if-gez v6, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_4
    goto/32 :goto_81

    nop

    nop

    :goto_27
    invoke-direct {v2, v0, v1}, Lcmb;-><init>(Ljava/util/List;Landroid/view/MotionEvent;)V

    goto/32 :goto_116

    nop

    nop

    nop

    :goto_28
    iget-object v5, v0, Lcli;->b:Landroid/util/SparseLongArray;

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

    nop

    :goto_29
    and-long v2, v2, v20

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

    :goto_2a
    move-wide/from16 v22, v4

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    int-to-long v11, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_2c
    iget-object v3, v0, Lcli;->b:Landroid/util/SparseLongArray;

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    :goto_2d
    const-wide/16 v9, 0x1

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v2, v0, Lcli;->c:Landroid/util/SparseBooleanArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_31

    nop

    nop

    :goto_31
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    :goto_32
    iput-wide v4, v0, Lcli;->a:J

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v8, v0, Lcli;->b:Landroid/util/SparseLongArray;

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_137

    nop

    nop

    :goto_35
    goto/32 :goto_97

    nop

    nop

    :goto_36
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v39

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

    :goto_37
    if-eq v7, v3, :cond_5

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

    :cond_5
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_38
    move v4, v13

    nop

    :goto_39
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v4, v7, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_3b
    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_3c
    const/4 v8, 0x1

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_150

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v4, v5, v11}, Lcdi;->f(JI)J

    move-result-wide v33

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v8, 0x0

    nop

    nop

    :goto_40
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_42
    invoke-interface {v12}, Ljava/util/List;->clear()V

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v5, v0, Lcli;->c:Landroid/util/SparseBooleanArray;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_45
    invoke-virtual {v7, v6}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

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

    :goto_47
    and-int v9, v9, v31

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_48
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_49
    move-object/from16 v38, v12

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

    :goto_4a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v11

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4b
    add-int/2addr v2, v3

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_e6

    nop

    nop

    :goto_4d
    goto/16 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v4, 0x0

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

    :goto_50
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v8, v0, Lcli;->b:Landroid/util/SparseLongArray;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v3, v0, Lcli;->b:Landroid/util/SparseLongArray;

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_55
    move/from16 v37, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    :goto_56
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-interface {v2, v4, v5}, Lcml;->a(J)J

    move-result-wide v11

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v6, 0x4

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_59
    move/from16 v37, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_5a
    or-long v43, v9, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-ne v6, v8, :cond_6

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_17

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_55

    nop

    nop

    :goto_60
    iget-object v3, v0, Lcli;->c:Landroid/util/SparseBooleanArray;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-ne v3, v5, :cond_7

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    :cond_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_64
    const/4 v3, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_65
    add-int/lit8 v13, v13, 0x1

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const/4 v6, 0x4

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_67
    move/from16 v37, v3

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_69
    invoke-direct/range {v17 .. v34}, Lcmc;-><init>(JJJJZFIZLjava/util/List;JJ)V

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_6a
    int-to-long v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_6b
    move/from16 v28, v12

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_6c
    if-lez v0, :cond_8

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2f

    nop

    :goto_6d
    or-long/2addr v2, v9

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

    :goto_6e
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_a3

    nop

    nop

    :goto_70
    const/4 v6, 0x4

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

    :goto_71
    if-ne v5, v12, :cond_9

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_72
    move-wide/from16 v18, v6

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-ne v13, v8, :cond_a

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v0, v0, Lcli;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_75
    iget-object v4, v0, Lcli;->c:Landroid/util/SparseBooleanArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_76
    if-ltz v8, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    const/4 v12, 0x3

    nop

    nop

    :goto_78
    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    or-long/2addr v4, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_7b
    neg-float v9, v9

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_7c
    if-ne v3, v11, :cond_c

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_c
    goto/32 :goto_a6

    nop

    nop

    :goto_7d
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    :goto_7e
    shl-long/2addr v4, v7

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7f
    move/from16 v3, v37

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    :goto_80
    and-long v2, v2, v20

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    :goto_81
    iget-object v7, v0, Lcli;->b:Landroid/util/SparseLongArray;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_82
    goto/16 :goto_40

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_3f

    nop

    nop

    :goto_84
    const/16 v26, 0x1

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

    :goto_85
    if-lt v9, v10, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_86
    goto/16 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_88
    move-wide/from16 v24, v11

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

    :goto_89
    iget-object v6, v0, Lcli;->b:Landroid/util/SparseLongArray;

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object v0, v0, Lcli;->c:Landroid/util/SparseBooleanArray;

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

    :goto_8b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_8d
    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_8e
    iget-object v1, v0, Lcli;->b:Landroid/util/SparseLongArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    move-wide/from16 v24, v11

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v8, v7}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v8

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

    nop

    :goto_91
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_92
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_93
    if-ne v3, v8, :cond_e

    nop

    goto/32 :goto_83

    nop

    :cond_e
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v6}, Landroid/util/SparseLongArray;->clear()V

    :goto_95
    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    if-eq v4, v5, :cond_f

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_f
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_97
    move/from16 v35, v12

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_98
    const-wide v20, 0xffffffffL

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_99
    add-long v4, v12, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_9a
    if-lt v9, v10, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :cond_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    :goto_9c
    goto/16 :goto_13e

    nop

    :goto_9d
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    if-ne v9, v10, :cond_11

    nop

    goto/32 :goto_95

    nop

    :cond_11
    :goto_9f
    goto/32 :goto_db

    nop

    nop

    :goto_a0
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

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

    nop

    :goto_a1
    goto/16 :goto_13e

    nop

    :goto_a2
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v4

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_a4
    iget-object v12, v0, Lcli;->b:Landroid/util/SparseLongArray;

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_a5
    iput-wide v4, v0, Lcli;->a:J

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

    :goto_a6
    const/4 v5, 0x7

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_a7
    move-object/from16 v2, p2

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_a8
    move/from16 v36, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_a9
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

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

    :goto_aa
    goto/16 :goto_160

    nop

    nop

    :goto_ab
    goto/32 :goto_159

    nop

    nop

    :goto_ac
    invoke-virtual {v6, v7}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v6

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_ad
    const/16 v7, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_ae
    goto/16 :goto_1d

    nop

    nop

    :goto_af
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {v4, v7, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    const/4 v12, 0x3

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_b2
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    :goto_b3
    goto/16 :goto_4c

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :goto_b6
    goto/16 :goto_6

    nop

    nop

    :goto_b7
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    :goto_b9
    and-long v4, v4, v20

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    const/16 v4, 0xa

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    :goto_bc
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_bd
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

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

    nop

    :goto_be
    int-to-long v10, v3

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_bf
    move-wide/from16 v22, v4

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

    :goto_c0
    if-nez v6, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    :cond_12
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    const v31, 0x7fffffff

    nop

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    if-ne v6, v11, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_c3
    int-to-long v4, v4

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    iget-object v6, v0, Lcli;->c:Landroid/util/SparseBooleanArray;

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

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

    :goto_c6
    const/16 v28, 0x1

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    :goto_c7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_c8
    iget-wide v11, v0, Lcli;->a:J

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

    :goto_c9
    iget-object v6, v0, Lcli;->b:Landroid/util/SparseLongArray;

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_ca
    const/4 v11, 0x3

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_cb
    iput-wide v7, v0, Lcli;->a:J

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    :goto_cc
    iget-object v7, v0, Lcli;->c:Landroid/util/SparseBooleanArray;

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

    :goto_cd
    if-ne v3, v6, :cond_14

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_163

    nop

    nop

    nop

    :goto_ce
    if-nez v5, :cond_15

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_cf
    const/4 v6, 0x4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v1, v4, v6}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v17

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    :goto_d1
    iget v10, v0, Lcli;->e:I

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    move/from16 v28, v11

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_d3
    move/from16 v28, v6

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

    :goto_d4
    iget-object v3, v0, Lcli;->c:Landroid/util/SparseBooleanArray;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-direct/range {v38 .. v44}, Lcle;-><init>(JJJ)V

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    shl-long/2addr v11, v7

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_d7
    const-wide/16 v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    const/4 v4, 0x0

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clear()V

    goto/32 :goto_8a

    nop

    nop

    :goto_da
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_db
    iput v6, v0, Lcli;->e:I

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_dc
    if-ne v2, v3, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    :goto_de
    if-ne v3, v5, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_21

    nop

    nop

    :goto_df
    const/high16 v10, 0x7f800000    # Float.POSITIVE_INFINITY

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

    :goto_e0
    iput v9, v0, Lcli;->f:I

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_e1
    or-long/2addr v4, v11

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

    nop

    :goto_e2
    move v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    :goto_e3
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    iget-wide v13, v0, Lcli;->a:J

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_e5
    add-long v4, v11, v9

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    if-gez v2, :cond_18

    nop

    goto/32 :goto_b4

    nop

    :cond_18
    goto/32 :goto_2c

    nop

    nop

    :goto_e7
    iget-object v4, v0, Lcli;->b:Landroid/util/SparseLongArray;

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    new-instance v2, Lcmc;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_e9
    move/from16 v35, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_ea
    move-object/from16 v30, v5

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    add-long v7, v13, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_ed
    iget-object v12, v0, Lcli;->b:Landroid/util/SparseLongArray;

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    if-ne v3, v4, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    const/4 v3, 0x1

    nop

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

    :goto_f0
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    nop

    nop

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

    :goto_f1
    goto/16 :goto_3b

    nop

    nop

    nop

    :goto_f2
    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    :goto_f3
    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_f4
    const/4 v11, 0x1

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    :goto_f5
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    :goto_f6
    goto/32 :goto_112

    nop

    nop

    nop

    :goto_f7
    move-wide/from16 v41, v43

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    iget-object v2, v0, Lcli;->b:Landroid/util/SparseLongArray;

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    :goto_f9
    move-object/from16 v2, p2

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_fa
    return-object v0

    nop

    nop

    nop

    :goto_fb
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    const/16 v15, 0x8

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    :goto_fd
    const/4 v8, 0x1

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    int-to-long v2, v3

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_100
    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_101
    move/from16 v3, v37

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    :goto_102
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    invoke-virtual {v8, v7, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_104
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

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

    :goto_106
    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->delete(I)V

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_107
    iget-object v2, v0, Lcli;->b:Landroid/util/SparseLongArray;

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_108
    const/16 v26, 0x0

    nop

    nop

    :goto_109
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_10a
    const/4 v12, 0x5

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

    :goto_10b
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    if-ne v2, v3, :cond_1a

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_10e
    move-object/from16 v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    goto/16 :goto_68

    nop

    :goto_110
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_111
    if-eq v6, v10, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    :cond_1b
    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    :goto_112
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

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

    :goto_113
    goto/16 :goto_3b

    nop

    nop

    :goto_114
    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_115
    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_116
    return-object v2

    nop

    nop

    :goto_117
    goto/32 :goto_8e

    nop

    nop

    :goto_118
    if-nez v5, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_119
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v30

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

    nop

    :goto_11a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11b
    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_11c
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v29

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_11d
    if-eqz v3, :cond_1d

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_11e
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    invoke-virtual {v5, v2}, Landroid/util/SparseLongArray;->removeAt(I)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_120
    move v11, v6

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_121
    const/4 v6, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_122
    int-to-long v9, v9

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_123
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    const/4 v5, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_125
    iget-object v14, v0, Lcli;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_126
    const/4 v4, 0x3

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    move/from16 v5, v36

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_129
    const/16 v2, 0xa

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    const/4 v11, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    :goto_12b
    if-nez v16, :cond_1e

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

    :cond_1e
    :goto_12c
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    if-ne v5, v6, :cond_1f

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_134

    nop

    nop

    nop

    nop

    :goto_12e
    const/4 v6, 0x4

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    goto/16 :goto_3d

    nop

    :goto_130
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_131
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    const/4 v12, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_133
    if-eqz v13, :cond_20

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_134
    goto/16 :goto_78

    nop

    :goto_135
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_136
    move-wide/from16 v18, v11

    nop

    nop

    nop

    nop

    nop

    :goto_137
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_138
    const v0, 0x14

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_139
    if-ne v5, v11, :cond_21

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :cond_21
    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_13b
    shl-long v9, v10, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_13c
    move-wide/from16 v31, v2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_13d
    const/16 v28, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    goto/32 :goto_115

    nop

    nop

    nop

    :goto_13f
    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    :goto_140
    if-lt v6, v5, :cond_22

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_141
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_142
    const-wide/16 v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_143
    move/from16 v12, v35

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    :goto_144
    goto :goto_13e

    nop

    nop

    nop

    nop

    :goto_145
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_146
    const/16 v4, 0xa

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    :goto_147
    move/from16 v36, v5

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_148
    if-ne v5, v11, :cond_23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :cond_23
    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_149
    if-lt v6, v11, :cond_24

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_d0

    nop

    nop

    :goto_14a
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_14b
    const/4 v4, 0x0

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :goto_14d
    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    new-instance v12, Lcle;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v16

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    :goto_150
    const/4 v6, 0x6

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_151
    invoke-virtual {v7, v6, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/32 :goto_12f

    nop

    nop

    :goto_152
    invoke-virtual {v1, v4, v6}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v29

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_153
    int-to-long v2, v12

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    :goto_154
    const/4 v5, 0x3

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_155
    if-gt v2, v3, :cond_25

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

    :cond_25
    goto/32 :goto_107

    nop

    nop

    :goto_156
    and-int v9, v30, v31

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_157
    add-int/lit8 v2, v2, -0x1

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

    :goto_158
    invoke-virtual {v12, v6, v13, v14}, Landroid/util/SparseLongArray;->put(IJ)V

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :goto_159
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_15a
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    shl-long/2addr v9, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_15c
    iget v10, v0, Lcli;->f:I

    nop

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

    :goto_15d
    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    add-float/2addr v9, v3

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

    nop

    :goto_15f
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_160
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_161
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    :goto_162
    int-to-long v11, v11

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

    :goto_163
    const/4 v8, -0x1

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    :goto_164
    goto/16 :goto_4e

    nop

    :goto_165
    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_166
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_10f

    nop

    nop

    :goto_167
    if-eqz v5, :cond_26

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_168
    iget-wide v12, v0, Lcli;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_169
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    :goto_16a
    invoke-interface {v2, v4, v5}, Lcml;->a(J)J

    move-result-wide v11

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_16b
    const/16 v11, 0x9

    nop

    nop

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

    :goto_16c
    int-to-long v11, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_16d
    shl-long/2addr v11, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16e
    if-eq v2, v15, :cond_27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :cond_27
    goto/32 :goto_129

    nop

    nop

    :goto_16f
    invoke-virtual {v12, v6}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_170
    add-int v0, v0, v1

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_171
    goto/16 :goto_8d

    nop

    nop

    nop

    nop

    :goto_172
    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_173
    if-eq v3, v15, :cond_28

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_14f

    nop

    nop

    :goto_174
    int-to-long v4, v4

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(I)V
    .locals 1

    goto/32 :goto_3

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
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcli;->b:Landroid/util/SparseLongArray;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcli;->c:Landroid/util/SparseBooleanArray;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
