.class public Landroidx/constraintlayout/core/motion/MotionWidget;
.super Ljava/lang/Object;
.source "MotionWidget.java"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/TypedValues;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;,
        Landroidx/constraintlayout/core/motion/MotionWidget$Motion;
    }
.end annotation


# static fields
.field public static final FILL_PARENT:I = -0x1

.field public static final GONE_UNSET:I = -0x80000000

.field private static final INTERNAL_MATCH_CONSTRAINT:I = -0x3

.field private static final INTERNAL_MATCH_PARENT:I = -0x1

.field private static final INTERNAL_WRAP_CONTENT:I = -0x2

.field private static final INTERNAL_WRAP_CONTENT_CONSTRAINED:I = -0x4

.field public static final INVISIBLE:I = 0x0

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final MATCH_PARENT:I = -0x1

.field public static final PARENT_ID:I = 0x0

.field public static final ROTATE_LEFT_OF_PORTRATE:I = 0x4

.field public static final ROTATE_NONE:I = 0x0

.field public static final ROTATE_PORTRATE_OF_LEFT:I = 0x2

.field public static final ROTATE_PORTRATE_OF_RIGHT:I = 0x1

.field public static final ROTATE_RIGHT_OF_PORTRATE:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final VISIBILITY_MODE_IGNORE:I = 0x1

.field public static final VISIBILITY_MODE_NORMAL:I = 0x0

.field public static final VISIBLE:I = 0x4

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mProgress:F

.field mTransitionPathRotate:F

.field motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

.field propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

.field widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

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

    :goto_5
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_6
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_a
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V
    .locals 1

    goto/32 :goto_b

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
    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_5
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public findViewById(I)Landroidx/constraintlayout/core/motion/MotionWidget;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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
    return-object v0

    nop

    nop
.end method

.method public getAlpha()F
    .locals 1

    goto/32 :goto_2

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
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->alpha:F

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public getBottom()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop
.end method

.method public getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/WidgetFrame;->getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public getCustomAttributeNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;->getCustomAttributeNames()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public getHeight()I
    .locals 2

    goto/32 :goto_5

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

    goto/32 :goto_8

    nop

    nop

    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1c

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const v0, 0x9

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sub-int/2addr v0, v1

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

    :goto_b
    return v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iget v1, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

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
.end method

.method public getId(Ljava/lang/String;)I
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
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

    nop

    nop

    nop

    :goto_1
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionType;->getId(Ljava/lang/String;)I

    move-result v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    const v1, 0x4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->getId(Ljava/lang/String;)I

    move-result v0

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

    :goto_5
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

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

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ne v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop
.end method

.method public getLeft()I
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

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;->getId()Ljava/lang/String;

    move-result-object v0

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

.method public getParent()Landroidx/constraintlayout/core/motion/MotionWidget;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public getPivotX()F
    .locals 1

    goto/32 :goto_2

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
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public getPivotY()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

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
.end method

.method public getRight()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    :goto_2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

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
.end method

.method public getRotationX()F
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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getRotationY()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    :goto_2
    return v0

    nop
.end method

.method public getRotationZ()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

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

.method public getScaleX()F
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public getScaleY()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_0

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
.end method

.method public getTop()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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
.end method

.method public getTranslationX()F
    .locals 1

    goto/32 :goto_2

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
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public getTranslationY()F
    .locals 1

    goto/32 :goto_2

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
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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
.end method

.method public getTranslationZ()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    :goto_2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

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
.end method

.method public getValueAttributes(I)F
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/32 :goto_11

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
    .packed-switch 0x12f
        :pswitch_2
        :pswitch_b
        :pswitch_3
        :pswitch_a
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_d
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_c
        :pswitch_7
    .end packed-switch

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3
    return v0

    nop

    :pswitch_1
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

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

    :goto_7
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mProgress:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

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

    :goto_a
    return v0

    nop

    :pswitch_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    :goto_e
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

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

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_12
    return v0

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    return v0

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_14
    return v0

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    return v0

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_18
    return v0

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_f

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

    :pswitch_9
    goto/32 :goto_1d

    nop

    nop

    :goto_1a
    return v0

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mTransitionPathRotate:F

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1c
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

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

    :goto_1d
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1e
    return v0

    nop

    nop

    :pswitch_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    :goto_20
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_21
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_8

    nop

    nop

    :goto_23
    return v0

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    :goto_26
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public getVisibility()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->visibility:I

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

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getWidgetFrame()Landroidx/constraintlayout/core/state/WidgetFrame;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_1

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

    nop
.end method

