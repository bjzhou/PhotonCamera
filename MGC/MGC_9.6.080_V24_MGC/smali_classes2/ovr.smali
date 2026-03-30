.class final Lovr;
.super Lovq;
.source "PG"


# direct methods
.method public constructor <init>(Loia;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1}, Lovq;-><init>(Loia;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Lotw;)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1}, Lolx;->bq(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

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

    :goto_1
    new-instance v0, Lotd;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    invoke-direct {v2, p1}, Lotc;-><init>(Losa;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

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

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
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

    nop

    :goto_b
    iget-object p1, p1, Lotw;->b:Lotf;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_11

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v1, p1, Lotw;->a:I

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

    :goto_f
    const v1, 0x1a

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    move-object p1, v2

    nop

    nop

    :goto_11
    goto/32 :goto_17

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v2, Lotc;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v0}, Lovq;->e(Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0, v1, p1}, Lotd;-><init>(Lcom/google/android/gms/common/api/Status;Losa;)V

    goto/32 :goto_16

    nop

    nop
.end method
