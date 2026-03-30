.class public final Ldpn;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(Lcdj;)Ldpm;
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-direct {v3, p0, v2, v1, v0}, Ldpm;-><init>(IIII)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    iget v2, p0, Lcdj;->c:F

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

    :goto_c
    iget p0, p0, Lcdj;->b:F

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

    :goto_d
    iget v0, p0, Lcdj;->e:F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    return-object v3

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    iget v1, p0, Lcdj;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_13
    new-instance v3, Ldpm;

    nop

    goto/32 :goto_0

    nop

    nop
.end method
