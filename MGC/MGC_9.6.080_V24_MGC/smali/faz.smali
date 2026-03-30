.class public final Lfaz;
.super Lfbf;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lfbf;-><init>(Ljava/util/List;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic f(Lffj;F)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Lfaz;->l(Lffj;F)I

    move-result p0

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

    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k()I
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, v1}, Lfaz;->l(Lffj;F)I

    move-result p0

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const v1, 0xc

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    invoke-virtual {p0}, Lfay;->d()Lffj;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lfay;->b()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final l(Lffj;F)I
    .locals 9

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    iget-object v0, p1, Lffj;->h:Ljava/lang/Float;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const v1, 0x4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p1, Lffj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    move-object v4, v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    goto/32 :goto_20

    nop

    :goto_7
    goto/32 :goto_2a

    nop

    nop

    :goto_8
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_a
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual/range {v1 .. v8}, Lffl;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_e
    iget-object v1, p0, Lfaz;->d:Lffl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_10
    check-cast p2, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_13
    const-string p1, "Missing values for keyframe."

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p2, p0, v0}, Lffd;->a(FFF)F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0, p2, p1}, Landroidx/wear/ambient/SharedLibraryVersion;->g(FII)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p1, Lffj;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_18
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    iget v2, p1, Lffj;->g:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lfay;->c()F

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1c
    return p0

    nop

    :goto_1d
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1e
    iget v8, p0, Lfay;->c:F

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1f
    throw p0

    nop

    :goto_20
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_23
    return p0

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object v5, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p1, Lffj;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_27
    const v0, 0xb

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 p0, 0x0

    nop

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

    :goto_2a
    iget-object v0, p1, Lffj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

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

    :goto_2c
    move v6, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p2, p1, Lffj;->b:Ljava/lang/Object;

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

    :goto_2f
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p1, p1, Lffj;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop
.end method
