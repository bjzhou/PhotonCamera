.class public abstract Luhj;
.super Lufp;
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

    :goto_1
    invoke-direct {p0}, Lufp;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final e()Ljava/lang/String;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-object v1

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Luge;->a:Lufp;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_6
    const-string p0, "Dispatchers.Main"

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

    :goto_7
    return-object p0

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    const v1, 0x12

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
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    if-eq p0, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    const-string p0, "Dispatchers.Main.immediate"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v0, Lunp;->a:Luhj;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    move-object v0, v1

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0}, Luhj;->i()Luhj;

    move-result-object v0

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_15

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eq p0, v0, :cond_2

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

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    goto :goto_f

    nop

    nop

    :catch_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public abstract i()Luhj;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    const-string v0, "@"

    nop

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

    :goto_2
    const v1, 0x11

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

    :goto_3
    const v0, 0xa

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

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lufv;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_8

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    :goto_10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Lufv;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Luhj;->e()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method
