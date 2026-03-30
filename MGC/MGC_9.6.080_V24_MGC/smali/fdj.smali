.class final Lfdj;
.super Landroid/graphics/Paint;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

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

    :goto_1
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lfdj;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

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

    :goto_4
    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lfdj;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
