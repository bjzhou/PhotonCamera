.class public final Lnbs;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lnbr;

.field public final b:Lnbp;

.field public final c:Lncb;

.field public final d:Lnca;


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

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Lnbr;Lnbp;Lncb;Lnca;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lnbs;->c:Lncb;

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

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lnbs;->b:Lnbp;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iput-object p1, p0, Lnbs;->a:Lnbr;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iput-object p4, p0, Lnbs;->d:Lnca;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lnbs;->a:Lnbr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    :goto_5
    iget-object v1, p0, Lnbs;->c:Lncb;

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

    :goto_6
    const/4 v2, 0x0

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

    :goto_7
    iget-object v3, p1, Lnbs;->c:Lncb;

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

    :goto_8
    iget-object v1, p1, Lnbs;->c:Lncb;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Lnbs;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    :goto_d
    return v0

    nop

    :goto_e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lnbs;->d:Lnca;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_10
    iget-object p0, p1, Lnbs;->d:Lnca;

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

    :goto_11
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_12
    if-nez v1, :cond_2

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

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_e

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    instance-of v1, p1, Lnbs;

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

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1c
    return v2

    nop

    nop

    :goto_1d
    goto/32 :goto_20

    nop

    nop

    :goto_1e
    const/4 v0, 0x1

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

    :goto_1f
    if-eqz p0, :cond_6

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_27

    nop

    nop

    :goto_21
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p1, Lnbs;->d:Lnca;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_23
    if-eq p1, p0, :cond_7

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

    :cond_7
    goto/32 :goto_b

    nop

    nop

    :goto_24
    if-nez v1, :cond_8

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_8
    :goto_25
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x4

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

    nop

    :goto_29
    iget-object v1, p0, Lnbs;->b:Lnbp;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v3, p1, Lnbs;->a:Lnbr;

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

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_17

    nop

    :goto_2e
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2f
    if-eqz p0, :cond_a

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v3, p1, Lnbs;->b:Lnbp;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop
.end method

.method public final hashCode()I
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lnbs;->a:Lnbr;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    move v2, v3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_b
    if-eqz p0, :cond_1

    nop

    goto/32 :goto_21

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_c
    xor-int p0, v0, v3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    xor-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    xor-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    xor-int/2addr v0, v2

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

    :goto_12
    iget-object p0, p0, Lnbs;->d:Lnca;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x1d

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

    :goto_16
    mul-int/2addr v0, v1

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

    nop

    nop

    :goto_17
    iget-object v2, p0, Lnbs;->b:Lnbp;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    iget-object v2, p0, Lnbs;->c:Lncb;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_19
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    const v1, 0xf4243

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1c
    if-eqz v2, :cond_2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_14

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_13

    nop

    nop

    :goto_1f
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_0

    nop

    nop

    :goto_22
    const v1, 0x15

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

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

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    :goto_3
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    :goto_5
    iget-object v2, p0, Lnbs;->b:Lnbp;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    const v1, 0x19

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    const v0, 0x16

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    :goto_f
    const-string p0, "}"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    const-string v4, "{"

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    const-string p0, ", "

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
    iget-object v0, p0, Lnbs;->d:Lnca;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_16
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lnbs;->a:Lnbr;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lnbs;->c:Lncb;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop
.end method
