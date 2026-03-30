.class public final Lszc;
.super Lszo;
.source "PG"


# instance fields
.field public final a:Lj$/time/Instant;

.field public final b:Lj$/util/Optional;

.field public final c:Z

.field public final d:Z

.field private volatile transient e:Z

.field private volatile transient f:Z


# direct methods
.method public constructor <init>(Lj$/time/Instant;Lj$/util/Optional;ZZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lszo;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p1, p0, Lszc;->a:Lj$/time/Instant;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lszc;->b:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-boolean p3, p0, Lszc;->c:Z

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

    :goto_5
    iput-boolean p4, p0, Lszc;->d:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lj$/time/Instant;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Lszc;->a:Lj$/time/Instant;

    nop

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
.end method

.method public final b()Lj$/util/Optional;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lszc;->b:Lj$/util/Optional;

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
.end method

.method public final c()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lszc;->c:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public final d()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lszc;->d:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    check-cast p1, Lszo;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    :goto_3
    iget-boolean p0, p0, Lszc;->d:Z

    nop

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

    :goto_4
    if-nez v1, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v1, p0, Lszc;->c:Z

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lszo;->b()Lj$/util/Optional;

    move-result-object v3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_c
    if-eq p1, p0, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    :goto_d
    iget-object v1, p0, Lszc;->b:Lj$/util/Optional;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lszo;->a()Lj$/time/Instant;

    move-result-object v3

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

    :goto_f
    if-eq p0, v1, :cond_3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_10
    return v0

    nop

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    return v2

    nop

    nop

    :goto_13
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_14
    if-eq v1, v3, :cond_4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v3}, Lj$/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Lszo;->c()Z

    move-result v3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x15

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lszc;->a:Lj$/time/Instant;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v3}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Lszo;->e()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Lszo;->d()Z

    move-result v1

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

    :goto_20
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_6
    goto/32 :goto_1

    nop

    :goto_21
    instance-of v1, p1, Lszo;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lszc;->f:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lszc;->b:Lj$/util/Optional;

    nop

    nop

    nop

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    const/4 v0, 0x0

    nop

    nop

    nop

    iput-boolean v0, p0, Lszc;->e:Z

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lszc;->f:Z

    nop

    nop

    :cond_0
    monitor-exit p0

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Lszc;->f:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const/16 v4, 0x4d5

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lj$/time/Instant;->hashCode()I

    move-result v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    move v2, v4

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

    :goto_3
    xor-int p0, v0, v3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    xor-int/2addr p0, v4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5
    xor-int/2addr v0, v2

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

    :goto_6
    mul-int/2addr p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x5

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

    :goto_a
    if-ne v5, p0, :cond_0

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

    nop

    nop

    :goto_b
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    const v1, 0xf4243

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    if-ne v5, v2, :cond_1

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    mul-int/2addr v0, v1

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

    :goto_13
    move v3, v4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v2, p0, Lszc;->b:Lj$/util/Optional;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Lj$/util/Optional;->hashCode()I

    move-result v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-boolean p0, p0, Lszc;->d:Z

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    return p0

    nop

    :goto_1a
    goto/32 :goto_10

    nop

    nop

    :goto_1b
    move v2, v3

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 v3, 0x4cf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lszc;->a:Lj$/time/Instant;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-boolean v2, p0, Lszc;->c:Z

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

    :goto_20
    xor-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_22
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_23
    xor-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_25
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    const v1, 0x1b

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-boolean p0, p0, Lszc;->d:Z

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v3, "{"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lszc;->c:Z

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lszc;->b:Lj$/util/Optional;

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

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    :goto_d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    iget-object v1, p0, Lszc;->a:Lj$/time/Instant;

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

    :goto_13
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

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

    :goto_15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    const-string v1, ", "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    const-string p0, ", false}"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

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

    :goto_1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
