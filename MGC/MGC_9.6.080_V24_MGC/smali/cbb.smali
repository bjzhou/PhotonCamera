.class public final Lcbb;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(Lcat;)J
    .locals 6

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    int-to-long v0, v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    or-long/2addr v0, v2

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
    goto/32 :goto_9

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcat;->a:Landroid/view/DragEvent;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_b
    invoke-virtual {p0}, Landroid/view/DragEvent;->getX()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    and-long/2addr v2, v4

    nop

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

    :goto_d
    const/16 p0, 0x20

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xa

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    int-to-long v2, p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Landroid/view/DragEvent;->getY()F

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    const-wide v4, 0xffffffffL

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    shl-long/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop
.end method
