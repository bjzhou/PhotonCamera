.class public Ltji;
.super Ltjh;
.source "PG"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ltji;->a:[B

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ltjh;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public a(I)B
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Ltji;->a:[B

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
    return p0

    nop

    :goto_2
    aget-byte p0, p0, p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public b(I)B
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget-byte p0, p0, p1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Ltji;->a:[B

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop
.end method

.method protected c()I
    .locals 0

    goto/32 :goto_1

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
    const/4 p0, 0x0

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
.end method

.method public d()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget-object p0, p0, Ltji;->a:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    array-length p0, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected e([BIII)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ltji;->a:[B

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
    invoke-static {p0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_27

    nop

    nop

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Ltjj;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

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

    :goto_3
    return p0

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    if-eq p1, p0, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v1, p1, Ltjj;->c:I

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v3, Ltjj;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v3}, Ltjj;->d()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ltji;->d()I

    move-result v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1, v2, v0}, Ltji;->g(Ltjj;II)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    instance-of v1, p1, Ltjj;

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

    :goto_12
    return v2

    nop

    nop

    :goto_13
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v1, :cond_2

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

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    instance-of v0, p1, Ltji;

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

    :goto_16
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_19
    return v2

    nop

    :goto_1a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne v0, v1, :cond_3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    :goto_1c
    if-lez v0, :cond_4

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    :goto_1d
    return v0

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v1, v3, :cond_5

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_6

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

    :cond_6
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Ltji;->d()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v1, :cond_7

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_7
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_24
    move-object v3, p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x17

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

    :goto_28
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_29
    check-cast p1, Ltji;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2a
    return v0

    nop

    nop

    :goto_2b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Ltji;->d()I

    move-result v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Ltjj;II)Z
    .locals 4

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    :goto_1
    add-int/2addr v3, p3

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/2addr p1, p2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ltji;->c()I

    move-result v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ltjj;->d()I

    move-result v1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_9
    check-cast p1, Ltji;

    nop

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

    :goto_a
    return v2

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

    nop

    :goto_c
    add-int/lit8 p0, p0, 0x1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, p0}, Ltjj;->equals(Ljava/lang/Object;)Z

    move-result p0

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

    :goto_e
    new-instance p2, Ljava/lang/StringBuilder;

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

    :goto_f
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_11
    if-ne p2, p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-le p3, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    :goto_13
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ltji;->c()I

    move-result p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    aget-byte p3, v1, p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    const-string p2, ", "

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

    :goto_1a
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Ltjj;->d()I

    move-result p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1d
    const-string v0, "Length too large: "

    nop

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

    :goto_1e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v1, "Ran off end of other: "

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_21
    const v0, 0x8

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

    :goto_22
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_23
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Ltji;->d()I

    move-result p0

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

    :goto_25
    iget-object v1, p1, Ltji;->a:[B

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

    :goto_26
    if-lt p0, v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_27
    throw p1

    nop

    nop

    :goto_28
    goto/32 :goto_23

    nop

    nop

    :goto_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Ltji;->a:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2c
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    instance-of v1, p1, Ltji;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    :goto_30
    invoke-virtual {p1}, Ltjj;->d()I

    move-result v0

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

    :goto_31
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_33
    add-int v0, p2, p3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0, v2, p3}, Ltji;->j(II)Ltjj;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, p2, v0}, Ltjj;->j(II)Ltjj;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_37
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_38
    if-le v0, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    return p0

    nop

    nop

    :goto_3c
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3d
    return p0

    nop

    nop

    :goto_3e
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    aget-byte p2, v0, p0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_40
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_39

    nop

    :goto_41
    invoke-virtual {p0}, Ltji;->c()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_14

    nop

    nop
.end method

.method protected final i(III)I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v0, p2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ltji;->c()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ltji;->a:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, p0, v0, p3}, Ltkw;->a(I[BII)I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(II)Ltjj;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    add-int/2addr p0, p1

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

    :goto_1
    iget-object v0, p0, Ltji;->a:[B

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    :goto_4
    goto/32 :goto_12

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    sget-object p0, Ltjj;->b:Ltjj;

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

    :goto_7
    if-eqz p2, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ltji;->d()I

    move-result v0

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

    nop

    :goto_a
    invoke-virtual {p0}, Ltji;->c()I

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x6

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

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_e
    new-instance v1, Ltjf;

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

    :goto_f
    invoke-static {p1, p2, v0}, Ltji;->l(III)I

    move-result p2

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

    :goto_10
    invoke-direct {v1, v0, p0, p2}, Ltjf;-><init>([BII)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object v1

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(Ltjc;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0, v1, p0}, Ltjc;->a([BII)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ltji;->c()I

    move-result v1

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

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ltji;->d()I

    move-result p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Ltji;->a:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    const v1, 0x16

    nop

    goto/32 :goto_5

    nop

    nop
.end method
