.class public final Ljg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field a:I

.field b:I

.field c:[I

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(II)V
    .locals 5

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    aput p2, v1, v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v0, p0, Ljg;->d:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    new-array v1, v1, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-gez p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Ljg;->c:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2d

    nop

    :goto_9
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    const-string p1, "Pixel distance must be non-negative"

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_b
    const v0, 0x6

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

    :goto_c
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    :goto_12
    array-length v2, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_13
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_14
    iget p1, p0, Ljg;->d:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_21

    nop

    nop

    :goto_16
    iget-object v1, p0, Ljg;->c:[I

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

    :goto_17
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x4

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

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    const/4 v2, -0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1b
    throw p0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1e
    iput-object v1, p0, Ljg;->c:[I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-array v3, v3, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput p1, p0, Ljg;->d:I

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

    :goto_21
    throw p0

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    :goto_23
    const-string p1, "Layout positions must be non-negative"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_24
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-ge v0, v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int v3, v0, v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v3, p0, Ljg;->c:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

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

    nop

    nop

    :goto_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_2c
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-gez p1, :cond_4

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    :goto_2f
    aput p1, v1, v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method final b()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xc

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    return-void

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

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    :goto_5
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Ljg;->c:[I

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

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Ljg;->d:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop
.end method

.method final c(Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->W:Loxn;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Ljg;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1, p0}, Lkl;->ae(ILjg;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v2, p0, Ljg;->b:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lkq;->m()V

    :goto_7
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gt p0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v1, v0, Lkl;->x:Z

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

    :goto_a
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView;->N:Lky;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v1, p0, Ljg;->a:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput p0, v0, Lkl;->y:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    if-nez p2, :cond_4

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_14
    const v0, 0x7

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

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

    :goto_16
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Loxn;->m()Z

    move-result v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_18
    iput-boolean p2, v0, Lkl;->z:Z

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_19
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->l:Lke;

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

    nop

    :goto_1b
    if-nez v0, :cond_7

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_1f

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1, v2, v3, p0}, Lkl;->ad(IILky;Ljg;)V

    :goto_1f
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Ljg;->c:[I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :goto_22
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p1, Landroid/support/v7/widget/RecyclerView;->e:Lkq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_24
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_15

    nop

    nop

    :goto_27
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->l:Lke;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1}, Lke;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_29
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :goto_2a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget p0, p0, Ljg;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_8
    goto/32 :goto_25

    nop

    :goto_2d
    iget v1, v0, Lkl;->y:I

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

    :goto_2e
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->al()Z

    move-result v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method final d(I)Z
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Ljg;->d:I

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

    nop

    nop

    :goto_2
    const/4 p0, 0x1

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
    if-lt v2, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aget v3, v3, v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const v0, 0x1a

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    iget-object v3, p0, Ljg;->c:[I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    move v2, v1

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    :goto_d
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    return v1

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eq v3, p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_3
    goto/32 :goto_8

    nop

    :goto_14
    add-int/2addr v0, v0

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

    :goto_15
    const v1, 0xa

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    add-int/lit8 v2, v2, 0x2

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

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Ljg;->c:[I

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
