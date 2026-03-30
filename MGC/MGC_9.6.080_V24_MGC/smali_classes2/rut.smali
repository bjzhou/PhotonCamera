.class abstract Lrut;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Map$Entry;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lrut;->getValue()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_8
    invoke-virtual {p0}, Lrut;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    instance-of v0, p1, Ljava/util/Map$Entry;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    return v1

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, v2}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    :goto_14
    invoke-static {p0, p1}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public abstract getKey()Ljava/lang/Object;
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_18

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_7
    goto :goto_d

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lrut;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lrut;->getValue()Ljava/lang/Object;

    move-result-object p0

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

    :goto_14
    move v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    xor-int p0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

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

    :goto_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

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

    nop

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    :goto_4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lrut;->getKey()Ljava/lang/Object;

    move-result-object v0

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

    :goto_7
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    :goto_a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x14

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

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
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    const-string v0, "="

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lrut;->getValue()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop
.end method
