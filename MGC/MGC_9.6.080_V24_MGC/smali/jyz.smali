.class public final Ljyz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(IFF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Ljyz;->b:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Ljyz;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput p3, p0, Ljyz;->c:F

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static a(Lhxs;)Ljyz;
    .locals 4

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move v0, v3

    nop

    :goto_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6
    invoke-virtual {p0, v3}, Lhxs;->a(I)F

    move-result p0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    const v1, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    if-eq v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_b
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v3}, Lhxs;->a(I)F

    move-result v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    :goto_10
    goto/32 :goto_1c

    nop

    nop

    :goto_11
    array-length v0, v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljyz;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x3

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
    const/4 v3, 0x2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    invoke-direct {v0, v1, v2, p0}, Ljyz;-><init>(IFF)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v2}, Lhxs;->a(I)F

    move-result v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    float-to-int v1, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    :goto_19
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

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

    :goto_1c
    iget-object v0, p0, Lhxs;->a:[F

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

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget v3, p1, Ljyz;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    iget v3, p1, Ljyz;->b:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v1, v3, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    instance-of v1, p1, Ljyz;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

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

    :goto_a
    const/4 v2, 0x0

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

    :goto_b
    return v0

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    :goto_d
    iget v1, p0, Ljyz;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    return v2

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

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

    nop

    :goto_11
    iget p0, p0, Ljyz;->c:F

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_13
    if-nez v1, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    :goto_14
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget p1, p1, Ljyz;->c:F

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

    :goto_18
    if-eq v1, v3, :cond_2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    if-eq p1, p0, :cond_3

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

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq p0, p1, :cond_4

    nop

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

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Ljyz;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_5
    goto/32 :goto_2

    nop

    :goto_1e
    const/4 v0, 0x1

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

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v1, p0, Ljyz;->b:F

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_11

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_1
    iget p0, p0, Ljyz;->c:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Ljyz;->a:I

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

    :goto_3
    mul-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    xor-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v2, 0xf4243

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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    xor-int/2addr v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    mul-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    :goto_11
    const v0, 0xa

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

    :goto_12
    iget v1, p0, Ljyz;->b:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xa

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    xor-int/2addr p0, v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const-string v1, "{"

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x13

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Ljyz;->c:F

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v1, p0, Ljyz;->a:I

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

    :goto_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v2, p0, Ljyz;->b:F

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

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

    :goto_e
    const-string v1, ", "

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    const-string p0, "}"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    :goto_12
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_18
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
