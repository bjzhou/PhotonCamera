.class final Lnme;
.super Lnzk;
.source "PG"


# instance fields
.field final synthetic a:Ltxm;

.field final synthetic b:Lkyf;


# direct methods
.method public constructor <init>(Lkyf;Ltxm;)V
    .locals 0

    goto/32 :goto_3

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
    invoke-direct {p0, p1, p1, p1, p1}, Lnzk;-><init>([B[B[B[B)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lnme;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-object p1, p0, Lnme;->b:Lkyf;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lnar;)Z
    .locals 5

    goto/32 :goto_9

    nop

    nop

    :goto_0
    check-cast p1, Landroid/view/MotionEvent;

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

    :goto_1
    const/4 p0, 0x1

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_3
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

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

    nop

    :goto_5
    iget v0, v0, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    iget v4, v0, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    sub-float/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_8
    const/4 p1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x5

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

    :goto_a
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_b
    check-cast v0, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_c
    check-cast v2, Landroid/view/MotionEvent;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_d
    const v2, 0x7f0b013c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_e
    iget-object v2, p1, Lnar;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    int-to-float v0, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Lkyf;->D(I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Lkyf;->B()Z

    move-result v0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v0, Lnjn;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    iget-object v0, p1, Lnar;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v3, v0}, Lnzk;->X(Landroid/graphics/PointF;Landroid/view/View;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Lnme;->b:Lkyf;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return v1

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v3, p1}, Lnzk;->X(Landroid/graphics/PointF;Landroid/view/View;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lnme;->b:Lkyf;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lnjn;->b()Lpzi;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, v0, Lpzi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return p0

    nop

    nop

    :goto_23
    goto/32 :goto_17

    nop

    nop

    :goto_24
    iget-object p1, p1, Lkyf;->m:Landroid/view/View;

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

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_27
    sub-float/2addr v2, v4

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_28
    iget-object v0, p0, Lnme;->a:Ltxm;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_29
    check-cast v0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lnme;->b:Lkyf;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v3, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2d
    const/4 v1, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p1, p1, Lnar;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v0}, Lnzk;->V(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

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

    :goto_31
    invoke-direct {v3, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_16

    nop

    nop
.end method
