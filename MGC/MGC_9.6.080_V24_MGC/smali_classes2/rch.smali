.class public final Lrch;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field private final d:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrch;->a:Ljava/lang/String;

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

    :goto_1
    iput-object v0, p0, Lrch;->c:Ljava/util/List;

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

    :goto_2
    iput-object p2, p0, Lrch;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    sget-object v0, Ltyw;->a:Ltyw;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Lrch;->d:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    const/4 p1, 0x0

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

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    const v0, 0xc

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

    :goto_4
    return v2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eq p0, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lrch;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return v2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_13

    nop

    :goto_d
    iget-object v3, p1, Lrch;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v3, p1, Lrch;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p1, Lrch;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    instance-of v1, p1, Lrch;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return v0

    nop

    nop

    :goto_16
    goto/32 :goto_26

    nop

    nop

    :goto_17
    iget-object v1, p0, Lrch;->b:Ljava/lang/String;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return v0

    nop

    nop

    :goto_19
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

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

    :goto_1c
    return v2

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    :goto_1e
    return v2

    nop

    nop

    :goto_1f
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_20
    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p1, Lrch;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lrch;->c:Ljava/util/List;

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

    :goto_23
    iget-boolean p0, p1, Lrch;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_24
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v2, 0x0

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

    :goto_26
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit16 v0, v0, 0x4d5

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

    :goto_1
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    add-int/2addr v0, p0

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

    nop

    :goto_4
    iget-object p0, p0, Lrch;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lrch;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    const/4 p0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_18

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

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lrch;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    const-string p0, ", initiallyCollapsed=false)"

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

    nop

    :goto_6
    const-string v1, "Attribute(name="

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

    :goto_7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lrch;->a:Ljava/lang/String;

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

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    :goto_c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    :goto_e
    const v1, 0x8

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, ", value="

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    goto/32 :goto_a

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, ", attributes="

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

    :goto_17
    iget-object p0, p0, Lrch;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_18
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method
