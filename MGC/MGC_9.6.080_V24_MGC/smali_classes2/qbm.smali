.class public final Lqbm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lsqw;

.field public final b:Lsqp;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lsqw;Lsqp;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lqbm;->b:Lsqp;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

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
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p1, p0, Lqbm;->a:Lsqw;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Lqbm;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Ltkg;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    const v0, 0x3

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

    :goto_b
    if-nez v1, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x1

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

    :goto_d
    if-nez v1, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    :goto_f
    iget-object p0, p0, Lqbm;->b:Lsqp;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    instance-of v1, p1, Lqbm;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p1, Lqbm;->b:Lsqp;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    iget-object v1, p0, Lqbm;->a:Lsqw;

    nop

    nop

    nop

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

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    :goto_19
    invoke-virtual {v1, v3}, Ltkg;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v3, p1, Lqbm;->a:Lsqw;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq p1, p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1
    goto/16 :goto_18

    nop

    nop

    :goto_2
    goto/32 :goto_27

    nop

    nop

    :goto_3
    const v1, 0xf4243

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

    :goto_4
    move p0, v1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Ltkg;->aT:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1d

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ltkg;->j()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    iput v1, v0, Ltkg;->aT:I

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ltkg;->j()I

    move-result v0

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

    :goto_d
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v1

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

    :goto_12
    xor-int/2addr v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    :goto_17
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_24

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Ltkg;->j()I

    move-result p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0xb

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1c

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Ltkg;->j()I

    move-result v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    iput v1, p0, Ltkg;->aT:I

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_21
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_23
    iget-object v0, p0, Lqbm;->a:Lsqw;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lqbm;->b:Lsqp;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_26
    xor-int/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v1, v0, Ltkg;->aT:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lqbm;->b:Lsqp;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    const-string p0, ", "

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lqbm;->a:Lsqw;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x11

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

    :goto_8
    const-string v2, "{"

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

    :goto_9
    rem-int v0, v0, v1

    nop

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

    :goto_a
    return-object p0

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    const-string p0, "}"

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
