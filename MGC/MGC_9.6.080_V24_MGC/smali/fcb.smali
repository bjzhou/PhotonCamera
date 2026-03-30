.class public final Lfcb;
.super Lfcl;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 11

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v5, v3, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_5
    const v0, 0x18

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aget v5, v9, v6

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    array-length v6, v6

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v4, v3, v2}, Lffj;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v4, v2, Lffj;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object v2, v4

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    :goto_11
    move v6, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    invoke-static {v9}, Ljava/util/Arrays;->sort([F)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lt v6, v2, :cond_0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/high16 v5, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_15
    check-cast v4, Liof;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move v7, v6

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_19
    if-nez v4, :cond_1

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
    goto/32 :goto_2

    nop

    nop

    :goto_1a
    check-cast v8, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    :goto_1c
    iget-object v3, v2, Lffj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1d
    cmpl-float v10, v8, v5

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1e
    if-ne v6, v8, :cond_3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v6, [F

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

    :goto_20
    invoke-virtual {v4, v2}, Liof;->aa([F)Liof;

    move-result-object v2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_21
    move-object v8, v7

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_22
    if-nez v3, :cond_4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v4, Lffj;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v9, v0, v7}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v2

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_25
    aput v8, v9, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {p0, p1}, Lfcl;-><init>(Ljava/util/List;)V

    goto/32 :goto_3d

    nop

    nop

    :goto_28
    invoke-static {v7, v0, v9, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v5, v0, v9, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_28

    nop

    nop

    :goto_2a
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2c

    nop

    nop

    :goto_2c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v3, Liof;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v10, :cond_5

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2f
    array-length v8, v8

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move v1, v0

    nop

    nop

    :goto_31
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast v2, Lffj;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-int/lit8 v7, v7, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_34
    move-object v6, v5

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_35
    if-lt v1, v2, :cond_6

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v3, v2}, Liof;->aa([F)Liof;

    move-result-object v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_2b

    nop

    :goto_38
    add-int v2, v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_39
    new-array v9, v2, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_17

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3c
    iget-object v7, v4, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    :goto_3e
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    aget v8, v9, v6

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lfay;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Lfbd;

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
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfcb;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Lfbd;-><init>(Ljava/util/List;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
