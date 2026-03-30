.class public Landroidx/constraintlayout/widget/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/StateSet$Variant;,
        Landroidx/constraintlayout/widget/StateSet$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ConstraintLayoutStates"


# instance fields
.field private mConstraintSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

.field mCurrentConstraintNumber:I

.field mCurrentStateId:I

.field mDefaultConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field mDefaultState:I

.field private mStateList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/StateSet$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    new-instance v0, Landroid/util/SparseArray;

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

    :goto_3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/StateSet;->c1d48ac32d1d9e82791d22b63be1d4cem(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    new-instance v0, Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mConstraintSetMap:Landroid/util/SparseArray;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

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

    :goto_a
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, -0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method private c1d48ac32d1d9e82791d22b63be1d4cem(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_29

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
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_26

    nop

    :goto_4
    iget v5, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_a

    nop

    nop

    nop

    :pswitch_0
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_1

    nop

    nop

    return-void

    nop

    nop

    :cond_1
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_a

    nop

    :pswitch_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    move-object v3, v9

    nop

    const/4 v9, -0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    sparse-switch v10, :sswitch_data_0

    :cond_2
    goto :goto_7

    nop

    :sswitch_0
    const-string v7, "Variant"

    nop

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    if-eqz v7, :cond_2

    nop

    nop

    nop

    nop

    const/4 v7, 0x3

    nop

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    :sswitch_1
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_2

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    :sswitch_2
    const-string v7, "LayoutDescription"

    nop

    nop

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_2

    nop

    nop

    const/4 v7, 0x0

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    :sswitch_3
    const-string v7, "State"

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    if-eqz v7, :cond_2

    nop

    const/4 v7, 0x2

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    move v7, v9

    nop

    nop

    nop

    :goto_8
    packed-switch v7, :pswitch_data_1

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    new-instance v7, Landroidx/constraintlayout/widget/StateSet$Variant;

    nop

    invoke-direct {v7, p1, p2}, Landroidx/constraintlayout/widget/StateSet$Variant;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eqz v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/StateSet$State;->add(Landroidx/constraintlayout/widget/StateSet$Variant;)V

    goto :goto_9

    nop

    nop

    :pswitch_3
    new-instance v7, Landroidx/constraintlayout/widget/StateSet$State;

    nop

    nop

    nop

    invoke-direct {v7, p1, p2}, Landroidx/constraintlayout/widget/StateSet$State;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v5, v7

    nop

    iget-object v7, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    nop

    nop

    nop

    iget v8, v5, Landroidx/constraintlayout/widget/StateSet$State;->mId:I

    nop

    nop

    nop

    invoke-virtual {v7, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto :goto_9

    nop

    :pswitch_5
    nop

    :cond_3
    :goto_9
    goto :goto_a

    nop

    :pswitch_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    move-object v4, v7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    nop

    nop

    nop
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

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
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->StateSet:[I

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_d
    iput v5, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->StateSet_defaultState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lt v3, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_15
    const/4 v4, 0x0

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_16
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move v6, v7

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_18
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_19
    nop

    :goto_1a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq v4, v5, :cond_5

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

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

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

    :goto_1d
    goto :goto_1a

    nop

    nop

    :catch_0
    move-exception v4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1e
    const v1, 0x4

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

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4c7d471 -> :sswitch_3
        0x4d92b252 -> :sswitch_2
        0x526c4e31 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :goto_20
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v7, 0x1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_24
    if-ne v6, v7, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_6
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2a
    const-string v8, "StateSet"

    nop

    nop

    packed-switch v6, :pswitch_data_0

    :pswitch_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto :goto_30

    nop

    nop

    :goto_2c
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_19

    nop

    nop

    nop

    :catch_1
    move-exception v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    nop

    nop

    nop
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_30
    goto/32 :goto_21

    nop

    nop

    nop
.end method


# virtual methods
.method public convertToConstraintSet(IIFF)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentConstrainSettId",
            "stateId",
            "width",
            "height"
        }
    .end annotation

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v1, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

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

    :goto_5
    goto/16 :goto_17

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    iget-object v1, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_1

    nop

    goto/32 :goto_2a

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    :goto_9
    move-object v1, v3

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 v1, -0x40800000    # -1.0f

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

    :goto_c
    return v2

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    cmpl-float v1, p4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    return p1

    nop

    nop

    :goto_11
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return p2

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
    if-eq p1, v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    :goto_1b
    check-cast v0, Landroidx/constraintlayout/widget/StateSet$State;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v2, Landroidx/constraintlayout/widget/StateSet$Variant;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return p1

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    iget v2, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

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

    :goto_21
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x1f

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_23
    if-nez v4, :cond_4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_4
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_d

    nop

    nop

    :goto_26
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v2, :cond_5

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_28
    iget v2, v1, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_29
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2b
    iget v1, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

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

    :goto_2c
    if-eq v1, p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_31

    nop

    :goto_2e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v0, :cond_8

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v3, Landroidx/constraintlayout/widget/StateSet$Variant;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_1

    nop

    nop

    :goto_32
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_33
    return p1

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v2, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_36
    iget-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_38
    iget v3, v2, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_39
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-eq p1, v3, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v4, v3, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v3, p3, p4}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v3, :cond_a

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_a
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_40
    const v1, 0x3

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

    nop

    :goto_41
    cmpl-float v2, p3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop
.end method

.method public needsToChange(IFF)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "width",
            "height"
        }
    .end annotation

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v4, v2, :cond_0

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    move-result v4

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

    :goto_3
    if-eq v2, v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v2, Landroidx/constraintlayout/widget/StateSet$Variant;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6
    const v0, 0x15

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

    :goto_7
    if-ne v0, p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v4, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

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

    :goto_b
    if-nez v2, :cond_3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    check-cast v0, Landroidx/constraintlayout/widget/StateSet$State;

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

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    :goto_10
    goto :goto_9

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    :goto_12
    iget-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    :goto_14
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    return v3

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    :goto_17
    iget v4, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    return v1

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v2, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v4, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1e
    return v1

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_23
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

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

    :goto_24
    invoke-virtual {v2, p2, p3}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    move-result v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    const/4 v2, -0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eq p1, v2, :cond_5

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

    :cond_5
    goto/32 :goto_12

    nop

    nop

    :goto_28
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraintsChangedListener"
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
    iput-object p1, p0, Landroidx/constraintlayout/widget/StateSet;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

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
.end method

.method public stateGetConstraintID(III)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "width",
            "height"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0xb

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    int-to-float v1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    const v1, 0x11

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    int-to-float v0, p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v2, p1, v0, v1}, Landroidx/constraintlayout/widget/StateSet;->updateConstraints(IIFF)I

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

    :goto_d
    const/4 v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public updateConstraints(IIFF)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentId",
            "id",
            "width",
            "height"
        }
    .end annotation

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    nop

    nop

    goto/32 :goto_d

    nop

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

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ne v2, v0, :cond_0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, v0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    nop

    nop

    :goto_7
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Landroidx/constraintlayout/widget/StateSet$Variant;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2, p3, p4}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    move-result v2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eq p1, p2, :cond_1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eq p2, v0, :cond_2

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

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    if-eq v2, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    iget v0, v0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    :goto_17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v0, v1, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

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

    :goto_19
    iget v2, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, p3, p4}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1b
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    :goto_1c
    check-cast v0, Landroidx/constraintlayout/widget/StateSet$Variant;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v1, Landroidx/constraintlayout/widget/StateSet$State;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v0, -0x1

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

    :goto_1f
    iget v2, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_20
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return v0

    nop

    :goto_22
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return p1

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_7

    nop

    nop

    :goto_28
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x1f

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

    :goto_2a
    if-nez v2, :cond_6

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

    nop

    :cond_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v2, Landroidx/constraintlayout/widget/StateSet$Variant;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2d
    return v0

    nop

    nop

    :goto_2e
    goto/32 :goto_1f

    nop

    nop

    :goto_2f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_16

    nop

    nop

    :goto_32
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_33
    iget v0, v1, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_34
    invoke-virtual {v1, p3, p4}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    move-result v2

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto :goto_3e

    nop

    :goto_36
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

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

    :goto_39
    iget-object v0, v1, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3a
    check-cast v1, Landroidx/constraintlayout/widget/StateSet$State;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3b
    iget-object v2, v1, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

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

    :goto_3c
    if-eqz v1, :cond_7

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

    :cond_7
    goto/32 :goto_21

    nop

    nop

    :goto_3d
    check-cast v1, Landroidx/constraintlayout/widget/StateSet$State;

    nop

    :goto_3e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_40
    if-eq p1, v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_11

    nop

    nop

    :goto_41
    iget-object v0, v1, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_42
    if-eq v2, v0, :cond_9

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop
.end method
