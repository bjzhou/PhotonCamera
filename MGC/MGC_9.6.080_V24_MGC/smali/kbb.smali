.class public final Lkbb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpnx;

.field public final b:Lpog;

.field public final c:Lpck;

.field public final d:Lnjf;

.field public final e:Z

.field private final f:Lpby;


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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop
.end method

.method public constructor <init>(Lpnx;Lpog;Lpby;Lpck;Lnjf;Z)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lkbb;->d:Lnjf;

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
    iput-object p1, p0, Lkbb;->a:Lpnx;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-boolean p6, p0, Lkbb;->e:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lkbb;->f:Lpby;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lkbb;->b:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iput-object p4, p0, Lkbb;->c:Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lkbb;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lkbb;->f:Lpby;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    const v0, 0x9

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

    :goto_3
    iget-object v3, p1, Lkbb;->c:Lpck;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lkbb;->c:Lpck;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v3, p1, Lkbb;->d:Lnjf;

    nop

    nop

    nop

    goto/32 :goto_15

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

    goto/32 :goto_23

    nop

    nop

    :goto_7
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    :goto_8
    if-eq p1, p0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eq p0, p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    :goto_a
    invoke-virtual {v1, v3}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lkbb;->d:Lnjf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return v0

    nop

    nop

    :goto_f
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    iget-boolean p1, p1, Lkbb;->e:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lkbb;->b:Lpog;

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

    :goto_13
    iget-object v3, p1, Lkbb;->b:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v3}, Lpby;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    :goto_18
    iget-object v3, p1, Lkbb;->f:Lpby;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    iget-boolean p0, p0, Lkbb;->e:Z

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1b
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    instance-of v1, p1, Lkbb;

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

    :goto_1d
    return v0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v3}, Lpck;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, Lkbb;->a:Lpnx;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_c

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_25
    const/4 v0, 0x1

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

    :goto_26
    iget-object v3, p1, Lkbb;->a:Lpnx;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_27
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return v2

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v3}, Lpnx;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lkbb;->a:Lpnx;

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

    :goto_1
    xor-int/2addr p0, v0

    nop

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

    nop

    :goto_2
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const v1, 0xe

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

    :goto_5
    xor-int/2addr v0, v1

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
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_7
    const/16 p0, 0x4d5

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

    nop

    :goto_8
    iget-object v2, p0, Lkbb;->f:Lpby;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_9
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    xor-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Lkbb;->b:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_e
    if-ne v2, p0, :cond_0

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_13

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 p0, 0x4cf

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_15
    iget-boolean p0, p0, Lkbb;->e:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    return p0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v2}, Lpog;->hashCode()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_19
    iget v0, v0, Lpnx;->b:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1b
    xor-int/2addr v0, v2

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

    :goto_1c
    const v1, 0xf4243

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    :goto_1e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

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

    :goto_20
    iget-object v2, p0, Lkbb;->c:Lpck;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2}, Lpby;->hashCode()I

    move-result v2

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

    :goto_22
    iget-object v2, p0, Lkbb;->d:Lnjf;

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

    :goto_23
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_25
    xor-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

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

    :goto_27
    invoke-virtual {v2}, Lpck;->hashCode()I

    move-result v2

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v4, ", "

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lkbb;->d:Lnjf;

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

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1e

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    iget-object v1, p0, Lkbb;->c:Lpck;

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

    :goto_6
    iget-object v2, p0, Lkbb;->f:Lpby;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    const-string v6, "{"

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_11
    iget-boolean p0, p0, Lkbb;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_12
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    :goto_13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    const-string p0, "}"

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

    :goto_15
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v3, p0, Lkbb;->b:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_17
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

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

    nop

    nop

    :goto_19
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_22
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

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

    :goto_23
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    :goto_25
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    :goto_26
    iget-object v4, p0, Lkbb;->a:Lpnx;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop
.end method
