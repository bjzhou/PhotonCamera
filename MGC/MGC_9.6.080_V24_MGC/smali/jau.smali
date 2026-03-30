.class public final Ljau;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method public constructor <init>(ZZ)V
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

    :goto_1
    iput-boolean p2, p0, Ljau;->b:Z

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
    iput-boolean p1, p0, Ljau;->a:Z

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v1, p0, Ljau;->a:Z

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return v2

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    if-eq p0, p1, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    return v2

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean p0, p0, Ljau;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_e
    if-ne p0, p1, :cond_3

    nop

    goto/32 :goto_19

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    :goto_f
    const v0, 0x9

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    if-ne v1, v3, :cond_4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    :goto_11
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    return v0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    instance-of v1, p1, Ljau;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    iget-boolean v3, p1, Ljau;->a:Z

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

    :goto_17
    check-cast p1, Ljau;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    return v2

    nop

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-boolean p1, p1, Ljau;->b:Z

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Ljau;->a:Z

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

    :goto_3
    invoke-static {p0}, La;->o(Z)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iget-boolean p0, p0, Ljau;->b:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return v0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, La;->o(Z)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    const-string p0, ")"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_6
    const-string v1, "JupiterFlipDecision(shouldFlipWearScreenshot="

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    iget-boolean p0, p0, Ljau;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    iget-boolean v1, p0, Ljau;->a:Z

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, ", shouldFlipRearCameraDisplay="

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method
