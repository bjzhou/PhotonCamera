.class public Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;
.source "MotionKeyCycle.java"


# static fields
.field public static final KEY_TYPE:I = 0x4

.field static final NAME:Ljava/lang/String; = "KeyCycle"

.field public static final SHAPE_BOUNCE:I = 0x6

.field public static final SHAPE_COS_WAVE:I = 0x5

.field public static final SHAPE_REVERSE_SAW_WAVE:I = 0x4

.field public static final SHAPE_SAW_WAVE:I = 0x3

.field public static final SHAPE_SIN_WAVE:I = 0x0

.field public static final SHAPE_SQUARE_WAVE:I = 0x1

.field public static final SHAPE_TRIANGLE_WAVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyCycle"

.field public static final WAVE_OFFSET:Ljava/lang/String; = "waveOffset"

.field public static final WAVE_PERIOD:Ljava/lang/String; = "wavePeriod"

.field public static final WAVE_PHASE:Ljava/lang/String; = "wavePhase"

.field public static final WAVE_SHAPE:Ljava/lang/String; = "waveShape"


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mCustomWaveShape:Ljava/lang/String;

.field private mElevation:F

.field private mProgress:F

.field private mRotation:F

.field private mRotationX:F

.field private mRotationY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTransitionEasing:Ljava/lang/String;

.field private mTransitionPathRotate:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private mTranslationZ:F

.field private mWaveOffset:F

.field private mWavePeriod:F

