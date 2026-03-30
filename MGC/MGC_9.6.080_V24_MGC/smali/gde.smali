.class public final synthetic Lgde;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:Lhdn;

.field public final synthetic b:Lhdn;


# direct methods
.method public synthetic constructor <init>(Lhdn;Lhdn;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgde;->a:Lhdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lgde;->b:Lhdn;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    :goto_6
    iget v1, v1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lgde;->b:Lhdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    iget-object v1, v0, Lhdn;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    check-cast v1, Landroid/graphics/PointF;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p1}, Lhdn;->o(F)F

    move-result p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Lhdn;->o(F)F

    move-result p0

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    cmpg-float v1, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_c

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    if-lez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lgde;->a:Lhdn;

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

    :goto_14
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method
