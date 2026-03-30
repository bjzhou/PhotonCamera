.class final Lja;
.super Lex;
.source "PG"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lex;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lja;->a:Z

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
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Lex;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Lja;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return-void

    nop
.end method

.method public final setHotspot(FF)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-super {p0, p1, p2}, Lex;->setHotspot(FF)V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lja;->a:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setHotspotBounds(IIII)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lja;->a:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Lex;->setHotspotBounds(IIII)V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setState([I)Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Lex;->setState([I)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lja;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Lex;->setVisible(ZZ)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lja;->a:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