.field private mWavePhase:F

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

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

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

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

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCurveFit:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

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

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

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

    :goto_9
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mType:I

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

    :goto_11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mProgress:F

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_15
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_16
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

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

    :goto_18
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

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

    :goto_1a
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1b
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustom:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

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

    :goto_21
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_22
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_23
    const v1, 0x5

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_24
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public addCycleValues(Ljava/util/HashMap;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v5}, Landroidx/constraintlayout/core/motion/CustomVariable;->getType()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v5, Landroidx/constraintlayout/core/motion/CustomVariable;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    move-object/from16 v20, v8

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v13, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move/from16 v22, v9

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v5}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    move-result v14

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->getValue(Ljava/lang/String;)F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v21, -0x1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_d
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

    :goto_e
    move/from16 v19, v7

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v4, "CUSTOM"

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move/from16 v25, v4

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_14
    move/from16 v24, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_15
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_39

    nop

    :goto_17
    if-ne v6, v7, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    :goto_18
    goto/16 :goto_46

    nop

    nop

    :goto_19
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

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

    nop

    :goto_1c
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1e
    move/from16 v18, v6

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_15

    nop

    nop

    :goto_21
    invoke-virtual/range {v17 .. v25}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setPoint(IILjava/lang/String;IFFFF)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move/from16 v23, v10

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_46

    nop

    :goto_24
    goto/32 :goto_36

    nop

    nop

    :goto_25
    iget v11, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v6, v16

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_28
    iget v10, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2a
    iget v7, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

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

    :goto_2b
    iget v11, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_2c
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2d
    iget v7, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mFramePosition:I

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual/range {v6 .. v15}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setPoint(IILjava/lang/String;IFFFFLjava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2f
    move-object/from16 v17, v5

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

    :goto_30
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

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

    nop

    nop

    :goto_31
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

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

    :goto_32
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_33
    iget v12, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_34
    goto/16 :goto_46

    nop

    :goto_35
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget v6, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mFramePosition:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v8, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_38
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_40

    nop

    nop

    :goto_3b
    if-nez v5, :cond_5

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_5
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3c
    const/16 v7, 0x385

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

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

    nop

    :goto_3e
    const v1, 0x8

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_40
    move-object/from16 v0, p0

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

    :goto_41
    goto :goto_46

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_2d

    nop

    nop

    :goto_43
    if-nez v5, :cond_6

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_44
    move-object/from16 v16, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_45
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_46
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_47
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move-object v15, v5

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

    :goto_49
    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4a
    iget v9, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4b
    if-eqz v16, :cond_7

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

    :cond_7
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_4d
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v10, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast v16, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

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

    :goto_50
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustom:Ljava/util/HashMap;

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
.end method

.method public addValues(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    move-result-object v0

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
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public dump()V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v2, ", mWavePeriod="

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

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

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    const v0, 0xb

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

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_7
    const-string v2, "MotionKeyCycle{mWaveShape="

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_8
    const-string v2, ", mWaveOffset="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

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

    :goto_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    const-string v2, ", mWavePhase="

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

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

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    :goto_17
    const/16 v2, 0x7d

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

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

    nop

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    nop

    :goto_1f
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

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

    :goto_20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    :goto_21
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    :goto_23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    :goto_24
    const-string v2, ", mRotation="

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

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

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_54

    nop

    nop

    :goto_3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

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

    :goto_4
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_9
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_14
    if-lez v0, :cond_4

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_4
    goto/32 :goto_50

    nop

    :goto_15
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_5
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_16
    const-string v0, "alpha"

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

    :goto_17
    return-void

    nop

    nop

    :goto_18
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustom:Ljava/util/HashMap;

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

    :goto_1d
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_7

    nop

    goto/32 :goto_5e

    nop

    :cond_7
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

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

    :goto_23
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_26
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string v0, "rotationZ"

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_28
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_29
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2a
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    nop

    nop

    :goto_2b
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v0, "translationZ"

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2d
    const-string v0, "rotationX"

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

    :goto_2e
    goto/32 :goto_51

    nop

    nop

    :goto_2f
    const-string v3, "CUSTOM,"

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_30
    const-string v0, "scaleY"

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_32
    const-string v0, "translationX"

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_33
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_34
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_36
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_38
    goto/32 :goto_34

    nop

    nop

    :goto_39
    if-eqz v0, :cond_8

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

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

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    nop

    :goto_3b
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3c
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    :goto_3e
    rem-int v0, v0, v1

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

    :goto_3f
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_40
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_42
    const-string v0, "rotationY"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustom:Ljava/util/HashMap;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_45
    if-eqz v0, :cond_9

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_9
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_47
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const-string v0, "scaleX"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_4a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_4b
    if-gtz v0, :cond_a

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_43

    nop

    nop

    :goto_4c
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_4d
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4f
    if-eqz v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2d

    nop

    nop

    :goto_50
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_53
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const-string v0, "elevation"

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

    nop

    :goto_55
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_56
    const-string v0, "translationY"

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_57
    if-eqz v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-eqz v0, :cond_d

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

    :cond_d
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_59
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_5c
    check-cast v1, Ljava/lang/String;

    nop

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

    :goto_5d
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_17

    nop

    nop

    :goto_5f
    const-string v0, "pathRotate"

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop
.end method

.method public getId(Ljava/lang/String;)I
    .locals 2

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0x192

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_4
    const/16 v0, 0xf

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

    :goto_5
    return v0

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_86

    nop

    nop

    nop

    :goto_6
    const-string v0, "translationZ"

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_7
    move v0, v1

    nop

    :goto_8
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_9
    const/16 v0, 0x13b

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    const/16 v0, 0x132

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "progress"

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

    :goto_d
    return v0

    nop

    :pswitch_1
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_8

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "pathRotate"

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v0, 0x1a6

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_11
    const/16 v0, 0x134

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_8

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return v0

    nop

    :pswitch_2
    goto/32 :goto_22

    nop

    nop

    :goto_16
    goto/16 :goto_8

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_17
    const-string v0, "pivotY"

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3b

    nop

    :goto_1a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_20
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/16 v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_22
    const/16 v0, 0x131

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_8

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_25
    return v0

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_7e

    nop

    nop

    :goto_26
    const-string v0, "translationY"

    nop

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

    :goto_27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_29
    const-string v0, "rotationZ"

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

    :goto_2a
    const/16 v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_2b
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_2c
    goto/16 :goto_8

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v0, 0x6

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

    :goto_2e
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_8

    nop

    :sswitch_5
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_8

    nop

    nop

    :sswitch_6
    goto/32 :goto_26

    nop

    nop

    :goto_31
    return v0

    nop

    :pswitch_4
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v1, -0x1

    nop

    sparse-switch v0, :sswitch_data_0

    :goto_33
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_34
    const-string v0, "rotationX"

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_37
    if-nez v0, :cond_7

    nop

    goto/32 :goto_33

    nop

    :cond_7
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_3a
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_48

    nop

    nop

    :goto_3c
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v0, :cond_8

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const-string v0, "customWave"

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_8

    nop

    nop

    nop

    :sswitch_7
    goto/32 :goto_6

    nop

    nop

    :goto_41
    const-string v0, "curveFit"

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

    :goto_42
    const-string v0, "translationX"

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_43
    const-string v0, "alpha"

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/16 v0, 0x8

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_45
    if-nez v0, :cond_9

    nop

    goto/32 :goto_33

    nop

    :cond_9
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v0, 0x2

    nop

    nop

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

    :goto_47
    return v0

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e458df6 -> :sswitch_f
        -0x4e19c2d5 -> :sswitch_12
        -0x4a771f66 -> :sswitch_0
        -0x4a771f65 -> :sswitch_8
        -0x4a771f64 -> :sswitch_a
        -0x490b9c39 -> :sswitch_1
        -0x490b9c38 -> :sswitch_6
        -0x490b9c37 -> :sswitch_7
        -0x3cc89b6d -> :sswitch_e
        -0x3bab3dd3 -> :sswitch_b
        -0x3b1c8a3f -> :sswitch_10
        -0x3ae243aa -> :sswitch_11
        -0x3ae243a9 -> :sswitch_13
        -0x3621dfb2 -> :sswitch_9
        -0x3621dfb1 -> :sswitch_14
        0x589b15e -> :sswitch_5
        0x65b097b -> :sswitch_c
        0x2283b8a2 -> :sswitch_4
        0x2fdfbde0 -> :sswitch_3
        0x5b5cc028 -> :sswitch_d
        0x73b66312 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_c
        :pswitch_2
        :pswitch_f
        :pswitch_e
        :pswitch_9
        :pswitch_13
        :pswitch_8
        :pswitch_3
        :pswitch_12
        :pswitch_a
        :pswitch_11
        :pswitch_1
        :pswitch_14
        :pswitch_10
        :pswitch_4
        :pswitch_d
        :pswitch_6
        :pswitch_b
    .end packed-switch

    :goto_48
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/16 v0, 0x1a9

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

    :goto_4a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_4b
    if-nez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const-string v0, "pivotX"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_4e
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/16 v0, 0x1a0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_51
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :sswitch_8
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/16 v0, 0x1a5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_53
    const/16 v0, 0xe

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

    :goto_54
    const/16 v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_55
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const-string v0, "offset"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_57
    const-string v0, "rotationY"

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

    :goto_58
    goto/16 :goto_8

    nop

    nop

    :sswitch_9
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_59
    const/16 v0, 0x139

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_8

    nop

    :sswitch_a
    goto/32 :goto_29

    nop

    nop

    :goto_5b
    if-nez v0, :cond_c

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_5c
    const/16 v0, 0x10

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_5d
    const/16 v0, 0x136

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

    :goto_5e
    return v0

    nop

    :pswitch_6
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const/16 v0, 0xa

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

    nop

    :goto_60
    const-string v0, "easing"

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

    :goto_61
    return v0

    nop

    nop

    :pswitch_7
    goto/32 :goto_1

    nop

    nop

    :goto_62
    return v0

    nop

    nop

    :pswitch_8
    goto/32 :goto_9f

    nop

    nop

    :goto_63
    const/16 v0, 0x135

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_64
    return v0

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    return v0

    nop

    :pswitch_a
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_66
    return v1

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_67
    const-string v0, "waveShape"

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_68
    const/16 v0, 0x130

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_69
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_6a
    const/16 v0, 0xd

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

    :goto_6b
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :sswitch_b
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6c
    const-string v0, "visibility"

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6e
    const/4 v0, 0x0

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

    :goto_6f
    if-nez v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_d
    goto/32 :goto_92

    nop

    nop

    :goto_70
    goto/16 :goto_8

    nop

    nop

    :sswitch_c
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_3c

    nop

    nop

    :goto_72
    const/4 v0, 0x7

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

    :goto_73
    const/16 v0, 0x1a4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_e
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_76
    if-nez v0, :cond_f

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_8

    nop

    nop

    nop

    :sswitch_d
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_78
    goto/16 :goto_8

    nop

    nop

    :sswitch_e
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_79
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :sswitch_f
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_7a
    const/16 v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_7b
    const/16 v0, 0x12

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_7c
    const/16 v0, 0x193

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_7d
    const v0, 0x11

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

    :goto_7e
    const/16 v0, 0x138

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_80
    const/16 v0, 0x13a

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

    :goto_81
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :sswitch_10
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    const-string v0, "scaleX"

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_83
    return v0

    nop

    :pswitch_d
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_84
    return v0

    nop

    nop

    :pswitch_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_85
    goto/16 :goto_8

    nop

    nop

    nop

    :sswitch_11
    goto/32 :goto_4c

    nop

    nop

    :goto_86
    const/16 v0, 0x191

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_87
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :sswitch_12
    goto/32 :goto_60

    nop

    nop

    :goto_88
    if-nez v0, :cond_10

    nop

    goto/32 :goto_33

    nop

    :cond_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    const/16 v0, 0x1a8

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_8a
    const/16 v0, 0x1a7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_8b
    return v0

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8c
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    if-nez v0, :cond_11

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_11
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    const/4 v0, 0x1

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :sswitch_13
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_90
    const-string v0, "phase"

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    if-nez v0, :cond_12

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_92
    const/16 v0, 0x14

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

    :goto_93
    goto/16 :goto_8

    nop

    nop

    nop

    :sswitch_14
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    const-string v0, "scaleY"

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_95
    const-string v0, "period"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_96
    const/16 v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_99
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9a
    return v0

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_9b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9c
    if-nez v0, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_13
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    if-nez v0, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_9f
    const/16 v0, 0x137

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    if-nez v0, :cond_15

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_a1
    return v0

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    return v0

    nop

    :pswitch_14
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getValue(Ljava/lang/String;)F
    .locals 1

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_19

    nop

    :sswitch_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_19

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    :pswitch_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    nop

    :pswitch_1
    goto/32 :goto_1b

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    :pswitch_2
    goto/32 :goto_2f

    nop

    nop

    :goto_7
    const-string v0, "alpha"

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    :pswitch_3
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_26

    nop

    nop

    :goto_c
    const-string v0, "translationY"

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

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

    :goto_e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mProgress:F

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

    :goto_10
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_11
    return v0

    nop

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_0
        -0x4a771f65 -> :sswitch_a
        -0x4a771f64 -> :sswitch_9
        -0x490b9c39 -> :sswitch_2
        -0x490b9c38 -> :sswitch_d
        -0x490b9c37 -> :sswitch_8
        -0x3cc89b6d -> :sswitch_1
        -0x3bab3dd3 -> :sswitch_5
        -0x3621dfb2 -> :sswitch_4
        -0x3621dfb1 -> :sswitch_c
        -0x42d1a3 -> :sswitch_3
        0x589b15e -> :sswitch_7
        0x65b097b -> :sswitch_b
        0x2fdfbde0 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2
        :pswitch_a
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_b
        :pswitch_d
        :pswitch_1
        :pswitch_c
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_4
    .end packed-switch

    :goto_12
    return v0

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_f

    nop

    nop

    :goto_13
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_16
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

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

    :goto_17
    const-string v0, "phase"

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_18
    const/4 v0, -0x1

    nop

    nop

    :goto_19
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1a
    return v0

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

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

    :goto_1c
    goto/16 :goto_19

    nop

    nop

    :sswitch_3
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    nop

    :goto_1e
    const-string v0, "elevation"

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

    :goto_1f
    const-string v0, "rotationZ"

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_20
    return v0

    nop

    nop

    :pswitch_6
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_1

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_1
    goto/32 :goto_60

    nop

    nop

    :goto_22
    const-string v0, "rotationX"

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/high16 v0, 0x7fc00000    # Float.NaN

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

    :goto_24
    return v0

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_25
    const/16 v0, 0xa

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_26
    const-string v0, "translationX"

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_2

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_2
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_2b
    const-string v0, "scaleX"

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_2c
    const-string v0, "rotationY"

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v0, "translationZ"

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_3

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_3
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_30
    const/4 v0, 0x0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    nop

    sparse-switch v0, :sswitch_data_0

    :goto_32
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v0, 0x5

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_34
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5c

    nop

    nop

    :goto_35
    return v0

    nop

    nop

    :pswitch_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_9

    nop

    nop

    nop

    :sswitch_6
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const-string v0, "progress"

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v0, 0x7

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

    :goto_3e
    const-string v0, "pathRotate"

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

    :goto_3f
    return v0

    nop

    :pswitch_9
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v0, :cond_6

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

    :cond_6
    goto/32 :goto_58

    nop

    nop

    :goto_41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_42
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_43
    return v0

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v0, 0x3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_8
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_9
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4e
    const/16 v0, 0x9

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const/16 v0, 0xd

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

    :goto_50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_19

    nop

    nop

    nop

    :sswitch_7
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_19

    nop

    nop

    :sswitch_8
    goto/32 :goto_2d

    nop

    nop

    :goto_53
    goto/16 :goto_19

    nop

    nop

    :sswitch_9
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-nez v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_56
    const/4 v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_57
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/16 v0, 0xb

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_59
    goto/16 :goto_19

    nop

    :sswitch_a
    goto/32 :goto_2c

    nop

    nop

    :goto_5a
    const/4 v0, 0x4

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5b
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

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

    :goto_5c
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_19

    nop

    nop

    :sswitch_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5e
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

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

    :goto_5f
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/16 v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_61
    if-nez v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_d
    goto/32 :goto_15

    nop

    nop

    :goto_62
    return v0

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_63
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_64
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :sswitch_c
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    return v0

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const-string v0, "scaleY"

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const-string v0, "offset"

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

    :goto_69
    goto/16 :goto_19

    nop

    nop

    nop

    :sswitch_d
    goto/32 :goto_c

    nop

    nop
.end method

.method public printAttributes()V
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_0
    goto/32 :goto_28

    nop

    :goto_1
    invoke-static {v4}, Landroidx/constraintlayout/core/motion/utils/Utils;->log(Ljava/lang/String;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/HashSet;

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_3
    const-string v2, " -------------"

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_4
    const-string v2, ", Phase="

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_5
    const v0, 0x19

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v1, [Ljava/lang/String;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v2, " ------------- "

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

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

    nop

    :goto_a
    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->log(Ljava/lang/String;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    :goto_c
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mFramePosition:I

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

    :goto_d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->getValue(Ljava/lang/String;)F

    move-result v5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    const-string v5, ":"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v3}, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->getId(Ljava/lang/String;)I

    move-result v3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_16
    aget-object v5, v1, v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    aget-object v3, v1, v2

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

    :goto_18
    const-string v2, ", Period="

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->log(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    :goto_1b
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_20
    new-array v1, v1, [Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    nop

    :goto_25
    const-string v2, "MotionKeyCycle{Shape="

    nop

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

    :goto_26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_27
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1e

    nop

    nop

    :goto_29
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_2b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    :goto_2f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

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

    :goto_31
    const/4 v2, 0x0

    nop

    nop

    :goto_32
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/16 v2, 0x7d

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_34
    if-lt v2, v3, :cond_1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_36
    goto :goto_32

    nop

    :goto_37
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_38
    aget-object v5, v1, v2

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

    :goto_39
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    array-length v3, v1

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

    :goto_3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3d
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const v1, 0x15

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-string v2, ", Offset="

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_42
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->getAttributeNames(Ljava/util/HashSet;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_44
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    nop

    goto/32 :goto_22

    nop

    nop

    nop
.end method

.method public setValue(IF)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    move-result v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_1f

    nop

    nop

    :goto_2
    goto :goto_7

    nop

    nop

    :sswitch_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_7

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_7

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_7

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_d

    nop

    nop

    :goto_6
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    goto :goto_7

    nop

    :sswitch_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    nop

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

    :goto_c
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_7

    nop

    :sswitch_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

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

    :goto_10
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :sswitch_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :sswitch_8
    goto/32 :goto_15

    nop

    nop

    :goto_12
    return v0

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x130 -> :sswitch_e
        0x131 -> :sswitch_8
        0x132 -> :sswitch_4
        0x133 -> :sswitch_5
        0x134 -> :sswitch_0
        0x135 -> :sswitch_a
        0x136 -> :sswitch_d
        0x137 -> :sswitch_1
        0x138 -> :sswitch_6
        0x13b -> :sswitch_3
        0x193 -> :sswitch_7
        0x1a0 -> :sswitch_2
        0x1a7 -> :sswitch_9
        0x1a8 -> :sswitch_b
        0x1a9 -> :sswitch_c
    .end sparse-switch

    :goto_13
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_14
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_7

    nop

    nop

    :sswitch_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    goto/16 :goto_7

    nop

    nop

    nop

    :sswitch_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mProgress:F

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :sswitch_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1c
    return v0

    nop

    nop

    nop

    :sswitch_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1e
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :sswitch_d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_20
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :sswitch_e
    goto/32 :goto_6

    nop

    nop
.end method

.method public setValue(II)Z
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    goto/32 :goto_12

    nop

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
    const/4 v0, 0x1

    nop

    nop

    nop

    sparse-switch p1, :sswitch_data_0

    goto/32 :goto_d

    nop

    nop

    :goto_3
    const v1, 0x3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    move-result v0

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

    :goto_9
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_c
    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->setValue(IF)Z

    move-result v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    int-to-float v1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    return v0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCurveFit:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    return v0

    nop

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_1
        0x1a5 -> :sswitch_0
    .end sparse-switch

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

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
.end method

.method public setValue(ILjava/lang/String;)Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

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

    :goto_1
    return v0

    nop

    nop

    :pswitch_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1a4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :goto_4
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    packed-switch p1, :pswitch_data_0

    :pswitch_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    move-result v0

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
.end method
