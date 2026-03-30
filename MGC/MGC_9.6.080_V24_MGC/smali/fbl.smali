.class public final Lfbl;
.super Lfay;
.source "PG"


# instance fields
.field protected e:Lffl;

.field protected f:Lffl;

.field private final g:Landroid/graphics/PointF;

.field private final h:Landroid/graphics/PointF;

.field private final i:Lfay;

.field private final j:Lfay;


# direct methods
.method public constructor <init>(Lfay;Lfay;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lfbl;->g:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    new-instance v0, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0}, Lfay;-><init>(Ljava/util/List;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lfbl;->i:Lfay;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Lfay;->j(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lfbl;->h:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Lfbl;->j:Lfay;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget p1, p0, Lfay;->c:F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Landroid/graphics/PointF;

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lfbl;->k(F)Landroid/graphics/PointF;

    move-result-object p0

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

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final bridge synthetic f(Lffj;F)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-virtual {p0, p2}, Lfbl;->k(F)Landroid/graphics/PointF;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final j(F)V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lfbl;->i:Lfay;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    add-int v0, v0, v1

    nop

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

    :goto_6
    iget-object p1, p0, Lfbl;->i:Lfay;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    invoke-interface {v0}, Lfat;->d()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lfbl;->j:Lfay;

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

    :goto_9
    invoke-virtual {v0}, Lfay;->e()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_b
    check-cast v0, Lfat;

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

    :goto_c
    if-lt p1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p1}, Lfay;->j(F)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    const/4 p1, 0x0

    nop

    nop

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Lfay;->e()Ljava/lang/Object;

    move-result-object p1

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

    :goto_15
    const v1, 0xb

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x1a

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_11

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lfbl;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p1}, Lfay;->j(F)V

    goto/32 :goto_6

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, p1, v0}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_20
    iget-object v0, p0, Lfbl;->j:Lfay;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Lfbl;->g:Landroid/graphics/PointF;

    nop

    goto/32 :goto_1e

    nop

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lfbl;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method

.method final k(F)Landroid/graphics/PointF;
    .locals 11

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lfbl;->e:Lffl;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lfbl;->g:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    :goto_6
    iget-object v2, p0, Lfbl;->j:Lfay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_7
    iget v4, v0, Lffj;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lfbl;->j:Lfay;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x18

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_b
    iget-object v3, p0, Lfbl;->e:Lffl;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    :goto_e
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_f
    invoke-virtual/range {v3 .. v10}, Lffl;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

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

    :goto_10
    move-object v7, v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Lfay;->b()F

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, v0, Lffj;->h:Ljava/lang/Float;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    move-object v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_2
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual/range {v3 .. v10}, Lffl;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    :goto_17
    goto/32 :goto_50

    nop

    nop

    :goto_18
    iget-object v2, p0, Lfbl;->f:Lffl;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, v2, Lffj;->h:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    :goto_1b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, v2, Lffj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_20
    move v9, p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_41

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lfbl;->i:Lfay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_26
    iget-object v2, p0, Lfbl;->i:Lfay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Lfay;->d()Lffj;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_28
    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_29
    move v5, v1

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v1, v2, Lffj;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_2d
    move v5, v2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_31
    iget v2, v0, Lffj;->g:F

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Lfay;->d()Lffj;

    move-result-object v2

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_34
    check-cast v7, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move v8, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return-object p0

    nop

    :goto_39
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v2, v2, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v2, p0, Lfbl;->h:Landroid/graphics/PointF;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_40
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_29

    nop

    nop

    :goto_42
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p1, p0, Lfbl;->h:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_44
    check-cast v7, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, v0, Lffj;->c:Ljava/lang/Object;

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

    :goto_46
    if-nez v2, :cond_6

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_47
    iget v1, v2, Lffj;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_48
    goto/16 :goto_1b

    nop

    :goto_49
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4a
    iget v1, p1, Landroid/graphics/PointF;->x:F

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

    nop

    :goto_4b
    iget-object v2, p0, Lfbl;->g:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v2, v0, Lffj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4f
    move-object v7, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p0, p0, Lfbl;->h:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_51
    check-cast v6, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v2}, Lfay;->b()F

    move-result v10

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_53
    check-cast v6, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_54
    iget v4, v2, Lffj;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_55
    iget-object v0, p0, Lfbl;->h:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_56
    iget v0, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_57
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    :cond_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v3, p0, Lfbl;->f:Lffl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_59
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_8
    goto/32 :goto_1e

    nop

    :goto_5a
    move v8, p1

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_5b
    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_5d
    move v9, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_60
    iget-object p1, p0, Lfbl;->h:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop
.end method
