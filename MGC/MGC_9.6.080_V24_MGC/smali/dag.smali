.class final Ldag;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldaf;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    new-array v0, v0, [I

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

    :goto_3
    const/4 v0, 0x2

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

    :goto_4
    iput-object v0, p0, Ldag;->a:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Ldag;->b:[I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public a(Landroid/view/View;[F)V
    .locals 5

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Ldag;->b:[I

    nop

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

    :goto_2
    sub-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    sub-int/2addr p1, v4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    int-to-float p1, p1

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

    :goto_8
    iget-object p0, p0, Ldag;->a:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_9
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a
    aget p1, p1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/32 :goto_8

    nop

    nop

    :goto_c
    aget v1, p1, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    check-cast p1, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Ldag;->a:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_11
    iget-object v0, p0, Ldag;->a:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Ldag;->b:[I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_17
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Ldag;->a:Landroid/graphics/Matrix;

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

    :goto_1c
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p2, p0}, Lcdv;->a([FLandroid/graphics/Matrix;)V

    goto/32 :goto_18

    nop

    nop

    :goto_1f
    aget v4, v0, v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    instance-of v1, v0, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_22
    move-object p1, v0

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

    :goto_23
    aget v2, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1, v0}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_28
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Ldag;->b:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method
