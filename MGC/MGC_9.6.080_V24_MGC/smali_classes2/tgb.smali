.class final Ltgb;
.super Ltdx;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    invoke-direct {p0}, Ltdx;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Lthn;)Ljava/lang/Object;
    .locals 9

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "Expected a long but was "

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

    :goto_1
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

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    :goto_3
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    if-eq v0, v2, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lthn;->p()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v0, 0xb

    nop

    nop

    :try_start_0
    iput v0, p1, Lthn;->c:I

    nop

    iget-object v0, p1, Lthn;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    nop

    nop

    nop

    double-to-long v5, v2

    nop

    nop

    nop

    nop

    long-to-double v7, v5

    nop

    cmpl-double v0, v7, v2

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    iput-object v1, p1, Lthn;->f:Ljava/lang/String;

    nop

    nop

    nop

    iput v4, p1, Lthn;->c:I

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p1, Lthn;->h:[I

    nop

    iget p1, p1, Lthn;->g:I

    nop

    nop

    nop

    nop

    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    aget v0, p0, p1

    nop

    nop

    add-int/lit8 v0, v0, 0x1

    nop

    aput v0, p0, p1

    nop

    nop

    nop

    move-wide p0, v5

    nop

    nop

    :goto_a
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    :goto_b
    return-object v1

    nop

    nop

    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    nop

    nop

    nop

    iget-object v1, p1, Lthn;->f:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {p1}, Lthn;->g()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_b

    nop

    nop

    :goto_d
    :try_start_1
    iget v0, p1, Lthn;->c:I

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lthn;->b()I

    move-result v0

    nop

    nop

    nop

    :cond_2
    const/16 v3, 0xf

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    if-ne v0, v3, :cond_3

    nop

    iput v4, p1, Lthn;->c:I

    nop

    nop

    nop

    iget-object p0, p1, Lthn;->h:[I

    nop

    iget v0, p1, Lthn;->g:I

    nop

    add-int/lit8 v0, v0, -0x1

    nop

    nop

    aget v1, p0, v0

    nop

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    aput v1, p0, v0

    nop

    nop

    nop

    iget-wide p0, p1, Lthn;->d:J

    nop

    nop

    nop

    nop

    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    const/16 v3, 0x10

    nop

    nop

    nop

    if-ne v0, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p1, Lthn;->a:[C

    nop

    nop

    nop

    new-instance v2, Ljava/lang/String;

    nop

    nop

    iget v3, p1, Lthn;->b:I

    nop

    nop

    iget v5, p1, Lthn;->e:I

    nop

    nop

    invoke-direct {v2, v0, v3, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, p1, Lthn;->f:Ljava/lang/String;

    nop

    nop

    add-int/2addr v3, v5

    nop

    iput v3, p1, Lthn;->b:I

    nop

    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :cond_4
    const/16 v3, 0xa

    nop

    nop

    const/16 v5, 0x8

    nop

    if-eq v0, v5, :cond_6

    nop

    nop

    if-eq v0, v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v3, :cond_5

    nop

    goto :goto_e

    nop

    :cond_5
    const-string p0, "a long"

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p0}, Lthn;->d(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    throw p0

    nop

    nop

    nop

    nop

    :cond_6
    :goto_e
    if-ne v0, v3, :cond_7

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lthn;->k()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    iput-object v0, p1, Lthn;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    :cond_7
    if-ne v0, v5, :cond_8

    nop

    const/16 v0, 0x27

    nop

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    :cond_8
    const/16 v0, 0x22

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0}, Lthn;->i(C)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p1, Lthn;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_10
    :try_start_2
    iget-object v0, p1, Lthn;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    nop

    nop

    nop

    iput v4, p1, Lthn;->c:I

    nop

    nop

    nop

    nop

    iget-object v0, p1, Lthn;->h:[I

    nop

    nop

    nop

    nop

    nop

    iget v5, p1, Lthn;->g:I

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v5, v5, -0x1

    nop

    nop

    aget v6, v0, v5

    nop

    nop

    nop

    nop

    add-int/lit8 v6, v6, 0x1

    nop

    nop

    aput v6, v0, v5

    nop
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    invoke-direct {p1, p0}, Ltdu;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_4

    nop

    nop

    :goto_12
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_15

    nop

    :goto_13
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :catch_1
    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    :goto_17
    const/16 v2, 0x9

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_18
    const v0, 0x7

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

    :goto_19
    move-wide p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Lthn;->t()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1c
    new-instance p1, Ltdu;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method
