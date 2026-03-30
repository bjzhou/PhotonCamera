.class public final Locj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/net/URI;

.field public final b:Lryt;

.field public final c:Locf;

.field public final d:I

.field public final e:Lobz;

.field public final f:Lram;

.field public final g:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/net/URI;Lryt;Locf;Landroidx/wear/ambient/AmbientMode$AmbientController;Lram;ILobz;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Locj;->g:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Locj;->b:Lryt;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Locj;->c:Locf;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Locj;->f:Lram;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p7, p0, Locj;->e:Lobz;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    iput p6, p0, Locj;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Locj;->a:Ljava/net/URI;

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
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_3
    iget-object v1, p0, Locj;->a:Ljava/net/URI;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    if-nez v1, :cond_2

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

    :cond_2
    :goto_6
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    :goto_8
    iget-object v1, p1, Locj;->g:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p1, Locj;->e:Lobz;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v3, p1, Locj;->f:Lram;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    iget-object p1, p1, Locj;->e:Lobz;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v3, p1, Locj;->a:Ljava/net/URI;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v3}, Lram;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    :goto_11
    if-eq v1, v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_38

    nop

    nop

    :goto_12
    return v0

    nop

    nop

    :goto_13
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v3}, Lryt;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, p0, Locj;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_16
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p1, Locj;

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

    :goto_18
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_19
    instance-of v1, p1, Locj;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v3, p1, Locj;->d:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return v0

    nop

    :goto_1c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz p0, :cond_7

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

    :cond_7
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v3, p1, Locj;->g:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1f
    if-nez v1, :cond_8

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_8
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_9

    nop

    goto/32 :goto_13

    nop

    :cond_9
    goto/32 :goto_25

    nop

    nop

    :goto_21
    if-nez v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_24
    iget-object v1, p0, Locj;->b:Lryt;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_25
    iget-object v1, p0, Locj;->g:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_26
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_27
    iget-object v1, p0, Locj;->f:Lram;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_28
    const v0, 0x16

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_6

    nop

    :goto_2a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1, v3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_2c
    iget-object v3, p1, Locj;->c:Locf;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2d
    return v2

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Locj;->c:Locf;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_31
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_32
    if-eqz p0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2e

    nop

    nop

    :goto_34
    goto/32 :goto_26

    nop

    nop

    :goto_35
    iget-object v3, p1, Locj;->b:Lryt;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_36
    if-eq p1, p0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v1, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p0, p0, Locj;->e:Lobz;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1, v3}, Landroidx/wear/ambient/AmbientMode$AmbientController;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_3a
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 4

    goto/32 :goto_27

    nop

    nop

    :goto_0
    iget-object v2, p0, Locj;->g:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    xor-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Locj;->a:Ljava/net/URI;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Locj;->c:Locf;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_5
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_7
    invoke-virtual {v2}, Lryt;->hashCode()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    :goto_9
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_a
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    nop

    nop

    goto/32 :goto_20

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

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move v2, v3

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

    :goto_f
    mul-int/2addr v0, v1

    nop

    nop

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v3, 0x0

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

    :goto_14
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_26

    nop

    nop

    :goto_17
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    xor-int p0, v0, v3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    xor-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x1

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

    :goto_1d
    iget-object v2, p0, Locj;->f:Lram;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Locj;->e:Lobz;

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

    :goto_1f
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0xf4243

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    mul-int/2addr p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_24
    iget-object v2, p0, Locj;->b:Lryt;

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

    :goto_25
    invoke-virtual {v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->hashCode()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_27
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x22cd8cdb

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_29
    iget v2, p0, Locj;->d:I

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

    nop

    :goto_2a
    if-eqz p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2b
    xor-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2c
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_19

    nop

    :goto_2e
    invoke-virtual {v2}, Lram;->hashCode()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2f
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_30
    xor-int/2addr v0, v1

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

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Locj;->e:Lobz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    :goto_a
    const-string v7, "{"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    :goto_10
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_13
    return-object p0

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    :goto_15
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v5, p0, Locj;->a:Ljava/net/URI;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v4, p0, Locj;->b:Lryt;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Locj;->f:Lram;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1a

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

    :goto_1b
    goto/32 :goto_e

    nop

    :goto_1c
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    :goto_1d
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v6, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_20
    iget-object v2, p0, Locj;->g:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    iget-object v3, p0, Locj;->c:Locf;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_24
    const-string v5, ", "

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

    :goto_25
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_27
    const-string p0, ", null, null, null}"

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

    :goto_28
    iget p0, p0, Locj;->d:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop
.end method
