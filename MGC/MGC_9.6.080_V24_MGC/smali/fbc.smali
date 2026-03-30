.class public final Lfbc;
.super Lfbf;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lfbf;-><init>(Ljava/util/List;)V

    goto/32 :goto_1

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
.end method


# virtual methods
.method public final bridge synthetic f(Lffj;F)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lfbc;->l(Lffj;F)F

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

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

.method public final k()F
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, v1}, Lfbc;->l(Lffj;F)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x17

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lfay;->b()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    const v1, 0xe

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lfay;->d()Lffj;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    return p0

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
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

    nop

    nop
.end method

.method final l(Lffj;F)F
    .locals 9

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iget-object v0, p1, Lffj;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1
    iput p0, p1, Lffj;->i:F

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const v0, -0x358c9d09

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x11

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p1, Lffj;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

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

    :goto_7
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_8
    sub-float/2addr v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p1, Lffj;->c:Ljava/lang/Object;

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

    :goto_a
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p1, Lffj;->h:Ljava/lang/Float;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_c
    iget v1, p1, Lffj;->j:F

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

    nop

    :goto_d
    sget-object p1, Lffd;->a:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    cmpl-float v1, p0, v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    :goto_11
    add-float/2addr p0, p2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_12
    iget v8, p0, Lfay;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lfay;->c()F

    move-result v7

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    :goto_17
    iget v2, p1, Lffj;->g:F

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

    :goto_18
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_19
    const-string p1, "Missing values for keyframe."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1a
    return p0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p1, Lffj;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lfbc;->d:Lffl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    cmpl-float v0, v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_20
    invoke-virtual/range {v1 .. v8}, Lffl;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_21
    goto :goto_1b

    nop

    :goto_22
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_25
    return p0

    nop

    nop

    :goto_26
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2a
    move v6, p2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2b
    iget p0, p1, Lffj;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p1, Lffj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

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

    :goto_2f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p1, Lffj;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_32
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_34
    throw p0

    nop

    :goto_35
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz p0, :cond_5

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast p0, Ljava/lang/Float;

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

    :goto_38
    iput v1, p1, Lffj;->j:F

    nop

    nop

    :goto_39
    goto/32 :goto_d

    nop

    nop

    :goto_3a
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_34

    nop

    nop

    :goto_3b
    mul-float/2addr p2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3c
    if-eqz v0, :cond_6

    nop

    goto/32 :goto_39

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v5, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method
