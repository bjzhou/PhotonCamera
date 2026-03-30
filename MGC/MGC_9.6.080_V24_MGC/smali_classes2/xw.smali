.class public final Lxw;
.super Lyi;
.source "PG"

# interfaces
.implements Ljava/util/Set;
.implements Lucy;


# instance fields
.field final synthetic a:Lyj;


# direct methods
.method public constructor <init>(Lyj;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lxw;->a:Lyj;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Lyi;-><init>(Lyj;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
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
    invoke-virtual {p0, p1}, Lyj;->j(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lxw;->a:Lyj;

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lxw;->a:Lyj;

    nop

    nop

    goto/32 :goto_2

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

    :goto_2
    invoke-virtual {p0, p1}, Lyj;->k(Ljava/lang/Iterable;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final clear()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lyj;->d()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-object p0, p0, Lxw;->a:Lyj;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lxv;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Lxv;-><init>(Lyj;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lxw;->a:Lyj;

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final remove(Ljava/lang/Object;)Z
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

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lyj;->l(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lxw;->a:Lyj;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lyj;->d:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    iget-object p0, p0, Lxw;->a:Lyj;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_1

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v1}, Lyj;->e(Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    :goto_11
    if-ne v0, p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_14
    const v1, 0xb

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_15
    iget p0, p0, Lyj;->d:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 17

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_1
    shr-long/2addr v7, v12

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

    :goto_2
    move v6, v5

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    and-long/2addr v13, v7

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    not-int v11, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    array-length v4, v3

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    iget v2, v0, Lyj;->d:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v14, p1

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v13, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    :goto_e
    aget-wide v7, v3, v6

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2f

    nop

    nop

    :goto_11
    return v0

    nop

    :goto_12
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, v0, Lyj;->a:[J

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

    :goto_14
    if-ltz v11, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v4, v4, -0x2

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

    :goto_16
    aget-object v13, v1, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_17
    shl-long/2addr v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v14, v13}, Lrkm;->aF(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v13

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rsub-int/lit8 v11, v11, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1a
    iget v0, v0, Lyj;->d:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1b
    const-wide/16 v13, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1d
    const-wide/16 v15, 0x80

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1e
    if-lt v10, v11, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    ushr-int/lit8 v11, v11, 0x1f

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_20
    if-ne v2, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_21
    and-long/2addr v9, v7

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_22
    const/4 v11, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_23
    shl-int/lit8 v11, v6, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object/from16 v14, p1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_25
    if-nez v9, :cond_4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_4
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-ne v6, v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v12, 0x8

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

    :goto_29
    move v10, v5

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2b
    if-eq v11, v12, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3e

    nop

    :goto_2d
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2f
    move-object/from16 v14, p1

    nop

    nop

    :goto_30
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_31
    cmp-long v11, v13, v15

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_32
    add-int/lit8 v10, v10, 0x1

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

    :goto_33
    iget-object v1, v0, Lyj;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_34
    sub-int v9, v6, v4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, v0, Lxw;->a:Lyj;

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_36
    goto/16 :goto_2a

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v11}, Lyj;->i(I)V

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_39
    not-long v9, v7

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

    :goto_3a
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3d
    and-long/2addr v9, v11

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move-object/from16 v0, p0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_41
    cmp-long v9, v9, v11

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_42
    move-object/from16 v14, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_43
    return v5

    nop

    nop

    :goto_44
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_45
    add-int/2addr v11, v10

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_46
    if-gez v4, :cond_8

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_c

    nop

    nop

    :goto_49
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
