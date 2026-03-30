.class Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;
.super Ljava/lang/Object;
.source "ArcCurveFit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Arc"
.end annotation


# static fields
.field private static final EPSILON:D = 0.001

.field private static final TAG:Ljava/lang/String; = "Arc"

.field private static ourPercent:[D


# instance fields
.field linear:Z

.field mArcDistance:D

.field mArcVelocity:D

.field mEllipseA:D

.field mEllipseB:D

.field mEllipseCenterX:D

.field mEllipseCenterY:D

.field mLut:[D

.field mOneOverDeltaTime:D

.field mTime1:D

.field mTime2:D

.field mTmpCosAngle:D

.field mTmpSinAngle:D

.field mVertical:Z

.field mX1:D

.field mX2:D

.field mY1:D

.field mY2:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    new-array v0, v0, [D

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const/16 v0, 0x5b

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

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
    return-void

    nop

    nop
.end method

.method constructor <init>(IDDDDDD)V
    .locals 22

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_0
    move-wide/from16 v18, v13

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_2
    iget-boolean v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

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

    :goto_3
    int-to-double v1, v15

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_6a

    nop

    nop

    :goto_5
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-wide v18, 0x3f50624dd2f1a9fcL    # 0.001

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_7
    move-wide/from16 v20, v11

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_9
    move-wide/from16 v1, p6

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

    :goto_a
    sub-double/2addr v6, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    iget-wide v10, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-wide v10, v7

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_d
    if-eq v0, v10, :cond_1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    div-double v0, v4, v6

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_f
    div-double v0, v2, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_10
    move-wide/from16 v20, v11

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v6, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

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

    :goto_12
    if-gez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x6

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-wide v14, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_80

    nop

    nop

    :goto_17
    move-wide/from16 v0, p12

    nop

    :goto_18
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_1a
    mul-double/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_1b
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_83

    nop

    :cond_4
    goto/32 :goto_82

    nop

    :goto_1c
    if-ltz v0, :cond_5

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    :goto_1d
    move-wide v1, v3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move/from16 v15, v16

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    mul-double/2addr v1, v11

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

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_24
    move-wide/from16 v7, p12

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_27
    iput-wide v6, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_28
    iput-boolean v15, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_4f

    nop

    nop

    :goto_2a
    const/4 v0, 0x3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move-wide/from16 v3, p10

    nop

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

    :goto_2c
    iput-wide v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2d
    iget-wide v2, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-wide v10, v7

    nop

    nop

    :goto_2f
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_31
    cmpg-double v0, v16, v18

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    cmpg-double v0, v16, v18

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_33
    move-wide/from16 v4, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_34
    sub-double v18, v13, v11

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

    nop

    :goto_35
    iput-wide v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_36
    move-object/from16 v9, p0

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_37
    mul-double/2addr v6, v10

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

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

    :goto_39
    move-wide/from16 v20, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_3a
    new-array v0, v0, [D

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move-wide/from16 v5, p10

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

    :goto_3c
    iput-wide v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY2:D

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3d
    iput-object v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_3e
    iput-wide v6, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

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

    :goto_3f
    move v0, v15

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_41
    move-wide/from16 v10, p12

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_44
    iput-wide v10, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX1:D

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_45
    mul-double/2addr v1, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_46
    iput-wide v13, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput-wide v1, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

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

    :goto_48
    move-wide/from16 v11, p2

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

    nop

    :goto_49
    iput-wide v14, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY1:D

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez v0, :cond_7

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-eq v10, v15, :cond_8

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_8
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move-wide v10, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_4d
    move-wide/from16 v7, p6

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

    nop

    :goto_4e
    iget-wide v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

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

    nop

    :goto_4f
    sub-double v11, v3, v7

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    :cond_9
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_51
    invoke-direct/range {v0 .. v8}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->b53f6faa933fd87501cabde20247a0d0m(DDDD)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_52
    move-wide/from16 v18, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_53
    iput-wide v1, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

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

    :goto_54
    div-double v11, v16, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_55
    iput-wide v11, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

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

    :goto_56
    move-wide/from16 v2, v20

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_57
    move-wide/from16 v1, p12

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_58
    const/4 v15, 0x1

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

    :goto_59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_5a
    move-wide v0, v5

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_5b
    move/from16 v10, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_5c
    iput-wide v1, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5d
    move-wide/from16 v18, v13

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

    :goto_5e
    iput-wide v12, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX2:D

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_2f

    nop

    :goto_60
    goto/32 :goto_7b

    nop

    nop

    :goto_61
    move-wide v12, v3

    nop

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

    :goto_62
    iput-wide v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_63
    const/4 v15, 0x1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iput-wide v11, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

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

    :goto_65
    iget-boolean v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

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

    :goto_66
    sub-double v13, v1, v5

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_67
    sub-double v16, v6, v10

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_68
    int-to-double v1, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_69
    move-wide v1, v7

    nop

    nop

    :goto_6a
    goto/32 :goto_47

    nop

    nop

    :goto_6b
    move-wide v14, v5

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    move-wide/from16 v0, p12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_6d
    move-wide v12, v3

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_6e
    move-wide v12, v3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6f
    iput-boolean v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_70
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_72
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_73
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_74
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_76
    const/16 v16, -0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_77
    move-wide/from16 v5, p8

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_78
    move-wide/from16 v13, p4

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    move-wide v15, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_7b
    const/16 v0, 0x65

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    move-wide v14, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iput-boolean v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_7e
    goto/16 :goto_21

    nop

    nop

    :goto_7f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    move/from16 v15, v16

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_68

    nop

    nop

    :goto_82
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_36

    nop

    nop

    :goto_84
    move-wide/from16 v3, p8

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_85
    iput-wide v0, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_86
    iget-wide v10, v9, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop
.end method

.method private b53f6faa933fd87501cabde20247a0d0m(DDDD)V
    .locals 27

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget-wide v3, v2, v1

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

    :goto_1
    aput-wide v12, v11, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    aput-wide v13, v2, v1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

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

    nop

    :goto_5
    sub-double v3, p3, p7

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

    :goto_6
    array-length v3, v2

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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_8
    move-wide/from16 v25, v3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    array-length v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_a
    const/4 v11, -0x1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_b
    aget-wide v16, v15, v11

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_c
    goto :goto_3

    nop

    nop

    :goto_d
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    int-to-double v13, v11

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_f
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

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

    :goto_12
    add-int/lit8 v12, v12, -0x1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_13
    sub-double v3, v21, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_14
    div-double v18, v18, v20

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_15
    aput-wide v3, v2, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    move-wide/from16 v23, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_17
    array-length v15, v15

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_19
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

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

    :goto_1a
    return-void

    nop

    nop

    :goto_1b
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_1c
    mul-double v19, v1, v12

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

    nop

    :goto_1d
    add-int/lit8 v14, v14, -0x1

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_1e
    mul-double v21, v3, v17

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    int-to-double v2, v15

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

    :goto_20
    const v0, 0x16

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-double v13, v13, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_3e

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_24
    neg-int v12, v2

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

    :goto_25
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_26
    move v4, v2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_6b

    nop

    :goto_28
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_29
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

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

    :goto_2a
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_2c
    if-eq v2, v11, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0x2

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

    nop

    :goto_2e
    array-length v14, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2f
    sget-object v14, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_32
    const-wide/16 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_33
    sub-double v1, v19, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_34
    aput-wide v1, v3, v11

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

    :goto_35
    int-to-double v12, v2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_36
    const-wide v13, 0x4056800000000000L    # 90.0

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_61

    nop

    :goto_38
    add-int/lit8 v12, v12, -0x1

    nop

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

    :goto_39
    sget-object v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

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

    :goto_3a
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_3b
    move-wide/from16 v25, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_3c
    aget-wide v20, v15, v12

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_3d
    const/4 v1, 0x0

    nop

    nop

    :goto_3e
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    mul-double/2addr v9, v13

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_40
    div-double/2addr v3, v9

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_42
    array-length v12, v12

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    neg-int v11, v2

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move-wide/from16 v23, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_a

    nop

    nop

    :goto_47
    if-lt v11, v13, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_48
    sget-object v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_49
    const-wide/16 v9, 0x0

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_4a
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

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

    nop

    :goto_4b
    if-gez v2, :cond_3

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_3
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    int-to-double v3, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4d
    div-double/2addr v12, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_4e
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_4f
    if-lt v1, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_50
    int-to-double v12, v12

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_51
    move-wide/from16 v3, v25

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_52
    int-to-double v11, v2

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_53
    sub-double v18, v3, v16

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move-wide/from16 v5, v19

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_55
    goto :goto_5e

    nop

    :goto_56
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    add-int/lit8 v15, v15, -0x1

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

    nop

    :goto_59
    array-length v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_5a
    if-gtz v11, :cond_5

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5b
    aput-wide v12, v11, v1

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    add-int/lit8 v11, v11, -0x2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/4 v1, 0x0

    nop

    nop

    :goto_5e
    goto/32 :goto_4

    nop

    nop

    :goto_5f
    array-length v13, v12

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

    :goto_60
    move-wide v15, v9

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    sget-object v12, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iput-wide v9, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

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

    :goto_65
    div-double/2addr v9, v12

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_66
    sub-double v1, p5, p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_67
    if-lt v1, v3, :cond_6

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

    :cond_6
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    move-wide v15, v9

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_69
    div-double/2addr v3, v11

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_6a
    move-wide/from16 v25, v3

    nop

    :goto_6b
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_6c
    move-wide/from16 v1, v23

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    move-wide v15, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_6e
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    int-to-double v14, v14

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

    :goto_70
    sub-double v20, v20, v16

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_71
    sget-object v15, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_72
    int-to-double v9, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_73
    move-wide/from16 v23, v1

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    move-wide/from16 v7, v21

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_75
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_76
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

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

    :goto_77
    const/4 v11, 0x0

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_79
    move-wide v9, v15

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_7a
    move-wide/from16 v16, v3

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    sget-object v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_7c
    div-double/2addr v13, v2

    nop

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

    :goto_7d
    add-double/2addr v1, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop
.end method


# virtual methods
.method getDX()D
    .locals 8

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    div-double/2addr v4, v6

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    mul-double/2addr v0, v2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    :goto_7
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    return-wide v6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_d
    mul-double/2addr v2, v4

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

    nop

    :goto_e
    iget-boolean v6, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    neg-double v6, v0

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

    :goto_10
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    goto :goto_14

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    mul-double v6, v0, v4

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v6, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_18
    neg-double v2, v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    mul-double/2addr v6, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method getDY()D
    .locals 8

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    div-double/2addr v4, v6

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    mul-double v6, v2, v4

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

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

    :goto_4
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    mul-double/2addr v6, v4

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    if-nez v6, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean v6, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    return-wide v6

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    neg-double v6, v2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    neg-double v2, v2

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

    :goto_10
    mul-double/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    mul-double/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_2

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    :goto_17
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0xa

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

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method public getLinearDX(D)D
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    const v1, 0x1f

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

    :goto_1
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

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

    :goto_2
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    const v0, 0x1a

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
.end method

.method public getLinearDY(D)D
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    const v0, 0x1b

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

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

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    return-wide v0

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public getLinearX(D)D
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    iget-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX1:D

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX2:D

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    sub-double v0, p1, v0

    nop

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

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sub-double/2addr v2, p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    const v0, 0x13

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

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    return-wide p1

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    mul-double/2addr v0, v2

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

    :goto_11
    add-double/2addr p1, v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    mul-double/2addr v2, v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public getLinearY(D)D
    .locals 4

    goto/32 :goto_11

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    sub-double v0, p1, v0

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    mul-double/2addr v2, v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-double/2addr p1, v2

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    mul-double/2addr v0, v2

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

    nop

    :goto_a
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    const v1, 0x16

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

    :goto_c
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY2:D

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

    :goto_d
    iget-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY1:D

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

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_f
    return-wide p1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    sub-double/2addr v2, p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method getX()D
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    :goto_1
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    const v1, 0x3

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

    :goto_d
    mul-double/2addr v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    add-double/2addr v0, v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method getY()D
    .locals 6

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_3
    add-double/2addr v0, v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    mul-double/2addr v2, v4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    const v1, 0x1e

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

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method lookup(D)D
    .locals 10

    goto/32 :goto_22

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

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

    :goto_1
    if-gez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    mul-double/2addr v8, v4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v2, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    const v1, 0xf

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v1, v1, -0x1

    nop

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

    :goto_9
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_a
    sub-double v4, v1, v4

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

    :goto_b
    mul-double/2addr v1, p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    double-to-int v4, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-wide v6

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    aget-wide v6, v0, v3

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

    :goto_11
    cmpg-double v2, p1, v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v8, v3, 0x1

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

    :goto_13
    int-to-double v1, v1

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

    :goto_14
    int-to-double v4, v4

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

    :goto_15
    sub-double/2addr v8, v6

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_17
    add-double/2addr v6, v8

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_18
    double-to-int v3, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    return-wide v0

    nop

    nop

    :goto_1a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    array-length v1, v0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    cmpl-double v2, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    return-wide v0

    nop

    nop

    :goto_1e
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_21
    aget-wide v8, v0, v8

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method setPoint(D)V
    .locals 6

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    sub-double/2addr v0, p1

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

    :goto_1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->lookup(D)D

    move-result-wide v4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-double/2addr v4, v2

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_6
    sub-double v0, p1, v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_8
    mul-double/2addr v0, v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

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

    :goto_a
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    :goto_d
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

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

    :goto_f
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1e

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

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method
