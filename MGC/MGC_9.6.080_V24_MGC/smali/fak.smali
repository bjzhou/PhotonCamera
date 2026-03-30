.class public final Lfak;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfal;
.implements Lfai;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Path;

.field private final d:Ljava/util/List;

.field private final e:Lfcq;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m(Landroid/graphics/Path$Op;)V
    .locals 6

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lfak;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lfak;->d:Ljava/util/List;

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

    nop

    :goto_3
    if-gtz v0, :cond_0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v3}, Lfal;->i()Landroid/graphics/Path;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_5
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lfak;->b:Landroid/graphics/Path;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    :goto_9
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_a
    check-cast v3, Lfal;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lfak;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    nop

    :goto_10
    check-cast v0, Lfal;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    iget-object v1, p0, Lfak;->a:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lfak;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lfak;->b:Landroid/graphics/Path;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_16
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

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

    :goto_17
    iget-object v0, p0, Lfak;->a:Landroid/graphics/Path;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1, p0, p1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Lfal;->i()Landroid/graphics/Path;

    move-result-object v0

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

    :goto_1a
    instance-of v2, v0, Lfac;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v4, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v5, p0, Lfak;->b:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1e
    iget-object v4, p0, Lfak;->a:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1}, Lfac;->j()Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_20
    iget-object v1, p0, Lfak;->a:Landroid/graphics/Path;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_21
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_22
    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_24
    check-cast v4, Lfal;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v1, Lfal;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_26
    invoke-virtual {v5, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Lfac;->h()Landroid/graphics/Matrix;

    move-result-object v5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_28
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Lfac;->h()Landroid/graphics/Matrix;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2a
    check-cast v0, Lfac;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2b
    goto :goto_37

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lt v1, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v2, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_30
    add-int/lit8 v0, v0, -0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Lfac;->j()Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_33
    iget-object v2, p0, Lfak;->b:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_34
    if-gez v3, :cond_2

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_38
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_3
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v1, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3a
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_7

    nop

    :goto_3b
    goto/16 :goto_13

    nop

    nop

    :goto_3c
    goto/32 :goto_14

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_41
    invoke-interface {v1}, Lfal;->i()Landroid/graphics/Path;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v1, Lfac;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_43
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {v4}, Lfal;->i()Landroid/graphics/Path;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_46
    instance-of v2, v1, Lfac;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_32

    nop

    :goto_48
    goto/32 :goto_20

    nop

    nop
.end method

.method public constructor <init>(Lfcq;)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lfak;->b:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    new-instance v0, Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lfak;->c:Landroid/graphics/Path;

    nop

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

    nop

    :goto_3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput-object v0, p0, Lfak;->a:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_7
    iput-object v0, p0, Lfak;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    new-instance v0, Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    iput-object p1, p0, Lfak;->e:Lfcq;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    new-instance v0, Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method


# virtual methods
.method public final f(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const v1, 0x20

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v1, p1, p2}, Lfal;->f(Ljava/util/List;Ljava/util/List;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    :goto_8
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_9
    check-cast v1, Lfal;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lfak;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lfak;->d:Ljava/util/List;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    if-lt v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop
.end method

.method public final h(Ljava/util/ListIterator;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v1, v0, Lfal;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

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

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    :goto_4
    const v0, 0x16

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

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

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_a
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, Lfal;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    goto :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    :goto_14
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    check-cast v0, Lfab;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    goto :goto_11

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lfak;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto/32 :goto_12

    nop

    nop

    :goto_1d
    if-ne v0, p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public final i()Landroid/graphics/Path;
    .locals 3

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Lfak;->166277962e993c138a6b1f0c9b571cc0m(Landroid/graphics/Path$Op;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lfak;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_36

    nop

    nop

    :goto_7
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_8
    if-ne v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, v0, Lfcq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_2a

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    invoke-interface {v2}, Lfal;->i()Landroid/graphics/Path;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lt v0, v1, :cond_1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_11
    iget-boolean v1, v0, Lfcq;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v2, Lfal;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x4

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

    nop

    nop

    :goto_15
    invoke-direct {p0, v0}, Lfak;->166277962e993c138a6b1f0c9b571cc0m(Landroid/graphics/Path$Op;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lfak;->e:Lfcq;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, v0}, Lfak;->166277962e993c138a6b1f0c9b571cc0m(Landroid/graphics/Path$Op;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_1a
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    :goto_1b
    if-ne v0, v1, :cond_4

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Lfak;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_2

    nop

    :goto_23
    iget-object v2, p0, Lfak;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_28
    sget-object v0, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_29
    goto :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0, v0}, Lfak;->166277962e993c138a6b1f0c9b571cc0m(Landroid/graphics/Path$Op;)V

    goto/32 :goto_f

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lfak;->c:Landroid/graphics/Path;

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

    :goto_2d
    goto :goto_2a

    nop

    :goto_2e
    goto/32 :goto_28

    nop

    nop

    :goto_2f
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto :goto_2a

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_32
    const v1, 0x1c

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

    :goto_33
    iget-object v0, p0, Lfak;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

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

    :goto_36
    const/4 p0, 0x0

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

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

    :goto_38
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sget-object v0, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3a
    if-ne v0, v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_8
    goto/32 :goto_2d

    nop

    nop

    :goto_3b
    throw p0

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_2a

    nop

    nop

    :goto_3e
    goto/32 :goto_34

    nop

    nop

    :goto_3f
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_40
    const v0, 0x1e

    nop

    goto/32 :goto_32

    nop

    nop
.end method
