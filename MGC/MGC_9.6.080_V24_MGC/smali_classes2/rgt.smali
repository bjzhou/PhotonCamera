.class public final Lrgt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:Landroid/app/Dialog;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

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
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lrgt;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_5
    iput v0, p0, Lrgt;->b:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iget v0, p2, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    iget p2, p2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lrgt;->a:Landroid/app/Dialog;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_0
    const v0, 0x1020002

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrgt;->a:Landroid/app/Dialog;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4
    const/4 p2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_6
    if-eq p2, v1, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v3, Landroid/graphics/RectF;

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

    :goto_a
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    :goto_f
    iget v2, p0, Lrgt;->b:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

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

    :goto_12
    add-int/2addr v4, v3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_13
    iget v4, p0, Lrgt;->c:I

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

    :goto_14
    add-int/2addr v2, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    int-to-float v4, v4

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

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_18
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, p2}, Landroid/view/MotionEvent;->setAction(I)V

    :goto_1a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1c
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1e
    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_20
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/2addr v1, v2

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

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

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

    nop

    :goto_24
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_25
    invoke-direct {v3, v2, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return p0

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

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

    :goto_2b
    add-int/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop
.end method
