.class Landroidx/constraintlayout/utils/widget/ImageFilterButton$2;
.super Landroid/view/ViewOutlineProvider;
.source "ImageFilterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setRound(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/utils/widget/ImageFilterButton;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/utils/widget/ImageFilterButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton$2;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    goto/32 :goto_0

    nop

    nop

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

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getWidth()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton$2;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {v1}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->access$100(Landroidx/constraintlayout/utils/widget/ImageFilterButton;)F

    move-result v6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    move v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    move-object v1, p2

    nop

    goto/32 :goto_5

    nop

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    goto/32 :goto_8

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

    nop

    :goto_e
    move v5, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton$2;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

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
    invoke-virtual {v1}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->getHeight()I

    move-result v7

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

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    const v1, 0x4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton$2;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

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

    :goto_14
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0xf

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
.end method
