.class public Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;
.source "MotionKeyTimeCycle.java"


# static fields
.field public static final KEY_TYPE:I = 0x3

.field static final NAME:Ljava/lang/String; = "KeyTimeCycle"

.field private static final TAG:Ljava/lang/String; = "KeyTimeCycle"


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

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCurveFit:I

    nop

    goto/32 :goto_1b

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

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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

    :goto_3
    const/4 v1, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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

    :goto_6
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/util/HashMap;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    :goto_e
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x3

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustom:Ljava/util/HashMap;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_12
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

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

    nop

    :goto_13
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_14
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

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

    :goto_18
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x6

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_20
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_21
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mType:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_22
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_24
    goto/32 :goto_d

    nop

    :goto_25
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public addTimeValues(Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

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

    :goto_1
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v3, :cond_0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_4
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_5
    const-string v4, "alpha"

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v4, "progress"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_8
    move-object v3, v2

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_a
    if-nez v4, :cond_1

    nop

    nop

    goto/32 :goto_7f

    nop

    :cond_1
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v4, Landroidx/constraintlayout/core/motion/CustomVariable;

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_c
    check-cast v5, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :cond_2
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v4, "UNKNOWN addValues \""

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_10
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_11
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_12
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/32 :goto_4d

    nop

    nop

    :goto_13
    move v5, v3

    nop

    nop

    nop

    nop

    :goto_14
    packed-switch v5, :pswitch_data_0

    goto/32 :goto_fd

    nop

    nop

    :goto_15
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/32 :goto_55

    nop

    nop

    :goto_18
    move-object v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

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

    :goto_1a
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v4, :cond_4

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_2f

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

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

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v4, :cond_5

    nop

    goto/32 :goto_7f

    nop

    nop

    :cond_5
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_22
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v5, 0x7

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v4, :cond_6

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_27
    if-eqz v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_7
    goto/32 :goto_a6

    nop

    nop

    :goto_28
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    nop

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

    nop

    :goto_29
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2a
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2d
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    :goto_2f
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    :cond_8
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_31
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v3, -0x1

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

    :goto_33
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_34
    const/16 v5, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_35
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

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

    :goto_36
    move-object v3, v2

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v3, :cond_9

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_28

    nop

    nop

    :goto_38
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

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

    :goto_39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_2f

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_3d
    goto/16 :goto_14

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    goto/32 :goto_f9

    nop

    nop

    :goto_3f
    if-nez v4, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :cond_a
    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_40
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v4, :cond_b

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

    :cond_b
    goto/32 :goto_58

    nop

    nop

    :goto_43
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_44
    const/16 v5, 0x8

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const-string v4, "scaleX"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_46
    move-object v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_47
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

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

    :goto_49
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_4b
    if-eqz v3, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_4c
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

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

    :goto_4d
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_50
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustom:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_52
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_53
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_54
    move-object v3, v2

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_57
    move-object v5, v2

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

    :goto_58
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_59
    const-string v4, "translationZ"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_5c
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_5d
    if-eqz v3, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_64

    nop

    nop

    :goto_5e
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    return-void

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_3
        -0x4a771f65 -> :sswitch_a
        -0x4a771f64 -> :sswitch_6
        -0x490b9c39 -> :sswitch_5
        -0x490b9c38 -> :sswitch_7
        -0x490b9c37 -> :sswitch_1
        -0x3bab3dd3 -> :sswitch_2
        -0x3621dfb2 -> :sswitch_b
        -0x3621dfb1 -> :sswitch_8
        -0x42d1a3 -> :sswitch_9
        0x589b15e -> :sswitch_0
        0x2fdfbde0 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :goto_60
    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_62
    if-eqz v2, :cond_e

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

    :cond_e
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_63
    check-cast v1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_65
    add-int/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_66
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/16 :goto_14

    nop

    nop

    :sswitch_1
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_68
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_69
    if-eqz v3, :cond_f

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_14

    nop

    nop

    :sswitch_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_6c
    if-nez v4, :cond_10

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

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

    nop

    :goto_6f
    if-eqz v3, :cond_11

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_11
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_70
    const-string v4, "pathRotate"

    nop

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

    :goto_71
    const-string v4, "translationY"

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

    nop

    nop

    :goto_72
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

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

    :goto_73
    invoke-static {v4, v3}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto/16 :goto_14

    nop

    nop

    :sswitch_3
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-eqz v3, :cond_12

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_76
    iget v10, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

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

    :goto_79
    const-string v4, "elevation"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_7a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_7b
    goto/16 :goto_fa

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_7d
    move-object v3, v2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    nop

    nop

    sparse-switch v4, :sswitch_data_0

    :goto_7f
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_81
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_82
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_83
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

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

    nop

    :goto_84
    if-nez v4, :cond_13

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    :cond_13
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    nop

    :goto_87
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

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

    :goto_88
    const/4 v5, 0x6

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_89
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_8a
    if-lez v0, :cond_14

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_f0

    nop

    :goto_8b
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_8c
    goto/16 :goto_2f

    nop

    :pswitch_7
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_8e
    const-string v4, "rotationX"

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

    :goto_8f
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

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

    :goto_91
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_92
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_93
    iget v9, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

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

    :goto_94
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/32 :goto_41

    nop

    nop

    :goto_95
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_97
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_98
    move-object v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_99
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_9a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9b
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_9c
    goto/16 :goto_9a

    nop

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_9d
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_9e
    const/16 v5, 0xb

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_9f
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_a0
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

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

    :goto_a1
    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_a2
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_a4
    if-eqz v3, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_15
    goto/32 :goto_87

    nop

    nop

    :goto_a5
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

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

    :goto_a6
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_a7
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a8
    const-string v4, "KeyTimeCycles"

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    const-string v4, "rotationZ"

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

    :goto_aa
    const-string v4, "translationX"

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_ab
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_43

    nop

    nop

    :goto_ad
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_ae
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

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

    :goto_af
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    if-nez v4, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :cond_16
    goto/32 :goto_44

    nop

    nop

    :goto_b1
    goto/16 :goto_14

    nop

    :sswitch_5
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_b2
    goto/16 :goto_14

    nop

    :sswitch_6
    goto/32 :goto_a9

    nop

    nop

    :goto_b3
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

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

    :goto_b4
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_b5
    if-eqz v3, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_17
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_b6
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_b7
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_bb
    const/16 v5, 0xa

    nop

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

    :goto_bc
    const-string v4, "scaleY"

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_be
    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->setPoint(ILandroidx/constraintlayout/core/motion/CustomVariable;FIF)V

    goto/32 :goto_2b

    nop

    nop

    :goto_bf
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_c0
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    if-nez v4, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_c2
    goto/16 :goto_14

    nop

    nop

    :sswitch_7
    goto/32 :goto_71

    nop

    nop

    :goto_c3
    if-nez v4, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_23

    nop

    nop

    :goto_c4
    const/4 v5, 0x5

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_c5
    move-object v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_c6
    if-nez v4, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_c7
    move-object v3, v2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    goto/16 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_ca
    move-object v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_cb
    goto/16 :goto_2f

    nop

    nop

    :pswitch_9
    goto/32 :goto_c0

    nop

    nop

    :goto_cc
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_cd
    goto/16 :goto_14

    nop

    :sswitch_8
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    goto/16 :goto_2f

    nop

    nop

    :pswitch_a
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_cf
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_d0
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_d1
    const/4 v5, 0x4

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    const-string v4, "rotationY"

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d4
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

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

    :goto_d5
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    move-object v3, v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    if-eqz v3, :cond_1b

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_b6

    nop

    nop

    :goto_d9
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_da
    const-string v4, "\""

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_db
    if-nez v4, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    :cond_1c
    goto/32 :goto_88

    nop

    nop

    :goto_dc
    const-string v3, "CUSTOM"

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_de
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_df
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :sswitch_9
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

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

    :goto_e1
    move-object v7, v4

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_e3
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_e4
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :sswitch_a
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_e6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_e7
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e9
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_eb
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_ec
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :sswitch_b
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_f0
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_f1
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_f3
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_f6
    move-object v3, v2

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_fa
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    const/4 v5, 0x2

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_fd
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_39

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

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    move-result-object v0

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

    :goto_1
    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    :goto_3
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;-><init>()V

    goto/32 :goto_0

    nop

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public bridge synthetic copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

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

    :goto_a
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

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

    :goto_b
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_f
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    :goto_11
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCurveFit:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

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

    :goto_16
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1c
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2a

    nop

    nop

    :goto_1e
    check-cast v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

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

    :goto_20
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_22
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCurveFit:I

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

    :goto_24
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

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

    :goto_26
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-super {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_28
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

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

    :goto_29
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_27

    nop

    nop

    :goto_2b
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2c
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2d
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    nop

    goto/32 :goto_4

    nop

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    :goto_6
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v1, :cond_2

    nop

    goto/32 :goto_25

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    :goto_8
    const-string v0, "translationX"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_b
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "translationY"

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "translationZ"

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_10
    const-string v0, "scaleY"

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

    :goto_11
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

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

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_15
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_16
    goto/32 :goto_30

    nop

    :goto_17
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    :goto_18
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5a

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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

    :goto_1b
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustom:Ljava/util/HashMap;

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
    if-gtz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_20
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_22
    const-string v3, "CUSTOM,"

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

    :goto_23
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_24
    goto :goto_27

    nop

    nop

    :goto_25
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_27
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_29
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

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

    :goto_2d
    rem-int v0, v0, v1

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

    :goto_2e
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustom:Ljava/util/HashMap;

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

    :goto_2f
    goto/32 :goto_47

    nop

    nop

    :goto_30
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v0, :cond_8

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

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

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_34
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

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

    :goto_35
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_36
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_37
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    nop

    :goto_39
    check-cast v1, Ljava/lang/String;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3b
    goto/32 :goto_15

    nop

    nop

    :goto_3c
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    :goto_3d
    const-string v0, "rotationY"

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

    :goto_3e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_3f
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-string v0, "scaleX"

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_41
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    nop

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

    :goto_42
    if-eqz v0, :cond_9

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_44
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    :goto_47
    goto/32 :goto_16

    nop

    nop

    :goto_48
    if-eqz v0, :cond_b

    nop

    goto/32 :goto_44

    nop

    :cond_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_4a
    goto/32 :goto_2a

    nop

    nop

    :goto_4b
    const-string v0, "elevation"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4c
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4d
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

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

    nop

    :goto_4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

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

    :goto_4f
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_50
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_51
    if-eqz v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_52
    const-string v0, "rotationZ"

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_53
    const-string v0, "alpha"

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

    nop

    :goto_54
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_55
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const-string v0, "pathRotate"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-lez v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2f

    nop

    :goto_58
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_24

    nop

    nop

    :goto_5a
    const-string v0, "rotationX"

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5c
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_5e
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_5f
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop
.end method

.method public getId(Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;->getId(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setValue(IF)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

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

    :goto_4
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

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

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    move-result v0

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

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return v0

    nop

    :sswitch_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_c
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

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

    :goto_d
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCurveFit:I

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_4

    nop

    nop

    :goto_10
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_13
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_36

    nop

    nop

    :sswitch_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_36

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_36

    nop

    nop

    nop

    :sswitch_6
    goto/32 :goto_1

    nop

    nop

    :goto_17
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1b
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    nop

    :sswitch_7
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_36

    nop

    nop

    nop

    :sswitch_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toInt(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

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

    :goto_24
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_25
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

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

    nop

    nop

    :goto_26
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

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

    :goto_2c
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2d
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_36

    nop

    nop

    nop

    :sswitch_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2f
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_30
    goto :goto_36

    nop

    nop

    nop

    nop

    nop

    :sswitch_a
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_36

    nop

    nop

    nop

    :sswitch_b
    goto/32 :goto_1d

    nop

    nop

    :goto_33
    return v0

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x130 -> :sswitch_d
        0x131 -> :sswitch_1
        0x132 -> :sswitch_a
        0x133 -> :sswitch_5
        0x134 -> :sswitch_6
        0x135 -> :sswitch_4
        0x136 -> :sswitch_7
        0x137 -> :sswitch_8
        0x138 -> :sswitch_9
        0x13b -> :sswitch_b
        0x191 -> :sswitch_3
        0x193 -> :sswitch_2
        0x1a0 -> :sswitch_e
        0x1a7 -> :sswitch_c
        0x1a8 -> :sswitch_0
    .end sparse-switch

    :goto_34
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    :sswitch_c
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_35
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

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

    :goto_38
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_39
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

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

    :goto_3a
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_3b
    goto :goto_36

    nop

    :sswitch_d
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3c
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

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

    :goto_3d
    goto/16 :goto_36

    nop

    nop

    nop

    :sswitch_e
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop
.end method

.method public setValue(II)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    goto :goto_6

    nop

    :sswitch_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

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

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x1a5 -> :sswitch_1
    .end sparse-switch
.end method

.method public setValue(ILjava/lang/String;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_9

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1a4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_3

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    :pswitch_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public setValue(IZ)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IZ)Z

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method
