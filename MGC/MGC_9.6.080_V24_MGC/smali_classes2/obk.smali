.class public final Lobk;
.super Landroid/view/TouchDelegate;
.source "PG"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lobk;->a:Ljava/util/ArrayList;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    new-instance v0, Landroid/graphics/Rect;

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
.end method


# virtual methods
.method public final a(Landroid/view/TouchDelegate;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-object p0, p0, Lobk;->a:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v4, 0x0

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    const v1, 0x4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_2

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    check-cast v5, Landroid/view/TouchDelegate;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    const v0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
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

    :goto_d
    if-lt v4, v3, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v5, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

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

    nop

    nop

    :goto_12
    or-int/2addr p0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    invoke-super {p0, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    iget-object v0, p0, Lobk;->a:Ljava/util/ArrayList;

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

    :goto_18
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method
