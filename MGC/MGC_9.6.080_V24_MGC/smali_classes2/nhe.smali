.class public final Lnhe;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:F

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:Lakz;


# direct methods
.method public constructor <init>(FJJJLakz;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lnhe;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iput-object p8, p0, Lnhe;->e:Lakz;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide p6, p0, Lnhe;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput-wide p4, p0, Lnhe;->c:J

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

    :goto_5
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide p2, p0, Lnhe;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    return-void

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v5, p1, Lnhe;->d:J

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

    nop

    :goto_2
    const v1, 0x16

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

    :goto_3
    invoke-static {v3, v4, v5, v6}, La;->q(JJ)Z

    move-result v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget v1, p0, Lnhe;->a:F

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

    :goto_5
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eq p0, p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_24

    nop

    :goto_8
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    instance-of v1, p1, Lnhe;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_a
    iget-wide v5, p1, Lnhe;->b:J

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    :goto_d
    return v2

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    :goto_f
    iget-object p1, p1, Lnhe;->e:Lakz;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    iget v3, p1, Lnhe;->a:F

    nop

    goto/32 :goto_12

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

    goto/32 :goto_2a

    nop

    nop

    :goto_12
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

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

    :goto_13
    iget-wide v3, p0, Lnhe;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_14
    return v2

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-wide v3, p0, Lnhe;->b:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return v2

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    :goto_19
    return v2

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1c
    if-ne p0, p1, :cond_5

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v3, v4, v5, v6}, La;->q(JJ)Z

    move-result v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1e
    return v0

    nop

    :goto_1f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return v2

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_6

    nop

    goto/32 :goto_8

    nop

    :cond_6
    goto/32 :goto_7

    nop

    :goto_23
    return v0

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return v2

    nop

    :goto_26
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v3, v4, v5, v6}, La;->q(JJ)Z

    move-result v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Lnhe;->e:Lakz;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast p1, Lnhe;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

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

    :goto_2b
    if-eqz v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v2, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2d
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2e
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2f
    iget-wide v3, p0, Lnhe;->d:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-wide v5, p1, Lnhe;->c:J

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
.end method

.method public final hashCode()I
    .locals 5

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    add-int/2addr v0, v1

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

    :goto_2
    goto/32 :goto_f

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-static {v3, v4}, La;->r(J)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Lnhe;->a:F

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    add-int/2addr v0, p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/2addr v0, v3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    :goto_b
    iget-wide v3, p0, Lnhe;->b:J

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

    nop

    :goto_c
    invoke-virtual {v1}, Lakz;->hashCode()I

    move-result p0

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

    nop

    :goto_d
    iget-object v1, p0, Lnhe;->e:Lakz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    return v0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    iget-wide v2, p0, Lnhe;->d:J

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

    :goto_11
    invoke-static {v1, v2}, La;->r(J)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_13
    iget-wide v1, p0, Lnhe;->c:J

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    add-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

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

    :goto_16
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    invoke-static {v2, v3}, La;->r(J)I

    move-result p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_18
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

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

    nop

    nop

    :goto_1a
    const v0, 0x6

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

    :goto_1b
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide v0, p0, Lnhe;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3
    invoke-static {v4, v5}, Lcel;->g(J)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    const v1, 0xf

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

    nop

    :goto_7
    iget-object p0, p0, Lnhe;->e:Lakz;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    :goto_9
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

    :goto_a
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

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

    :goto_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, ", orientation="

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

    :goto_e
    const-string p0, ")"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    :goto_10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_33

    nop

    nop

    :goto_13
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    :goto_14
    const-string v0, "DpSize.Unspecified"

    nop

    :goto_15
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v0, ", selectedIconColor="

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_17
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    const-string v5, "SelectedBackgroundSpec(iconPxIncrement="

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    :goto_1b
    const-string v0, ", selectedBackgroundColor="

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1e
    cmp-long v2, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_20
    invoke-static {v3}, Ldpe;->a(F)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0, v1}, Ldpg;->a(J)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_22
    invoke-static {v0}, Ldpe;->a(F)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v1, p0, Lnhe;->a:F

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

    nop

    :goto_24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_25
    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

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

    :goto_27
    if-nez v2, :cond_1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-wide v2, p0, Lnhe;->c:J

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v1, ", size="

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-wide v4, p0, Lnhe;->d:J

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2e
    invoke-static {v2, v3}, Lcel;->g(J)Ljava/lang/String;

    move-result-object v2

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

    :goto_2f
    invoke-static {v0, v1}, Ldpg;->b(J)F

    move-result v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_30
    const-string v3, " x "

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_34
    new-instance v4, Ljava/lang/StringBuilder;

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

    :goto_35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method
