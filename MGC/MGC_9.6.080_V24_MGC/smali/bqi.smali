.class public final Lbqi;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(I)I
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return v1

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :pswitch_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    return v1

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :goto_c
    goto/32 :goto_0

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    const/4 p0, 0x3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return v0

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final b([II)I
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    mul-int/lit8 p1, p1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    add-int/lit8 p1, p1, 0x4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    aget p0, p0, p1

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static final c([II)I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    aget p0, p0, p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    mul-int/lit8 p1, p1, 0x5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 p1, p1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static final d([II)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    aget p0, p0, p1

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
    mul-int/lit8 p1, p1, 0x5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return p0

    nop

    nop
.end method

.method public static final e(Ljava/util/ArrayList;II)I
    .locals 0

    goto/32 :goto_6

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

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    neg-int p0, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    if-gez p0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-static {p0, p1, p2}, Lbqi;->i(Ljava/util/ArrayList;II)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final f([II)I
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    and-int/2addr p0, p1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    aget p0, p0, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const p1, 0x3ffffff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    mul-int/lit8 p1, p1, 0x5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public static final g([II)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget p0, p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    mul-int/lit8 p1, p1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    add-int/2addr p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    aget p1, p0, p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    shr-int/lit8 p0, p0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p1

    nop

    :goto_6
    add-int/lit8 v0, p1, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Lbqi;->a(I)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    add-int/lit8 p1, p1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public static final h([II)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    mul-int/lit8 p1, p1, 0x5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 p1, p1, 0x2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aget p0, p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop
.end method

.method public static final i(Ljava/util/ArrayList;II)I
    .locals 4

    goto/32 :goto_20

    nop

    nop

    :goto_0
    if-ltz v3, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v1, v2, 0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    if-ltz v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    add-int/2addr v3, p2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_b
    goto :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    :goto_d
    ushr-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    iget v3, v3, Lbkw;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    add-int v2, v1, v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-le v1, v0, :cond_3

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    neg-int p0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    add-int/lit8 v0, v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v3, Lbkw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v1, v1, 0x1

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

    nop

    :goto_1a
    return v2

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    if-gtz v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_23
    invoke-static {v3, p1}, Luch;->a(II)I

    move-result v3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final j([II)I
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    aget p0, p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aget p1, p0, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    shr-int/lit8 p0, p0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-int/lit8 p1, p1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    add-int/lit8 v0, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    invoke-static {p0}, Lbqi;->a(I)I

    move-result p0

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

    :goto_7
    add-int/2addr p1, p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    add-int/lit8 p1, p1, 0x4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static final k(Ljava/util/ArrayList;II)Lbkw;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    if-gez p1, :cond_0

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_2
    check-cast p0, Lbkw;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    invoke-static {p0, p1, p2}, Lbqi;->i(Ljava/util/ArrayList;II)I

    move-result p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop
.end method

.method public static final l()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final m([III)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 p1, p1, 0x4

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

    :goto_1
    mul-int/lit8 p1, p1, 0x5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    aput p2, p0, p1

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

.method public static final n([III)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    if-gez p2, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    add-int/lit8 p1, p1, 0x3

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

    :goto_7
    invoke-static {v0}, Lblv;->m(Z)V

    goto/32 :goto_9

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    mul-int/lit8 p1, p1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    aput p2, p0, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static final o([III)V
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    mul-int/lit8 p1, p1, 0x5

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

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    or-int/2addr p2, v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v2, 0x3ffffff

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    invoke-static {v1}, Lblv;->m(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    if-gez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_a
    and-int/2addr v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aput p2, p0, p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aget v0, p0, p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    if-lt p2, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    add-int/2addr p1, v0

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

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    move v1, v0

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/high16 v1, -0x4000000

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public static final p([III)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    aput p2, p0, p1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    mul-int/lit8 p1, p1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 p1, p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static final q([II)Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    mul-int/lit8 p1, p1, 0x5

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    const/high16 p1, 0xc000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    and-int/2addr p0, p1

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
    add-int/2addr p1, v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    aget p0, p0, p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    :goto_9
    return v0

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final r([II)Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    const/high16 p1, 0x4000000

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    and-int/2addr p0, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const/4 p0, 0x0

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

    :goto_3
    aget p0, p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    add-int/2addr p1, v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

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

    :goto_7
    mul-int/lit8 p1, p1, 0x5

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    return p0

    nop

    :goto_9
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop
.end method

.method public static final s([II)Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

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

    nop

    nop

    :goto_2
    return v0

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    const/high16 p1, 0x10000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    aget p0, p0, p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    mul-int/lit8 p1, p1, 0x5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    add-int/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    and-int/2addr p0, p1

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
.end method

.method public static final t([II)Z
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    const/high16 p1, 0x8000000

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

    nop

    nop

    :goto_6
    and-int/2addr p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aget p0, p0, p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    add-int/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    mul-int/lit8 p1, p1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static final u([II)Z
    .locals 1

    goto/32 :goto_8

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
    const/high16 p1, 0x20000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    aget p0, p0, p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    and-int/2addr p0, p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    mul-int/lit8 p1, p1, 0x5

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    add-int/2addr p1, v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static final v([II)Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr p1, v0

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

    :goto_1
    aget p0, p0, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const/high16 p1, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    and-int/2addr p0, p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    mul-int/lit8 p1, p1, 0x5

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    :goto_a
    const/4 v0, 0x1

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
