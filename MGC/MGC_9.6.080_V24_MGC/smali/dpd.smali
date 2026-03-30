.class final Ldpd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldpb;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:Ldpw;


# direct methods
.method public constructor <init>(FFLdpw;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Ldpd;->b:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Ldpd;->a:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Ldpd;->c:Ldpw;

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

    nop

    nop
.end method


# virtual methods
.method public final b()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget p0, p0, Ldpd;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final c()F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Ldpd;->b:F

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
.end method

.method public final synthetic cp(F)J
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide p0

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Ldpa;->g(Ldpb;F)J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final cr(J)F
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    return p0

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Ldpd;->c:Ldpw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    invoke-interface {p0, p1}, Ldpw;->b(F)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1, v2, v3}, La;->q(JJ)Z

    move-result v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    invoke-static {p1, p2}, Ldps;->a(J)F

    move-result p1

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

    :goto_e
    if-nez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_10
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string p1, "Only Sp can convert to Px"

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    invoke-static {p1, p2}, Ldps;->c(J)J

    move-result-wide v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    const-wide v2, 0x100000000L

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final synthetic cs(F)F
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

    :goto_1
    invoke-static {p0, p1}, Ldpa;->a(Ldpb;F)F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final synthetic ct(I)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Ldpa;->b(Ldpb;I)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final synthetic cu(J)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, Ldpa;->c(Ldpb;J)F

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final synthetic cv(F)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ldpa;->d(Ldpb;F)F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop
.end method

.method public final synthetic cw(F)I
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
    invoke-static {p0, p1}, Ldpa;->e(Ldpb;F)I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final synthetic cx(J)J
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, Ldpa;->f(Ldpb;J)J

    move-result-wide p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-wide p0

    nop
.end method

.method public final cy(F)J
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldpd;->c:Ldpw;

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

    :goto_1
    return-wide p0

    nop

    nop

    :goto_2
    invoke-static {p0}, Ldpt;->c(F)J

    move-result-wide p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Ldpw;->a(F)F

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Ldpd;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1
    return v2

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    :goto_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Ldpd;->a:F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    iget v3, p1, Ldpd;->a:F

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Ldpd;->c:Ldpw;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return v2

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p1, Ldpd;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz p0, :cond_3

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

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_4
    goto/32 :goto_3

    nop

    :goto_15
    invoke-static {p0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    :goto_17
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return v0

    nop

    nop

    :goto_19
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v3, p1, Ldpd;->b:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    instance-of v1, p1, Ldpd;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1d
    return v2

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x1

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

    :goto_20
    if-eq p0, p1, :cond_5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_21
    iget-object p1, p1, Ldpd;->c:Ldpw;

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

    :goto_22
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_23
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_25
    add-int v0, v0, v1

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
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    :goto_5
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_7
    const v1, 0x1c

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    :goto_a
    iget v1, p0, Ldpd;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_2

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

    goto/32 :goto_11

    nop

    nop

    :goto_e
    const v0, 0x1d

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Ldpd;->a:F

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

    :goto_10
    iget-object p0, p0, Ldpd;->c:Ldpw;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr v0, v1

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

    nop

    nop

    :goto_12
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v1, p0, Ldpd;->a:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 p0, 0x29

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Ldpd;->c:Ldpw;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, ", fontScale="

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, ", converter="

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

    :goto_11
    iget v1, p0, Ldpd;->b:F

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

    :goto_12
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_14
    const-string v1, "DensityWithConverter(density="

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_19

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method
