.class public Landroidx/constraintlayout/helper/widget/Flow;
.super Landroidx/constraintlayout/widget/VirtualLayout;
.source "Flow.java"


# static fields
.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static final HORIZONTAL:I = 0x0

.field public static final HORIZONTAL_ALIGN_CENTER:I = 0x2

.field public static final HORIZONTAL_ALIGN_END:I = 0x1

.field public static final HORIZONTAL_ALIGN_START:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Flow"

.field public static final VERTICAL:I = 0x1

.field public static final VERTICAL_ALIGN_BASELINE:I = 0x3

.field public static final VERTICAL_ALIGN_BOTTOM:I = 0x1

.field public static final VERTICAL_ALIGN_CENTER:I = 0x2

.field public static final VERTICAL_ALIGN_TOP:I = 0x0

.field public static final WRAP_ALIGNED:I = 0x2

.field public static final WRAP_CHAIN:I = 0x1

.field public static final WRAP_NONE:I


# instance fields
.field private mFlow:Landroidx/constraintlayout/core/widgets/Flow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
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

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v2, v1, :cond_0

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_72

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    if-eq v3, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_4
    if-ge v4, v6, :cond_2

    nop

    goto/32 :goto_72

    nop

    nop

    :cond_2
    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_5
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingBottom:I

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/high16 v6, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v3, v4, :cond_3

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

    :cond_3
    goto/32 :goto_59

    nop

    nop

    :goto_8
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setHorizontalGap(I)V

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_72

    nop

    :goto_e
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_f
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setVerticalBias(F)V

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mHelperWidget:Landroidx/constraintlayout/core/widgets/Helper;

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_12
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/Flow;-><init>()V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_13
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_lastVerticalBias:I

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eq v3, v4, :cond_4

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_da

    nop

    nop

    :goto_15
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eq v3, v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_5
    goto/32 :goto_81

    nop

    nop

    :goto_17
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_72

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setOrientation(I)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_d9

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_horizontalBias:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_21
    if-eq v3, v4, :cond_6

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

    :cond_6
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eq v3, v4, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    :cond_7
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_72

    nop

    :goto_24
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_26
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_orientation:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

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

    :goto_2e
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_72

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_33
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_34
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setLastVerticalBias(F)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_36
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_72

    nop

    :goto_38
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_72

    nop

    nop

    :goto_3a
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

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

    :goto_3c
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_lastVerticalStyle:I

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_3f
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_42
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setFirstHorizontalStyle(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_0

    nop

    nop

    :goto_45
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_47
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_verticalGap:I

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_72

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingStart(I)V

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_4e
    const/16 v6, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_4f
    if-eq v3, v4, :cond_8

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

    :cond_8
    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setFirstVerticalBias(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_c6

    nop

    nop

    :goto_53
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_padding:I

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingBottom(I)V

    goto/32 :goto_30

    nop

    nop

    :goto_56
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;->init(Landroid/util/AttributeSet;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_59
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_5a
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setFirstVerticalStyle(I)V

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_5b
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

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

    :goto_5c
    if-eq v3, v4, :cond_9

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_9
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_72

    nop

    nop

    :goto_5e
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_72

    nop

    :goto_61
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-lez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :cond_a
    goto/32 :goto_c1

    nop

    :goto_63
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_64
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_65
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_67
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_firstHorizontalBias:I

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_68
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingStart:I

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

    :goto_69
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setHorizontalStyle(I)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_6a
    if-eq v3, v4, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_b
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setLastVerticalStyle(I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_6c
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-eq v3, v4, :cond_c

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_c
    goto/32 :goto_ca

    nop

    nop

    :goto_6f
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_horizontalGap:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setMaxElementsWrap(I)V

    :goto_72
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_73
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_firstVerticalStyle:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_74
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_verticalAlign:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingTop(I)V

    goto/32 :goto_18

    nop

    nop

    :goto_76
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingLeft(I)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setVerticalGap(I)V

    goto/32 :goto_8e

    nop

    nop

    :goto_7a
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_7b
    if-eq v3, v4, :cond_d

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_3c

    nop

    nop

    :goto_7c
    if-eq v3, v4, :cond_e

    nop

    goto/32 :goto_d5

    nop

    nop

    :cond_e
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->validateParams()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    if-ge v4, v6, :cond_f

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    if-eq v3, v4, :cond_10

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

    :cond_10
    goto/32 :goto_64

    nop

    nop

    :goto_80
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

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

    :goto_83
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_horizontalAlign:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_84
    if-eq v3, v4, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_5b

    nop

    nop

    :goto_85
    if-eq v3, v4, :cond_12

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_87
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingEnd:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

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

    :goto_89
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_maxElementsWrap:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setHorizontalAlign(I)V

    goto/32 :goto_d

    nop

    nop

    :goto_8b
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    if-eq v3, v4, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8e
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    const/4 v5, -0x1

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_91
    goto/16 :goto_44

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_93
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingRight:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    if-eq v3, v4, :cond_14

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_96
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    if-eq v3, v4, :cond_15

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_99
    if-nez p1, :cond_16

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_16
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setVerticalStyle(I)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setFirstHorizontalBias(F)V

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_9c
    goto/16 :goto_72

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_87

    nop

    nop

    :goto_9e
    goto/32 :goto_c2

    nop

    nop

    :goto_9f
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setLastHorizontalBias(F)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    if-eq v3, v4, :cond_17

    nop

    goto/32 :goto_8f

    nop

    nop

    :cond_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_a2
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setPadding(I)V

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_a3
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_a4
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_verticalStyle:I

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    goto/16 :goto_72

    nop

    :goto_a6
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    if-eq v3, v4, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    :cond_18
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingRight(I)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_a9
    if-eq v3, v4, :cond_19

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_3b

    nop

    nop

    :goto_aa
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setVerticalAlign(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_ac
    if-eq v3, v4, :cond_1a

    nop

    goto/32 :goto_6d

    nop

    nop

    :cond_1a
    goto/32 :goto_82

    nop

    nop

    :goto_ad
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

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

    nop

    :goto_ae
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingEnd(I)V

    goto/32 :goto_d7

    nop

    nop

    :goto_b1
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_b2
    goto/16 :goto_72

    nop

    :goto_b3
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setWrapMode(I)V

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_horizontalStyle:I

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

    :goto_b6
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setLastHorizontalStyle(I)V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_b7
    goto/16 :goto_72

    nop

    nop

    nop

    :goto_b8
    goto/32 :goto_47

    nop

    nop

    :goto_b9
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_wrapMode:I

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->setHorizontalBias(F)V

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    if-eq v3, v4, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :cond_1b
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_lastHorizontalBias:I

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_be
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_firstHorizontalStyle:I

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

    :goto_bf
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_c0
    if-eq v3, v4, :cond_1c

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_c1
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_c2
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_c3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    if-eq v3, v4, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :cond_1d
    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_c5
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_lastHorizontalStyle:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_c6
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingTop:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    if-eq v3, v4, :cond_1e

    nop

    goto/32 :goto_af

    nop

    :cond_1e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    const/4 v6, 0x2

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_c9
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_firstVerticalBias:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_cc
    goto/16 :goto_72

    nop

    :goto_cd
    goto/32 :goto_83

    nop

    nop

    :goto_ce
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_cf
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_paddingLeft:I

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    goto/16 :goto_72

    nop

    nop

    :goto_d5
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_d6
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    goto/16 :goto_72

    nop

    nop

    nop

    :goto_d8
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_d9
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_flow_verticalBias:I

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_da
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_db
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop
.end method

.method public loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/core/widgets/HelperWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "constraint",
            "child",
            "layoutParams",
            "mapIdToWidget"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;",
            "Landroidx/constraintlayout/core/widgets/HelperWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iget v1, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_13

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

    nop

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/Flow;->setOrientation(I)V

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, -0x1

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
    move-object v0, p2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    if-ne v1, v2, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xb

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    check-cast v0, Landroidx/constraintlayout/core/widgets/Flow;

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
    if-nez v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

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
    if-lez v0, :cond_2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_f
    iget v1, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

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

    :goto_10
    goto/32 :goto_2

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/VirtualLayout;->loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/core/widgets/HelperWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    :goto_14
    instance-of v0, p2, Landroidx/constraintlayout/core/widgets/Flow;

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
.end method

.method protected onMeasure(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    goto/32 :goto_2

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

    :goto_2
    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/helper/widget/Flow;->onMeasure(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public onMeasure(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layout",
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v4, v4}, Landroidx/constraintlayout/helper/widget/Flow;->setMeasuredDimension(II)V

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x15

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getMeasuredHeight()I

    move-result v5

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

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

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measure(IIII)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_a
    invoke-virtual {p0, v4, v5}, Landroidx/constraintlayout/helper/widget/Flow;->setMeasuredDimension(II)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_1

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
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

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

    :goto_13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getMeasuredWidth()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_4

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

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x1c

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

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
.end method

.method public resolveRtl(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widget",
            "isRtl"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

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
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/widgets/Flow;->applyRtl(Z)V

    goto/32 :goto_2

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

.method public setFirstHorizontalBias(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bias"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setFirstHorizontalBias(F)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

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
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setFirstHorizontalStyle(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

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

    :goto_3
    return-void

    nop
.end method

.method public setFirstVerticalBias(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bias"
        }
    .end annotation

    goto/32 :goto_3

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
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setFirstVerticalBias(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

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
.end method

.method public setFirstVerticalStyle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
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
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

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
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setFirstVerticalStyle(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setHorizontalAlign(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "align"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setHorizontalAlign(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public setHorizontalBias(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bias"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setHorizontalBias(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public setHorizontalGap(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gap"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setHorizontalGap(I)V

    goto/32 :goto_3

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

    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public setHorizontalStyle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setHorizontalStyle(I)V

    goto/32 :goto_2

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
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public setLastHorizontalBias(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bias"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setLastHorizontalBias(F)V

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
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public setLastHorizontalStyle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setLastHorizontalStyle(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

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

.method public setLastVerticalBias(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bias"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

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
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setLastVerticalBias(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setLastVerticalStyle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    goto/32 :goto_3

    nop

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
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setLastVerticalStyle(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public setMaxElementsWrap(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max"
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
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setMaxElementsWrap(I)V

    goto/32 :goto_1

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
.end method

.method public setOrientation(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setOrientation(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public setPadding(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setPadding(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public setPaddingBottom(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paddingBottom"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingBottom(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_1

    nop

    nop
.end method

.method public setPaddingLeft(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paddingLeft"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingLeft(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

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

    :goto_3
    return-void

    nop
.end method

.method public setPaddingRight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paddingRight"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingRight(I)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public setPaddingTop(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paddingTop"
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

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

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

    :goto_2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setPaddingTop(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setVerticalAlign(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "align"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setVerticalAlign(I)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public setVerticalBias(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bias"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setVerticalBias(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public setVerticalGap(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gap"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setVerticalGap(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public setVerticalStyle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setVerticalStyle(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setWrapMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    goto/32 :goto_3

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

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->setWrapMode(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
