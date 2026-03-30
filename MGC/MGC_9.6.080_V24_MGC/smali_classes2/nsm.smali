.class final Lnsm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljdb;


# instance fields
.field final synthetic a:Lnsn;


# direct methods
.method public constructor <init>(Lnsn;)V
    .locals 0

    goto/32 :goto_1

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
    iput-object p1, p0, Lnsm;->a:Lnsn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Z)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final synthetic b(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final synthetic c(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    div-float/2addr v0, v3

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    const/high16 v3, 0x40000000    # 2.0f

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lnsn;->f:Lnsj;

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

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    const v0, 0x1

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

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, v1}, Lnsj;->f(Landroid/graphics/PointF;)Z

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    int-to-float v0, v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    int-to-float v2, v2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lnsm;->a:Lnsn;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    div-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x7f0b0376

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_14
    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    iget-object v0, v0, Lnsn;->i:Landroid/view/View;

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

    :goto_16
    new-instance v1, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_19
    iget-object v0, p0, Lnsm;->a:Lnsn;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic e()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final synthetic f(Z)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final synthetic g(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic h(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method
