.class public Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "KeyTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;
    }
.end annotation


# static fields
.field public static final KEY_TYPE:I = 0x3

.field static final NAME:Ljava/lang/String; = "KeyTimeCycle"

.field public static final SHAPE_BOUNCE:I = 0x6

.field public static final SHAPE_COS_WAVE:I = 0x5

.field public static final SHAPE_REVERSE_SAW_WAVE:I = 0x4

.field public static final SHAPE_SAW_WAVE:I = 0x3

.field public static final SHAPE_SIN_WAVE:I = 0x0

.field public static final SHAPE_SQUARE_WAVE:I = 0x1

.field public static final SHAPE_TRIANGLE_WAVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyTimeCycle"

.field public static final WAVE_OFFSET:Ljava/lang/String; = "waveOffset"

.field public static final WAVE_PERIOD:Ljava/lang/String; = "wavePeriod"

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

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

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

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

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

    :goto_7
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_8
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

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

    :goto_13
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_17

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x18

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_20
    const/4 v0, 0x0

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

    :goto_21
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_22
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mType:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_24
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

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

    :goto_1
    return v0

    nop

    nop
.end method

.method static synthetic access$002(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

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
    return p1

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$100(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

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

.method static synthetic access$1000(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method static synthetic access$1002(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p1

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$102(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

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

    :goto_1
    return p1

    nop

    nop

    nop
.end method

.method static synthetic access$1102(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p1

    nop

    nop

    nop
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$1202(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

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
    return p1

    nop

    nop

    nop
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

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

    nop

    nop
.end method

.method static synthetic access$1302(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p1

    nop
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static synthetic access$1402(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

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
    return p1

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static synthetic access$1502(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

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
    return p1

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static synthetic access$1602(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

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
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

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

.method static synthetic access$1702(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p1

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static synthetic access$202(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$300(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

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

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method static synthetic access$302(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;I)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

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
.end method

.method static synthetic access$402(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

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

    :goto_1
    return v0

    nop
.end method

.method static synthetic access$502(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;I)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

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
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

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

    nop
.end method

.method static synthetic access$602(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

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
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method static synthetic access$702(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

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

.method static synthetic access$800(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$802(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method static synthetic access$900(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

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
    return v0

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$902(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

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
    return p1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public addTimeValues(Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewTimeCycle;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_b4

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_1
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_4
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_7
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

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

    :goto_8
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_c
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_d
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_e
    move-object v7, v4

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_f
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_10
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_13
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_14
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

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

    :goto_15
    const/16 v5, 0x9

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v3, -0x1

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_17
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_18
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_19
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_1a
    goto :goto_24

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_af

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_1c
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_1d
    goto/16 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_1f
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v4, :cond_0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-object v3, v2

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v10, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_23
    move v5, v3

    nop

    :goto_24
    packed-switch v5, :pswitch_data_0

    goto/32 :goto_d8

    nop

    nop

    :goto_25
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

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

    nop

    :goto_26
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    nop

    nop

    nop

    sparse-switch v4, :sswitch_data_0

    :goto_27
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_28
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/32 :goto_38

    nop

    nop

    :goto_2a
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

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

    nop

    :goto_2b
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2c
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_2e
    if-eqz v3, :cond_1

    nop

    nop

    goto/32 :goto_a7

    nop

    :cond_1
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_31
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_32
    const-string v4, "rotationX"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_33
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_36
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_37
    move-object v3, v2

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

    :goto_38
    goto/16 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string v4, "UNKNOWN addValues \""

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object v3, v2

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

    :goto_3b
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3c
    move-object v3, v2

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move-object v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_3e
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_41
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_42
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_24

    nop

    :sswitch_2
    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_44
    if-nez v4, :cond_2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const-string v4, "translationX"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_46
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_47
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_48
    const-string v4, "KeyTimeCycles"

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    nop

    :goto_4a
    move-object v3, v2

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

    :goto_4b
    move-object v3, v2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

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

    :goto_4d
    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    :cond_3
    goto/32 :goto_db

    nop

    nop

    nop

    :goto_4e
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    add-int/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_51
    goto/16 :goto_93

    nop

    :goto_52
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const-string v4, "rotation"

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_54
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_56
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    move-object v3, v2

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_58
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_5a
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5c
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

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

    nop

    :goto_5d
    const/4 v5, 0x6

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

    nop

    :goto_5e
    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_5f
    const-string v4, "alpha"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_60
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_61
    const/4 v5, 0x7

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_63
    if-eqz v3, :cond_5

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_64
    if-nez v4, :cond_6

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_e9

    nop

    nop

    :goto_67
    const-string v4, "progress"

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_69
    const/16 v5, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_6a
    move-object v3, v2

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_6b
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6c
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_6e
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

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

    :goto_74
    goto/16 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_a7

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_76
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_77
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_78
    const v1, 0x18

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

    :goto_79
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_7a
    const-string v3, "CUSTOM"

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

    :goto_7b
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_7c
    if-nez v4, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    if-eqz v3, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_d5

    nop

    nop

    :goto_7e
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    if-nez v4, :cond_9

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_80
    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_81
    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;FIF)V

    goto/32 :goto_51

    nop

    nop

    :goto_82
    const/4 v5, 0x2

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

    :goto_83
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_84
    const-string v4, "\""

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

    :goto_85
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

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

    :goto_86
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

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

    :goto_87
    goto/16 :goto_24

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

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

    :goto_89
    const/16 v5, 0x8

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_24

    nop

    nop

    :sswitch_4
    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_8b
    if-eqz v3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

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

    nop

    :goto_8d
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_8e
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_90
    goto/16 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_91
    move-object v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_92
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_95
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

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

    :goto_96
    const-string v4, "scaleX"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_9a
    goto/16 :goto_24

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_9c
    goto/16 :goto_a7

    nop

    nop

    :pswitch_6
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_9d
    move-object v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9e
    const/4 v5, 0x3

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

    :goto_9f
    return-void

    nop

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_3
        -0x4a771f65 -> :sswitch_2
        -0x490b9c39 -> :sswitch_5
        -0x490b9c38 -> :sswitch_7
        -0x490b9c37 -> :sswitch_b
        -0x3bab3dd3 -> :sswitch_6
        -0x3621dfb2 -> :sswitch_8
        -0x3621dfb1 -> :sswitch_1
        -0x266f082 -> :sswitch_a
        -0x42d1a3 -> :sswitch_4
        0x2382115 -> :sswitch_9
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_8
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_7
        :pswitch_a
        :pswitch_5
        :pswitch_9
    .end packed-switch

    :goto_a0
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_a1
    if-lez v0, :cond_b

    nop

    nop

    goto/32 :goto_bf

    nop

    :cond_b
    goto/32 :goto_be

    nop

    :goto_a2
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :sswitch_6
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_a3
    goto/16 :goto_93

    nop

    :goto_a4
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_a5
    rem-int v0, v0, v1

    nop

    nop

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

    :goto_a6
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    :goto_a7
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_a8
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_ab
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_ae
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_af
    const-string v4, "scaleY"

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_b0
    if-nez v4, :cond_c

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_5d

    nop

    nop

    :goto_b1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_b2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_b3
    goto/16 :goto_24

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    check-cast v5, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    if-eqz v3, :cond_d

    nop

    nop

    goto/32 :goto_a7

    nop

    :cond_d
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    goto/16 :goto_24

    nop

    nop

    nop

    :sswitch_7
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    if-nez v4, :cond_e

    nop

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

    :cond_e
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b9
    const/4 v5, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_ba
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_bb
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_bd
    iget v9, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_be
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    if-eqz v3, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_c2
    goto/16 :goto_24

    nop

    nop

    nop

    :sswitch_8
    goto/32 :goto_96

    nop

    nop

    nop

    :goto_c3
    if-nez v4, :cond_10

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_c5
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    move-object v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    goto/16 :goto_24

    nop

    :sswitch_9
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_c8
    goto/32 :goto_bf

    nop

    nop

    :goto_c9
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    :goto_ca
    if-nez v4, :cond_11

    nop

    nop

    goto/32 :goto_93

    nop

    :cond_11
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_cb
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_cc
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_cd
    if-nez v4, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    if-nez v4, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_89

    nop

    nop

    :goto_cf
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_d0
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_d1
    goto/16 :goto_a7

    nop

    :pswitch_7
    goto/32 :goto_73

    nop

    nop

    :goto_d2
    const-string v4, "transitionPathRotate"

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

    nop

    :goto_d3
    goto/16 :goto_24

    nop

    nop

    :sswitch_a
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    const/4 v5, 0x5

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_d5
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_d6
    const-string v4, "translationY"

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_d7
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d8
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_d9
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_da
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

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

    :goto_db
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_dc
    const/16 v5, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_dd
    if-eqz v3, :cond_14

    nop

    nop

    goto/32 :goto_a7

    nop

    :cond_14
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_de
    if-eqz v3, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

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

    :goto_e0
    if-nez v1, :cond_16

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_e1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_e2
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    if-eqz v3, :cond_17

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_14

    nop

    nop

    :goto_e4
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_e5
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/32 :goto_f1

    nop

    nop

    :goto_e7
    goto/16 :goto_a7

    nop

    nop

    :pswitch_8
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    goto/16 :goto_a7

    nop

    nop

    :pswitch_9
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    if-nez v4, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    goto/16 :goto_24

    nop

    nop

    :sswitch_b
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_ec
    if-nez v4, :cond_19

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_82

    nop

    nop

    :goto_ed
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

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

    nop

    :goto_ef
    const-string v4, "rotationY"

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    move-object v3, v2

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

    :goto_f1
    goto/16 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    if-nez v4, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_f4
    const-string v4, "translationZ"

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    :goto_f5
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

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

    :goto_f6
    if-eqz v2, :cond_1b

    nop

    goto/32 :goto_1e

    nop

    :cond_1b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f7
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

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

    :goto_f8
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_f9
    const-string v4, "elevation"

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

    :goto_fa
    if-eqz v3, :cond_1c

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    goto/16 :goto_a7

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_1c

    nop

    nop

    :goto_fc
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop
.end method

.method public addValues(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const-string v1, " KeyTimeCycles do not support SplineSet"

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public clone()Landroidx/constraintlayout/motion/widget/Key;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-object v0

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

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

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
.end method

.method public copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    :goto_5
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_7
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

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

    :goto_8
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_a
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    move-object v0, p1

    nop

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

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

    :goto_15
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    :goto_18
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1a
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1b
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

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

    :goto_1d
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1e
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

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

    :goto_20
    check-cast v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_22
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_24
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

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

    :goto_25
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_26
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_27
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

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

    :goto_28
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

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

    :goto_29
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2a
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_2c
    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2d
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_1
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_2
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_c
    goto/32 :goto_3f

    nop

    nop

    :goto_d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_3
    goto/32 :goto_26

    nop

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

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

    :goto_10
    const-string v0, "rotationX"

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_11
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_16
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_17
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v0, "transitionPathRotate"

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

    nop

    nop

    :goto_1a
    const v0, 0x1b

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
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    :goto_1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_1d
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_1e
    if-gtz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :cond_5
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_21
    const-string v0, "scaleY"

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_24
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

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

    :goto_26
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_5b

    nop

    nop

    :goto_28
    const-string v0, "progress"

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_29
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2b
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2d
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v0, :cond_7

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

    :cond_7
    goto/32 :goto_64

    nop

    nop

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_31
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    :cond_8
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x15

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

    :goto_34
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz v0, :cond_9

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const-string v3, "CUSTOM,"

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

    :goto_38
    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

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

    :goto_3c
    if-eqz v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v0, :cond_c

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_43
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    :goto_45
    if-eqz v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

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

    :goto_47
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_48
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_4a
    const-string v0, "translationX"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const-string v0, "alpha"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

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

    :goto_4e
    if-eqz v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_50
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_51
    const-string v0, "translationY"

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_52
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_54
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_57
    check-cast v1, Ljava/lang/String;

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

    :goto_58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_5b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

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

    :goto_5c
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

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

    nop

    :goto_5d
    const-string v0, "rotation"

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

    :goto_5e
    const-string v0, "scaleX"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_61
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const-string v0, "elevation"

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_63
    const-string v0, "translationZ"

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_64
    const-string v0, "rotationY"

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    goto/32 :goto_1

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

    nop

    :goto_1
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle:[I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;Landroid/content/res/TypedArray;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public setInterpolation(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interpolation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

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

    nop

    :goto_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, "translationY"

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

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

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v1, Ljava/lang/String;

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

    :goto_11
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "progress"

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

    :goto_13
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    goto/32 :goto_7d

    nop

    nop

    :goto_16
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_0
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_19
    const-string v1, "scaleX"

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_1a
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v3, "CUSTOM,"

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_20
    const-string v1, "rotationY"

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_21
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

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

    nop

    nop

    :goto_22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_24
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

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

    :goto_25
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_26
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_29
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    :goto_2a
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2d
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_2e
    if-eqz v0, :cond_5

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

    :cond_5
    goto/32 :goto_3

    nop

    nop

    :goto_2f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_31
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_36
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_37
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_38
    if-gtz v0, :cond_6

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :cond_6
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3a
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_3b
    const v1, 0x7

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const-string v1, "translationZ"

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_41
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_42
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    :cond_8
    goto/32 :goto_82

    nop

    nop

    :goto_44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

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

    :goto_49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_4a
    rem-int v0, v0, v1

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
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    :goto_4c
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4d
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_4f
    const-string v1, "elevation"

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_50
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_51
    const-string v1, "rotation"

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

    :goto_52
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_53
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

    :goto_54
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_55
    const-string v1, "transitionPathRotate"

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_56
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_59

    nop

    :cond_9
    goto/32 :goto_58

    nop

    :goto_5b
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5c
    goto/32 :goto_31

    nop

    nop

    :goto_5d
    if-eqz v0, :cond_a

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

    nop

    :cond_a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_61
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_62
    goto/32 :goto_2

    nop

    nop

    :goto_63
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    return-void

    nop

    nop

    :goto_65
    goto/32 :goto_54

    nop

    nop

    :goto_66
    if-eqz v0, :cond_b

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
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_67
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    :goto_69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_6a
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6b
    goto/32 :goto_37

    nop

    nop

    :goto_6c
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_6d
    const-string v1, "translationX"

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_6e
    if-eq v0, v1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_6f
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_70
    const-string v1, "scaleY"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const-string v1, "alpha"

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_73
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-nez v1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const-string v1, "rotationX"

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

    nop

    :goto_76
    if-eqz v0, :cond_e

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_78
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_79
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

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

    :goto_7a
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_47

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    if-eqz v0, :cond_f

    nop

    nop

    goto/32 :goto_5f

    nop

    :cond_f
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_82
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_84
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "value"
        }
    .end annotation

    goto/32 :goto_81

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

    nop

    nop

    nop

    goto/32 :goto_73

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

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_4
    const-string v0, "alpha"

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_76

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

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

    :goto_7
    const-string v0, "transitionPathRotate"

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_76

    nop

    :pswitch_1
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_3a

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_6a

    nop

    nop

    :goto_b
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_76

    nop

    nop

    :pswitch_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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
    goto/16 :goto_3a

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_3a

    nop

    nop

    :sswitch_3
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_3
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_15
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_3a

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_19
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_82

    nop

    :goto_1a
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_20
    goto/16 :goto_76

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_8d

    nop

    nop

    :goto_21
    goto/16 :goto_76

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/16 v0, 0xe

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

    :goto_23
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_3a

    nop

    nop

    :sswitch_6
    goto/32 :goto_8b

    nop

    nop

    :goto_26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_28
    const-string v0, "curveFit"

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_2a
    const-string v0, "elevation"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_76

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_2d
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_6
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_2f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_30
    const-string v0, "waveShape"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_76

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_85

    nop

    nop

    nop

    :goto_34
    const/4 v0, 0x3

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

    :goto_35
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_34

    nop

    nop

    :goto_36
    goto/16 :goto_76

    nop

    nop

    :pswitch_7
    goto/32 :goto_c

    nop

    nop

    :goto_37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_3a

    nop

    nop

    :sswitch_7
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v0, -0x1

    nop

    :goto_3a
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3b
    const/16 v0, 0xa

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_3c
    if-nez v0, :cond_8

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_3a

    nop

    :sswitch_8
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move v0, v1

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

    :goto_3f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

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

    :goto_40
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_41
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

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

    :goto_42
    goto/16 :goto_76

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_44
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_45
    if-nez v0, :cond_9

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

    :cond_9
    goto/32 :goto_8f

    nop

    nop

    :goto_46
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_76

    nop

    nop

    :pswitch_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v0, :cond_a

    nop

    goto/32 :goto_64

    nop

    nop

    :cond_a
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toInt(Ljava/lang/Object;)I

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    :sswitch_9
    goto/32 :goto_97

    nop

    nop

    :goto_4c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4e
    goto/16 :goto_76

    nop

    nop

    :pswitch_a
    goto/32 :goto_1f

    nop

    nop

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

    nop

    nop

    goto/32 :goto_90

    nop

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

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_51
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_b
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_53
    if-nez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :cond_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_55
    const-string v0, "rotationY"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_3a

    nop

    :sswitch_a
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_57
    const-string v0, "translationY"

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_76

    nop

    nop

    :pswitch_b
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_5a
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_5b
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_5d
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

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

    :goto_5e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_60
    if-nez v0, :cond_d

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_63
    const/4 v1, 0x7

    nop

    sparse-switch v0, :sswitch_data_0

    :goto_64
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_65
    const-string v0, "motionProgress"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    :goto_67
    const/16 v0, 0x10

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const-string v0, "scaleY"

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

    :goto_69
    goto/16 :goto_70

    nop

    :sswitch_b
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const-string v0, "transitionEasing"

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_3a

    nop

    nop

    :sswitch_c
    goto/32 :goto_65

    nop

    nop

    :goto_6c
    goto :goto_76

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const-string v0, "wavePeriod"

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_6e
    if-nez v0, :cond_e

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/16 :goto_3a

    nop

    nop

    :goto_70
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const/16 v0, 0x9

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_72
    const/4 v0, 0x5

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_73
    if-nez v0, :cond_f

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_77

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    nop

    nop

    :goto_76
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_77
    const/16 v0, 0xd

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_78
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

    nop

    :goto_79
    goto/16 :goto_3a

    nop

    nop

    nop

    :sswitch_d
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_7a
    const/4 v0, 0x1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toInt(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/16 :goto_76

    nop

    nop

    :goto_7d
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto :goto_76

    nop

    nop

    :pswitch_d
    goto/32 :goto_49

    nop

    nop

    :goto_7f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

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

    :goto_80
    const-string v0, "translationX"

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_81
    const v0, 0x3

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

    :goto_82
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_62

    nop

    nop

    :goto_84
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_85
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_86
    const/16 v0, 0xb

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

    :goto_87
    const-string v0, "translationZ"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_88
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_89
    const v1, 0xc

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

    :goto_8a
    if-nez v0, :cond_10

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :cond_10
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    const-string v0, "rotationX"

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_8d
    instance-of v0, p2, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_8e
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_8f
    const/16 v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_90
    if-nez v0, :cond_11

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

    :cond_11
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_92
    const-string v0, "scaleX"

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_93
    const-string v0, "waveOffset"

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_94
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72062ffd -> :sswitch_c
        -0x6c0d7d20 -> :sswitch_0
        -0x4a771f66 -> :sswitch_6
        -0x4a771f65 -> :sswitch_a
        -0x490b9c39 -> :sswitch_d
        -0x490b9c38 -> :sswitch_f
        -0x490b9c37 -> :sswitch_10
        -0x3621dfb2 -> :sswitch_1
        -0x3621dfb1 -> :sswitch_8
        -0x266f082 -> :sswitch_9
        -0x42d1a3 -> :sswitch_e
        0x2382115 -> :sswitch_4
        0x589b15e -> :sswitch_2
        0x94e04ec -> :sswitch_7
        0xafa161a -> :sswitch_5
        0x2283b8a2 -> :sswitch_3
        0x5b5cc028 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_4
        :pswitch_a
        :pswitch_d
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_f
        :pswitch_7
        :pswitch_9
        :pswitch_c
        :pswitch_b
        :pswitch_8
        :pswitch_1
        :pswitch_e
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :goto_95
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_96
    goto/16 :goto_76

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_97
    const-string v0, "rotation"

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

    :goto_98
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_99
    goto/16 :goto_76

    nop

    :pswitch_f
    goto/32 :goto_58

    nop

    nop

    :goto_9a
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_9b
    goto/16 :goto_3a

    nop

    :sswitch_e
    goto/32 :goto_2a

    nop

    nop

    :goto_9c
    goto/16 :goto_3a

    nop

    nop

    :sswitch_f
    goto/32 :goto_57

    nop

    nop

    :goto_9d
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9e
    goto/16 :goto_3a

    nop

    nop

    :sswitch_10
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    if-nez v0, :cond_12

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :cond_12
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_a0
    goto/16 :goto_76

    nop

    :pswitch_10
    goto/32 :goto_2e

    nop

    nop
.end method
