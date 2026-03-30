.class Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;
.super Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressSet"
.end annotation


# instance fields
.field mNoMethod:Z


# direct methods
.method constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->mNoMethod:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "t",
            "time",
            "cache"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1f

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x1

    nop

    nop

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    const-string v3, "setProgress"

    nop

    nop

    nop

    new-array v4, v2, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    aput-object v5, v4, v11

    nop

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_5
    move-object v5, p1

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

    :goto_6
    return v11

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean v0, v7, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->mNoMethod:Z

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v12, v1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-wide/from16 v3, p3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-boolean v2, v7, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->mNoMethod:Z

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

    :goto_f
    move-object v7, p0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_10
    move-object v12, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    return v0

    nop

    nop

    :goto_13
    goto/32 :goto_27

    nop

    nop

    :goto_14
    instance-of v0, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    move-object v0, v8

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move v2, p2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1a
    move-object/from16 v6, p5

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v9, "unable to setProgress"

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_13

    nop

    :goto_1d
    goto/32 :goto_f

    nop

    nop

    :goto_1e
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto/32 :goto_23

    nop

    nop

    :goto_20
    if-nez v12, :cond_2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    :try_start_1
    new-array v0, v2, [Ljava/lang/Object;

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    move v2, p2

    nop

    nop

    nop

    nop

    move-wide/from16 v3, p3

    nop

    nop

    nop

    nop

    nop

    move-object v5, p1

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v6, p5

    nop

    nop

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    aput-object v1, v0, v11

    nop

    nop

    nop

    invoke-virtual {v12, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_21
    const-string v10, "ViewTimeCycle"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    move-object v1, v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_25
    iget-boolean v0, v7, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;->mContinue:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_26
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_27
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_28
    move-object v8, p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v11, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_a

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2b
    if-nez v0, :cond_3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2e
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop
.end method
