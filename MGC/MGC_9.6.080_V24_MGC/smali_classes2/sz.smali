.class public final Lsz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/Map;

.field public final c:Lrh;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lsz;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p1, p0, Lsz;->c:Lrh;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lsz;->b:Ljava/util/Map;

    nop

    nop

    nop

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

    goto/32 :goto_11

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    :goto_1
    iget-object v1, p0, Lsz;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    iget-object p0, p1, Lsz;->c:Lrh;

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

    :goto_3
    check-cast p1, Lsz;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return v2

    nop

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

    :goto_6
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_7
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p1, Lsz;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_9
    if-eqz p0, :cond_2

    nop

    goto/32 :goto_17

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lsz;->b:Ljava/util/Map;

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

    :goto_b
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v3, p1, Lsz;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    return v2

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    if-eq p0, p1, :cond_4

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

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p0, 0x0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    instance-of v1, p1, Lsz;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    const v1, 0x9

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return v2

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    :goto_19
    return v0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1e
    return v2

    nop

    :goto_1f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1a

    nop

    :goto_22
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

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

    :goto_25
    invoke-static {p0, p0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

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

    nop

    :goto_1
    return v0

    nop

    nop

    :goto_2
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_3
    iget-object v0, p0, Lsz;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    iget-object p0, p0, Lsz;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/2addr v0, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "OutputConfigurations(all="

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x5

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

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lsz;->b:Ljava/util/Map;

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

    :goto_b
    iget-object v1, p0, Lsz;->a:Ljava/util/List;

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

    nop

    :goto_c
    const-string p0, ", postviewOutput=null)"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, ", deferred="

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

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
