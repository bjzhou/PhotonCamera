.class Landroidx/constraintlayout/utils/widget/MotionButton$2;
.super Landroid/view/ViewOutlineProvider;
.source "MotionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/utils/widget/MotionButton;->setRound(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/utils/widget/MotionButton;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/utils/widget/MotionButton;)V
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

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton$2;->this$0:Landroidx/constraintlayout/utils/widget/MotionButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 8
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

    goto/32 :goto_14

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
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Landroidx/constraintlayout/utils/widget/MotionButton;->getHeight()I

    move-result v7

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v1, p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionButton$2;->this$0:Landroidx/constraintlayout/utils/widget/MotionButton;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton$2;->this$0:Landroidx/constraintlayout/utils/widget/MotionButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroidx/constraintlayout/utils/widget/MotionButton;->getWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    move v4, v0

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

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionButton$2;->this$0:Landroidx/constraintlayout/utils/widget/MotionButton;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    :goto_12
    const v1, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v1}, Landroidx/constraintlayout/utils/widget/MotionButton;->access$100(Landroidx/constraintlayout/utils/widget/MotionButton;)F

    move-result v6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    const v0, 0x5

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    move v5, v7

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
