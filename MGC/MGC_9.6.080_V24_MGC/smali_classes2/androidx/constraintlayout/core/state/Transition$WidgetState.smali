.class Landroidx/constraintlayout/core/state/Transition$WidgetState;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WidgetState"
.end annotation


# instance fields
.field end:Landroidx/constraintlayout/core/state/WidgetFrame;

.field interpolated:Landroidx/constraintlayout/core/state/WidgetFrame;

.field motionControl:Landroidx/constraintlayout/core/motion/Motion;

.field motionWidgetEnd:Landroidx/constraintlayout/core/motion/MotionWidget;

.field motionWidgetInterpolated:Landroidx/constraintlayout/core/motion/MotionWidget;

.field motionWidgetStart:Landroidx/constraintlayout/core/motion/MotionWidget;

.field myKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

.field myParentHeight:I

.field myParentWidth:I

.field start:Landroidx/constraintlayout/core/state/WidgetFrame;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionControl:Landroidx/constraintlayout/core/motion/Motion;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1
    new-instance v0, Landroidx/constraintlayout/core/motion/Motion;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/motion/Motion;->setEnd(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    goto/32 :goto_27

    nop

    nop

    :goto_4
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionWidgetInterpolated:Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionWidgetEnd:Landroidx/constraintlayout/core/motion/MotionWidget;

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

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->myParentHeight:I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/Motion;-><init>(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionWidgetStart:Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_a
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->interpolated:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;-><init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    :goto_f
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;-><init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1f

    nop

    nop

    :goto_11
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionControl:Landroidx/constraintlayout/core/motion/Motion;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionWidgetStart:Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    goto/32 :goto_21

    nop

    nop

    :goto_16
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_17
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;-><init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->end:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/motion/Motion;->setStart(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->interpolated:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->myKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_21
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->end:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_22
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_25
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_26
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->start:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_27
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->start:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_29
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2a
    iput v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->myParentWidth:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2b
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionWidgetEnd:Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionWidgetStart:Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

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

    :goto_2e
    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public getFrame(I)Landroidx/constraintlayout/core/state/WidgetFrame;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->interpolated:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    if-eq p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->end:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->start:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public interpolate(IIFLandroidx/constraintlayout/core/state/Transition;)V
    .locals 7

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    move v2, p2

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    iput p2, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->myParentHeight:I

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

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionControl:Landroidx/constraintlayout/core/motion/Motion;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->myParentWidth:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    move v1, p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v5, p4

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    iget-object v4, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->end:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->interpolated:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/motion/Motion;->setup(IIFJ)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput p3, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolatedPos:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
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

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    move v6, p3

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

    :goto_12
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionControl:Landroidx/constraintlayout/core/motion/Motion;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->interpolated:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    move v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    invoke-static/range {v0 .. v6}, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolate(IILandroidx/constraintlayout/core/state/WidgetFrame;Landroidx/constraintlayout/core/state/WidgetFrame;Landroidx/constraintlayout/core/state/WidgetFrame;Landroidx/constraintlayout/core/state/Transition;F)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v6, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->myKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v3, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->start:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    nop

    :goto_19
    iget-object v2, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionWidgetInterpolated:Landroidx/constraintlayout/core/motion/MotionWidget;

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

    :goto_1a
    move v1, p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_1c
    move v3, p3

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1d
    const v1, 0x4

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

    :goto_1e
    const/high16 v3, 0x3f800000    # 1.0f

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

    :goto_1f
    const v0, 0x15

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

    :goto_20
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/motion/Motion;->interpolate(Landroidx/constraintlayout/core/motion/MotionWidget;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setKeyAttribute(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    return-void

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionControl:Landroidx/constraintlayout/core/motion/Motion;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

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

    :goto_7
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x11

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x9

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/motion/Motion;->addKey(Landroidx/constraintlayout/core/motion/key/MotionKey;)V

    goto/32 :goto_0

    nop

    nop

    :goto_c
    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;

    nop

    nop

    goto/32 :goto_7

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_e
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->applyDelta(Landroidx/constraintlayout/core/motion/utils/TypedValues;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public setKeyCycle(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V
    .locals 2

    goto/32 :goto_b

    nop

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

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    const v1, 0x15

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionControl:Landroidx/constraintlayout/core/motion/Motion;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->applyDelta(Landroidx/constraintlayout/core/motion/utils/TypedValues;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/motion/Motion;->addKey(Landroidx/constraintlayout/core/motion/key/MotionKey;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setKeyPosition(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->applyDelta(Landroidx/constraintlayout/core/motion/utils/TypedValues;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    const v0, 0xd

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xc

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionControl:Landroidx/constraintlayout/core/motion/Motion;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/motion/Motion;->addKey(Landroidx/constraintlayout/core/motion/key/MotionKey;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop
.end method

.method public update(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionWidgetEnd:Landroidx/constraintlayout/core/motion/MotionWidget;

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

    :goto_1
    if-eqz p2, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionControl:Landroidx/constraintlayout/core/motion/Motion;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionWidgetStart:Landroidx/constraintlayout/core/motion/MotionWidget;

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

    :goto_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    goto :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/motion/Motion;->setEnd(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/WidgetFrame;->update(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroidx/constraintlayout/core/state/WidgetFrame;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, -0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionControl:Landroidx/constraintlayout/core/motion/Motion;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->start:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->end:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    :goto_11
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/motion/Motion;->setStart(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/WidgetFrame;->update(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroidx/constraintlayout/core/state/WidgetFrame;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eq p2, v0, :cond_2

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

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0xe

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->myParentWidth:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop
.end method
