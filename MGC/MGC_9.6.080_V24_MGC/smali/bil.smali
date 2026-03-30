.class public final Lbil;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-wide p1, p0, Lbil;->a:J

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide p7, p0, Lbil;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-wide p3, p0, Lbil;->b:J

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

    :goto_4
    iput-wide p5, p0, Lbil;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v2, v3, v4, v5}, La;->q(JJ)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2
    iget-wide v2, p0, Lbil;->d:J

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_4
    return v1

    nop

    nop

    :goto_5
    goto/32 :goto_15

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

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    return v1

    nop

    nop

    :goto_8
    goto/32 :goto_22

    nop

    nop

    :goto_9
    return v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    :goto_d
    if-eqz v2, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    goto :goto_1a

    nop

    :goto_f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x2

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

    :goto_11
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_12
    invoke-static {v2, v3, v4, v5}, La;->q(JJ)Z

    move-result v2

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

    :goto_13
    if-lez v0, :cond_2

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    :goto_14
    iget-wide p0, p1, Lbil;->d:J

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_15
    iget-wide v2, p0, Lbil;->c:J

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-wide v4, p1, Lbil;->c:J

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-wide v4, p1, Lbil;->b:J

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    check-cast p1, Lbil;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return v0

    nop

    nop

    :goto_1a
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1b
    const v0, 0xb

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

    :goto_1c
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1e
    return v1

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_28

    nop

    :goto_21
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-wide v2, p0, Lbil;->b:J

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_23
    invoke-static {v2, v3, p0, p1}, La;->q(JJ)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_24
    iget-wide v2, p0, Lbil;->a:J

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_25
    goto/32 :goto_21

    nop

    :goto_26
    iget-wide v4, p1, Lbil;->a:J

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_27
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    instance-of v2, p1, Lbil;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2b
    invoke-static {v2, v3, v4, v5}, La;->q(JJ)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez p1, :cond_5

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2d
    if-eqz v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2e
    if-eq p0, p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    add-int/2addr v0, p0

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

    :goto_3
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    invoke-static {v3, v4}, La;->r(J)I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_14

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    add-int/2addr v0, p0

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

    :goto_9
    invoke-static {v5, v6}, La;->r(J)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_b
    invoke-static {v1, v2}, La;->r(J)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    iget-wide v1, p0, Lbil;->d:J

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

    :goto_e
    iget-wide v0, p0, Lbil;->a:J

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

    :goto_f
    iget-wide v3, p0, Lbil;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v1}, La;->r(J)I

    move-result v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_d

    nop

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
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-wide v5, p0, Lbil;->b:J

    nop

    goto/32 :goto_9

    nop

    nop
.end method
