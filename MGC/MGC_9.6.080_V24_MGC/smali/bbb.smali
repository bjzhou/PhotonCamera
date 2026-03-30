.class public final Lbbb;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(FFLblm;)F
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p2, v0}, Lblm;->f(Lbmb;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    cmpl-double p2, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    cmpg-double p2, v0, v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-gtz p2, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_6
    float-to-double v0, p2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gez p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p2}, Lbdb;->a(Lblm;)Lbas;

    move-result-object p2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x10

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    sget-object v0, Lbbf;->a:Lbox;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    :goto_e
    float-to-double v0, p2

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

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v0, Lcel;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1c

    nop

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

    nop

    :goto_12
    invoke-virtual {p2}, Lbas;->m()Z

    move-result p2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, v1}, Lcen;->a(J)F

    move-result p2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    if-nez p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-wide v0, v0, Lcel;->g:J

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    return p0

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    :goto_19
    invoke-static {v0, v1}, Lcen;->a(J)F

    move-result p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    return p1

    nop

    :goto_1c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1e
    goto/16 :goto_4

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method

.method public static final b(Lblm;)F
    .locals 1

    goto/32 :goto_1

    nop

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
    const v0, 0x3ec28f5c    # 0.38f

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, v0, p0}, Lbbb;->a(FFLblm;)F

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
