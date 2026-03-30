.class public final Lrdk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final a:Ljava/util/List;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lrdk;->b:Ljava/util/List;

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
    iput-object v0, p0, Lrdk;->a:Ljava/util/List;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public varargs constructor <init>([F)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    :goto_0
    iput-object v0, p0, Lrdk;->a:Ljava/util/List;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v1, v1, -0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, "must be even number of coordinates"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_15

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Landroid/graphics/PointF;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    :goto_8
    const v0, 0x1f

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lrdk;->a:Ljava/util/List;

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

    nop

    :goto_a
    iget-object v0, p0, Lrdk;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v3, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    if-lt v0, v1, :cond_1

    nop

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

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    :goto_e
    shr-int/lit8 v1, v2, 0x1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lrdk;->b:Ljava/util/List;

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

    :goto_14
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_19

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_18
    invoke-static {v0, v1}, Lrrf;->m(ZLjava/lang/Object;)V

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lrdk;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_20
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

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

    :goto_21
    return-void

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-gt v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    :goto_24
    goto/32 :goto_12

    nop

    nop

    :goto_25
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_26
    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    aget v3, p1, v3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_29
    iget-object v0, p0, Lrdk;->a:Ljava/util/List;

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

    nop

    :goto_2a
    iget-object v0, p0, Lrdk;->a:Ljava/util/List;

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

    :goto_2b
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_2c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2d
    aget v1, p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2e
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2f
    const/16 v0, 0x8

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

    :goto_30
    const/4 v1, 0x4

    nop

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

    nop

    :goto_31
    add-int v0, v0, v1

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

    :goto_32
    if-lt v2, v0, :cond_3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_33
    add-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_34
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrdk;->a:Ljava/util/List;

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
    return p0

    nop

    nop
.end method

.method public final b(I)Landroid/graphics/PointF;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    check-cast p0, Landroid/graphics/PointF;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrdk;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    :goto_3
    return-object p0

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lrdk;->a()I

    move-result v2

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    move v4, v1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_5
    if-ltz v4, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    if-lt v4, v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    :goto_7
    goto/16 :goto_1e

    nop

    nop

    :goto_8
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v6}, Lrdk;->b(I)Landroid/graphics/PointF;

    move-result-object v6

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_1e

    nop

    nop

    :goto_b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_c
    rem-int/2addr v6, v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v1, v3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_1e

    nop

    :goto_f
    goto/32 :goto_29

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    goto/32 :goto_14

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_11
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_30

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    :goto_14
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lrdk;->a()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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

    :goto_17
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_18
    if-lt v2, v0, :cond_3

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_19
    return v1

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    :goto_1b
    check-cast p1, Lrdk;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_2c

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    add-int v6, v4, v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v5, v6}, Lrgw;->m(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v5

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

    :goto_21
    invoke-virtual {p1, v4}, Lrdk;->b(I)Landroid/graphics/PointF;

    move-result-object v5

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_22
    if-eqz v5, :cond_4

    nop

    goto/32 :goto_38

    nop

    :cond_4
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v5, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v2, :cond_6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_25
    if-ne v2, v0, :cond_7

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v2, Landroid/graphics/PointF;

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

    :goto_27
    goto/16 :goto_4

    nop

    nop

    :goto_28
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Lrdk;->a()I

    move-result v2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_2a
    iget-object v2, p0, Lrdk;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2b
    move v2, v1

    nop

    :goto_2c
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2d
    const/4 v4, -0x1

    nop

    nop

    :goto_2e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v2}, Lrdk;->b(I)Landroid/graphics/PointF;

    move-result-object v5

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-int/lit8 v4, v4, 0x1

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

    :goto_31
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_32
    invoke-virtual {p1}, Lrdk;->a()I

    move-result v5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_33
    add-int/lit8 v2, v2, 0x1

    nop

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

    nop

    :goto_34
    const v1, 0x3

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

    :goto_35
    instance-of v0, p1, Lrdk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_36
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_1e

    nop

    :goto_38
    goto/32 :goto_33

    nop

    nop

    :goto_39
    invoke-static {v2, v5}, Lrgw;->m(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v5

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3a
    if-eqz v0, :cond_9

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

    nop

    :cond_9
    :goto_3b
    goto/32 :goto_d

    nop

    nop

    :goto_3c
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object p0, p0, Lrdk;->a:Ljava/util/List;

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

    nop

    nop
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    iget-object p0, p0, Lrdk;->b:Ljava/util/List;

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_10

    nop

    nop

    :goto_0
    check-cast v2, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2
    const-string v3, "["

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Lrdk;->a:Ljava/util/List;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Lrdk;->a:Ljava/util/List;

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

    nop

    nop

    :goto_a
    const-string v3, ","

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_c
    const-string p0, ")"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_e
    iget v3, v2, Landroid/graphics/PointF;->x:F

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

    :goto_f
    iget v2, v2, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    const-string v2, "]"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_16
    const-string v1, "Polygon("

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    const-string v2, " "

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lt v1, v2, :cond_0

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

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1e
    if-lt v1, v2, :cond_1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_25

    nop

    :goto_23
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-object p0

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_22

    nop

    :goto_27
    add-int/lit8 v2, v2, -0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v2, p0, Lrdk;->a:Ljava/util/List;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2a
    goto :goto_20

    nop

    nop

    :goto_2b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
