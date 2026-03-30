.class public final Lbta;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation runtime Luax;
.end annotation


# direct methods
.method public static final a(Lbtb;II)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iget-object v0, p0, Lbtb;->c:[I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lbtb;->g:I

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

    :goto_2
    const-string v2, "Already pushed argument "

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

    :goto_3
    add-int/2addr v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4
    and-int/2addr v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    sub-int/2addr v1, p0

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

    :goto_6
    iget v0, p0, Lbtb;->g:I

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

    :goto_7
    const v0, 0x13

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lbtb;->a()Lbsv;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_c

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

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1c

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_c
    iget p0, p0, Lbsv;->b:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    iget v1, p0, Lbtb;->d:I

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

    :goto_13
    shl-int/2addr v1, p1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Lbtb;->g:I

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

    :goto_16
    aput p2, v0, v1

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

    :goto_17
    return-void

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lbtb;->a()Lbsv;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1b
    or-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1c
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

    nop

    nop

    :goto_1d
    invoke-static {v0}, Lbot;->b(Ljava/lang/String;)V

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public static final b(Lbtb;ILjava/lang/Object;)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    shl-int/2addr v1, p1

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

    nop

    :goto_2
    or-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    aput-object p2, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    sub-int/2addr v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    const v1, 0x9

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7
    iget v0, p0, Lbtb;->h:I

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

    nop

    :goto_8
    invoke-virtual {p0}, Lbtb;->a()Lbsv;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    iget v1, p0, Lbtb;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Lbtb;->h:I

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

    :goto_e
    iget p0, p0, Lbsv;->c:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Lbot;->b(Ljava/lang/String;)V

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    and-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    iput v0, p0, Lbtb;->h:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, p1}, Lbsv;->c(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lbtb;->e:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_19
    add-int/2addr v1, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1a
    const-string v2, "Already pushed argument "

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lbtb;->a()Lbsv;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

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

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    throw p0

    nop
.end method
