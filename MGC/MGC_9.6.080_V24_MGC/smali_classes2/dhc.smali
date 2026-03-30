.class public final Ldhc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Ldhc;-><init>(Ljava/lang/Object;II[B)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;II[B)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Ldhc;->c:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    const-string p1, "Reversed range is not supported"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Ldhc;->d:Ljava/lang/String;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-le p2, p3, :cond_0

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

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    :goto_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput p2, p0, Ldhc;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Ldhc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

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
    return v2

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return v2

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    :goto_4
    iget-object v1, p0, Ldhc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v2

    nop

    :goto_6
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    :goto_a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x5

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

    nop

    :goto_c
    return v0

    nop

    nop

    :goto_d
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v3, p1, Ldhc;->c:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    return v2

    nop

    :goto_10
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    return v2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    if-ne v1, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Ldhc;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    return v0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1a
    iget v1, p0, Ldhc;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1b
    if-ne v1, v3, :cond_3

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    :goto_1d
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p1, Ldhc;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v3, p1, Ldhc;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_21
    iget v1, p0, Ldhc;->b:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v3, p1, Ldhc;->b:I

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

    :goto_23
    rem-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_24
    invoke-static {p0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_25
    instance-of v1, p1, Ldhc;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_26
    check-cast p1, Ldhc;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_a

    nop

    :goto_28
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_5
    goto/32 :goto_9

    nop

    :goto_29
    if-eq p0, p1, :cond_6

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_6
    goto/32 :goto_18

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v0, v2

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

    :goto_1
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_9

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

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    iget-object v1, p0, Ldhc;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    add-int/2addr v0, p0

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

    :goto_b
    iget v2, p0, Ldhc;->b:I

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

    :goto_c
    goto/32 :goto_14

    nop

    :goto_d
    const v0, 0x19

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

    :goto_e
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    mul-int/lit8 v0, v0, 0x1f

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

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Ldhc;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    iget p0, p0, Ldhc;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    add-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    return-object p0

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
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, ", tag="

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    const/16 p0, 0x29

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Ldhc;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    const v1, 0x12

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    iget v1, p0, Ldhc;->b:I

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

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    const-string v1, ", start="

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    :goto_11
    const-string v1, ", end="

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Lcom/google/android/apps/camera/imax/cyclops/processing/jQJ/fbmdK;->QLraYPJPX:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x1a

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

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    goto/32 :goto_1e

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    iget v1, p0, Ldhc;->c:I

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

    :goto_1b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_1c
    iget-object v1, p0, Ldhc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1

    nop

    nop

    :goto_1e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