.method public getWidth()I
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
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

    :goto_1
    sub-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget v1, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

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

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_a
    const v1, 0x1a

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1b

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

    :goto_e
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public getX()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getY()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

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

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public layout(IIII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/core/motion/MotionWidget;->setBounds(IIII)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public setBounds(IIII)V
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

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
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    iput p4, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    const v1, 0x1

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

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

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

    :goto_b
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

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

    :goto_12
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput p3, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_17
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto/32 :goto_c

    nop

    nop

    :goto_19
    move-object v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method

.method public setCustomAttribute(Ljava/lang/String;IF)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IF)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public setCustomAttribute(Ljava/lang/String;II)V
    .locals 1

    goto/32 :goto_2

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

    :goto_1
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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
.end method

.method public setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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

.method public setCustomAttribute(Ljava/lang/String;IZ)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IZ)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public setInterpolatedValue(Landroidx/constraintlayout/core/motion/CustomAttribute;[F)V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v3, 0x385

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    aget v2, p2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1, v3, v2}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IF)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    const v1, 0x1

    nop

    nop

    goto/32 :goto_7

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
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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
.end method

.method public setPivotX(F)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

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

.method public setPivotY(F)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public setRotationX(F)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public setRotationY(F)V
    .locals 1

    goto/32 :goto_1

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

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    :goto_2
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setRotationZ(F)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

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
.end method

.method public setScaleX(F)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

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
.end method

.method public setScaleY(F)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public setTranslationX(F)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public setTranslationY(F)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public setTranslationZ(F)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public setValue(IF)Z
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    :goto_1
    goto/32 :goto_c

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

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    return v1

    nop

    :goto_4
    goto/32 :goto_e

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

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueMotion(IF)Z

    move-result v1

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

    :goto_8
    return v1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueAttributes(IF)Z

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

    :goto_d
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    :goto_f
    const v1, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public setValue(II)Z
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
    int-to-float v0, p2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueAttributes(IF)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public setValue(ILjava/lang/String;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueMotion(ILjava/lang/String;)Z

    move-result v0

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

.method public setValue(IZ)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

.method public setValueAttributes(IF)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12f
        :pswitch_1
        :pswitch_8
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_a
        :pswitch_5
        :pswitch_c
        :pswitch_b
        :pswitch_7
        :pswitch_9
        :pswitch_d
        :pswitch_4
    .end packed-switch

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

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

    :goto_4
    goto :goto_c

    nop

    nop

    :pswitch_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

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

    :goto_6
    goto :goto_c

    nop

    :pswitch_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

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

    :goto_b
    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_10
    goto :goto_c

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_11
    return v0

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    goto :goto_c

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_27

    nop

    nop

    :goto_14
    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

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

    :goto_16
    goto :goto_c

    nop

    nop

    :pswitch_6
    goto/32 :goto_9

    nop

    nop

    :goto_17
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    :goto_18
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mTransitionPathRotate:F

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

    :goto_1b
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    :goto_1e
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mProgress:F

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1f
    goto/16 :goto_c

    nop

    nop

    :pswitch_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_21

    nop

    nop

    :goto_21
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    nop

    :goto_22
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    :goto_23
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_24
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_c

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_27
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    :goto_28
    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public setValueMotion(IF)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeMotionPhase:F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

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

    :goto_2
    const/4 v0, 0x0

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

    :goto_3
    goto :goto_7

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathRotate:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mMotionStagger:F

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    :pswitch_2
    goto/32 :goto_4

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x258
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValueMotion(II)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

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

    :goto_2
    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateCircleAngleTo:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

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

    nop

    :goto_5
    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mDrawPath:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPolarRelativeTo:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeMotionSteps:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_e

    nop

    :pswitch_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathMotionArc:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    return v0

    nop

    nop

    :pswitch_1
    goto/32 :goto_13

    nop

    nop

    :goto_d
    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateRelativeTo:I

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_e

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_e

    nop

    :pswitch_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    goto :goto_e

    nop

    :pswitch_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14
    return v0

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x25d
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :goto_15
    goto :goto_e

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_e

    nop

    nop

    :pswitch_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorID:I

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

    :goto_18
    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorType:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public setValueMotion(ILjava/lang/String;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    :pswitch_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_3

    nop

    nop

    :pswitch_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x25b
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    iput-object p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

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
.end method

.method public setVisibility(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

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

    :goto_2
    iput p1, v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->visibility:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_10

    nop

    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

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

    :goto_2
    const v1, 0x1e

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

    :goto_3
    const v0, 0xe

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v2, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

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
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    iget v1, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    iget v2, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

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

    :goto_f
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    iget v1, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_18
    const-string v1, ", "

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    nop

    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method
