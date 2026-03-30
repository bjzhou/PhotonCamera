.class final Ltgf;
.super Ltdx;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ltdx;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Lthn;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_7

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    :goto_2
    invoke-static {p0, p1, v2, v3}, Lfey;->f(Ljava/lang/String;Lthn;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_11

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    const v1, 0x6

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x12

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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_9
    invoke-virtual {p1}, Lthn;->t()I

    move-result p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lthn;->p()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    const-string v2, "Failed parsing \'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    const-string v3, "\' as BigInteger; at path "

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

    :goto_d
    const/16 v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    throw v1

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Lthn;->j()Ljava/lang/String;

    move-result-object p0

    nop

    :try_start_0
    invoke-static {p0}, Lshf;->s(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    if-eq p0, v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v1, Ltdu;

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

    :goto_17
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v1, p0, v0}, Ltdu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method
