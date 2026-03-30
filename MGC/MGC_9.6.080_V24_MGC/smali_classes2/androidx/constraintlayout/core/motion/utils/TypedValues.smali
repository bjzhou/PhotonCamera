.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;,
        Landroidx/constraintlayout/core/motion/utils/TypedValues$TransitionType;,
        Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionScene;,
        Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;,
        Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionType;,
        Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType;,
        Landroidx/constraintlayout/core/motion/utils/TypedValues$TriggerType;,
        Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;,
        Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;
    }
.end annotation


# static fields
.field public static final BOOLEAN_MASK:I = 0x1

.field public static final FLOAT_MASK:I = 0x4

.field public static final INT_MASK:I = 0x2

.field public static final STRING_MASK:I = 0x8

.field public static final S_CUSTOM:Ljava/lang/String; = "CUSTOM"

.field public static final TYPE_FRAME_POSITION:I = 0x64

.field public static final TYPE_TARGET:I = 0x65


# virtual methods
.method public abstract getId(Ljava/lang/String;)I
.end method

.method public abstract setValue(IF)Z
.end method

.method public abstract setValue(II)Z
.end method

.method public abstract setValue(ILjava/lang/String;)Z
.end method

.method public abstract setValue(IZ)Z
.end method
