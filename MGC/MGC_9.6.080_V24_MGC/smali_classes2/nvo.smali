.class final Lnvo;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PG"


# instance fields
.field final synthetic a:Lnvu;


# direct methods
.method public constructor <init>(Lnvu;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnvo;->a:Lnvu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    goto/32 :goto_a

    nop

    nop

    :goto_0
    cmpg-float p1, p1, p3

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

    :goto_1
    iget-object p3, p3, Lnvu;->y:Landroid/widget/SeekBar;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    cmpl-float p1, p1, p3

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

    :goto_3
    invoke-virtual {p1}, Lnvu;->ar()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

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

    :goto_5
    if-ltz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    :goto_6
    goto/32 :goto_11

    nop

    nop

    :goto_7
    invoke-direct {p1, p3, p2}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getWidth()I

    move-result p3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p3

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p3, p0, Lnvo;->a:Lnvu;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    new-instance p1, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

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
    if-lez p1, :cond_1

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    int-to-float p3, p3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p0, Lnvo;->a:Lnvu;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    return p0

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lnvo;->a:Lnvu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_14
    iput-object p1, p0, Lnvu;->C:Landroid/graphics/PointF;

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    if-eqz p3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    :goto_18
    iget-boolean p3, p1, Lnvu;->F:Z

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop
.end method
