.class public final Licd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:J

.field public final b:F

.field public final c:Lrss;

.field public final d:F

.field private final e:Lrss;


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

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(JLrss;FLrss;F)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput-object p5, p0, Licd;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-wide p1, p0, Licd;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput p6, p0, Licd;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-object p3, p0, Licd;->e:Lrss;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput p4, p0, Licd;->b:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a()Licc;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/16 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    new-instance v0, Licc;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    invoke-virtual {v0, v1}, Licc;->b(F)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

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
    const/4 v1, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v1, v0, Licc;->a:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Licc;->c(F)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    :goto_e
    invoke-direct {v0, v1}, Licc;-><init>([B)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

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

    :goto_10
    sget-object v1, Lrsa;->a:Lrsa;

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

    :goto_11
    sget-object v2, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    iput-object v2, v0, Licc;->b:Lrss;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1, v2}, Licc;->d(J)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    return-object v0

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    return v2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v3}, Lrss;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v1, p0, Licd;->b:F

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

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b
    iget-wide v3, p0, Licd;->a:J

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    iget p0, p0, Licd;->d:F

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

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq v1, v3, :cond_0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_f
    check-cast p1, Licd;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Licd;->e:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    iget p1, p1, Licd;->d:F

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

    :goto_13
    iget-object v3, p1, Licd;->c:Lrss;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    iget-object v3, p1, Licd;->e:Lrss;

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

    :goto_16
    if-eq p1, p0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eq p0, p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_4

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

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_5

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    instance-of v1, p1, Licd;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    iget-wide v5, p1, Licd;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v3}, Lrss;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1f
    const v0, 0x10

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

    nop

    :goto_20
    cmp-long v1, v3, v5

    nop

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

    :goto_21
    const v1, 0x11

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5

    nop

    :goto_23
    iget-object v1, p0, Licd;->c:Lrss;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v3, p1, Licd;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_25
    return v0

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_28
    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    xor-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Licd;->c:Lrss;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Licd;->e:Lrss;

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

    :goto_3
    xor-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Licd;->b:F

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    const v2, 0xf4243

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    mul-int/2addr v0, v2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xa

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    xor-int/2addr v0, v1

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

    :goto_a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    long-to-int v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    iget p0, p0, Licd;->d:F

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    :goto_f
    invoke-virtual {v1}, Lrss;->hashCode()I

    move-result v1

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

    :goto_10
    const v1, 0xf

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

    nop

    :goto_11
    invoke-virtual {v1}, Lrss;->hashCode()I

    move-result v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    mul-int/2addr v0, v2

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

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_14
    xor-long/2addr v0, v2

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_15
    const/16 v2, 0x20

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    ushr-long v2, v0, v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_18
    iget-wide v0, p0, Licd;->a:J

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
    mul-int/2addr v0, v2

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

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    xor-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    mul-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1d
    xor-int/2addr v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1f
    return p0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_e

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    iget-object v1, p0, Licd;->e:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Licd;->b:F

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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
    goto/32 :goto_b

    nop

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    :goto_c
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_e
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    const-string v3, ", "

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    const-string v3, "{"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x7

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    :goto_16
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    iget p0, p0, Licd;->d:F

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    const-string p0, "}"

    nop

    nop

    goto/32 :goto_15

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

    nop

    nop

    :goto_1a
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-wide v3, p0, Licd;->a:J

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Licd;->c:Lrss;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    :goto_1e
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method
