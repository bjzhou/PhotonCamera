.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSwipe"
.end annotation


# static fields
.field public static final AUTOCOMPLETE_MODE:Ljava/lang/String; = "autocompletemode"

.field public static final AUTOCOMPLETE_MODE_ENUM:[Ljava/lang/String;

.field public static final DRAG_DIRECTION:Ljava/lang/String; = "dragdirection"

.field public static final DRAG_SCALE:Ljava/lang/String; = "dragscale"

.field public static final DRAG_THRESHOLD:Ljava/lang/String; = "dragthreshold"

.field public static final LIMIT_BOUNDS_TO:Ljava/lang/String; = "limitboundsto"

.field public static final MAX_ACCELERATION:Ljava/lang/String; = "maxacceleration"

.field public static final MAX_VELOCITY:Ljava/lang/String; = "maxvelocity"

.field public static final MOVE_WHEN_SCROLLAT_TOP:Ljava/lang/String; = "movewhenscrollattop"

.field public static final NESTED_SCROLL_FLAGS:Ljava/lang/String; = "nestedscrollflags"

.field public static final NESTED_SCROLL_FLAGS_ENUM:[Ljava/lang/String;

.field public static final ON_TOUCH_UP:Ljava/lang/String; = "ontouchup"

.field public static final ON_TOUCH_UP_ENUM:[Ljava/lang/String;

.field public static final ROTATION_CENTER_ID:Ljava/lang/String; = "rotationcenterid"

.field public static final SPRINGS_TOP_THRESHOLD:Ljava/lang/String; = "springstopthreshold"

.field public static final SPRING_BOUNDARY:Ljava/lang/String; = "springboundary"

.field public static final SPRING_BOUNDARY_ENUM:[Ljava/lang/String;

.field public static final SPRING_DAMPING:Ljava/lang/String; = "springdamping"

.field public static final SPRING_MASS:Ljava/lang/String; = "springmass"

.field public static final SPRING_STIFFNESS:Ljava/lang/String; = "springstiffness"

.field public static final TOUCH_ANCHOR_ID:Ljava/lang/String; = "touchanchorid"

.field public static final TOUCH_ANCHOR_SIDE:Ljava/lang/String; = "touchanchorside"

.field public static final TOUCH_REGION_ID:Ljava/lang/String; = "touchregionid"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->AUTOCOMPLETE_MODE_ENUM:[Ljava/lang/String;

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    const-string v6, "neverCompleteToStart"

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

    :goto_6
    const-string v0, "continuousVelocity"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

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

    nop

    :goto_8
    const-string v0, "overshoot"

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    const v0, 0x13

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "spring"

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
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

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

    :goto_c
    const-string v0, "autoComplete"

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_d
    const-string v3, "bounceBoth"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v4, "decelerate"

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

    :goto_f
    goto/32 :goto_13

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    const-string v1, "bounceStart"

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    :goto_14
    const-string v2, "bounceEnd"

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

    :goto_15
    const-string v0, "none"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v3, "supportScrollUp"

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

    :goto_17
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->ON_TOUCH_UP_ENUM:[Ljava/lang/String;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->NESTED_SCROLL_FLAGS_ENUM:[Ljava/lang/String;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v3, "stop"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1c
    const-string v7, "neverCompleteToEnd"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1d
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->SPRING_BOUNDARY_ENUM:[Ljava/lang/String;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    const-string v1, "disablePostScroll"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    const-string v2, "disableScroll"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_20
    const-string v2, "autoCompleteToEnd"

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_21
    const-string v5, "decelerateAndComplete"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v1, "autoCompleteToStart"

    nop

    goto/32 :goto_20

    nop

    nop

    nop
.end method
