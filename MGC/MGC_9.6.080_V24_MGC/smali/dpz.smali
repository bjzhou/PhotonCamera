.class public final Ldpz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldpw;


# instance fields
.field private final a:[F

.field private final b:[F


# direct methods
.method public constructor <init>([F[F)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ldpz;->b:[F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xa

    nop

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

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    iput-object p1, p0, Ldpz;->a:[F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    array-length v0, p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x19

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    :goto_e
    const-string p1, "Array lengths must match and be nonzero"

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    if-eq v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

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

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    array-length v1, p2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(F)F
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ldpz;->a:[F

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

    :goto_2
    invoke-static {p1, v0, p0}, Ldpy;->a(F[F[F)F

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Ldpz;->b:[F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final b(F)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ldpz;->a:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldpz;->b:[F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-static {p1, v0, p0}, Ldpy;->a(F[F[F)F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Ldpz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    :goto_7
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Ldpz;->a:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    if-eq p0, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    if-eqz v2, :cond_2

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

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return v1

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return v1

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    iget-object p0, p0, Ldpz;->b:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz p1, :cond_3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    return v0

    nop

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    :goto_17
    instance-of v2, p1, Ldpz;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    :goto_19
    const/4 v0, 0x1

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

    :goto_1a
    iget-object p1, p1, Ldpz;->b:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1c
    iget-object v3, p1, Ldpz;->a:[F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    return v1

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

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

    :goto_1
    iget-object p0, p0, Ldpz;->b:[F

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
    return v0

    nop

    nop

    nop

    nop

    :goto_3
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_4
    iget-object v0, p0, Ldpz;->a:[F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    add-int/2addr v0, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const-string v1, ", toDpValues="

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

    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "FontScaleConverter{fromSpValues="

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

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

    nop

    :goto_c
    iget-object v1, p0, Ldpz;->a:[F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Ldpz;->b:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    rem-int v0, v0, v1

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

    nop

    :goto_10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    const v1, 0x1c

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

    :goto_18
    const/16 p0, 0x7d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method
