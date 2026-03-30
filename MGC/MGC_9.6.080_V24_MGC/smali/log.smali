.class public final Llog;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

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

    :goto_1
    throw p0

    nop
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Llog;->a:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-boolean p3, p0, Llog;->c:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p2, p0, Llog;->b:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v1, p1, Llog;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq p1, p0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_3
    if-eq v1, v3, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    check-cast p1, Llog;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    iget v3, p1, Llog;->b:I

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1f

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-boolean p0, p0, Llog;->c:Z

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    iget v3, p1, Llog;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean p1, p1, Llog;->c:Z

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x1

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

    :goto_13
    iget v1, p0, Llog;->a:I

    nop

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

    :goto_14
    iget v1, p0, Llog;->b:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    return v2

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_17

    nop

    :goto_19
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1b
    if-eq p0, p1, :cond_4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    if-eq v1, v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Llog;->a:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    mul-int/2addr p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0x4d5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    :goto_6
    xor-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v1, p0, Llog;->c:Z

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    const/16 v0, 0x4cf

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    const v0, 0x10

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

    nop

    :goto_b
    mul-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

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

    :goto_10
    iget p0, p0, Llog;->b:I

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

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_13
    const v2, 0xf4243

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    :goto_17
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    xor-int/2addr p0, v1

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

    :goto_19
    xor-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "{"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    iget v2, p0, Llog;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-boolean p0, p0, Llog;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    :goto_c
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    iget v1, p0, Llog;->a:I

    nop

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

    :goto_15
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_16
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string p0, "}"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_18
    const-string v1, ", "

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
.end method
