.class public Landroidx/constraintlayout/widget/ConstraintAttribute;
.super Ljava/lang/Object;
.source "ConstraintAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransitionLayout"


# instance fields
.field mBooleanValue:Z

.field private mColorValue:I

.field private mFloatValue:F

.field private mIntegerValue:I

.field private mMethod:Z

.field mName:Ljava/lang/String;

.field private mStringValue:Ljava/lang/String;

.field private mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "value"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setValue(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "attributeType"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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

    :goto_2
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "attributeType",
            "value",
            "method"
        }
    .end annotation

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iput-boolean p4, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

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

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setValue(Ljava/lang/Object;)V

    goto/32 :goto_2

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
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    add-int/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    and-int/2addr p0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const/16 v0, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    and-int/2addr p0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sub-int/2addr p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    shr-int/lit8 v1, p0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    :goto_f
    shr-int/lit8 v1, p0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xf

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    not-int v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public static extractAttributes(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_4
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_7
    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    :goto_9
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    const v0, 0x6

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_7

    nop

    nop

    :catch_1
    move-exception v5

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_7

    nop

    nop

    :catch_2
    move-exception v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_17
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_18
    goto :goto_1e

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

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

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v3, Ljava/lang/String;

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

    :goto_1d
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_5

    nop

    nop

    :goto_1f
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    nop

    nop

    :try_start_0
    const-string v5, "BackgroundColor"

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_2

    nop

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    nop

    nop

    check-cast v5, Landroid/graphics/drawable/ColorDrawable;

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v6

    nop

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    new-instance v7, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    nop

    nop

    nop

    invoke-direct {v7, v4, v6}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMap"

    nop

    nop

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    new-array v7, v6, [Ljava/lang/Class;

    nop

    nop

    nop

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    nop

    nop

    nop

    new-array v6, v6, [Ljava/lang/Object;

    nop

    nop

    nop

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    new-instance v7, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    invoke-direct {v7, v4, v6}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public static parse(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parser",
            "custom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_15

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4
    invoke-direct {v7, v2, v5, v4, v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;Ljava/lang/Object;Z)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq v8, v9, :cond_0

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    :goto_6
    goto/16 :goto_d

    nop

    nop

    :goto_7
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_8
    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_9
    invoke-virtual {v1, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    goto/32 :goto_31

    nop

    nop

    :goto_c
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_e
    if-eq v8, v9, :cond_1

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

    :cond_1
    goto/32 :goto_35

    nop

    nop

    :goto_f
    if-eq v8, v9, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_2
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_10
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customColorDrawableValue:I

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v8, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eq v8, v9, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v10, -0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_19
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customReference:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v9, Ljava/lang/StringBuilder;

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

    nop

    nop

    :goto_1b
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_1c
    const/4 v11, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v8, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_1e
    const/high16 v9, 0x7fc00000    # Float.NaN

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_1f
    const/4 v2, 0x0

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

    :goto_20
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eq v8, v9, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_4
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_25
    if-gtz v9, :cond_5

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_5
    goto/32 :goto_1a

    nop

    nop

    :goto_26
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

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

    :goto_27
    if-lt v7, v6, :cond_6

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

    :cond_6
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

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

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2b
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v0, 0x13

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_2f
    if-eq v8, v9, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_4d

    nop

    nop

    :goto_32
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_4e

    nop

    nop

    :goto_34
    goto/32 :goto_5f

    nop

    nop

    :goto_35
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_36
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_37
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customIntegerValue:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_33

    nop

    :goto_39
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customPixelDimension:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3a
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customBoolean:I

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

    :goto_3b
    invoke-virtual {v1, v8, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3c
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_15

    nop

    :goto_41
    goto/32 :goto_7c

    nop

    nop

    :goto_42
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_43
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

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

    :goto_44
    if-nez v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_46
    new-instance v7, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_47
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_48
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customFloatValue:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_15

    nop

    :goto_4a
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

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

    nop

    :goto_4d
    return-void

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4f
    rem-int v0, v0, v1

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

    nop

    :goto_50
    invoke-static {v10, v9, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_methodName:I

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_52
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_54
    if-eq v8, v9, :cond_a

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

    :cond_a
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v1, v8, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v3, 0x0

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v1, v8, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-eq v8, v9, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_42

    nop

    nop

    :goto_5c
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_5d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_5e
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customColorValue:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_5f
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

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

    nop

    :goto_60
    if-nez v2, :cond_c

    nop

    goto/32 :goto_15

    nop

    :cond_c
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_61
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->REFERENCE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_62
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-eq v8, v9, :cond_d

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_d
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-eq v8, v9, :cond_e

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

    :cond_e
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-eq v8, v9, :cond_f

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

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

    nop

    :goto_67
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_68
    const v1, 0x13

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_6a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_6b
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_15

    nop

    :goto_6e
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v1, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_72
    const/4 v10, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_73
    if-nez v4, :cond_10

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_10
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_74
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_attributeName:I

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_75
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_76
    if-eq v9, v10, :cond_11

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

    :cond_11
    goto/32 :goto_6f

    nop

    nop

    :goto_77
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_78
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customStringValue:I

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_7c
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customDimension:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v1, v8, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

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
.end method

.method public static setAttributes(Landroid/view/View;Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_1e

    nop

    nop

    :goto_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

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
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

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

    :goto_2
    if-eqz v8, :cond_0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4
    if-nez v5, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v8}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v9

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

    :goto_9
    check-cast v5, Ljava/lang/String;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3b

    nop

    :goto_c
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_e
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object v7, v5

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

    :goto_10
    const-string v9, "set"

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_49

    nop

    nop

    :goto_12
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_b

    nop

    :goto_16
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_17
    new-instance v9, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

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

    nop

    :goto_19
    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    nop

    :goto_1b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_1b

    nop

    :catch_0
    move-exception v8

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_a

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

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/32 :goto_1c

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

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

    :goto_24
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_25
    const-string v1, " Custom Attribute \""

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_26
    const-string v10, " must have a method "

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v2, "TransitionLayout"

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

    :goto_29
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v8

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

    :goto_2b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    :try_start_0
    sget-object v8, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    nop

    nop

    nop

    nop

    iget-object v9, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v9

    nop

    nop

    nop

    aget v8, v8, v9

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    const/4 v10, 0x1

    nop

    nop

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    new-array v8, v10, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    nop

    aput-object v11, v8, v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    nop

    nop

    new-array v10, v10, [Ljava/lang/Object;

    nop

    nop

    iget v11, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    nop

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    nop

    nop

    nop

    nop

    aput-object v11, v10, v9

    nop

    nop

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    new-array v8, v10, [Ljava/lang/Class;

    nop

    nop

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    aput-object v11, v8, v9

    nop

    nop

    nop

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    nop

    new-array v10, v10, [Ljava/lang/Object;

    nop

    nop

    nop

    iget v11, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    nop

    nop

    nop

    nop

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    aput-object v11, v10, v9

    nop

    nop

    nop

    nop

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    new-array v8, v10, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    aput-object v11, v8, v9

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    nop

    nop

    new-array v10, v10, [Ljava/lang/Object;

    nop

    nop

    nop

    iget v11, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    nop

    nop

    nop

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    aput-object v11, v10, v9

    nop

    nop

    nop

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :pswitch_3
    new-array v8, v10, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    const-class v11, Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    aput-object v11, v8, v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

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

    iget v12, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    nop

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    new-array v10, v10, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    aput-object v11, v10, v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a

    nop

    :pswitch_4
    new-array v8, v10, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    aput-object v11, v8, v9

    nop

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    new-array v10, v10, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget v11, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    nop

    nop

    nop

    nop

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    aput-object v11, v10, v9

    nop

    nop

    nop

    nop

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :pswitch_5
    new-array v8, v10, [Ljava/lang/Class;

    nop

    const-class v11, Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    nop

    aput-object v11, v8, v9

    nop

    nop

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    nop

    nop

    new-array v10, v10, [Ljava/lang/Object;

    nop

    nop

    iget-object v11, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    nop

    nop

    aput-object v11, v10, v9

    nop

    nop

    nop

    nop

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a

    nop

    nop

    :pswitch_6
    new-array v8, v10, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    aput-object v11, v8, v9

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    nop

    new-array v10, v10, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-boolean v11, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    nop

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    nop

    aput-object v11, v10, v9

    nop

    nop

    nop

    nop

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :pswitch_7
    new-array v8, v10, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    aput-object v11, v8, v9

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    nop

    nop

    new-array v10, v10, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget v11, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    nop

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    nop

    aput-object v11, v10, v9

    nop

    nop

    nop

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v9, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_32
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_33
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

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

    :goto_36
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v8, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_38
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

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

    nop

    :goto_39
    new-instance v9, Ljava/lang/StringBuilder;

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

    nop

    :goto_3a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_3b
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3c
    new-instance v9, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_31

    nop

    nop

    :goto_40
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_10

    nop

    nop

    :goto_41
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_42
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_43
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

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

    :goto_44
    iget-boolean v8, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_1a

    nop

    :catch_2
    move-exception v8

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_49
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_4c
    const-string v0, "\" not found on "

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

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

    :goto_4f
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public applyCustom(Landroid/view/View;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xf

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

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    goto :goto_f

    nop

    :catch_0
    move-exception v6

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    goto :goto_e

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v6

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

    :goto_8
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_9
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x12

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

    :goto_b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_c
    iget-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_d
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    nop

    :goto_f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_11
    const-string v2, "TransitionLayout"

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v7, "set"

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

    :goto_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_15
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_32

    nop

    nop

    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_17
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_18
    const-string v1, " Custom Attribute \""

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_1d
    goto/32 :goto_26

    nop

    nop

    :goto_1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_1f
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

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

    :goto_20
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    nop

    :goto_23
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    :goto_26
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_28
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v0, "\" not found on "

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_32
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/32 :goto_7

    nop

    nop

    :goto_33
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_34
    move-object v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_35
    if-eqz v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_37
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3a
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    :goto_3c
    :try_start_0
    sget-object v6, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    nop

    nop

    nop

    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v7

    nop

    nop

    nop

    aget v6, v6, v7

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :pswitch_0
    new-array v6, v8, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    nop

    nop

    aput-object v9, v6, v7

    nop

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    nop

    nop

    nop

    nop

    new-array v8, v8, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    nop

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    nop

    nop

    nop

    nop

    aput-object v9, v8, v7

    nop

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    new-array v6, v8, [Ljava/lang/Class;

    nop

    nop

    nop

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    nop

    aput-object v9, v6, v7

    nop

    nop

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    nop

    new-array v8, v8, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    nop

    nop

    nop

    nop

    aput-object v9, v8, v7

    nop

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    nop

    :pswitch_2
    new-array v6, v8, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    const-class v9, Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    aput-object v9, v6, v7

    nop

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    nop

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    nop

    nop

    nop

    nop

    invoke-direct {v9}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iget v10, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    new-array v8, v8, [Ljava/lang/Object;

    nop

    aput-object v9, v8, v7

    nop

    nop

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :pswitch_3
    new-array v6, v8, [Ljava/lang/Class;

    nop

    nop

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    aput-object v9, v6, v7

    nop

    nop

    nop

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    nop

    nop

    new-array v8, v8, [Ljava/lang/Object;

    nop

    nop

    iget v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    nop

    nop

    nop

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    aput-object v9, v8, v7

    nop

    nop

    nop

    nop

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    nop

    :pswitch_4
    new-array v6, v8, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    const-class v9, Ljava/lang/CharSequence;

    nop

    nop

    nop

    aput-object v9, v6, v7

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    nop

    nop

    new-array v8, v8, [Ljava/lang/Object;

    nop

    nop

    iget-object v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    aput-object v9, v8, v7

    nop

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :pswitch_5
    new-array v6, v8, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    aput-object v9, v6, v7

    nop

    nop

    nop

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    nop

    nop

    nop

    new-array v8, v8, [Ljava/lang/Object;

    nop

    nop

    iget-boolean v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    nop

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    aput-object v9, v8, v7

    nop

    nop

    nop

    nop

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    nop

    nop

    nop

    :pswitch_6
    new-array v6, v8, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    aput-object v9, v6, v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    nop

    nop

    nop

    new-array v8, v8, [Ljava/lang/Object;

    nop

    nop

    iget v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    nop

    nop

    nop

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    aput-object v9, v8, v7

    nop

    nop

    nop

    nop

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

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

    nop

    :goto_42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    :goto_43
    const-string v1, " must have a method "

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_44
    goto/16 :goto_e

    nop

    nop

    :catch_2
    move-exception v6

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_45
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

.method public diff(Landroidx/constraintlayout/widget/ConstraintAttribute;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraintAttribute"
        }
    .end annotation

    goto/32 :goto_d

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

    :pswitch_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_0
    goto/32 :goto_30

    nop

    :goto_3
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    cmpl-float v1, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_6
    if-eq v1, v3, :cond_1

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

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    :pswitch_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    move v0, v2

    nop

    nop

    :goto_9
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_a
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_b
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_e
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    :goto_10
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ne v1, v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    :goto_12
    iget-boolean v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

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

    :goto_14
    aget v1, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

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

    :goto_17
    return v0

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move v0, v2

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eq v1, v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1b
    move v0, v2

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1f

    nop

    nop

    :goto_1d
    if-eq v1, v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1f
    return v0

    nop

    :pswitch_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

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

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_22
    if-nez p1, :cond_6

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_24
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_26
    const/4 v2, 0x1

    nop

    nop

    packed-switch v1, :pswitch_data_0

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_28
    const/4 v0, 0x0

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

    :goto_29
    if-eq v1, v3, :cond_7

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2a
    cmpl-float v1, v1, v3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2c
    return v0

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2e
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2f
    return v0

    nop

    :pswitch_5
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_28

    nop

    nop

    :goto_32
    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_33
    const v1, 0x12

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_34
    if-eqz v1, :cond_8

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

    :cond_8
    goto/32 :goto_1b

    nop

    nop

    :goto_35
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :goto_36
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_37
    return v0

    nop

    nop

    :goto_38
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_39
    move v0, v2

    nop

    :goto_3a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move v0, v2

    nop

    :goto_3c
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3d
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop
.end method

.method public getColorValue()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

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

    nop
.end method

.method public getFloatValue()F
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

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public getIntegerValue()I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

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

.method public getName()Ljava/lang/String;
    .locals 1

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

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

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

    nop

    nop

    nop
.end method

.method public getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .locals 1

    goto/32 :goto_1

    nop

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

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public getValueToInterpolate()F
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :pswitch_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    :goto_2
    goto/16 :goto_23

    nop

    nop

    :goto_3
    goto/32 :goto_22

    nop

    nop

    :goto_4
    aget v0, v0, v1

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xf

    nop

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

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :goto_9
    goto/32 :goto_1e

    nop

    nop

    :goto_a
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/lang/RuntimeException;

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

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_d
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_e
    return v0

    nop

    :pswitch_2
    goto/32 :goto_b

    nop

    nop

    :goto_f
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, "Color does not have a single color to interpolate"

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

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

    :goto_12
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_25

    nop

    nop

    :goto_15
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    throw v0

    nop

    nop

    :pswitch_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    throw v0

    nop

    :pswitch_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_21

    nop

    nop

    :goto_1c
    const-string v1, "Cannot interpolate String"

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

    nop

    :goto_1d
    if-nez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_14

    nop

    :goto_1f
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_20
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

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

    :goto_21
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_8

    nop

    nop

    :goto_24
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

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
.end method

.method public getValuesToInterpolate([F)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ret"
        }
    .end annotation

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_0
    float-to-double v7, v7

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_43

    nop

    nop

    :goto_2
    int-to-float v9, v2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_3
    double-to-float v8, v8

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

    nop

    :goto_4
    div-float/2addr v7, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

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

    :goto_6
    aput v0, p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_7
    aput v8, p1, v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_8
    const-string v1, "Color does not have a single color to interpolate"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_a
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_5

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :goto_c
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_d
    const/high16 v6, 0x437f0000    # 255.0f

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    div-float/2addr v5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_f
    const-wide v9, 0x400199999999999aL    # 2.2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_10
    and-int/lit16 v4, v4, 0xff

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    aget v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_15
    goto :goto_19

    nop

    :pswitch_1
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_17
    shr-int/lit8 v3, v0, 0x10

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_18
    aput v0, p1, v1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

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

    :goto_1b
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1d
    int-to-float v5, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    shr-int/lit8 v2, v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    int-to-float v8, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_21
    aput v0, p1, v1

    nop

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

    :goto_22
    add-int v0, v0, v1

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

    :goto_23
    float-to-double v7, v5

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_24
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_25
    div-float/2addr v8, v6

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_26
    float-to-double v11, v8

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

    :goto_27
    aput v7, p1, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_29
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2a
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2b
    and-int/lit16 v0, v0, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2c
    div-float/2addr v9, v6

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

    :goto_2d
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2e
    double-to-float v7, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_30
    aput v0, p1, v1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_31
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_32
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_33
    int-to-float v0, v0

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

    :goto_34
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_45

    nop

    :cond_1
    goto/32 :goto_44

    nop

    :goto_35
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_11

    nop

    nop

    :goto_37
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_38
    double-to-float v5, v7

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_39
    aput v5, p1, v1

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

    :goto_3a
    goto/16 :goto_19

    nop

    :pswitch_3
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3b
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    int-to-float v7, v4

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

    :goto_3d
    and-int/lit16 v3, v3, 0xff

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_3e
    aput v9, p1, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3f
    goto/32 :goto_45

    nop

    nop

    :goto_40
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_41
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_42
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_43
    throw v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_46
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_47
    and-int/lit16 v2, v2, 0xff

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_49
    shr-int/lit8 v4, v0, 0x8

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
.end method

.method public isBooleanValue()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

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

.method public isContinuous()Z
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

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

    :pswitch_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const v0, 0xc

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    :goto_6
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

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

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    return v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

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

    :goto_f
    aget v0, v0, v1

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public isMethod()Z
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

    :goto_1
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public numberOfInterpolatedValues()I
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    const v0, 0x1b

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xe

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    return v0

    nop

    nop

    :pswitch_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x4

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

    :goto_f
    aget v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop
.end method

.method public setColorValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public setFloatValue(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

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

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public setIntValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    nop

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
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_21

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_6
    check-cast v0, Ljava/lang/Float;

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

    :goto_7
    goto/16 :goto_1b

    nop

    :pswitch_0
    goto/32 :goto_23

    nop

    nop

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    check-cast v0, Ljava/lang/String;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

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

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_10
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    goto :goto_1b

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_14
    check-cast v0, Ljava/lang/Integer;

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
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_1b

    nop

    nop

    :pswitch_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

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

    :goto_19
    const v1, 0x1c

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

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

    :goto_1d
    aget v0, v0, v1

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :goto_21
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-object v0, p1

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

    :goto_23
    move-object v0, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_25
    move-object v0, p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_1b

    nop

    nop

    :pswitch_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_1b

    nop

    :pswitch_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2a
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2b
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop
.end method

.method public setValue([F)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_34

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :goto_4
    goto/32 :goto_2c

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aget v0, v0, v1

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

    :goto_7
    const/high16 v1, 0x437f0000    # 255.0f

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    mul-float/2addr v2, v1

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

    :goto_9
    if-gtz v0, :cond_0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_a
    float-to-int v1, v2

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    :goto_c
    throw v0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_e
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_29

    nop

    nop

    :goto_f
    shl-int/lit8 v1, v1, 0x18

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
    const v1, 0x1c

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

    :goto_11
    aget v2, p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_13
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_14
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_16
    const v1, 0xffffff

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

    :goto_17
    aget v0, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_18
    cmpl-double v0, v2, v4

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

    :goto_19
    const v0, 0xa

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    aget v0, p1, v1

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

    :goto_1b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    float-to-double v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1d
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

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

    :goto_21
    const-string v1, "Color does not have a single color to interpolate"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_22
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_24
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_25
    goto :goto_1f

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->clamp(I)I

    move-result v1

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

    :goto_27
    goto :goto_1f

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto :goto_1f

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_13

    nop

    nop

    :goto_29
    aget v0, p1, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    and-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2b
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2d
    or-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2e
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_31
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_33
    float-to-int v0, v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    aget v0, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop
.end method
