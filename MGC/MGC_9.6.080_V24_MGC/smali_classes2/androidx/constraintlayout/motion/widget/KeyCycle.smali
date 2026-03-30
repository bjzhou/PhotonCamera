.class public Landroidx/constraintlayout/motion/widget/KeyCycle;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "KeyCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;
    }
.end annotation


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

.field private mWaveVariesBy:I


# direct methods
.method public constructor <init>()V
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

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
    const/4 v2, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_d
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_10
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_23

    nop

    :goto_13
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

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

    :goto_15
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

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

    :goto_16
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mType:I

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

    :goto_17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_18
    const v0, 0xd

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_1c
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_21
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1c

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

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

    :goto_26
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_27
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0xb

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
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

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

.method static synthetic access$1002(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
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
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

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
.end method

.method static synthetic access$102(Landroidx/constraintlayout/motion/widget/KeyCycle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

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
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$1102(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

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
    return p1

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

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

.method static synthetic access$1202(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

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
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

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
    return v0

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$1302(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

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
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
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

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

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
.end method

.method static synthetic access$1402(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
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

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
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

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$1502(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p1

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method static synthetic access$1602(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

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
.end method

.method static synthetic access$1702(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

.method static synthetic access$1800(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

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

.method static synthetic access$1802(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

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
.end method

.method static synthetic access$1900(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
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

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$1902(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    goto/32 :goto_1

    nop

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
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/KeyCycle;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

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

.method static synthetic access$2000(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

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
.end method

.method static synthetic access$2002(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
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

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method static synthetic access$202(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method static synthetic access$302(Landroidx/constraintlayout/motion/widget/KeyCycle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

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
    return-object p1

    nop

    nop

    nop
.end method

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/KeyCycle;)I
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

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method static synthetic access$402(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

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
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

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

.method static synthetic access$502(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
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

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method static synthetic access$602(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
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
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/KeyCycle;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

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

.method static synthetic access$702(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p1

    nop
.end method

.method static synthetic access$800(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$802(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    goto/32 :goto_1

    nop

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

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$900(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
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

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method static synthetic access$902(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

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
.method public addCycleValues(Ljava/util/HashMap;)V
    .locals 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oscSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewOscillator;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v16, v6

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_2
    iget v12, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_4c

    nop

    nop

    :goto_5
    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6
    move-object/from16 v20, v8

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_7
    invoke-virtual/range {v17 .. v25}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setPoint(IILjava/lang/String;IFFFF)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_8
    goto :goto_4

    nop

    :goto_9
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_d
    move/from16 v25, v4

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

    :goto_e
    if-nez v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object/from16 v0, p0

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

    :goto_10
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_11
    goto/16 :goto_4

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_19
    move/from16 v19, v7

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual/range {v6 .. v15}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setPoint(IILjava/lang/String;IFFFFLjava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v14

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_1c
    if-eqz v5, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v17, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1f
    move/from16 v22, v10

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_4

    nop

    nop

    :goto_21
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v16, :cond_2

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_24
    if-ne v6, v7, :cond_3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_35

    nop

    nop

    :goto_25
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move/from16 v23, v11

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_27
    move/from16 v21, v9

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

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

    :goto_29
    const-string v4, "CUSTOM"

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget v10, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_2c
    move/from16 v24, v12

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

    :goto_2d
    if-nez v5, :cond_4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2e
    iget v11, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2f
    iget v8, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_31
    iget v11, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v3, :cond_5

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_4

    nop

    :goto_34
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_37
    move-object v15, v5

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_38
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_39
    if-nez v5, :cond_6

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_11

    nop

    nop

    :goto_3a
    iget v13, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3b
    add-int/lit8 v4, v4, 0x1

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

    :goto_3c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_f

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

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget v12, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move/from16 v18, v6

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->getValue(Ljava/lang/String;)F

    move-result v4

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget v10, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_43
    goto/16 :goto_4

    nop

    nop

    :goto_44
    goto/32 :goto_30

    nop

    nop

    :goto_45
    iget v9, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_46
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_47
    move-object/from16 v6, v16

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_48
    check-cast v5, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_4a
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_4b
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_4d
    if-lez v0, :cond_7

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3c

    nop

    :goto_4e
    check-cast v16, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object v7, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_50
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_51
    iget v6, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop
.end method

.method public addValues(Ljava/util/HashMap;)V
    .locals 6
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

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_a1

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_37

    nop

    :pswitch_0
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v5, :cond_0

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

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

    nop

    :goto_8
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v5, :cond_1

    nop

    goto/32 :goto_42

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

    :goto_a
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_c
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

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

    :goto_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

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

    :goto_f
    const-string v5, "  UNKNOWN  "

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_37

    nop

    :pswitch_2
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_12
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_a1

    nop

    :sswitch_2
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    if-nez v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_2
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1d
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_1e
    const/4 v4, -0x1

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

    :goto_1f
    move v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_20
    const/4 v4, 0x6

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_22
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v1, " values"

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_24
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    nop

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

    :goto_25
    const-string v5, "rotationY"

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

    nop

    nop

    :goto_26
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_27
    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

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

    nop

    :goto_29
    if-nez v5, :cond_4

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

    :cond_4
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_2a
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2b
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_2c
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

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

    :goto_2d
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v5, :cond_5

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_66

    nop

    nop

    :goto_2f
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_98

    nop

    nop

    :goto_30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto :goto_37

    nop

    nop

    :pswitch_5
    goto/32 :goto_79

    nop

    nop

    :goto_32
    if-nez v5, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

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

    :goto_35
    const-string v5, "progress"

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

    :goto_36
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    :goto_37
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_39
    goto/32 :goto_5b

    nop

    nop

    :goto_3a
    if-nez v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_8
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v5, "WARNING KeyCycle"

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

    :goto_3c
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_3e
    const v0, 0x15

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_a1

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_40
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    sparse-switch v5, :sswitch_data_0

    :goto_42
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v5, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_45
    const-string v5, "alpha"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const-string v5, "scaleY"

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v4, 0x7

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

    :goto_49
    goto/16 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

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

    nop

    :goto_4b
    new-instance v4, Ljava/lang/StringBuilder;

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

    :goto_4c
    check-cast v3, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_4d
    const-string v5, "translationY"

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_4e
    const/16 v4, 0x8

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

    :goto_4f
    const/16 v4, 0xb

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_50
    const-string v5, "translationX"

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

    :goto_51
    goto/16 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :sswitch_6
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_53
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_54
    if-eqz v4, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_55
    const/16 v4, 0xc

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_58
    const-string v4, "CUSTOM"

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :sswitch_7
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_37

    nop

    :pswitch_7
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const-string v5, "elevation"

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5e
    const-string v5, "wavePhase"

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_5f
    goto/16 :goto_37

    nop

    nop

    :pswitch_8
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_39

    nop

    nop

    :goto_61
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_62
    const-string v5, "translationZ"

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_94

    nop

    :goto_65
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_66
    const/4 v4, 0x4

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

    :goto_67
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_68
    const-string v1, "KeyCycle"

    nop

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

    :goto_69
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_a1

    nop

    :sswitch_8
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_6b
    const-string v1, "add "

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_6d
    goto/16 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :sswitch_9
    goto/32 :goto_25

    nop

    nop

    :goto_6e
    check-cast v1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_6f
    const-string v5, "rotationX"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_70
    const-string v5, "waveOffset"

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_73
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_74
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

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

    :goto_76
    goto/16 :goto_37

    nop

    :pswitch_9
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_77
    add-int v0, v0, v1

    nop

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

    :goto_78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_79
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

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

    nop

    nop

    :goto_7a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_7b
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7c
    if-nez v5, :cond_b

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_7f
    goto/16 :goto_39

    nop

    nop

    :goto_80
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_81
    if-eqz v3, :cond_c

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

    :cond_c
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

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

    :goto_83
    if-nez v5, :cond_d

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_86
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_87
    const/4 v4, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_89
    goto/16 :goto_a1

    nop

    nop

    nop

    :sswitch_a
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    if-nez v5, :cond_e

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

    :cond_e
    goto/32 :goto_20

    nop

    nop

    :goto_8c
    if-nez v5, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/motion/widget/Debug;->logStack(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_8e
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_8f
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

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

    :goto_90
    const-string v5, "transitionPathRotate"

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    nop

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

    :goto_92
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_93
    return-void

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_0
        -0x4a771f65 -> :sswitch_9
        -0x490b9c39 -> :sswitch_2
        -0x490b9c38 -> :sswitch_c
        -0x490b9c37 -> :sswitch_d
        -0x3bab3dd3 -> :sswitch_7
        -0x3621dfb2 -> :sswitch_4
        -0x3621dfb1 -> :sswitch_a
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_5
        0x2382115 -> :sswitch_8
        0x589b15e -> :sswitch_b
        0x94e04ec -> :sswitch_1
        0x5b327a02 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_9
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_2
        :pswitch_c
        :pswitch_b
        :pswitch_3
        :pswitch_1
        :pswitch_d
        :pswitch_0
        :pswitch_8
        :pswitch_6
    .end packed-switch

    :goto_94
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_95
    goto/16 :goto_a1

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

    :goto_96
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_76

    nop

    nop

    :goto_97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

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

    :goto_98
    goto/16 :goto_37

    nop

    :pswitch_b
    goto/32 :goto_72

    nop

    nop

    :goto_99
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_9a
    const/16 v4, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

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

    :goto_9c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_9d
    const-string v5, "scaleX"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_9e
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

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

    :goto_9f
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

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

    :goto_a0
    const/4 v4, 0x3

    nop

    nop

    :goto_a1
    packed-switch v4, :pswitch_data_0

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    goto :goto_a1

    nop

    nop

    :sswitch_c
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_a3
    if-nez v5, :cond_10

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_9a

    nop

    nop

    :goto_a4
    const-string v5, "rotation"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    goto/16 :goto_37

    nop

    nop

    :pswitch_c
    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_a6
    const/16 v4, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_a8
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_aa
    goto :goto_a1

    nop

    nop

    :sswitch_d
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_ab
    if-lez v0, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_11
    goto/32 :goto_64

    nop

    :goto_ac
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_ad
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_ae
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_af
    const/16 v4, 0xd

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_b1
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop
.end method

.method public clone()Landroidx/constraintlayout/motion/widget/Key;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycle;

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
    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycle;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

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

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

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

    :goto_1
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

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

    nop

    :goto_2
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_5
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_9
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

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

    :goto_a
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    :goto_d
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_e
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

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

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_16
    const v0, 0x6

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_17
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_18
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

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

    :goto_1a
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

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

    :goto_1b
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_1e
    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_20
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

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

    :goto_21
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

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

    :goto_23
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

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

    :goto_24
    move-object v0, p1

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

    nop

    :goto_25
    check-cast v0, Landroidx/constraintlayout/motion/widget/KeyCycle;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_26
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

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

    :goto_28
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_29
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

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

    :goto_2a
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2b
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

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

    nop

    :goto_2c
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2f
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_30
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_32
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_33
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_34
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

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

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "translationX"

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_4
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    :goto_5
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    nop

    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_8
    const-string v0, "alpha"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_9
    const-string v0, "elevation"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_a
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_0
    goto/32 :goto_3f

    nop

    :goto_e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_14
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

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

    :goto_16
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_17
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_18
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1a
    const-string v0, "scaleX"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    if-gtz v0, :cond_4

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

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_10

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

    :goto_20
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomConstraints:Ljava/util/HashMap;

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

    :goto_22
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1f

    nop

    nop

    :goto_25
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-string v0, "scaleY"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_27
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

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

    :goto_28
    const-string v0, "rotation"

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2a
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v0, "rotationY"

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2f
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-string v3, "CUSTOM,"

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_31
    const-string v0, "transitionPathRotate"

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_32
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_33
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_35
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_6
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_37
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_39
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3d
    const-string v0, "translationZ"

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const-string v0, "translationY"

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3f
    goto/32 :goto_20

    nop

    nop

    :goto_40
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_45
    if-nez v1, :cond_7

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_19

    nop

    nop

    :goto_46
    const-string v0, "rotationX"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-eqz v0, :cond_8

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_4a
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4d
    if-eqz v0, :cond_9

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

    :cond_9
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_4f
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_50
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_51
    const v1, 0xe

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_52
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_54
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_55
    new-instance v2, Ljava/lang/StringBuilder;

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

    :goto_56
    if-eqz v0, :cond_a

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

    :cond_a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-eqz v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_58
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_5b
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_5c
    if-eqz v0, :cond_c

    nop

    goto/32 :goto_2f

    nop

    :cond_c
    goto/32 :goto_46

    nop

    nop

    :goto_5d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    :goto_5f
    if-eqz v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getValue(Ljava/lang/String;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "translationX"

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1
    goto/16 :goto_10

    nop

    nop

    :sswitch_0
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

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

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4
    const-string v0, "rotationY"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "scaleX"

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    goto :goto_10

    nop

    :sswitch_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "waveOffset"

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_a
    const-string v1, "WARNING! KeyCycle"

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_c
    const/4 v0, 0x5

    nop

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

    :goto_d
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_48

    nop

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

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_27

    nop

    nop

    :goto_11
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_2
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_3

    nop

    goto/32 :goto_17

    nop

    :cond_3
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_13
    const-string v0, "wavePhase"

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_14
    goto :goto_10

    nop

    :sswitch_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v0, "translationZ"

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    nop

    nop

    nop

    sparse-switch v0, :sswitch_data_0

    :goto_17
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return v0

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

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

    :goto_1b
    const/16 v0, 0xb

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1f
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    :goto_20
    const-string v0, "rotationX"

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

    :goto_21
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    :goto_24
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_6

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

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x7

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

    :goto_27
    const-string v0, "CUSTOM"

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_4f

    nop

    :goto_29
    goto/16 :goto_10

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_54

    nop

    nop

    :goto_2a
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4e

    nop

    :goto_2b
    const-string v0, "progress"

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_2c
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2f
    goto :goto_36

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_75

    nop

    nop

    :goto_30
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_8
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return v0

    nop

    nop

    :pswitch_2
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_33
    const-string v0, "translationY"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_34
    return v0

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_35
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_52

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

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string v0, "rotation"

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_3a
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v0, 0xe

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3d
    return v0

    nop

    nop

    :pswitch_4
    goto/32 :goto_69

    nop

    nop

    :goto_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

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

    :goto_3f
    return v0

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_7c

    nop

    nop

    :goto_40
    goto/16 :goto_10

    nop

    nop

    :sswitch_5
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_10

    nop

    nop

    :goto_42
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_43
    const/16 v0, 0xa

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

    nop

    :goto_44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :sswitch_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
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

    :goto_47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_49
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_4b
    if-nez v0, :cond_a

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :sswitch_7
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :sswitch_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_68

    nop

    nop

    :goto_4f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-nez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_51
    const-string v0, "alpha"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_52
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_53
    return v0

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_60

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

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_c
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_10

    nop

    nop

    nop

    :sswitch_9
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    return v0

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_6f

    nop

    nop

    :goto_58
    const/16 v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_59
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_5a
    const/16 v0, 0x8

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_5d
    return v0

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    return v0

    nop

    nop

    :pswitch_a
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v0, :cond_d

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_60
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_63
    const-string v1, "  UNKNOWN  "

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

    nop

    :goto_64
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_66
    return v0

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_67
    return v0

    nop

    nop

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_6
        -0x4a771f65 -> :sswitch_8
        -0x490b9c39 -> :sswitch_2
        -0x490b9c38 -> :sswitch_1
        -0x490b9c37 -> :sswitch_5
        -0x3bab3dd3 -> :sswitch_9
        -0x3621dfb2 -> :sswitch_3
        -0x3621dfb1 -> :sswitch_0
        -0x266f082 -> :sswitch_c
        -0x42d1a3 -> :sswitch_4
        0x2382115 -> :sswitch_b
        0x589b15e -> :sswitch_a
        0x94e04ec -> :sswitch_7
        0x5b327a02 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_c
        :pswitch_6
        :pswitch_5
        :pswitch_d
        :pswitch_2
        :pswitch_9
        :pswitch_4
        :pswitch_8
        :pswitch_b
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :goto_68
    goto/32 :goto_28

    nop

    nop

    :goto_69
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_10

    nop

    nop

    nop

    :sswitch_a
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const/16 v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_6e
    goto/16 :goto_10

    nop

    :sswitch_b
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_70
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const/16 v0, 0xc

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :sswitch_c
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_73
    if-nez v0, :cond_e

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

    :cond_e
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_74
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_77
    if-eqz v0, :cond_f

    nop

    goto/32 :goto_36

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

    :goto_78
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_79
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_7a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_7b
    const-string v0, "transitionPathRotate"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_7c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_7d
    const-string v0, "scaleY"

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

    :goto_7e
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_2

    nop

    nop

    :goto_7f
    goto/16 :goto_42

    nop

    nop

    :sswitch_d
    goto/32 :goto_13

    nop

    nop

    nop

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

    :goto_0
    return-void

    nop

    nop

    :goto_1
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle:[I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->access$000(Landroidx/constraintlayout/motion/widget/KeyCycle;Landroid/content/res/TypedArray;)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

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

    goto/32 :goto_8e

    nop

    nop

    :goto_0
    const/16 v0, 0xa

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

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_61

    nop

    nop

    :sswitch_0
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_63

    nop

    nop

    :goto_4
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_7
    goto/16 :goto_61

    nop

    :sswitch_2
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_8b

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_a
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_e
    const-string v0, "rotationX"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_56

    nop

    nop

    :goto_10
    const/4 v0, 0x2

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

    :goto_11
    goto/16 :goto_8b

    nop

    :pswitch_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_13
    const/4 v0, 0x3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_15
    goto/16 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_16
    const/16 v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_8b

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_61

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_60

    nop

    nop

    :goto_1c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72062ffd -> :sswitch_d
        -0x6c0d7d20 -> :sswitch_8
        -0x4a771f66 -> :sswitch_10
        -0x4a771f65 -> :sswitch_5
        -0x490b9c39 -> :sswitch_0
        -0x490b9c38 -> :sswitch_4
        -0x490b9c37 -> :sswitch_f
        -0x3621dfb2 -> :sswitch_3
        -0x3621dfb1 -> :sswitch_6
        -0x266f082 -> :sswitch_2
        -0x42d1a3 -> :sswitch_7
        0x2382115 -> :sswitch_b
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_a
        0xafa161a -> :sswitch_e
        0x2283b8a2 -> :sswitch_9
        0x5b327a02 -> :sswitch_11
        0x5b5cc028 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
        :pswitch_b
        :pswitch_10
        :pswitch_2
        :pswitch_5
        :pswitch_f
        :pswitch_4
        :pswitch_d
        :pswitch_a
        :pswitch_8
        :pswitch_11
        :pswitch_7
        :pswitch_3
        :pswitch_1
        :pswitch_c
        :pswitch_e
        :pswitch_0
    .end packed-switch

    :goto_1d
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_2
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x7

    nop

    nop

    sparse-switch v0, :sswitch_data_0

    :goto_20
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_23
    const-string v0, "translationY"

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_24
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_61

    nop

    :sswitch_5
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_27
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_8b

    nop

    :pswitch_3
    goto/32 :goto_77

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

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

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_2c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v0, "motionProgress"

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_2f
    goto/16 :goto_61

    nop

    nop

    nop

    :sswitch_6
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_32
    const-string v0, "waveOffset"

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_33
    const-string v0, "wavePhase"

    nop

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

    :goto_34
    instance-of v0, p2, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v0, :cond_3

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

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_37
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_38
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    :sswitch_7
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_4
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

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

    :goto_3b
    if-nez v0, :cond_5

    nop

    goto/32 :goto_20

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

    nop

    nop

    :goto_3c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_3d
    const/4 v0, 0x6

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_61

    nop

    nop

    :sswitch_8
    goto/32 :goto_95

    nop

    nop

    :goto_3f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const-string v0, "translationX"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_6
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_44
    const/16 v0, 0x9

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

    :goto_45
    goto/16 :goto_8b

    nop

    nop

    :pswitch_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_61

    nop

    :sswitch_9
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_8b

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4b
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_61

    nop

    nop

    :sswitch_a
    goto/32 :goto_32

    nop

    nop

    :goto_4d
    const-string v0, "rotationY"

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toInt(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_8
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_50
    if-nez v0, :cond_9

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_9
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v0, :cond_a

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_52
    if-nez v0, :cond_b

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_55
    goto/16 :goto_8b

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_56
    const/16 v0, 0x11

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_31

    nop

    nop

    :goto_59
    const-string v0, "scaleX"

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_8b

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_5b
    if-nez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/16 v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const/16 v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_5f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

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

    :goto_60
    const/4 v0, -0x1

    nop

    nop

    :goto_61
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_62
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

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

    :goto_63
    const-string v0, "alpha"

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    :sswitch_b
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :sswitch_c
    goto/32 :goto_9a

    nop

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

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_68
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_2d

    nop

    nop

    :goto_6a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_6b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_6d
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_6e
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    :sswitch_d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toInt(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_70
    if-nez v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_d
    goto/32 :goto_4b

    nop

    nop

    :goto_71
    const-string v0, "rotation"

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

    :goto_72
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_74
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_75
    const/4 v0, 0x1

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_76
    const v1, 0xf

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto/16 :goto_8b

    nop

    nop

    :pswitch_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const/16 v0, 0x10

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    const/16 v0, 0xe

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_8b

    nop

    :pswitch_a
    goto/32 :goto_6

    nop

    nop

    :goto_7c
    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_7d
    const-string v0, "curveFit"

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_7e
    goto/16 :goto_8b

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_81
    if-lez v0, :cond_f

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_f
    goto/32 :goto_30

    nop

    :goto_82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_83
    if-nez v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_8b

    nop

    :pswitch_c
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_85
    add-int v0, v0, v1

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

    :goto_86
    goto/16 :goto_61

    nop

    :sswitch_e
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_88
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_89
    goto/16 :goto_61

    nop

    nop

    nop

    :sswitch_f
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_8a
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_8d
    const/16 v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_8f
    goto :goto_8b

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_90
    if-nez v0, :cond_11

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_91
    goto/16 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_92
    const-string v0, "transitionPathRotate"

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_93
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

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

    :goto_94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_95
    const-string v0, "transitionEasing"

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

    :goto_96
    const-string v0, "scaleY"

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_97
    if-nez v0, :cond_12

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_98
    const-string v0, "translationZ"

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_99
    if-nez v0, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    const-string v0, "waveShape"

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_9b
    const-string v0, "elevation"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

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

    :goto_9d
    const-string v0, "wavePeriod"

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    nop

    :goto_9f
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    :sswitch_10
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

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

    nop

    :goto_a1
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    const/4 v0, 0x5

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_a4
    goto/16 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_a5
    goto/16 :goto_8b

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_a6
    goto/16 :goto_8b

    nop

    nop

    :pswitch_11
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_a7
    goto/16 :goto_61

    nop

    :sswitch_11
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    move v0, v1

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop
.end method
