.class public Landroidx/constraintlayout/motion/utils/CustomSupport;
.super Ljava/lang/Object;
.source "CustomSupport.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomSupport"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method private static clamp(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0xff

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    sub-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    and-int/2addr p0, v1

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

    :goto_6
    not-int v1, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    and-int/2addr p0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    shr-int/lit8 v1, p0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    add-int/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_e
    shr-int/lit8 v1, p0, 0x1f

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public static setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "att",
            "view",
            "value"
        }
    .end annotation

    goto/32 :goto_20

    nop

    nop

    :goto_0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_3
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v8, "cannot access method "

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v8, "no method "

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v4, "CustomSupport"

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    const-string v2, "\""

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

    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_15
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    :try_start_0
    sget-object v0, Landroidx/constraintlayout/motion/utils/CustomSupport$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v7

    nop

    nop

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v7

    nop

    aget v0, v0, v7

    nop

    nop

    nop

    const/4 v8, 0x2

    nop

    nop

    const-wide v9, 0x3fdd1745d1745d17L    # 0.45454545454545453

    nop

    nop

    nop

    nop

    const/high16 v11, 0x437f0000    # 255.0f

    nop

    nop

    const/4 v12, 0x1

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_31

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    new-array v0, v12, [Ljava/lang/Class;

    nop

    nop

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    aput-object v7, v0, v13

    nop

    nop

    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    nop

    new-array v7, v12, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    aget v8, p2, v13

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    nop

    nop

    nop

    nop

    aput-object v8, v7, v13

    nop

    nop

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_31

    nop

    nop

    :pswitch_1
    new-array v0, v12, [Ljava/lang/Class;

    nop

    nop

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    aput-object v7, v0, v13

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    new-array v7, v12, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    aget v8, p2, v13

    nop

    nop

    nop

    const/high16 v9, 0x3f000000    # 0.5f

    nop

    nop

    cmpl-float v8, v8, v9

    nop

    nop

    nop

    nop

    if-lez v8, :cond_1

    nop

    nop

    nop

    nop

    goto :goto_17

    nop

    nop

    :cond_1
    move v12, v13

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    nop

    nop

    nop

    nop

    aput-object v8, v7, v13

    nop

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_31

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to interpolate strings "

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getName()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :pswitch_3
    new-array v0, v12, [Ljava/lang/Class;

    nop

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    aput-object v14, v0, v13

    nop

    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    nop

    aget v14, p2, v13

    nop

    nop

    nop

    nop

    nop

    float-to-double v14, v14

    nop

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    nop

    nop

    nop

    double-to-float v14, v14

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v14, v11

    nop

    nop

    nop

    nop

    nop

    float-to-int v14, v14

    nop

    nop

    nop

    nop

    invoke-static {v14}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    move-result v14

    nop

    nop

    nop

    aget v15, p2, v12

    nop

    nop

    nop

    nop

    float-to-double v12, v15

    nop

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    nop

    nop

    nop

    double-to-float v12, v12

    nop

    nop

    nop

    mul-float/2addr v12, v11

    nop

    nop

    nop

    nop

    nop

    float-to-int v12, v12

    nop

    nop

    nop

    nop

    invoke-static {v12}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    move-result v12

    nop

    aget v8, p2, v8

    nop

    nop

    nop

    nop

    float-to-double v7, v8

    nop

    nop

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    nop

    nop

    double-to-float v7, v7

    nop

    nop

    mul-float/2addr v7, v11

    nop

    nop

    float-to-int v7, v7

    nop

    nop

    nop

    nop

    invoke-static {v7}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    move-result v7

    nop

    nop

    const/4 v8, 0x3

    nop

    nop

    nop

    nop

    nop

    aget v8, p2, v8

    nop

    nop

    nop

    nop

    mul-float/2addr v8, v11

    nop

    nop

    float-to-int v8, v8

    nop

    nop

    nop

    invoke-static {v8}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    move-result v8

    nop

    nop

    shl-int/lit8 v9, v8, 0x18

    nop

    nop

    shl-int/lit8 v10, v14, 0x10

    nop

    nop

    nop

    or-int/2addr v9, v10

    nop

    nop

    nop

    nop

    nop

    shl-int/lit8 v10, v12, 0x8

    nop

    nop

    nop

    or-int/2addr v9, v10

    nop

    or-int/2addr v9, v7

    nop

    nop

    nop

    const/4 v10, 0x1

    nop

    nop

    nop

    new-array v10, v10, [Ljava/lang/Object;

    nop

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    aput-object v11, v10, v13

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :pswitch_4
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    new-array v7, v0, [Ljava/lang/Class;

    nop

    nop

    nop

    const-class v0, Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    aput-object v0, v7, v12

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    aget v7, p2, v12

    nop

    nop

    float-to-double v14, v7

    nop

    nop

    nop

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    nop

    nop

    nop

    double-to-float v7, v14

    nop

    nop

    mul-float/2addr v7, v11

    nop

    nop

    nop

    nop

    nop

    float-to-int v7, v7

    nop

    nop

    nop

    invoke-static {v7}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    move-result v7

    nop

    nop

    nop

    const/4 v12, 0x1

    nop

    nop

    nop

    nop

    aget v14, p2, v12

    nop

    nop

    nop

    nop

    float-to-double v14, v14

    nop

    nop

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    nop

    nop

    nop

    double-to-float v12, v14

    nop

    mul-float/2addr v12, v11

    nop

    nop

    nop

    nop

    nop

    float-to-int v12, v12

    nop

    nop

    nop

    nop

    invoke-static {v12}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    move-result v12

    nop

    nop

    nop

    aget v8, p2, v8

    nop

    nop

    float-to-double v14, v8

    nop

    nop

    nop

    nop

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    nop

    nop

    nop

    nop

    double-to-float v8, v8

    nop

    mul-float/2addr v8, v11

    nop

    nop

    nop

    float-to-int v8, v8

    nop

    invoke-static {v8}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x3

    nop

    aget v9, p2, v9

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v9, v11

    nop

    nop

    float-to-int v9, v9

    nop

    nop

    nop

    nop

    invoke-static {v9}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    shl-int/lit8 v10, v9, 0x18

    nop

    nop

    nop

    nop

    nop

    shl-int/lit8 v11, v7, 0x10

    nop

    or-int/2addr v10, v11

    nop

    nop

    nop

    shl-int/lit8 v11, v12, 0x8

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v10, v11

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v10, v8

    nop

    nop

    nop

    nop

    nop

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v11}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v11, v10}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    const/4 v13, 0x1

    nop

    nop

    new-array v13, v13, [Ljava/lang/Object;

    nop

    nop

    const/4 v14, 0x0

    nop

    aput-object v11, v13, v14

    nop

    invoke-virtual {v0, v1, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto/16 :goto_31

    nop

    nop

    :pswitch_5
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    new-array v7, v0, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    aput-object v0, v7, v8

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    new-array v7, v7, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    aget v9, p2, v8

    nop

    nop

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    nop

    nop

    aput-object v9, v7, v8

    nop

    nop

    nop

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :pswitch_6
    const/4 v0, 0x1

    nop

    nop

    nop

    new-array v7, v0, [Ljava/lang/Class;

    nop

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    aput-object v0, v7, v8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    new-array v7, v7, [Ljava/lang/Object;

    nop

    aget v9, p2, v8

    nop

    nop

    float-to-int v9, v9

    nop

    nop

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    aput-object v9, v7, v8

    nop

    nop

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v3, " on View \""

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

    :goto_19
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1a
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v1, p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_20
    const v0, 0x1d

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_31

    nop

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

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

    :goto_26
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x15

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getName()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto :goto_32

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2b
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v6, "set"

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

    :goto_2e
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_31
    nop

    :goto_32
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_34
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

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
.end method
