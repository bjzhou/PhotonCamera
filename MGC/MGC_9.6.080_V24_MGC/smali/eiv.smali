.class final Leiv;
.super Landroid/util/Property;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "bottomRight"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lejb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p1, Lejb;->f:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq p2, p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p2, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Lejb;->a()V

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    iget p2, p1, Lejb;->e:I

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

    :goto_8
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iput p0, p1, Lejb;->d:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput p0, p1, Lejb;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    iput p0, p1, Lejb;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget p0, p2, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p1, Lejb;

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

    :goto_e
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p2, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method
