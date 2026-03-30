.class public Landroidx/constraintlayout/motion/widget/KeyAttributes;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "KeyAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final KEY_TYPE:I = 0x1

.field static final NAME:Ljava/lang/String; = "KeyAttribute"

.field private static final TAG:Ljava/lang/String; = "KeyAttributes"


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mElevation:F

.field private mPivotX:F

.field private mPivotY:F

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

.field private mVisibility:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

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

    nop

    :goto_b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

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

    :goto_e
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

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

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mVisibility:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

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

    :goto_13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

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

    :goto_15
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mType:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

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

    nop

    nop
.end method

.method static synthetic access$002(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
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

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

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

.method static synthetic access$100(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

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
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

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
.end method

.method static synthetic access$1002(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
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

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

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

.method static synthetic access$102(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

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
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static synthetic access$1102(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

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
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
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
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

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

.method static synthetic access$1202(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
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

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

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
.end method

.method static synthetic access$1302(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

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

.method static synthetic access$1400(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

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
.end method

.method static synthetic access$1402(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
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

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
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

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

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
.end method

.method static synthetic access$1502(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

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

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
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

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

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

.method static synthetic access$202(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

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
.end method

.method static synthetic access$300(Landroidx/constraintlayout/motion/widget/KeyAttributes;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

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

.method static synthetic access$302(Landroidx/constraintlayout/motion/widget/KeyAttributes;I)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

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

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

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

.method static synthetic access$402(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

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

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
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

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$502(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

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

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method static synthetic access$602(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

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

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
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

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

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

.method static synthetic access$702(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static synthetic access$800(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

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

    nop

    nop

    nop
.end method

.method static synthetic access$802(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
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

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static synthetic access$902(Landroidx/constraintlayout/motion/widget/KeyAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionEasing:Ljava/lang/String;

    nop

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

    nop

    nop
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .locals 7
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

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_0
    if-nez v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d7

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

    nop

    nop

    :goto_1
    goto/16 :goto_96

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_3c

    nop

    nop

    :goto_2
    goto/16 :goto_96

    nop

    nop

    :sswitch_1
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_4
    const-string v3, "CUSTOM"

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_96

    nop

    :sswitch_2
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_6
    if-nez v4, :cond_1

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v4, "translationX"

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_96

    nop

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_b4

    nop

    nop

    :goto_9
    if-eqz v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :cond_2
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_b
    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_4

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

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    :goto_d
    if-eqz v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_96

    nop

    :sswitch_4
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v3, :cond_6

    nop

    goto/32 :goto_cb

    nop

    :cond_6
    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_12
    if-nez v4, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :cond_7
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_14
    if-eqz v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_70

    nop

    nop

    :goto_15
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_cb

    nop

    nop

    :pswitch_1
    goto/32 :goto_3e

    nop

    nop

    :goto_17
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_18
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_cb

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_32

    nop

    nop

    :goto_1c
    if-eqz v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :cond_9
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_96

    nop

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/16 v5, 0x9

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_21
    const-string v4, "scaleX"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_22
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v4, :cond_a

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_25
    goto/16 :goto_89

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_27
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_28
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_2b
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2c
    if-eqz v3, :cond_b

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_2f
    const/4 v5, 0x3

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

    :goto_30
    goto/16 :goto_cb

    nop

    nop

    :pswitch_3
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_31
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

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

    :goto_32
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz v2, :cond_c

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v4, :cond_d

    nop

    goto/32 :goto_d7

    nop

    nop

    :cond_d
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_cb

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_c7

    nop

    nop

    :goto_37
    if-eqz v3, :cond_e

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :cond_e
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v4, :cond_f

    nop

    goto/32 :goto_d7

    nop

    nop

    :cond_f
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const-string v4, "scaleY"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_3d
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

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

    :goto_3e
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_b3

    nop

    nop

    :goto_40
    goto/16 :goto_96

    nop

    nop

    nop

    nop

    nop

    :sswitch_6
    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_41
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

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

    :goto_42
    const/4 v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_44
    goto/32 :goto_b7

    nop

    nop

    :goto_45
    goto/32 :goto_92

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_82

    nop

    nop

    :goto_47
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/16 v5, 0xa

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v5, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const-string v4, "rotationY"

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

    :goto_4b
    if-nez v4, :cond_10

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v4, :cond_11

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

    :cond_11
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v5, 0x5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/16 v5, 0x8

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_4f
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_50
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

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

    :goto_51
    goto/16 :goto_96

    nop

    nop

    nop

    nop

    :sswitch_7
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_52
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const/16 v5, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_54
    if-eqz v3, :cond_12

    nop

    goto/32 :goto_cb

    nop

    :cond_12
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_55
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

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

    :goto_56
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_57
    goto/16 :goto_cb

    nop

    nop

    :pswitch_7
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_58
    const-string v4, "translationY"

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v5, 0x4

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v4, :cond_13

    nop

    goto/32 :goto_d7

    nop

    :cond_13
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_5b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_96

    nop

    nop

    nop

    nop

    nop

    :sswitch_8
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_5e
    if-eqz v3, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :cond_14
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_cb

    nop

    :pswitch_8
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const v0, 0x20

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

    :goto_61
    if-nez v4, :cond_15

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :cond_15
    goto/32 :goto_48

    nop

    nop

    :goto_62
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const/4 v5, 0x0

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_64
    const/16 v5, 0xd

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const/4 v5, 0x1

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_67
    goto/16 :goto_96

    nop

    :sswitch_9
    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_68
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_cb

    nop

    nop

    :pswitch_9
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_6b
    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6c
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_6d
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6f
    const-string v4, "rotationX"

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_70
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

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

    :goto_71
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_72
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-eqz v3, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_75
    if-nez v4, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    :cond_17
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_5f

    nop

    nop

    :goto_77
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_79
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_7d
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7e
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_7f
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_80
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_81
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_82
    goto/16 :goto_cb

    nop

    :pswitch_a
    goto/32 :goto_bd

    nop

    nop

    :goto_83
    goto/16 :goto_cb

    nop

    :pswitch_b
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

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

    :goto_85
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    goto/16 :goto_cb

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_17

    nop

    nop

    :goto_88
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_89
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_1b

    nop

    nop

    :goto_8b
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_8c
    if-nez v4, :cond_18

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :cond_18
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    const/16 v5, 0xb

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

    :goto_8e
    goto/16 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_b6

    nop

    nop

    :goto_90
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_93
    const/4 v5, 0x6

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

    :goto_94
    const-string v4, "elevation"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_95
    move v5, v3

    nop

    nop

    nop

    nop

    nop

    :goto_96
    packed-switch v5, :pswitch_data_0

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_98
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    const-string v4, "alpha"

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_9b
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_9c
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_9d
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_f

    nop

    nop

    :goto_9e
    if-eqz v3, :cond_19

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_a1
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_a2
    if-nez v4, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    goto/16 :goto_96

    nop

    :sswitch_a
    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_a4
    if-nez v4, :cond_1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    :cond_1b
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_a5
    if-eqz v3, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_a7
    const/4 v5, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

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

    :goto_a9
    goto/16 :goto_ba

    nop

    :sswitch_b
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    goto/16 :goto_89

    nop

    nop

    :goto_ac
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_ad
    if-nez v4, :cond_1d

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_af
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

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

    :goto_b0
    goto/16 :goto_96

    nop

    nop

    nop

    nop

    :sswitch_c
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    const-string v4, "rotation"

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_b2
    goto/16 :goto_cb

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_b4
    const-string v4, "translationZ"

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    return-void

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_1
        -0x4a771f65 -> :sswitch_7
        -0x490b9c39 -> :sswitch_8
        -0x490b9c38 -> :sswitch_c
        -0x490b9c37 -> :sswitch_3
        -0x3bab3dd3 -> :sswitch_d
        -0x3621dfb2 -> :sswitch_5
        -0x3621dfb1 -> :sswitch_0
        -0x2d5a2d1e -> :sswitch_6
        -0x2d5a2d1d -> :sswitch_4
        -0x266f082 -> :sswitch_a
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_9
        0x589b15e -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_c
        :pswitch_1
        :pswitch_4
        :pswitch_b
        :pswitch_d
        :pswitch_3
        :pswitch_9
    .end packed-switch

    :goto_b7
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_b9
    goto/16 :goto_96

    nop

    nop

    nop

    :goto_ba
    goto/32 :goto_95

    nop

    nop

    :goto_bb
    invoke-virtual {v5, v6, v4}, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;)V

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_bc
    const-string v4, "transitionPathRotate"

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

    nop

    :goto_bd
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

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

    :goto_be
    move-object v5, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_bf
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_c1
    if-eqz v3, :cond_1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    :cond_1e
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_c2
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_c3
    const-string v4, "transformPivotX"

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_c4
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_c5
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_c6
    const-string v4, "progress"

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

    :goto_c7
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_c8
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_c9
    if-nez v4, :cond_1f

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    :cond_1f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    :goto_cb
    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_cc
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_cd
    if-lez v0, :cond_20

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_44

    nop

    :goto_ce
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    add-int/2addr v3, v5

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_d1
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    nop

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

    :goto_d3
    const-string v4, "transformPivotY"

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    goto/16 :goto_96

    nop

    nop

    nop

    :sswitch_d
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    sparse-switch v4, :sswitch_data_0

    :goto_d7
    goto/32 :goto_a9

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

    :goto_0
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-object v0

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->clone()Landroidx/constraintlayout/motion/widget/Key;

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

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v0, p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mVisibility:Z

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_8
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_9
    return-object p0

    nop

    :goto_a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

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

    :goto_d
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_23

    nop

    :goto_e
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

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

    :goto_f
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

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

    :goto_13
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_19
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mVisibility:Z

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

    :goto_1a
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

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

    :goto_1b
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1c
    const v0, 0x15

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1d
    const v1, 0x1e

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1e
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_20
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

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

    :goto_21
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

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

    :goto_22
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_25
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

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

    :goto_26
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

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

    :goto_27
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_29
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2a
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2b
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

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

    goto/32 :goto_66

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_1
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_4d

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    :cond_0
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

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

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    :goto_b
    const-string v0, "alpha"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_f
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_11
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
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

    :goto_15
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "scaleX"

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_19
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

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v3, "CUSTOM,"

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

    :goto_1d
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1e
    goto/32 :goto_13

    nop

    nop

    :goto_1f
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_20
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v0, :cond_5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    :goto_23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string v0, "rotation"

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v0, "transitionPathRotate"

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1b

    nop

    :goto_27
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_28
    const-string v0, "translationY"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_29
    check-cast v1, Ljava/lang/String;

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

    :goto_2a
    if-nez v1, :cond_6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_30
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :cond_8
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_35
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    :goto_36
    const-string v0, "transformPivotX"

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

    nop

    nop

    :goto_37
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz v0, :cond_9

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

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

    :goto_3c
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    nop

    goto/32 :goto_5e

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

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_41
    goto/32 :goto_2e

    nop

    nop

    :goto_42
    if-eqz v0, :cond_a

    nop

    nop

    goto/32 :goto_5a

    nop

    :cond_a
    goto/32 :goto_b

    nop

    nop

    :goto_43
    const-string v0, "rotationY"

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_46
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_48
    const-string v0, "translationX"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4a
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_4b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_4c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_51
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_52
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_53
    const v1, 0xc

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

    :goto_54
    if-eqz v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_56
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_58
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_5a
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_5c
    if-eqz v0, :cond_c

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

    :cond_c
    goto/32 :goto_28

    nop

    nop

    :goto_5d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    :goto_5f
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    nop

    :goto_60
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

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

    :goto_61
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_62
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const-string v0, "progress"

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_64
    const-string v0, "rotationX"

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

    :goto_65
    if-gtz v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_60

    nop

    nop

    :goto_66
    const v0, 0x11

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-eqz v0, :cond_e

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_69
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_6b
    if-eqz v0, :cond_f

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    const-string v0, "translationZ"

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-eqz v0, :cond_10

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

    :cond_10
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_70
    const-string v0, "scaleY"

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_71
    const-string v0, "transformPivotY"

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop
.end method

.method getCurveFit()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyAttributes;Landroid/content/res/TypedArray;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute:[I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

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

    goto/32 :goto_3f

    nop

    nop

    :goto_0
    const-string v1, "scaleX"

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_1
    const-string v1, "rotation"

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

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

    nop

    :goto_c
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_3e

    nop

    nop

    :goto_f
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, "transitionPathRotate"

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_11
    const-string v1, "transformPivotX"

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_14
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_15
    if-gtz v0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

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

    nop

    nop

    :goto_17
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_18
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_38

    nop

    nop

    :goto_1b
    const-string v1, "transformPivotY"

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

    :goto_1c
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_1d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

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

    nop

    :goto_20
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_21
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

    nop

    nop

    :goto_22
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    :goto_24
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_25
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    nop

    :goto_27
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

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

    :goto_2a
    const-string v1, "rotationY"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v0, :cond_4

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

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_30
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    nop

    goto/32 :goto_93

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

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    :cond_5
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_34
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_35
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

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

    :goto_37
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_38
    const-string v3, "CUSTOM,"

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3a
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3c
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const v0, 0xb

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-string v1, "scaleY"

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_42
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_44
    const-string v1, "translationY"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_46
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    :goto_48
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_49
    const-string v1, "progress"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    new-instance v2, Ljava/lang/StringBuilder;

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

    :goto_4d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4e
    if-eqz v0, :cond_7

    nop

    goto/32 :goto_3a

    nop

    :cond_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-eqz v0, :cond_8

    nop

    goto/32 :goto_87

    nop

    nop

    :cond_8
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_51
    if-eqz v0, :cond_9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_9
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_54
    const-string v1, "translationX"

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

    :goto_55
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_56
    if-eqz v0, :cond_a

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_72

    nop

    nop

    :goto_57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_58
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_59
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v1, :cond_b

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_5b
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5d
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    :goto_5f
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_60
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_62
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_69

    nop

    nop

    :goto_64
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_65
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

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

    nop

    :goto_66
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-eqz v0, :cond_c

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

    :cond_c
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_68
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

    :goto_69
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_6a
    const-string v1, "elevation"

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_6b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6c
    const-string v1, "alpha"

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

    :goto_6d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    :goto_6e
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    return-void

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

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

    nop

    :goto_73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_74
    const-string v1, "rotationX"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

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

    :goto_76
    if-lez v0, :cond_d

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_6

    nop

    :goto_77
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_33

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

    goto/32 :goto_67

    nop

    nop

    :goto_79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    :goto_7a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_7c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    :goto_7e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_7f
    const-string v1, "translationZ"

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_80
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_81
    add-int v0, v0, v1

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

    :goto_82
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_83
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_84
    if-eqz v0, :cond_e

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
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-eqz v0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_86
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_87
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_89
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_8a
    if-eq v0, v1, :cond_10

    nop

    nop

    goto/32 :goto_63

    nop

    :cond_10
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_8f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_90
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

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

    nop

    :goto_91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    :goto_92
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

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

    nop

    nop

    :goto_93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_94
    if-eqz v0, :cond_11

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :cond_11
    goto/32 :goto_90

    nop

    nop

    nop
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
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

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "visibility"

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_1
    const/4 v0, 0x6

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

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    nop

    nop

    :goto_3
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

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

    :goto_5
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_36

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_55

    nop

    nop

    :goto_7
    const/16 v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "rotationY"

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "curveFit"

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

    :goto_e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    :goto_f
    goto :goto_1b

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_3

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_3

    nop

    :pswitch_1
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_16
    goto :goto_1b

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_17
    const/16 v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    :goto_19
    const-string v0, "transitionEasing"

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_1a
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_46

    nop

    nop

    :goto_1c
    if-nez v0, :cond_3

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_3
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_4b

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

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_19

    nop

    nop

    :goto_20
    goto :goto_1b

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    :cond_4
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_1b

    nop

    nop

    :sswitch_4
    goto/32 :goto_31

    nop

    nop

    :goto_23
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionEasing:Ljava/lang/String;

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

    nop

    :goto_25
    const/4 v0, 0x3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_3

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_3

    nop

    :pswitch_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2a
    const-string v0, "motionProgress"

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_2e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    :goto_2f
    const-string v0, "rotationX"

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_30
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_31
    const-string v0, "elevation"

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_33
    const-string v0, "translationX"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72062ffd -> :sswitch_f
        -0x6c0d7d20 -> :sswitch_2
        -0x4a771f66 -> :sswitch_3
        -0x4a771f65 -> :sswitch_d
        -0x490b9c39 -> :sswitch_5
        -0x490b9c38 -> :sswitch_6
        -0x490b9c37 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_1
        -0x3621dfb1 -> :sswitch_a
        -0x2d5a2d1e -> :sswitch_0
        -0x2d5a2d1d -> :sswitch_7
        -0x266f082 -> :sswitch_10
        -0x42d1a3 -> :sswitch_4
        0x2382115 -> :sswitch_e
        0x589b15e -> :sswitch_9
        0x2283b8a2 -> :sswitch_c
        0x73b66312 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_f
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_a
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :goto_35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_36
    const-string v0, "transformPivotX"

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

    :goto_37
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :sswitch_6
    goto/32 :goto_3b

    nop

    nop

    :goto_38
    goto/16 :goto_1b

    nop

    :sswitch_7
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_3b
    const-string v0, "translationY"

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_3c
    const/16 v0, 0x10

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

    :goto_3d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_3e
    const-string v0, "scaleY"

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_1b

    nop

    nop

    :sswitch_8
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_40
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mVisibility:Z

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_41
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    :cond_6
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    :goto_44
    goto/16 :goto_1b

    nop

    nop

    nop

    :sswitch_9
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_45
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_7a

    nop

    :cond_7
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_3

    nop

    nop

    :pswitch_6
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/16 v0, 0xa

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_49
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :sswitch_a
    goto/32 :goto_3e

    nop

    nop

    :goto_4a
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_4b
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6f

    nop

    nop

    :goto_4c
    const/4 v0, 0x7

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_3

    nop

    nop

    :pswitch_7
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

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

    :goto_4f
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toInt(Ljava/lang/Object;)I

    move-result v0

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_50
    goto/16 :goto_3

    nop

    nop

    :pswitch_8
    goto/32 :goto_86

    nop

    nop

    :goto_51
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

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

    :goto_52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_54
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v0, 0x1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_57
    goto/16 :goto_3

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_9

    nop

    nop

    :goto_58
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_a
    goto/32 :goto_65

    nop

    nop

    :goto_5a
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    nop

    nop

    :goto_5c
    const/16 v0, 0xf

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_5d
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_3

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_10

    nop

    :sswitch_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_61
    const-string v0, "rotation"

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_62
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_3

    nop

    :pswitch_d
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_1b

    nop

    nop

    :sswitch_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
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

    nop

    :goto_66
    const/16 v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_68
    const-string v0, "translationZ"

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_69
    goto/16 :goto_1b

    nop

    nop

    nop

    :sswitch_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    nop

    nop

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

    :goto_6b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-nez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const-string v0, "transformPivotY"

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_6e
    goto/16 :goto_1b

    nop

    nop

    :sswitch_e
    goto/32 :goto_85

    nop

    nop

    :goto_6f
    const/16 v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_70
    const-string v0, "alpha"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_71
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

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

    :goto_73
    if-nez v0, :cond_d

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

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

    :goto_77
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

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

    nop

    :goto_78
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    nop

    nop

    nop

    sparse-switch v0, :sswitch_data_0

    :goto_7a
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_7b
    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    const-string v0, "scaleX"

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_7d
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toBoolean(Ljava/lang/Object;)Z

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

    :goto_80
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :sswitch_f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

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

    :goto_82
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

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

    :goto_84
    goto/16 :goto_3

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_85
    const-string v0, "transitionPathRotate"

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_87
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :sswitch_10
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

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

    :goto_8a
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_8b
    if-nez v0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_f
    goto/32 :goto_1

    nop

    nop

    :goto_8c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_8d
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_8e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_8f
    if-nez v0, :cond_10

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop
.end method
