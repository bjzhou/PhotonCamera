.class Landroidx/constraintlayout/helper/widget/Carousel$1$1;
.super Ljava/lang/Object;
.source "Carousel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/helper/widget/Carousel$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/constraintlayout/helper/widget/Carousel$1;

.field final synthetic val$v:F


# direct methods
.method constructor <init>(Landroidx/constraintlayout/helper/widget/Carousel$1;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$v"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel$1$1;->val$v:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel$1$1;->this$1:Landroidx/constraintlayout/helper/widget/Carousel$1;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public run()V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    iget-object v0, v0, Landroidx/constraintlayout/helper/widget/Carousel$1;->this$0:Landroidx/constraintlayout/helper/widget/Carousel;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

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

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel$1$1;->this$1:Landroidx/constraintlayout/helper/widget/Carousel$1;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Landroidx/constraintlayout/helper/widget/Carousel;->access$000(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel$1$1;->val$v:F

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

    :goto_c
    invoke-virtual {v0, v2, v3, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    :goto_e
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    const v0, 0x16

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method
