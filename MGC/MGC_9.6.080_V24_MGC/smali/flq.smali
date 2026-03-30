.class public final Lflq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjl;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/Class;

.field private final f:Ljava/lang/Class;

.field private final g:Lfjl;

.field private final h:Ljava/util/Map;

.field private final i:Lfjp;

.field private j:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lfjl;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lfjp;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p6, p1}, Lfsh;->q(Ljava/lang/Object;Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, "Resource class must not be null"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {p2, p1}, Lfsh;->q(Ljava/lang/Object;Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lflq;->b:Ljava/lang/Object;

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

    :goto_5
    const-string p1, "Signature must not be null"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p6, p0, Lflq;->e:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Lflq;->g:Lfjl;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    iput p3, p0, Lflq;->c:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    :goto_b
    iput-object p8, p0, Lflq;->i:Lfjp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    invoke-static {p5}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    iput-object p7, p0, Lflq;->f:Ljava/lang/Class;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    iput-object p5, p0, Lflq;->h:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    invoke-static {p8}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput p4, p0, Lflq;->d:I

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
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p1, Lflq;->h:Ljava/util/Map;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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
    if-nez v0, :cond_0

    nop

    goto/32 :goto_2b

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2d

    nop

    nop

    :goto_4
    goto/32 :goto_24

    nop

    nop

    :goto_5
    iget-object p1, p1, Lflq;->i:Lfjp;

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_8
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lflq;->f:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lflq;->g:Lfjl;

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

    :goto_b
    invoke-virtual {p0, p1}, Lfjp;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lflq;->b:Ljava/lang/Object;

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

    :goto_d
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x6

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

    :goto_f
    iget-object v2, p1, Lflq;->g:Lfjl;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_13
    iget v2, p1, Lflq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lflq;->e:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_16
    if-eq v0, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    :goto_17
    iget-object v0, p0, Lflq;->h:Ljava/util/Map;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_4

    nop

    nop

    :goto_19
    if-eq v0, v2, :cond_6

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

    :cond_6
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

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

    :goto_1b
    iget-object v2, p1, Lflq;->f:Ljava/lang/Class;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_1d
    invoke-interface {v0, v2}, Lfjl;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1e
    iget v2, p1, Lflq;->d:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lflq;->i:Lfjp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    nop

    :goto_21
    if-nez v0, :cond_7

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_a

    nop

    nop

    :goto_22
    iget-object v2, p1, Lflq;->e:Ljava/lang/Class;

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

    :goto_23
    iget v0, p0, Lflq;->d:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_24
    instance-of v0, p1, Lflq;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_25
    if-nez p0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_8
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_26
    iget v0, p0, Lflq;->c:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x8

    nop

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

    :goto_28
    check-cast p1, Lflq;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_9

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2a
    return p0

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return v1

    nop

    :goto_2d
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2e
    iget-object v2, p1, Lflq;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1
    iput v0, p0, Lflq;->j:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lflq;->g:Lfjl;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Lflq;->j:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    add-int/2addr v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Lflq;->j:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_a
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    :goto_b
    iget-object v1, p0, Lflq;->h:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_d
    iget v1, p0, Lflq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_f
    iput v0, p0, Lflq;->j:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    :goto_12
    iput v0, p0, Lflq;->j:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    add-int/2addr v0, v1

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
    iput v0, p0, Lflq;->j:I

    nop

    nop

    :goto_15
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1a
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1c
    return v0

    nop

    nop

    :goto_1d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1e
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v1, p0, Lflq;->f:Ljava/lang/Class;

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
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1}, Lfjp;->hashCode()I

    move-result v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_24
    invoke-interface {v1}, Lfjl;->hashCode()I

    move-result v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_25
    add-int/2addr v0, v1

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

    :goto_26
    iget v1, p0, Lflq;->d:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_28
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_29
    iget v0, p0, Lflq;->j:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2a
    iget-object v1, p0, Lflq;->i:Lfjp;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lflq;->e:Ljava/lang/Class;

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
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lflq;->b:Ljava/lang/Object;

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

    :goto_2e
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    const-string p0, ", transcodeClass="

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v4, p0, Lflq;->e:Ljava/lang/Class;

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

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    const-string p0, "}"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    const-string p0, ", hashCode="

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_b
    const-string p0, ", signature="

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v7, Ljava/lang/StringBuilder;

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

    :goto_d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    :goto_f
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

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

    nop

    :goto_11
    return-object p0

    nop

    nop

    :goto_12
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_14
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    :goto_17
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_18
    iget-object v2, p0, Lflq;->g:Lfjl;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget p0, p0, Lflq;->d:I

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1a
    iget v6, p0, Lflq;->j:I

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

    :goto_1b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    :goto_1c
    const-string p0, ", transformations="

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v5, ", height="

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v8, "EngineKey{model="

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1f
    iget-object v5, p0, Lflq;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_17

    nop

    nop

    :goto_21
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    :goto_22
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_26
    const-string p0, ", options="

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v1, p0, Lflq;->h:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    :goto_2b
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v3, p0, Lflq;->f:Ljava/lang/Class;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lflq;->i:Lfjp;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

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

    :goto_33
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_34
    const-string v5, ", width="

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_35
    const-string p0, ", resourceClass="

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    :goto_37
    iget v5, p0, Lflq;->c:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop
.end method
