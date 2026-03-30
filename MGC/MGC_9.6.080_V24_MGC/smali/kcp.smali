.class public final Lkcp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lj$/util/Optional;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Lj$/util/Optional;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkcp;->a:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkcp;->a:Lj$/util/Optional;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    instance-of v0, p1, Lkcp;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p0

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

    nop

    :goto_3
    check-cast p1, Lkcp;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p1, Lkcp;->a:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    if-eq p1, p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    xor-int/2addr p0, v0

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
    iget-object p0, p0, Lkcp;->a:Lj$/util/Optional;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lj$/util/Optional;->hashCode()I

    move-result p0

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
    const v0, 0xf4243

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const-string p0, "}"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

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

    :goto_2
    goto/32 :goto_a

    nop

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    nop

    :goto_8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    :goto_d
    iget-object p0, p0, Lkcp;->a:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, "{"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method
