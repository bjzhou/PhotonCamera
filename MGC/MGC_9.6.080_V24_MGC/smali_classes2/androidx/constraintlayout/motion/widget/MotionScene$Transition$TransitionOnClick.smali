.class public Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;
.super Ljava/lang/Object;
.source "MotionScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionOnClick"
.end annotation


# static fields
.field public static final ANIM_TOGGLE:I = 0x11

.field public static final ANIM_TO_END:I = 0x1

.field public static final ANIM_TO_START:I = 0x10

.field public static final JUMP_TO_END:I = 0x100

.field public static final JUMP_TO_START:I = 0x1000


# instance fields
.field mMode:I

.field mTargetId:I

.field private final mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "transition",
            "parser"
        }
    .end annotation

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_16

    nop

    nop

    :goto_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eq v3, v4, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    :goto_8
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

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
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v2, v2, 0x1

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

    :goto_c
    if-eq v3, v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    :goto_d
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

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

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    :goto_10
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->OnClick:[I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

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

    nop

    :goto_12
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnClick_targetId:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

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
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_19
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1a
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_20
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnClick_clickAction:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_8

    nop

    :goto_22
    goto/32 :goto_a

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_24
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

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

    :goto_25
    if-lt v2, v1, :cond_2

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    :goto_26
    if-lez v0, :cond_3

    nop

    goto/32 :goto_1

    nop

    :cond_3
    goto/32 :goto_0

    nop

    :goto_27
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_28
    const/16 v0, 0x11

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
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "transition",
            "id",
            "action"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v0, 0x11

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, -0x1

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
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "currentState",
            "transition"
        }
    .end annotation

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    if-eq v2, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move v7, v5

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v2, "MotionScene"

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_9
    or-int/2addr v4, v7

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    or-int/2addr v4, v7

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_e
    move v7, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    if-eq p2, v2, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_10
    move v4, v6

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, -0x1

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

    :goto_14
    const v0, 0x10

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

    :goto_15
    goto/16 :goto_3e

    nop

    nop

    :goto_16
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    and-int/lit16 v7, v1, 0x100

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1a
    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4b

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

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v7, :cond_4

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eq p2, v3, :cond_5

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    :goto_1e
    move v5, v6

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v7, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_6
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    or-int v1, v4, v5

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move v7, v5

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_28
    move-object v0, p1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_29
    goto/32 :goto_2c

    nop

    :goto_2a
    and-int/lit8 v7, v1, 0x1

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

    :goto_2b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v5, 0x0

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_2e
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

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

    :goto_31
    and-int/lit8 v7, v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_32
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_34
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_35
    and-int/lit8 v4, v1, 0x1

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

    :goto_36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_39
    if-nez v1, :cond_8

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3a
    move v7, v6

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-eq p2, v3, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_9
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {p3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_3d
    move v7, v5

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_3f
    return-void

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_41
    const v1, 0x4

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

    :goto_42
    and-int/lit16 v1, v1, 0x1000

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

    :goto_43
    if-nez v7, :cond_a

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    or-int/2addr v4, v7

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_37

    nop

    nop

    :goto_46
    move v4, v5

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move v7, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_49
    if-eq v0, v1, :cond_b

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {p3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4b
    if-eq p2, v2, :cond_c

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_c
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-lez v0, :cond_d

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2b

    nop

    :goto_4e
    if-eq p2, v2, :cond_e

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const-string v2, "OnClick could not find id "

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/4 v6, 0x1

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

    nop

    :goto_51
    goto/16 :goto_24

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method isTransitionViable(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "current",
            "tl"
        }
    .end annotation

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1
    goto/32 :goto_20

    nop

    :goto_2
    move v1, v4

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    if-ne v3, v2, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    iget v3, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    if-eq v2, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    :goto_d
    iget v3, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_e
    return v1

    nop

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    if-ne v3, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    return v1

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v3, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eq v0, p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_4

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    return v1

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1d
    if-eq v3, v0, :cond_5

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_5
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x1b

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_21
    move v1, v4

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_22

    nop

    :goto_24
    goto/32 :goto_21

    nop

    nop

    nop
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_1
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    :cond_0
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_2
    const/4 v5, 0x0

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    goto/32 :goto_21

    nop

    nop

    :goto_5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

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

    nop

    :goto_6
    move v3, v5

    nop

    nop

    :goto_7
    goto/32 :goto_29

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    :goto_9
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    goto/32 :goto_69

    nop

    nop

    :goto_a
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

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

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    :goto_e
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_f
    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(Landroidx/constraintlayout/motion/widget/MotionScene;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_10
    goto :goto_14

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    :goto_12
    if-eq v1, v2, :cond_2

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

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v3, 0x0

    nop

    nop

    :goto_14
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_15
    if-nez v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_16
    move v4, v5

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInteractionEnabled()Z

    move-result v1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_19
    and-int/lit16 v5, v5, 0x100

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1a
    and-int/lit8 v5, v5, 0x10

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    const/4 v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    and-int/2addr v5, v6

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_7

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_23
    and-int/lit8 v3, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move v2, v4

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_25
    invoke-static {v2, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$102(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_26
    if-ne v6, v7, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_28
    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->isTransitionViable(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroidx/constraintlayout/motion/widget/MotionLayout;)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_29
    and-int/lit8 v6, v2, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

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

    :goto_2d
    goto/16 :goto_85

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_30
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz v6, :cond_5

    nop

    goto/32 :goto_66

    nop

    nop

    :cond_5
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_36
    cmpl-float v6, v6, v7

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_37
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_38
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_39
    if-nez v5, :cond_6

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_6
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3b
    if-ne v6, v7, :cond_7

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

    :cond_7
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-eq v1, v2, :cond_8

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move v2, v5

    nop

    nop

    :goto_3e
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v6}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$800(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/MotionScene;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v2, 0x0

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

    :goto_41
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_42
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_43
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_32

    nop

    :goto_45
    if-nez v5, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto/32 :goto_2d

    nop

    nop

    :goto_47
    if-nez v3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_48
    invoke-static {v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    move-result v3

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_49
    const/high16 v7, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    :goto_4b
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_4e
    goto/16 :goto_66

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-eqz v3, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_b
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_85

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

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

    :goto_54
    goto/16 :goto_1e

    nop

    :goto_55
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_56
    if-nez v3, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_c
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-eqz v1, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_59
    if-nez v2, :cond_e

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_63

    nop

    nop

    :goto_5a
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->access$700(Landroidx/constraintlayout/motion/widget/MotionScene;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    goto/32 :goto_6b

    nop

    nop

    :goto_5c
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    goto/32 :goto_4

    nop

    nop

    :goto_5d
    if-nez v4, :cond_f

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

    :cond_f
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v2, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$800(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/MotionScene;

    move-result-object v0

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$800(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/MotionScene;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_62
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_63
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_64
    move v3, v4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_67
    and-int/lit16 v2, v2, 0x1000

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_68
    and-int/lit16 v5, v5, 0x1000

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

    :goto_69
    goto/16 :goto_85

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_6b
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_6c
    invoke-static {v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$800(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/MotionScene;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_6d
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

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

    nop

    :goto_6e
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_6f
    if-nez v6, :cond_11

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_70
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_71
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_72
    if-nez v3, :cond_12

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_42

    nop

    nop

    :goto_73
    if-nez v3, :cond_13

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_54

    nop

    nop

    :goto_74
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_75
    if-nez v2, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_76
    if-gtz v6, :cond_15

    nop

    goto/32 :goto_81

    nop

    :cond_15
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_77
    invoke-static {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$002(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_78
    and-int/lit16 v3, v2, 0x100

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

    :goto_79
    const v1, 0x17

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_7a
    if-nez v5, :cond_16

    nop

    goto/32 :goto_52

    nop

    :cond_16
    goto/32 :goto_38

    nop

    nop

    :goto_7b
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getEndState()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_7c
    return-void

    nop

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_44

    nop

    nop

    :goto_7e
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_11

    nop

    nop

    :goto_81
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :goto_85
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop
.end method

.method public removeOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionLayout"
        }
    .end annotation

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

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

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_e

    nop

    nop

    :goto_6
    const v0, 0x11

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v2, " (*)  could not find id "

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

    :goto_9
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x7

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

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_18
    const-string v2, "MotionScene"

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_1c
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method
