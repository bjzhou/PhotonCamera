.class final Lhqp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Llxo;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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
.end method

.method public constructor <init>(Llxo;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lhqp;->a:Llxo;

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

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    check-cast p1, Lhqp;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    iget-object p1, p1, Lhqp;->a:Llxo;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    instance-of v0, p1, Lhqp;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    iget-object p0, p0, Lhqp;->a:Llxo;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    if-eq p1, p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

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
    invoke-virtual {p0, p1}, Llxo;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    xor-int/2addr p0, v0

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
    iget-object p0, p0, Lhqp;->a:Llxo;

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

    :goto_2
    invoke-virtual {p0}, Llxo;->hashCode()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xf4243

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return p0

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    const v1, 0x16

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const-string v1, "{"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    const-string p0, "}"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lhqp;->a:Llxo;

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

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_a
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    :goto_11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method
