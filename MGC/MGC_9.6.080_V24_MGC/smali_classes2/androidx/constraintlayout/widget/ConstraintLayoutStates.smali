.class public Landroidx/constraintlayout/widget/ConstraintLayoutStates;
.super Ljava/lang/Object;
.source "ConstraintLayoutStates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;,
        Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ConstraintLayoutStates"


# instance fields
.field private final mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

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

.field private mStateList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "layout",
            "resourceID"
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
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Landroid/util/SparseArray;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

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

    :goto_3
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintSetMap:Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->c1d48ac32d1d9e82791d22b63be1d4cem(Landroid/content/Context;I)V

    goto/32 :goto_4

    nop

    nop

    :goto_6
    const/4 v0, 0x0

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

    :goto_7
    new-instance v0, Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    const/4 v0, -0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private c1d48ac32d1d9e82791d22b63be1d4cem(Landroid/content/Context;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceId"
        }
    .end annotation

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_1
    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

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
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    if-eq v5, v6, :cond_2

    nop

    nop

    nop

    nop

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_d

    nop

    :pswitch_1
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/16 :goto_d

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    nop

    move-object v3, v7

    nop

    nop

    nop

    nop

    nop

    const/4 v7, -0x1

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    nop

    nop

    nop

    sparse-switch v8, :sswitch_data_0

    :cond_0
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :sswitch_0
    const-string v6, "Variant"

    nop

    nop

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_0

    nop

    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :sswitch_1
    const-string v6, "layoutDescription"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_0

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    :sswitch_2
    const-string v8, "StateSet"

    nop

    nop

    nop

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    nop

    if-eqz v8, :cond_0

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    :sswitch_3
    const-string v6, "State"

    nop

    nop

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    if-eqz v6, :cond_0

    nop

    nop

    nop

    nop

    const/4 v6, 0x2

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :sswitch_4
    const-string v6, "ConstraintSet"

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    if-eqz v6, :cond_0

    nop

    nop

    nop

    const/4 v6, 0x4

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    move v6, v7

    nop

    nop

    nop

    nop

    :goto_b
    packed-switch v6, :pswitch_data_1

    goto :goto_c

    nop

    nop

    :pswitch_3
    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->dc0d1630d2b2f6ae225cc7b15af3763dm(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    nop

    nop

    nop

    :pswitch_4
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6, p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eqz v4, :cond_1

    nop

    nop

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->add(Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;)V

    goto :goto_c

    nop

    nop

    :pswitch_5
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    nop

    nop

    nop

    invoke-direct {v6, p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v4, v6

    nop

    nop

    nop

    nop

    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    nop

    nop

    iget v7, v4, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mId:I

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_c

    nop

    nop

    nop

    :pswitch_6
    goto :goto_c

    nop

    nop

    nop

    :pswitch_7
    nop

    :cond_1
    :goto_c
    goto :goto_d

    nop

    nop

    :pswitch_8
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    move-object v2, v6

    nop

    nop

    nop

    :goto_d
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    nop

    nop

    nop
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v3, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    :goto_12
    move v5, v6

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

    :goto_13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/32 :goto_1a

    nop

    nop

    :goto_17
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x13

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

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1a
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v4

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

    :goto_1b
    goto/16 :goto_1

    nop

    nop

    nop

    :catch_1
    move-exception v4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop
.end method

.method private dc0d1630d2b2f6ae225cc7b15af3763dm(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
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

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-gt v5, v8, :cond_0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    const-string v7, "error in parsing id"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_6
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v8, 0x1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_8
    goto :goto_11

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    add-int/2addr v7, v8

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

    :goto_b
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

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

    :goto_c
    add-int/lit8 v2, v2, 0x1

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

    :goto_d
    const-string v5, "id"

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

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_f
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_10
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    const/4 v6, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_13
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    if-eq v6, v5, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v6, :cond_2

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

    :cond_2
    goto/32 :goto_12

    nop

    nop

    :goto_18
    const-string v7, "/"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_19
    const-string v5, "ConstraintLayoutStates"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

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

    nop

    nop

    :goto_1b
    const v1, 0x1c

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

    :goto_1c
    const/4 v5, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    if-lt v2, v1, :cond_3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    :goto_1e
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_4
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v7, 0x2f

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_20
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintSetMap:Landroid/util/SparseArray;

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

    :goto_21
    goto :goto_24

    nop

    :goto_22
    goto/32 :goto_19

    nop

    nop

    :goto_23
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_29
    if-nez v7, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2b
    const v0, 0x1a

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

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

    nop

    nop

    :goto_2f
    invoke-virtual {v9, v7, v5, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    nop

    nop

    :goto_30
    goto/32 :goto_1c

    nop

    nop

    :goto_31
    if-eqz v4, :cond_6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_32
    goto :goto_35

    nop

    :goto_33
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_34
    const/4 v2, 0x0

    nop

    nop

    :goto_35
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_38

    nop

    :goto_38
    goto/32 :goto_27

    nop

    :goto_39
    goto/32 :goto_36

    nop

    nop
.end method


# virtual methods
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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_19

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1

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
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    return v1

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_a
    if-eq p1, v2, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->match(FF)Z

    move-result v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_f
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->findMatch(FF)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    return v3

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-ne v4, v2, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eq v2, v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    :goto_18
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_25

    nop

    nop

    :goto_1a
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

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

    :goto_1c
    const/4 v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-ne v0, p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_20
    if-nez v2, :cond_4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    :goto_21
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

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
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_5

    nop

    nop

    :goto_24
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_5
    goto/32 :goto_c

    nop

    :goto_25
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_26
    const/4 v3, 0x0

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

    :goto_27
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_1d

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

    :goto_0
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

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

    nop
.end method

.method public updateConstraints(IFF)V
    .locals 6
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

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_1
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_75

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_6
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    nop

    nop

    nop

    nop

    :goto_7
    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1a

    nop

    nop

    :goto_9
    if-eq v0, p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_a
    const-string v5, "ConstraintLayoutStates"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_c
    if-eq v3, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v2, :cond_2

    nop

    goto/32 :goto_61

    nop

    nop

    :cond_2
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v3, :cond_3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_3
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    :goto_11
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_15
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

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

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    :goto_1b
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    :goto_1d
    const v0, 0x15

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_54

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_7

    nop

    nop

    :goto_21
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    const-string v5, "NO Constraint set found ! id="

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintID:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_26
    if-nez v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_2a
    if-nez v5, :cond_6

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    nop

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
    const-string v5, ", "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v5, ", dim ="

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->findMatch(FF)I

    move-result v2

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_63

    nop

    nop

    :goto_33
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v4, p1, v1}, Landroidx/constraintlayout/widget/ConstraintsChangedListener;->preLayoutChange(II)V

    :goto_35
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_36
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_37
    if-eq v2, v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_7
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_39
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3b
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_3c
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    nop

    nop

    nop

    nop

    :goto_3d
    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3f
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v5, v1, v4}, Landroidx/constraintlayout/widget/ConstraintsChangedListener;->postLayoutChange(II)V

    :goto_41
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

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

    :goto_43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_44
    if-ne v2, v1, :cond_8

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_46
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_47
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_48
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4a
    if-eq v2, v1, :cond_9

    nop

    goto/32 :goto_21

    nop

    :cond_9
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

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

    nop

    :goto_4d
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mDefaultConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4e
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_22

    nop

    nop

    :goto_52
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_36

    nop

    nop

    :goto_53
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    nop

    nop

    nop

    nop

    :goto_54
    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_28

    nop

    nop

    :goto_56
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-eq v2, v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_59
    if-eq v2, v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5b
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v5, v1, v4}, Landroidx/constraintlayout/widget/ConstraintsChangedListener;->preLayoutChange(II)V

    :goto_5d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5e
    if-eqz v3, :cond_c

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

    :cond_c
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_5f
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_60
    return-void

    nop

    nop

    :goto_61
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

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

    :goto_63
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto :goto_69

    nop

    :goto_65
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_66
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_67
    if-nez v4, :cond_d

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    :cond_d
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v4, p1, v1}, Landroidx/constraintlayout/widget/ConstraintsChangedListener;->postLayoutChange(II)V

    :goto_69
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_6b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

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

    :goto_6e
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->findMatch(FF)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_6f
    if-nez v5, :cond_e

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :cond_e
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintID:I

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_71
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_72
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_73
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v2, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->match(FF)Z

    move-result v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_76
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_77
    if-eq p1, v1, :cond_f

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_5a

    nop

    nop

    :goto_78
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    nop

    nop

    nop

    :goto_79
    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

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

    nop

    nop

    :goto_7b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

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
.end method
