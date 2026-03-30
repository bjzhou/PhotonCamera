.class public final Lftu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private a:Ljava/lang/Class;

.field private b:Ljava/lang/Class;

.field private c:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lftu;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p2, p0, Lftu;->b:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lftu;->c:Ljava/lang/Class;

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

    :goto_3
    iput-object p1, p0, Lftu;->a:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq p0, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p1, Lftu;->c:Ljava/lang/Class;

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

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_6
    return v1

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Lftu;->a:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_b
    return v1

    nop

    nop

    :goto_c
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_e
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

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

    goto/32 :goto_23

    nop

    nop

    :goto_11
    const v1, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lftu;->c:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Lftu;->b:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_14
    check-cast p1, Lftu;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    return v0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v3, p1, Lftu;->a:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_18

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    :goto_1e
    goto/32 :goto_4

    nop

    nop

    :goto_1f
    return v1

    nop

    nop

    :goto_20
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_21
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    :goto_22
    if-ne v2, v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_5
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_24
    iget-object v3, p1, Lftu;->b:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_25
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_26
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_27
    return v0

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz p0, :cond_6

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

    :cond_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_9
    iget-object v1, p0, Lftu;->b:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    iget-object p0, p0, Lftu;->c:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/2addr v0, v1

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

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_7

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return v0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lftu;->a:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    const-string v2, "MultiClassKey{first="

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

    :goto_4
    iget-object v0, p0, Lftu;->a:Ljava/lang/Class;

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_6
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x17

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lftu;->b:Ljava/lang/Class;

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

    :goto_c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    :goto_d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    const-string p0, "}"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_16
    const-string v0, ", second="

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
