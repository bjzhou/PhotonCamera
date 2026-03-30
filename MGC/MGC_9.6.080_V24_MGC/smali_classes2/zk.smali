.class public final Lzk;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(J)Z
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    const v0, 0x11

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

    :goto_a
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    return p0

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    const v1, 0x1d

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
    goto/32 :goto_6

    nop

    :goto_10
    invoke-static {p0, p1, v0, v1}, La;->q(JJ)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public static synthetic b(Lbzz;)Lbzz;
    .locals 9

    goto/32 :goto_e

    nop

    nop

    :goto_0
    const/4 v5, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v4, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/high16 v2, 0x43c80000    # 400.0f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-static/range {v1 .. v8}, Lcet;->b(Lbzz;FFFFLcfs;ZI)Lbzz;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v6, 0x0

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

    :goto_6
    invoke-interface {p0, v1}, Lbzz;->k(Lbzz;)Lbzz;

    move-result-object p0

    nop

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

    :goto_7
    const v8, 0x1efff

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    new-instance v0, Ldpo;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    const-wide v1, 0x100000001L

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    invoke-static {v2, v0, v1}, Labm;->a(FLjava/lang/Object;I)Lacu;

    move-result-object v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xd

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    :goto_11
    const v1, 0x1

    nop

    goto/32 :goto_12

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

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1, v0, v2}, Landroidx/compose/animation/SizeAnimationModifierElement;-><init>(Lacg;Lbzk;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_15
    sget v2, Lbzk;->a:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    sget-object v2, Lbzh;->a:Lbzk;

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

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    sget-object v0, Lafk;->a:Ljava/util/Map;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1c
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    new-instance v1, Landroidx/compose/animation/SizeAnimationModifierElement;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1e
    invoke-direct {v0, v1, v2}, Ldpo;-><init>(J)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method
