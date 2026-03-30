.class public Landroidx/constraintlayout/helper/widget/MotionEffect;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;
.source "MotionEffect.java"


# static fields
.field public static final AUTO:I = -0x1

.field public static final EAST:I = 0x2

.field public static final NORTH:I = 0x0

.field public static final SOUTH:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FadeMove"

.field private static final UNSET:I = -0x1

.field public static final WEST:I = 0x3


# instance fields
.field private fadeMove:I

.field private motionEffectAlpha:F

.field private motionEffectEnd:I

.field private motionEffectStart:I

.field private motionEffectStrictMove:Z

.field private motionEffectTranslationX:I

.field private motionEffectTranslationY:I

.field private viewTransitionId:I


# direct methods
.method private 9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1
    goto/16 :goto_15

    nop

    nop

    :goto_2
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3
    iput v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_6
    if-eq v3, v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_8
    if-eq v3, v4, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    :goto_9
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq v3, v4, :cond_2

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

    :cond_2
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_5f

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

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

    :goto_10
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_translationY:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    const v0, 0xb

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_14
    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_16
    iget v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_17
    if-eq v3, v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_19
    goto :goto_15

    nop

    nop

    :goto_1a
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1b
    if-eq v3, v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v6, 0x63

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_move:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_20
    iget v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

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

    nop

    :goto_21
    if-eq v3, v4, :cond_5

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_5
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_22
    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_24
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_translationX:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_25
    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

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

    :goto_27
    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_4e

    nop

    nop

    :goto_2a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_strict:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_50

    nop

    nop

    :goto_2d
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

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

    :goto_2e
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

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

    :goto_2f
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

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

    :goto_30
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_end:I

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_31
    if-gtz v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_6
    goto/32 :goto_47

    nop

    nop

    :goto_32
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_34
    if-lt v2, v1, :cond_7

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_7
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_alpha:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4b

    nop

    :goto_37
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_39
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_15

    nop

    nop

    :goto_3b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3c
    iget v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

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

    :goto_3d
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

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

    :goto_40
    iget v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

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

    nop

    :goto_42
    if-eq v3, v4, :cond_9

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    add-int v0, v0, v1

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

    :goto_44
    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_45
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect:[I

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_4c

    nop

    :goto_47
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_48
    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

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

    :goto_49
    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_4a
    if-eq v3, v4, :cond_a

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_a
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_viewTransition:I

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

    :goto_4f
    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_50
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_51
    if-eq v2, v3, :cond_b

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

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

    :goto_53
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_54
    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_55
    iget-boolean v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_58
    iget v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

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

    :goto_59
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_start:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_5b
    iget v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

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

    :goto_5c
    if-nez p2, :cond_c

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_5d
    iget v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

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

    :goto_5e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0x31

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    const v0, 0x3dcccccd    # 0.1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

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

    :goto_e
    const/16 v0, 0x32

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    const v0, 0x3dcccccd    # 0.1f

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

    :goto_4
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

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

    :goto_6
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    :goto_7
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v0, 0x31

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

    :goto_b
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

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

    :goto_c
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    const/16 v0, 0x32

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

    nop

    :goto_e
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

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

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

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

    :goto_7
    const v0, 0x3dcccccd    # 0.1f

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

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

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

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

    :goto_c
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    const/16 v0, 0x31

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    const/16 v0, 0x32

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public isDecorator()Z
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
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "controllerMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/motion/widget/MotionLayout;",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/widget/MotionController;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_77

    nop

    nop

    :goto_0
    const-string v6, "alpha"

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v12, "translationX"

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v5, v8, v7}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_cf

    nop

    nop

    :goto_3
    invoke-virtual {v7, v10}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setFramePosition(I)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_a2

    nop

    nop

    :goto_5
    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_6
    cmpl-float v1, v15, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v12, v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    :goto_8
    goto/32 :goto_85

    nop

    nop

    :goto_9
    if-ltz v17, :cond_0

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_0
    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_a
    move-object/from16 v21, v2

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_b
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v15

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_c
    if-gtz v23, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_1
    goto/32 :goto_ff

    nop

    nop

    :goto_d
    invoke-virtual {v11, v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    goto/32 :goto_66

    nop

    nop

    :goto_e
    new-instance v3, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sub-int/2addr v11, v10

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v11, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v12, 0x0

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_14
    new-instance v7, Landroidx/constraintlayout/motion/widget/KeyPosition;

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

    :goto_15
    if-eq v13, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :cond_2
    goto/32 :goto_f6

    nop

    nop

    :goto_16
    invoke-virtual {v7, v9, v8}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_95

    nop

    nop

    :goto_17
    if-ltz v23, :cond_3

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

    :cond_3
    goto/32 :goto_ee

    nop

    nop

    :goto_18
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v20, 0x0

    nop

    :goto_1c
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    :cond_4
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionController;

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

    :goto_20
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

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

    :goto_21
    iget v10, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

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

    nop

    :goto_22
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v22

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v13, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    :goto_26
    if-eqz v10, :cond_5

    nop

    nop

    goto/32 :goto_97

    nop

    :cond_5
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_27
    cmpl-float v23, v21, v18

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

    :goto_28
    cmpl-float v23, v22, v18

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_6
    :goto_2a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/16 v20, 0x1

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_2c
    const/16 v18, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_2d
    move-object/from16 v2, p1

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

    :goto_2e
    const/4 v14, 0x1

    nop

    nop

    :goto_2f
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_30
    if-nez v1, :cond_7

    nop

    goto/32 :goto_d6

    nop

    :cond_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_31
    iget-boolean v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_32
    cmpl-float v21, v15, v18

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    aget v23, v15, v10

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_34
    iget v11, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

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

    :goto_35
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartX()F

    move-result v22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_36
    cmpg-float v23, v21, v18

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_38
    move-object v9, v11

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

    :goto_39
    invoke-direct {v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    aget v23, v15, v16

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_3b
    if-eqz v6, :cond_8

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :cond_8
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_3d
    aput v23, v15, v16

    nop

    :goto_3e
    goto/32 :goto_36

    nop

    nop

    :goto_3f
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_41
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setType(I)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    :goto_43
    invoke-virtual {v3, v6, v5}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_44
    sub-float/2addr v14, v15

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_45
    array-length v6, v2

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v15, -0x1

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

    :goto_48
    goto/16 :goto_2f

    nop

    nop

    :goto_49
    goto/32 :goto_5e

    nop

    nop

    :goto_4a
    move-object/from16 v21, v2

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_4b
    if-eqz v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_9
    :goto_4c
    goto/32 :goto_102

    nop

    nop

    :goto_4d
    invoke-direct {v7}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    goto/32 :goto_21

    nop

    nop

    :goto_4e
    const/4 v10, 0x4

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    add-int/lit8 v14, v14, 0x1

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_50
    aget v6, v15, v14

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_dc

    nop

    :goto_52
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_53
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-direct {v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_55
    aget v23, v15, v19

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    cmpl-float v16, v14, v18

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_57
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_58
    if-gtz v16, :cond_a

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v5, v9, v7}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    move-object/from16 v1, p2

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

    :goto_5b
    cmpl-float v1, v15, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5c
    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-lt v6, v10, :cond_b

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_5e
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartX()F

    move-result v15

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

    :goto_61
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    :goto_63
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_64
    cmpl-float v1, v14, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_37

    nop

    nop

    :goto_66
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v2, v1, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->applyViewTransition(ILandroidx/constraintlayout/motion/widget/MotionController;)Z

    goto/32 :goto_7e

    nop

    nop

    :goto_68
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_69
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_6a
    if-eqz v1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_c
    :goto_6b
    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_6c
    if-gtz v11, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget v11, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_6e
    aget-object v6, v2, v14

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_6f
    if-gtz v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_70
    move-object v8, v11

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

    :goto_71
    sub-float v15, v15, v20

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_72
    invoke-virtual {v9, v12, v11}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_34

    nop

    nop

    :goto_73
    add-int/lit8 v23, v23, 0x1

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_74
    if-nez v1, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_f
    goto/32 :goto_5b

    nop

    nop

    :goto_75
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_106

    nop

    nop

    :goto_77
    const v0, 0x8

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_78
    move-object/from16 v2, v21

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    move-object/from16 v2, p1

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_7b
    if-eq v1, v2, :cond_10

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_7c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/16 :goto_dc

    nop

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_4a

    nop

    nop

    :goto_80
    aget v10, v15, v14

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v11, v14, v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_7d

    nop

    nop

    :goto_82
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_83
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v14

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

    :goto_84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_85
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_86
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v10, v9}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    :goto_88
    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    goto/32 :goto_bb

    nop

    nop

    :goto_8a
    invoke-direct {v11}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_8b
    new-instance v5, Landroidx/constraintlayout/motion/widget/KeyPosition;

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v7, v8, v11}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_8d
    iget v11, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_8e
    cmpl-float v1, v14, v18

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

    nop

    :goto_8f
    aput v23, v15, v10

    nop

    :goto_90
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const-string v8, "percentX"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_92
    const/4 v2, -0x1

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_93
    new-instance v11, Landroidx/constraintlayout/motion/widget/KeyAttributes;

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

    :goto_94
    cmpg-float v19, v15, v18

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_95
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    goto/16 :goto_dc

    nop

    :goto_97
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_98
    add-int/lit8 v14, v14, 0x1

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget v11, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    move-object/from16 v2, p1

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

    :goto_9b
    goto/16 :goto_5f

    nop

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    const/4 v10, 0x1

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    new-array v15, v14, [I

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_a0
    if-gtz v23, :cond_11

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    move/from16 v14, v19

    nop

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_a3
    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    if-eqz v13, :cond_12

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    if-gtz v21, :cond_13

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

    :cond_13
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    goto/16 :goto_1c

    nop

    :goto_a9
    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_aa
    goto/16 :goto_c8

    nop

    :goto_ab
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_ac
    iget v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_ad
    aget v6, v15, v6

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v8, v12, v11}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartY()F

    move-result v20

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    const/4 v1, 0x3

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_b2
    if-gtz v13, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_b3
    cmpg-float v23, v22, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    :goto_b5
    if-nez v1, :cond_15

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_15
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_b6
    array-length v10, v2

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_b7
    if-eqz v2, :cond_16

    nop

    goto/32 :goto_10

    nop

    :cond_16
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_b9
    iget-boolean v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    sub-float v21, v21, v22

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_bc
    if-eq v13, v1, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_17
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    move-object/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_be
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v21

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_bf
    if-nez v20, :cond_18

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    aput v23, v15, v19

    nop

    nop

    nop

    nop

    :goto_c1
    goto/32 :goto_27

    nop

    nop

    :goto_c2
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_c3
    add-int v0, v0, v1

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_c4
    invoke-virtual {v4, v6, v5}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_46

    nop

    nop

    :goto_c5
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    goto/32 :goto_89

    nop

    nop

    :goto_c6
    if-lt v14, v10, :cond_19

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_80

    nop

    nop

    :goto_c7
    aput v23, v15, v17

    nop

    nop

    nop

    :goto_c8
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    move-object/from16 v21, v2

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_ca
    move v13, v14

    nop

    nop

    nop

    :goto_cb
    goto/32 :goto_98

    nop

    nop

    :goto_cc
    const/4 v14, 0x4

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_cd
    const-string v4, " views = null"

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_ce
    const/4 v11, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    if-lez v0, :cond_1a

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_109

    nop

    :goto_d1
    sub-int/2addr v13, v10

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d2
    add-int/lit8 v23, v23, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_d3
    iget-boolean v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_d4
    iget v6, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    if-eqz v1, :cond_1b

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

    :cond_1b
    :goto_d6
    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    if-ltz v19, :cond_1c

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_d8
    invoke-direct {v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    const-string v4, "FadeMove"

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_da
    const/16 v19, 0x0

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_db
    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    :goto_dc
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    goto :goto_dc

    nop

    nop

    nop

    nop

    :goto_de
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_df
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_e0
    const/4 v10, 0x1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_e1
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_f

    nop

    nop

    :goto_e2
    aget-object v10, v2, v6

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_e3
    const/4 v6, 0x0

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_e4
    iget-boolean v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_e5
    new-instance v4, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_e6
    invoke-direct {v4}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_e7
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartY()F

    move-result v23

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    if-lt v14, v6, :cond_1d

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_e9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_ea
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_eb
    const/4 v13, 0x0

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

    :goto_ec
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_ee
    const/16 v17, 0x2

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    goto/32 :goto_18

    nop

    nop

    :goto_f1
    if-ltz v23, :cond_1e

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {v12, v14, v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_f3
    new-instance v13, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_f4
    const-string v9, "percentY"

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_f5
    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_f6
    cmpg-float v17, v14, v18

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-direct {v11}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    goto/32 :goto_70

    nop

    nop

    :goto_f8
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setFramePosition(I)V

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_f9
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_fa
    if-eq v14, v15, :cond_1f

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

    :cond_1f
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    if-lt v6, v10, :cond_20

    nop

    goto/32 :goto_9c

    nop

    nop

    :cond_20
    goto/32 :goto_e2

    nop

    nop

    :goto_fc
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/helper/widget/MotionEffect;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_fd
    add-int/lit8 v23, v23, 0x1

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_fe
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_ff
    const/16 v16, 0x3

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    const/16 v19, 0x0

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

    :goto_101
    const-string v14, "translationY"

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

    :goto_102
    const/16 v20, 0x0

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_103
    aget v23, v15, v17

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_104
    move-object v11, v13

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_105
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_106
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_107
    if-gtz v1, :cond_21

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_21
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_108
    sub-float v22, v22, v23

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

    :goto_109
    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_10b
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    return-void

    nop

    nop

    :goto_10d
    goto/32 :goto_af

    nop

    nop

    :goto_10e
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionController;

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

    :goto_10f
    const/16 v20, 0x0

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

    :goto_110
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setType(I)V

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_111
    if-eq v13, v1, :cond_22

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_112
    add-int/lit8 v23, v23, 0x1

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_113
    const/16 v20, 0x0

    nop

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

    nop

    :goto_114
    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    goto/32 :goto_d4

    nop

    nop

    :goto_115
    invoke-virtual {v8, v11}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_116
    move-object v12, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_117
    invoke-virtual {v10, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop
.end method
