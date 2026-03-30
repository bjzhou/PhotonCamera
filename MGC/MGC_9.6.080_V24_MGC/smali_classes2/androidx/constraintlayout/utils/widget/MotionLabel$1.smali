.class Landroidx/constraintlayout/utils/widget/MotionLabel$1;
.super Landroid/view/ViewOutlineProvider;
.source "MotionLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/utils/widget/MotionLabel;->setRoundPercent(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/utils/widget/MotionLabel;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/utils/widget/MotionLabel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel$1;->this$0:Landroidx/constraintlayout/utils/widget/MotionLabel;

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
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "outline"
        }
    .end annotation

    goto/32 :goto_12

    nop

    nop

    :goto_0
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x20

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

    :goto_2
    invoke-static {v2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->access$000(Landroidx/constraintlayout/utils/widget/MotionLabel;)F

    move-result v2

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    move v6, v8

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    mul-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    :goto_9
    div-float v8, v1, v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_b
    move v5, v7

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

    :goto_c
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel$1;->this$0:Landroidx/constraintlayout/utils/widget/MotionLabel;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    move v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel$1;->this$0:Landroidx/constraintlayout/utils/widget/MotionLabel;

    nop

    nop

    goto/32 :goto_19

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel$1;->this$0:Landroidx/constraintlayout/utils/widget/MotionLabel;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x1a

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

    :goto_13
    invoke-virtual {v1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHeight()I

    move-result v7

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    move-object v1, p2

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

    :goto_15
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getWidth()I

    move-result v0

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

    nop

    :goto_1a
    const/high16 v2, 0x40000000    # 2.0f

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

    :goto_1b
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method
