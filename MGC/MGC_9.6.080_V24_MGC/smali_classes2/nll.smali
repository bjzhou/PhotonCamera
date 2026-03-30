.class public final synthetic Lnll;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:D


# direct methods
.method public synthetic constructor <init>(ZD)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lnll;->a:Z

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

    nop

    nop

    :goto_3
    iput-wide p2, p0, Lnll;->b:D

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 5

    goto/32 :goto_25

    nop

    nop

    :goto_0
    iget-object v0, p1, Lnlm;->b:Landroid/util/Range;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const-wide/16 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    iget-object p0, p1, Lnlm;->a:Landroid/util/Range;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    check-cast p1, Lnlm;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v1, p0, Lnll;->b:D

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    invoke-virtual {v0, p0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-wide p0

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Ljava/lang/Double;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_f
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p1, Lnlm;->a:Landroid/util/Range;

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_14
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    check-cast p0, Ljava/lang/Double;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x9

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

    :goto_17
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    return-wide p0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p1, Lnlm;->a:Landroid/util/Range;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1d
    goto/16 :goto_11

    nop

    nop

    :goto_1e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    sub-double/2addr p0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_21
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_22
    sub-double/2addr v3, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_24
    iget-boolean v0, p0, Lnll;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x12

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method
