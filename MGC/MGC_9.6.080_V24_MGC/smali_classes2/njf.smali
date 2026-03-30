.class public final Lnjf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpog;

.field public final b:Lpck;

.field public final c:Lpby;

.field public final d:Lrss;


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

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpog;Lpck;Lpby;Lrss;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lnjf;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lnjf;->c:Lpby;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lnjf;->b:Lpck;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lnjf;->a:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static a(Lpog;Lpck;Lpby;)Lnjf;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lnjf;->b(Lpog;Lpck;Lpby;Lrss;)Lnjf;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_0

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
.end method

.method public static b(Lpog;Lpck;Lpby;Lrss;)Lnjf;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    :goto_2
    new-instance v0, Lnjf;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, p1, p2, p3}, Lnjf;-><init>(Lpog;Lpck;Lpby;Lrss;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object v3, p1, Lnjf;->b:Lpck;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    :goto_5
    iget-object v1, p0, Lnjf;->a:Lpog;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_7
    if-eq p1, p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    :goto_8
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lnjf;->d:Lrss;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v3, p1, Lnjf;->c:Lpby;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    iget-object p1, p1, Lnjf;->d:Lrss;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p0, :cond_2

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

    :cond_2
    goto/32 :goto_3

    nop

    nop

    :goto_d
    iget-object v3, p1, Lnjf;->a:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    if-nez v1, :cond_3

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    :goto_10
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    return v2

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Lnjf;->b:Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v3}, Lpby;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_15
    check-cast p1, Lnjf;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v3}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    nop

    :goto_17
    instance-of v1, p1, Lnjf;

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

    :goto_18
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Lnjf;->c:Lpby;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p1}, Lrss;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1b
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v3}, Lpck;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return v0

    nop

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    :goto_20
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lpog;->hashCode()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    iget-object v2, p0, Lnjf;->b:Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    invoke-virtual {p0}, Lrss;->hashCode()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    invoke-virtual {v2}, Lpby;->hashCode()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xc

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xf4243

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lnjf;->a:Lpog;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2}, Lpck;->hashCode()I

    move-result v2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lnjf;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    const v0, 0xb

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

    :goto_e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_13

    nop

    :goto_f
    xor-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Lnjf;->c:Lpby;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    xor-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    xor-int/2addr p0, v0

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

    :goto_19
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lnjf;->d:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_b
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    :goto_c
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_d
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Lnjf;->b:Lpck;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lnjf;->c:Lpby;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    :goto_13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_14
    const-string p0, "}"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_15
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    :goto_18
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lnjf;->a:Lpog;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x18

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    const-string p0, ", "

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    :goto_1f
    const-string v4, "{"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
