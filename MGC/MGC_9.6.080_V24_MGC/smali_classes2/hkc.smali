.class public final Lhkc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:F

.field private final d:Z


# direct methods
.method public constructor <init>(ZZF)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lhkc;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

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
    iput-boolean p1, p0, Lhkc;->a:Z

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

    :goto_3
    iput p3, p0, Lhkc;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean p2, p0, Lhkc;->b:Z

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

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_b

    nop

    nop

    :goto_0
    iget-boolean v1, p1, Lhkc;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-boolean v1, p0, Lhkc;->a:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
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

    :goto_3
    iget-boolean v3, p1, Lhkc;->b:Z

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

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    :goto_7
    iget-boolean v3, p1, Lhkc;->a:Z

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_8
    if-eq p0, p1, :cond_0

    nop

    goto/32 :goto_24

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return v2

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x7

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

    :goto_c
    check-cast p1, Lhkc;

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

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    iget-boolean v1, p0, Lhkc;->b:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_10
    if-ne v1, v3, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_11
    return v2

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_14
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    return v2

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-ne v1, v3, :cond_2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    iget p1, p1, Lhkc;->c:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget p0, p0, Lhkc;->c:F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    instance-of v1, p1, Lhkc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1c
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_21
    const v1, 0xa

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    :goto_23
    return v0

    nop

    :goto_24
    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    iget v1, p0, Lhkc;->c:F

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    const v1, 0x16

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    :goto_6
    invoke-static {v2}, La;->o(Z)I

    move-result p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v2, p0, Lhkc;->b:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-boolean p0, p0, Lhkc;->a:Z

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

    :goto_b
    const/4 v0, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/2addr v0, p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_16

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    :goto_f
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    invoke-static {p0}, La;->o(Z)I

    move-result p0

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

    :goto_11
    add-int/2addr v0, p0

    nop

    goto/32 :goto_f

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

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0}, La;->o(Z)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return v0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    :goto_17
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lhkc;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const-string v1, "ZoomValueFormatParams(formatWithDecimalPoint=false, isTeleEnabled="

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

    nop

    :goto_4
    sget-object v1, Lcom/google/android/build/data/ERtJ/cVlffQDuQRSSY;->zZgxuEL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
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

    nop

    :goto_6
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

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
    goto/32 :goto_16

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string p0, ")"

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-boolean v1, p0, Lhkc;->b:Z

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, ", hideDecimalPointThreshold="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    :goto_17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-boolean v1, p0, Lhkc;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

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
