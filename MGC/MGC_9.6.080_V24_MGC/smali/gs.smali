.class public final Lgs;
.super Landroid/graphics/drawable/Drawable;
.source "PG"


# instance fields
.field final a:Landroid/support/v7/widget/ActionBarContainer;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionBarContainer;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lgs;->a:Landroid/support/v7/widget/ActionBarContainer;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    iget-boolean v1, v0, Landroid/support/v7/widget/ActionBarContainer;->d:Z

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lgs;->a:Landroid/support/v7/widget/ActionBarContainer;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    iget-object p1, p0, Landroid/support/v7/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    goto/32 :goto_18

    nop

    :cond_2
    goto/32 :goto_17

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean p0, p0, Landroid/support/v7/widget/ActionBarContainer;->e:Z

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, v0, Landroid/support/v7/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_15
    const v0, 0xc

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_16
    iget-object p0, p0, Lgs;->a:Landroid/support/v7/widget/ActionBarContainer;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final getOpacity()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarContainer;->d:Z

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

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

    nop

    :goto_5
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lgs;->a:Landroid/support/v7/widget/ActionBarContainer;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto/32 :goto_2

    nop

    nop

    :goto_d
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setAlpha(I)V
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

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method
