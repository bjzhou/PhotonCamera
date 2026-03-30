.class public final Lutn;
.super Lusl;
.source "PG"


# instance fields
.field protected final a:I

.field protected final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    const/4 v0, -0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput v0, p0, Lutn;->a:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0x9

    nop

    nop

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

    :goto_4
    invoke-direct {p0}, Lusl;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Lutn;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

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
    iget p0, p0, Lutn;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget p0, p0, Lutn;->a:I

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

    :goto_1
    return p0

    nop

    nop
.end method

.method public final c()Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    if-ne p0, v0, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    if-ne p0, v0, :cond_2

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

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

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

    :goto_6
    iget p0, p0, Lutn;->a:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    const/4 v0, 0x5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    const/16 v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    if-ne p0, v0, :cond_3

    nop

    goto/32 :goto_d

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-ne p0, v0, :cond_4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    const/4 v0, 0x3

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

    nop

    :goto_f
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 2

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_10

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    const-string v1, ", Retryable="

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lutn;->c()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    const-string v1, ", ErrorCode="

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

    :goto_c
    invoke-super {p0}, Lusl;->getMessage()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    iget v1, p0, Lutn;->b:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v1, p0, Lutn;->b:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    :goto_12
    const v1, 0xf

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

    :goto_13
    iget v1, p0, Lutn;->a:I

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

    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    :goto_1a
    const-string v1, ", InternalErrorCode="

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method
