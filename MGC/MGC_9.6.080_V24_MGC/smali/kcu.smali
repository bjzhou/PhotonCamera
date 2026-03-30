.class public final Lkcu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lj$/util/Optional;

.field public final b:Lj$/util/Optional;

.field public final c:Lj$/util/Optional;

.field public final d:Lj$/util/Optional;

.field public final e:Lj$/util/Optional;

.field public final f:Lj$/util/Optional;

.field public final g:Lj$/util/Optional;

.field private final h:Lj$/util/Optional;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p6, p0, Lkcu;->f:Lj$/util/Optional;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iput-object p4, p0, Lkcu;->d:Lj$/util/Optional;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkcu;->a:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput-object p2, p0, Lkcu;->b:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    iput-object p8, p0, Lkcu;->g:Lj$/util/Optional;

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

    :goto_6
    iput-object p7, p0, Lkcu;->h:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p5, p0, Lkcu;->e:Lj$/util/Optional;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p3, p0, Lkcu;->c:Lj$/util/Optional;

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

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_0
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

    nop

    :goto_1
    iget-object v1, p0, Lkcu;->d:Lj$/util/Optional;

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

    :goto_2
    return v0

    nop

    nop

    :goto_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lkcu;->g:Lj$/util/Optional;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    instance-of v1, p1, Lkcu;

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

    :goto_a
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    :goto_b
    iget-object v3, p1, Lkcu;->a:Lj$/util/Optional;

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

    :goto_c
    if-nez v1, :cond_4

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

    :cond_4
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_d
    iget-object v3, p1, Lkcu;->d:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_29

    nop

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v3, p1, Lkcu;->f:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_11
    invoke-virtual {v1, v3}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    iget-object v1, p0, Lkcu;->h:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v3}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    :goto_15
    iget-object v1, p0, Lkcu;->a:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v3}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return v0

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x1

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

    :goto_1b
    invoke-virtual {v1, v3}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    if-eq p1, p0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lkcu;->f:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v1, p0, Lkcu;->b:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, p0, Lkcu;->e:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v3, p1, Lkcu;->b:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_25
    invoke-virtual {v1, v3}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v1, :cond_a

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return v2

    nop

    nop

    :goto_29
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p1, Lkcu;->g:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v3, p1, Lkcu;->h:Lj$/util/Optional;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v3, p1, Lkcu;->e:Lj$/util/Optional;

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

    :goto_2e
    iget-object v3, p1, Lkcu;->c:Lj$/util/Optional;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

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

    :goto_30
    iget-object v1, p0, Lkcu;->c:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p1, Lkcu;

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

    :goto_32
    invoke-virtual {v1, v3}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, v3}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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
    iget-object v2, p0, Lkcu;->d:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    xor-int/2addr v0, v2

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

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iget-object v2, p0, Lkcu;->b:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget-object v2, p0, Lkcu;->c:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    invoke-virtual {v2}, Lj$/util/Optional;->hashCode()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_c
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2}, Lj$/util/Optional;->hashCode()I

    move-result v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    mul-int/2addr v0, v1

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

    :goto_f
    iget-object p0, p0, Lkcu;->g:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lj$/util/Optional;->hashCode()I

    move-result p0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1b

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    xor-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_13
    const v1, 0xf4243

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_15
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

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

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_17
    iget-object v2, p0, Lkcu;->h:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lj$/util/Optional;->hashCode()I

    move-result v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    xor-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    xor-int/2addr v0, v1

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

    :goto_1b
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    invoke-virtual {v2}, Lj$/util/Optional;->hashCode()I

    move-result v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Lkcu;->e:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2}, Lj$/util/Optional;->hashCode()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1f
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    xor-int/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_21
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return p0

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2}, Lj$/util/Optional;->hashCode()I

    move-result v2

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

    :goto_25
    xor-int/2addr v0, v2

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

    :goto_26
    invoke-virtual {v2}, Lj$/util/Optional;->hashCode()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_27
    iget-object v2, p0, Lkcu;->f:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_28
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_29
    iget-object v0, p0, Lkcu;->a:Lj$/util/Optional;

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

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    iget-object v6, p0, Lkcu;->b:Lj$/util/Optional;

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

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_7
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lkcu;->a:Lj$/util/Optional;

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

    nop

    :goto_b
    iget-object v5, p0, Lkcu;->c:Lj$/util/Optional;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_d
    iget-object v4, p0, Lkcu;->d:Lj$/util/Optional;

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

    :goto_e
    return-object p0

    nop

    :goto_f
    goto/32 :goto_2d

    nop

    nop

    :goto_10
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    :goto_11
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2f

    nop

    nop

    :goto_14
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lkcu;->g:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_16
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_23

    nop

    nop

    :goto_17
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    :goto_18
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    :goto_19
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    :goto_1a
    iget-object v3, p0, Lkcu;->e:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1c
    const-string p0, "}"

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v8, "{"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1f
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_23
    const-string p0, ", "

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_24
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

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

    :goto_25
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_26
    iget-object v1, p0, Lkcu;->h:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_27
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_28
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2a
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_2b
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v2, p0, Lkcu;->f:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2e
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

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop
.end method
