.class final Lbdk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lahq;


# instance fields
.field public final a:J

.field private final b:Z

.field private final c:F

.field private final d:Lceo;


# direct methods
.method public constructor <init>(ZFJ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lbdk;->d:Lceo;

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
    iput-boolean p1, p0, Lbdk;->b:Z

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

    :goto_3
    iput-wide p3, p0, Lbdk;->a:J

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

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput p2, p0, Lbdk;->c:F

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lanz;)Lcrw;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    :goto_0
    new-instance v0, Lbdj;

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

    :goto_1
    invoke-direct {v0, p0}, Lbdj;-><init>(Lbdk;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x16

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    return-object v2

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

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

    :goto_a
    invoke-direct {v2, p1, v1, p0, v0}, Lbbr;-><init>(Lanz;ZFLceo;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    new-instance v2, Lbbr;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    iget-boolean v1, p0, Lbdk;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    :goto_f
    iget p0, p0, Lbdk;->c:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic b(Lblm;)Lahk;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p1}, Lahi;->a(Lblm;)Lahk;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_21

    nop

    nop

    :goto_3
    return v1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v0, p0, Lbdk;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_6
    invoke-static {v0, v1, p0, p1}, La;->q(JJ)Z

    move-result p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    if-ne v0, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    iget v2, p1, Lbdk;->c:F

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

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
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_10
    instance-of v0, p1, Lbdk;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    invoke-static {v0, v2}, Ldpe;->b(FF)Z

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    :goto_13
    iget-boolean v2, p1, Lbdk;->b:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return v1

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_3

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

    :goto_17
    check-cast p1, Lbdk;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    if-eq p0, p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    :goto_1a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return p0

    nop

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    :goto_1e
    return v1

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_20
    iget-boolean v0, p0, Lbdk;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_21
    iget v0, p0, Lbdk;->c:F

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_22
    iget-wide p0, p1, Lbdk;->a:J

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v0, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_24
    const/4 v0, 0x0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_25
    iget-object v0, p1, Lbdk;->d:Lceo;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x18

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

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v2}, La;->r(J)I

    move-result p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, La;->o(Z)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    const v0, 0x8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v1, p0, Lbdk;->c:F

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

    :goto_8
    iget-wide v1, p0, Lbdk;->a:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    mul-int/lit16 v0, v0, 0x3c1

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

    nop

    :goto_a
    iget-boolean v0, p0, Lbdk;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    add-int/2addr v0, p0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_d
    return v0

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method
