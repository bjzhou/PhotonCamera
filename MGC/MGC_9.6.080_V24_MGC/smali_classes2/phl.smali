.class public final Lphl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lrss;

.field public final b:Lpck;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

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

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrss;Lpck;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

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
    iput-object p2, p0, Lphl;->b:Lpck;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lphl;->a:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    :goto_1
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lphl;->a:Lrss;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    iget-object p1, p1, Lphl;->b:Lpck;

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

    nop

    nop

    :goto_6
    iget-object v3, p1, Lphl;->a:Lrss;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    instance-of v1, p1, Lphl;

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

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Lpck;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    const v1, 0xd

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return v0

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p1, Lphl;

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

    :goto_11
    iget-object p0, p0, Lphl;->b:Lpck;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    if-eq p1, p0, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return v0

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

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

    :goto_16
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    const v0, 0x15

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

    :goto_19
    invoke-virtual {v1, v3}, Lrss;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_d

    nop

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

    goto/32 :goto_12

    nop

    nop

    :goto_1b
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lpck;->hashCode()I

    move-result p0

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
    const v1, 0xf4243

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

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    return p0

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

    nop

    nop

    nop

    :goto_5
    const v1, 0x7

    nop

    goto/32 :goto_2

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

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    xor-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lphl;->b:Lpck;

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

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lphl;->a:Lrss;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_c
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    xor-int/2addr p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Lrss;->hashCode()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    const-string p0, "}"

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    const-string p0, ", "

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xf

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x15

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

    nop

    :goto_12
    iget-object p0, p0, Lphl;->a:Lrss;

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

    :goto_13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    const-string v2, "{"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lphl;->b:Lpck;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method
