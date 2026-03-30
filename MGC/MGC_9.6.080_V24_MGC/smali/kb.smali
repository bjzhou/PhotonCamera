.class final Lkb;
.super Lkx;
.source "PG"


# instance fields
.field final synthetic a:Lkc;


# direct methods
.method public constructor <init>(Lkc;Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p2}, Lkx;-><init>(Landroid/content/Context;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkb;->a:Lkc;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method protected final a(Landroid/util/DisplayMetrics;)F
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    :goto_1
    const/high16 p1, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    div-float/2addr p1, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float p0, p0

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

    :goto_4
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

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
.end method

.method protected final b(I)I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    invoke-super {p0, p1}, Lkx;->b(I)I

    move-result p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0x64

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

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
.end method

.method protected final c(Landroid/view/View;Lkv;)V
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    iget-object v1, v0, Lkc;->a:Landroid/support/v7/widget/RecyclerView;

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
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v1}, Lkx;->j(I)I

    move-result v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    aget p1, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2, v0, p1, v1, p0}, Lkv;->b(IIILandroid/view/animation/Interpolator;)V

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    if-gtz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_a
    iget-object p0, p0, Lkb;->j:Landroid/view/animation/DecelerateInterpolator;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

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
    aget v0, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    :goto_13
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_16
    invoke-virtual {v0, v1, p1}, Lkc;->c(Lkl;Landroid/view/View;)[I

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lkb;->a:Lkc;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_19
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method
