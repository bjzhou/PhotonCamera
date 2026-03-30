.class public abstract Lcgb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcgb;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    :goto_6
    iput p4, p0, Lcgb;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string p1, "The name of a color space cannot be null and must contain at least 1 character"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-wide p2, p0, Lcgb;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method


# virtual methods
.method public abstract a(I)F
.end method

.method public abstract b(I)F
.end method

.method public c(FFF)F
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public d(FFF)J
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

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

    nop
.end method

.method public e(FFFFLcgb;)J
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

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v1, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    check-cast p1, Lcgb;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    iget-object v2, p1, Lcgb;->a:Ljava/lang/String;

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

    :goto_c
    iget v1, p0, Lcgb;->c:I

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

    :goto_d
    return p0

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    if-eq p0, p1, :cond_2

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_13
    return v0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Lcgb;->a:Ljava/lang/String;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    iget v2, p1, Lcgb;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_19
    return v0

    nop

    nop

    :goto_1a
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    iget-wide v0, p0, Lcgb;->b:J

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-ne v1, v2, :cond_3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    :goto_1d
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1b

    nop

    nop

    :goto_21
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_22
    iget-wide p0, p1, Lcgb;->b:J

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

    :goto_23
    invoke-static {v0, v1, p0, p1}, La;->q(JJ)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_24
    if-ne v1, v2, :cond_4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p1, :cond_5

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

    :cond_5
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public f()Z
    .locals 0

    goto/32 :goto_0

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
    return p0

    nop

    nop

    nop

    nop
.end method

.method public hashCode()I
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    add-int/2addr v0, p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    long-to-int v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    iget-wide v1, p0, Lcgb;->b:J

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const-wide/16 v3, 0x3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x7

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_b
    xor-long/2addr v1, v3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcgb;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_14

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

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

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

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    iget p0, p0, Lcgb;->c:I

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_12

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    :goto_1
    const-string v1, ", model="

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v1, p0, Lcgb;->c:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_e
    const v1, 0xf

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    :goto_10
    const/16 p0, 0x29

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

    :goto_11
    invoke-static {v1, v2}, Lcga;->a(J)Ljava/lang/String;

    move-result-object p0

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

    :goto_12
    const v0, 0xc

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    :goto_14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Lcgb;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-wide v1, p0, Lcgb;->b:J

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, " (id="

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method
