.class public Landroidx/constraintlayout/motion/widget/DesignTool;
.super Ljava/lang/Object;
.source "DesignTool.java"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/ProxyInterface;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DesignTool"

.field static final allAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final allMargins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLastEndState:Ljava/lang/String;

.field private mLastEndStateId:I

.field private mLastStartState:Ljava/lang/String;

.field private mLastStartStateId:I

.field private final mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mSceneCache:Landroidx/constraintlayout/motion/widget/MotionScene;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_54

    nop

    nop

    :goto_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v4, "layout_constraintBottom_toBottomOf"

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

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

    :goto_9
    const-string v5, "layout_constraintTop_toBottomOf"

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_a
    const-string v15, "layout_constraintRight_toRightOf"

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_b
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "layout_marginEnd"

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_14
    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    const-string v14, "layout_constraintLeft_toRightOf"

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v7, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_18
    const-string v10, "layout_constraintStart_toEndOf"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_40

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v0, "layout_marginTop"

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

    :goto_1c
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1d
    const/4 v2, 0x6

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1f
    invoke-static {v7, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v2, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_21
    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v0, "layout_marginEnd"

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

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

    :goto_24
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_25
    invoke-virtual {v0, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_11

    nop

    nop

    :goto_27
    invoke-static {v3, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_28
    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2a
    const-string v0, "layout_marginStart"

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2c
    sput-object v1, Landroidx/constraintlayout/motion/widget/DesignTool;->allMargins:Ljava/util/HashMap;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v11, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_52

    nop

    nop

    :goto_30
    invoke-static {v11, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_31
    const-string v12, "layout_constraintLeft_toLeftOf"

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

    nop

    :goto_32
    const-string v3, "layout_constraintTop_toTopOf"

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_34
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v2, 0x4

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

    :goto_38
    const-string v0, "layout_marginLeft"

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string v7, "layout_constraintEnd_toEndOf"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3a
    const/4 v11, 0x2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v0, "layout_marginLeft"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3c
    const v0, 0x1c

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3f
    const-string v13, "layout_constraintBaseline_toBaselineOf"

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sput-object v0, Landroidx/constraintlayout/motion/widget/DesignTool;->allAttributes:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v2, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_44
    const-string v6, "layout_constraintBottom_toTopOf"

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

    :goto_45
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_34

    nop

    nop

    :goto_46
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_47
    const-string v0, "layout_marginRight"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_48
    const-string v9, "layout_constraintEnd_toStartOf"

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

    nop

    :goto_49
    const-string v8, "layout_constraintStart_toStartOf"

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4a
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_e

    nop

    nop

    :goto_4e
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_4f
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const-string v0, "layout_marginBottom"

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_51
    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_52
    const/4 v7, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_53
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_56
    const-string v0, "layout_marginRight"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_57
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const-string v11, "layout_constraintRight_toLeftOf"

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

    :goto_59
    invoke-virtual {v0, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionLayout"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartStateId:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndState:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndStateId:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

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

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method private static Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dpi",
            "set",
            "view",
            "attributes",
            "from",
            "to"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    goto/32 :goto_2b

    nop

    nop

    :goto_0
    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v1, Ljava/lang/String;

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

    nop

    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v8

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

    nop

    :goto_3
    move v12, v3

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

    :goto_4
    move v10, v5

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

    :goto_5
    invoke-static {p0, v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->GetPxFromDp(ILjava/lang/String;)I

    move-result v3

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

    :goto_6
    if-nez v4, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v4, Ljava/lang/String;

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

    nop

    nop

    :goto_8
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_21

    nop

    :goto_b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    sget-object v4, Landroidx/constraintlayout/motion/widget/DesignTool;->allMargins:Ljava/util/HashMap;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    move-object/from16 v0, p3

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_17

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move/from16 v9, p4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_16
    move v6, p0

    nop

    nop

    :goto_17
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v3, 0x0

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

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    :goto_1e
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

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

    nop

    :goto_20
    move v6, p0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-object v7, p1

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

    :goto_23
    move v6, p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_24
    move/from16 v11, p5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_27
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_28
    sget-object v1, Landroidx/constraintlayout/motion/widget/DesignTool;->allAttributes:Ljava/util/HashMap;

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

    :goto_29
    goto/32 :goto_1a

    nop

    nop

    :goto_2a
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2b
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2c
    check-cast v2, Ljava/lang/String;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static GetPxFromDp(ILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dpi",
            "value"
        }
    .end annotation

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float v2, v2

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, -0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    :goto_9
    if-eq v1, v2, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0x64

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
    div-float/2addr v2, v3

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz p1, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    mul-int/2addr v2, p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    return v0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    float-to-int v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    const/high16 v3, 0x43200000    # 160.0f

    nop

    nop

    nop

    goto/32 :goto_b

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

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

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

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method private static SetAbsolutePositions(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dpi",
            "set",
            "view",
            "attributes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/DesignTool;->GetPxFromDp(ILjava/lang/String;)I

    move-result v2

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

    :goto_1
    const-string v1, "layout_editor_absoluteY"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Ljava/lang/String;

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

    :goto_5
    check-cast v1, Ljava/lang/String;

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

    nop

    :goto_6
    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setEditorAbsoluteY(II)V

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    const-string v0, "layout_editor_absoluteX"

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_10
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    invoke-static {p0, v1}, Landroidx/constraintlayout/motion/widget/DesignTool;->GetPxFromDp(ILjava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    const v1, 0xb

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setEditorAbsoluteX(II)V

    :goto_18
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method private static SetBias(Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "set",
            "view",
            "attributes",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    if-eqz p3, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "layout_constraintVertical_bias"

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x10

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v2, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    if-eq p3, v1, :cond_2

    nop

    goto/32 :goto_19

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

    :goto_e
    goto/32 :goto_17

    nop

    :goto_f
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_3
    goto/32 :goto_16

    nop

    :goto_10
    const-string v0, "layout_constraintHorizontal_bias"

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

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eq p3, v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalBias(IF)V

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalBias(IF)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method private static SetDimensions(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dpi",
            "set",
            "view",
            "attributes",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1c

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, -0x2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    if-eqz p4, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    :goto_7
    goto/32 :goto_1e

    nop

    nop

    :goto_8
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

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

    :goto_a
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_6

    nop

    :goto_10
    invoke-virtual {p1, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    goto/32 :goto_a

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    invoke-static {p0, v1}, Landroidx/constraintlayout/motion/widget/DesignTool;->GetPxFromDp(ILjava/lang/String;)I

    move-result v2

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v3, "wrap_content"

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

    :goto_15
    const-string v0, "layout_height"

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1a
    if-eq p4, v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    check-cast v1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    :goto_1d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v0, "layout_width"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1f
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public designAccess(ILjava/lang/String;Ljava/lang/Object;[FI[FI)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cmd",
            "type",
            "viewObject",
            "in",
            "inLength",
            "out",
            "outLength"
        }
    .end annotation

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, p6, v3}, Landroidx/constraintlayout/motion/widget/MotionController;->buildPath([FI)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    const/4 v4, 0x0

    nop

    goto/32 :goto_24

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

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return v2

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :goto_9
    goto/32 :goto_2b

    nop

    nop

    :goto_a
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x16

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_d
    div-int/lit8 v3, v2, 0x10

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Landroid/view/View;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, p2, p6, p7}, Landroidx/constraintlayout/motion/widget/MotionController;->getAttributeValues(Ljava/lang/String;[FI)I

    move-result v4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_11
    return v2

    nop

    nop

    :pswitch_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    div-int/lit8 v3, v2, 0x10

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object v0, p3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return v2

    nop

    nop

    :goto_15
    goto/32 :goto_20

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return v3

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_27

    nop

    nop

    :goto_18
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    nop

    :goto_1a
    const/4 v1, 0x0

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

    :goto_1b
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

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

    :goto_1c
    return v3

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object v1, v3

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    packed-switch p1, :pswitch_data_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_24
    invoke-virtual {v1, p6, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->buildKeyFrames([F[I)I

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_26
    const/4 v2, -0x1

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_27
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_28
    return v4

    nop

    :pswitch_3
    goto/32 :goto_1e

    nop

    nop

    :goto_29
    const v1, 0x5

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_2b
    goto/32 :goto_7

    nop

    :goto_2c
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionController;

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

    :goto_2d
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2e
    div-int/lit8 v3, v2, 0x10

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_30
    if-nez p1, :cond_3

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_32
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_4

    nop

    goto/32 :goto_7

    nop

    :cond_4
    goto/32 :goto_6

    nop
.end method

.method public disableAutoTransition(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->disableAutoTransition(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public dumpConstraintSet(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    goto/32 :goto_d

    nop

    nop

    :goto_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v3, " ("

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v3, ")"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mSceneCache:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x7

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_a
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v0

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

    :goto_b
    const-string v3, " dumping  "

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    nop

    nop

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    new-array v3, v3, [I

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->dump(Landroidx/constraintlayout/motion/widget/MotionScene;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x14

    nop

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

    :goto_e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_13

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_17
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1f
    goto/32 :goto_1

    nop

    :goto_20
    return-void

    nop

    nop

    :goto_21
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method public getAnimationKeyFrames(Ljava/lang/Object;[F)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "key"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const v0, 0x1d

    nop

    goto/32 :goto_5

    nop

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

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    div-int/lit8 v1, v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    const v1, 0x15

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

    :goto_6
    invoke-virtual {v2, p2, v3}, Landroidx/constraintlayout/motion/widget/MotionController;->buildKeyFrames([F[I)I

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_8
    return v1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    const/4 v3, 0x0

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

    nop

    nop

    :goto_c
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

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

    :goto_d
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return v0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_15
    return v3

    nop

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    if-eqz v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1c
    goto/32 :goto_9

    nop

    nop

    :goto_1d
    goto/32 :goto_f

    nop

    nop
.end method

.method public getAnimationPath(Ljava/lang/Object;[FI)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "path",
            "len"
        }
    .end annotation

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->buildPath([FI)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    const v0, 0x9

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

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, -0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    return p3

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return v1

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_18
    const/4 v1, 0x0

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
.end method

.method public getAnimationRectangles(Ljava/lang/Object;[F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "path"
        }
    .end annotation

    goto/32 :goto_18

    nop

    nop

    :goto_0
    invoke-virtual {v2, p2, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->buildRectangles([FI)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_9
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionController;

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

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    div-int/lit8 v1, v0, 0x10

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

    :goto_11
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0xa

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x20

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_19
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_1a
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public getEndState()Ljava/lang/String;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v1

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    return-object v1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    iget v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndStateId:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getEndState()I

    move-result v0

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
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_b
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndState:Ljava/lang/String;

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
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndState:Ljava/lang/String;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetNames(I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    if-eq v1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    iput v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndStateId:I

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public getKeyFrameInfo(Ljava/lang/Object;I[I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "type",
            "info"
        }
    .end annotation

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    check-cast v1, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    return v1

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
    rem-int v0, v0, v1

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

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_5

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

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    const v1, 0x20

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_c
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->getKeyFrameInfo(I[I)I

    move-result v1

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

    :goto_d
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x1

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

    :goto_11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    :goto_13
    return v1

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public getKeyFramePosition(Ljava/lang/Object;IFF)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "type",
            "x",
            "y"
        }
    .end annotation

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v2, Landroid/view/View;

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

    :goto_1
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_a

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

    nop

    :goto_2
    const/4 v1, 0x0

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

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    instance-of v0, p1, Landroid/view/View;

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

    :goto_5
    invoke-virtual {v0, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionController;->getKeyFrameParameter(IFF)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    move-object v2, p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    const v1, 0xf

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    return v1

    nop

    :goto_a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_c
    goto/32 :goto_14

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

    :goto_e
    const v0, 0xd

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    :goto_12
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return v1

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return v1

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method

.method public getKeyFramePositions(Ljava/lang/Object;[I[F)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "type",
            "pos"
        }
    .end annotation

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v1, Landroid/view/View;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    :goto_9
    const v1, 0x20

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->getKeyFramePositions([I[F)I

    move-result v1

    nop

    nop

    goto/32 :goto_7

    nop

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

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    move-object v1, p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_10
    const v0, 0x1f

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

    :goto_11
    goto/32 :goto_13

    nop

    :goto_12
    goto/32 :goto_8

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

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

.method public getKeyframe(III)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "target",
            "position"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x16

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

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

    nop

    :goto_3
    return-object v0

    nop

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
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_7
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrame(Landroid/content/Context;III)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1e

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public getKeyframe(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "type",
            "position"
        }
    .end annotation

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

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

    nop

    :goto_5
    const v0, 0xb

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/view/View;->getId()I

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

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_9
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    check-cast v0, Landroid/view/View;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

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

    :goto_f
    move-object v0, p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    return-object v1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    :goto_12
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v2, p2, v0, p3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrame(Landroid/content/Context;III)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
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

    :goto_16
    return-object v0

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public getKeyframeAtLocation(Ljava/lang/Object;FF)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewObject",
            "x",
            "y"
        }
    .end annotation

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5
    return-object v2

    nop

    nop

    :goto_6
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Landroid/view/View;

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object v2

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object v2

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    move-object v1, v3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object v5

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    :goto_15
    invoke-virtual {v1, v3, v4, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->getPositionKeyframe(IIFF)Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    move-result-object v5

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

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

    :goto_17
    const v0, 0x16

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

    :goto_18
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v2, -0x1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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

    nop

    :goto_1b
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    check-cast v2, Landroid/view/ViewGroup;

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

    :goto_1d
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    :goto_1e
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    const v1, 0xf

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_21
    goto/32 :goto_d

    nop

    nop

    :goto_22
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_24
    move-object v0, p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public getPositionKeyframe(Ljava/lang/Object;Ljava/lang/Object;FF[Ljava/lang/String;[F)Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyFrame",
            "view",
            "x",
            "y",
            "attribute",
            "value"
        }
    .end annotation

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    move-object v8, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionController;->positionKeyframe(Landroid/view/View;Landroidx/constraintlayout/motion/widget/KeyPositionBase;FF[Ljava/lang/String;[F)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v2, p2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    :goto_6
    check-cast v0, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x20

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    move-object v3, v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

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

    :goto_b
    return-object v0

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v1, v8

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_12
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

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

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    move v4, p3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object v7, p6

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

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

    nop

    :goto_1a
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v6, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_c

    nop

    nop

    :goto_1d
    goto/32 :goto_11

    nop

    nop

    :goto_1e
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_1f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_21
    check-cast v2, Landroid/view/View;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v2, Landroid/view/View;

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

    :goto_23
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_24
    move v5, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_25
    move-object v2, p2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_26
    iput-boolean v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_27
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public getProgress()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public getStartState()Ljava/lang/String;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x7

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartStateId:I

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

    :goto_2
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_4
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    if-eq v1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartStateId:I

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_d
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetNames(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

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

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetNames(I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_18
    rem-int v0, v0, v1

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
.end method

.method public getState()Ljava/lang/String;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

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
    if-nez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const v1, 0x7

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

    :goto_3
    return-object v2

    nop

    :goto_4
    goto/32 :goto_19

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndState:Ljava/lang/String;

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

    :goto_6
    const v0, 0x19

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

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    cmpg-float v2, v0, v1

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

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    return-object v2

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_e
    cmpl-float v2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    if-lez v2, :cond_3

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

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/DesignTool;->getProgress()F

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndState:Ljava/lang/String;

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

    nop

    :goto_16
    const v1, 0x3c23d70a    # 0.01f

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-gez v2, :cond_4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

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

    :goto_19
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    sub-float/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1b
    return-object v0

    nop

    nop

    :goto_1c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getTransitionTimeMs()J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1a

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x19

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransitionTimeMs()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-wide v0

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public isInTransition()Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndState:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_6

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

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

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

    :goto_3
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public setAttributes(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dpi",
            "constraintSetId",
            "opaqueView",
            "opaqueAttributes"
        }
    .end annotation

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-static {v7, v12, v8, v9, v13}, Landroidx/constraintlayout/motion/widget/DesignTool;->SetDimensions(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v12, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v13, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const/4 v6, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v6, 0x6

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

    nop

    :goto_5
    invoke-static/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x12

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

    :goto_8
    invoke-static/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_9
    invoke-static/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_44

    nop

    :goto_b
    const/4 v5, 0x6

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_d
    invoke-static/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v11

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_f
    const/4 v6, 0x6

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_11
    const/4 v6, 0x3

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_13
    const/4 v6, 0x1

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

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    :goto_16
    check-cast v9, Ljava/util/HashMap;

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

    nop

    :goto_17
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_18
    const/4 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_19
    invoke-static {v7, v12, v8, v9}, Landroidx/constraintlayout/motion/widget/DesignTool;->SetAbsolutePositions(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;)V

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    invoke-static/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move/from16 v1, p1

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

    :goto_1c
    invoke-static/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v6, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v7, v12, v8, v9, v14}, Landroidx/constraintlayout/motion/widget/DesignTool;->SetDimensions(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    goto/32 :goto_b

    nop

    nop

    :goto_21
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_22
    invoke-static/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_24
    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v5, 0x7

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

    :goto_27
    return-void

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v8, Landroid/view/View;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x14

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2b
    const/4 v6, 0x2

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

    :goto_2c
    move/from16 v7, p1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2d
    const/4 v6, 0x7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-object/from16 v9, p4

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

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_31
    move-object v4, v9

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_32
    move-object v2, v12

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v14, 0x1

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

    :goto_34
    const/4 v5, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_35
    move-object/from16 v8, p3

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

    nop

    :goto_36
    invoke-static {v12, v8, v9, v14}, Landroidx/constraintlayout/motion/widget/DesignTool;->SetBias(Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v12

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3a
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_3b
    const/4 v6, 0x4

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

    :goto_3c
    const/4 v6, 0x3

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

    :goto_3d
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move-object v3, v8

    nop

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

    :goto_3f
    move-object/from16 v10, p2

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

    :goto_40
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    goto/32 :goto_3

    nop

    nop

    :goto_42
    invoke-static {v12, v8, v9, v13}, Landroidx/constraintlayout/motion/widget/DesignTool;->SetBias(Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v1, v11, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v5, 0x5

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v6, 0x1

    nop

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

    nop
.end method

.method public setKeyFrame(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "position",
            "name",
            "value"
        }
    .end annotation

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_10

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

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    check-cast v1, Landroid/view/View;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionScene;->setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    div-float/2addr v1, v2

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 v2, 0x42c80000    # 100.0f

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_d
    int-to-float v1, p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_1a
    return-void

    nop

    :goto_1b
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1d
    move-object v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1e
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1f
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method public setKeyFramePosition(Ljava/lang/Object;IIFF)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "position",
            "type",
            "x",
            "y"
        }
    .end annotation

    goto/32 :goto_32

    nop

    nop

    :goto_0
    move-object v3, p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    check-cast v4, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2
    move-object v4, p1

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3, v4, p2, v6, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    return v4

    nop

    nop

    :goto_b
    goto/32 :goto_2d

    nop

    nop

    :goto_c
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    check-cast v3, Landroid/view/View;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_10
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

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

    nop

    :goto_16
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    goto/32 :goto_3a

    nop

    nop

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
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    nop

    :goto_1b
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v6, "motion:percentX"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1d
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    mul-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_20
    const/4 v1, 0x2

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_21
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_22
    instance-of v0, p1, Landroid/view/View;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x11

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_24
    const/high16 v3, 0x42c80000    # 100.0f

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_26
    float-to-int p2, v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

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

    :goto_28
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2a
    move-object v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v2, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionController;->getKeyFrameParameter(IFF)F

    move-result v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2c
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return v1

    nop

    nop

    :goto_2e
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v4, Landroid/view/View;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionController;->getKeyFrameParameter(IFF)F

    move-result v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_32
    const v0, 0xa

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

    nop

    :goto_33
    const-string v6, "motion:percentY"

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_34
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v2, v3, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->hasKeyFramePosition(Landroid/view/View;I)Z

    move-result v2

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_38
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    nop

    :goto_39
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3a
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v3, v4, p2, v6, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setKeyframe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyFrame",
            "tag",
            "value"
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
    const v1, 0x15

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

    :goto_1
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/motion/widget/Key;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
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

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

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
    goto/32 :goto_12

    nop

    nop

    :goto_8
    iput-boolean v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x1

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

    nop

    :goto_c
    const v0, 0x1a

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

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    check-cast v0, Landroidx/constraintlayout/motion/widget/Key;

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

    :goto_12
    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/Key;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public setState(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndState:Ljava/lang/String;

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

    :goto_5
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getEndState()I

    move-result v1

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

    :goto_6
    goto/16 :goto_27

    nop

    nop

    :goto_7
    goto/32 :goto_1a

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    :goto_9
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    nop

    :goto_d
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartStateId:I

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_15
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    const/4 v2, 0x0

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

    :goto_17
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

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

    :goto_1c
    add-int v0, v0, v1

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

    :goto_1d
    const-string p1, "motion_base"

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1f
    if-eq v0, p1, :cond_2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    const v0, 0x20

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0xf

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

    :goto_22
    return-void

    nop

    nop

    :goto_23
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    :goto_25
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :goto_27
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_28
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_29
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2a
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_3

    nop

    goto/32 :goto_27

    nop

    :cond_3
    goto/32 :goto_10

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

    nop

    :goto_2d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mSceneCache:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_2d

    nop

    :goto_32
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto/32 :goto_d

    nop

    nop

    :goto_33
    if-eq v0, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_35
    if-eqz v0, :cond_6

    nop

    nop

    goto/32 :goto_25

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
.end method

.method public setToolPosition(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    const v0, 0x20

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
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_15
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mSceneCache:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public setTransition(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    goto/32 :goto_15

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

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    iput v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndStateId:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

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

    :goto_a
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_b
    if-eqz v0, :cond_0

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
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mSceneCache:Landroidx/constraintlayout/motion/widget/MotionScene;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    iput v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartStateId:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndState:Ljava/lang/String;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_15
    const v0, 0x1f

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

    :goto_16
    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public setViewDebug(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "debugMode"
        }
    .end annotation

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    instance-of v0, p1, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/motion/widget/MotionController;->setDrawPath(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    const v1, 0x1d

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

    :goto_c
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_15
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

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

    :goto_16
    const v0, 0x12

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
