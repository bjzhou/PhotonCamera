.class public final Ltg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:I

.field public final f:Ljava/util/Map;

.field public final g:Lsp;


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Lsp;Ljava/util/Map;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p3, p0, Ltg;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p5, p0, Ltg;->g:Lsp;

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Ltg;->d:Ljava/util/concurrent/Executor;

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

    :goto_6
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Ltg;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Ltg;->a:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    iput-object p6, p0, Ltg;->f:Ljava/util/Map;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput p1, p0, Ltg;->e:I

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
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v1, :cond_0

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

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    :goto_7
    if-eqz p0, :cond_1

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

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

    :goto_9
    const v1, 0xf

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

    :goto_a
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return v2

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_25

    nop

    nop

    :goto_10
    iget-object v3, p1, Ltg;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_13
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_15
    iget v1, p1, Ltg;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v3, p1, Ltg;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v1, :cond_2

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

    nop

    nop

    nop

    :goto_18
    instance-of v1, p1, Ltg;

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

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1a
    return v2

    nop

    nop

    :goto_1b
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return v2

    nop

    :goto_1d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Ltg;->c:Ljava/util/List;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    :goto_21
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, Ltg;->g:Lsp;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_23
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v3, p1, Ltg;->c:Ljava/util/List;

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

    :goto_25
    iget-object v1, p0, Ltg;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_26
    if-eq p0, p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_27
    return v2

    nop

    nop

    :goto_28
    goto/32 :goto_1e

    nop

    nop

    :goto_29
    iget-object p0, p0, Ltg;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2a
    if-ne v1, v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_7
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v1, :cond_8

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_36

    nop

    nop

    :goto_2c
    iget-object v3, p1, Ltg;->g:Lsp;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2d
    iget v3, p1, Ltg;->a:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p0, Ltg;->b:Ljava/util/List;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2f
    iget v1, p0, Ltg;->a:I

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast p1, Ltg;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_c

    nop

    :goto_32
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2e

    nop

    nop

    :goto_34
    iget-object p1, p1, Ltg;->f:Ljava/util/Map;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_35
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_36
    return v2

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_12

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    add-int/2addr v1, p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    iget-object p0, p0, Ltg;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-int/lit8 v1, v1, 0x1f

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Ltg;->d:Ljava/util/concurrent/Executor;

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

    :goto_6
    const v1, 0xb

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    add-int/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Ltg;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    :goto_b
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    iget v1, p0, Ltg;->a:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    mul-int/lit8 v1, v1, 0x1f

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    const v0, 0x1f

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Ltg;->g:Lsp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    add-int/2addr v1, v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    add-int/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_16
    add-int/2addr v1, v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_18
    mul-int/lit8 v1, v1, 0x1f

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

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_24

    nop

    nop

    :goto_1b
    mul-int/lit8 v1, v1, 0x1f

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

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_20
    mul-int/lit8 v1, v1, 0x1f

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

    :goto_21
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_22
    mul-int/lit8 v1, v1, 0x1f

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Ltg;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Ltg;->c:Ljava/util/List;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, ", executor="

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "SessionConfigData(sessionType="

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, ", outputConfigurations="

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, ", inputConfiguration="

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

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1b

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xc

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Ltg;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Ltg;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, p0, Ltg;->a:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_16
    iget-object v1, p0, Ltg;->g:Lsp;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, ", stateCallback="

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1a
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

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v1, ", sessionTemplateId=1, sessionParameters="

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_23
    const/16 p0, 0x29

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

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, p0, Ltg;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method
