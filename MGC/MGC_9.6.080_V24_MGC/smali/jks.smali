.class final Ljks;
.super Landroid/os/CountDownTimer;
.source "PG"


# instance fields
.field final synthetic a:F

.field final synthetic b:Ljkt;


# direct methods
.method public constructor <init>(Ljkt;JJF)V
    .locals 0

    goto/32 :goto_3

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
    iput-object p1, p0, Ljks;->b:Ljkt;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput p6, p0, Ljks;->a:F

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
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ljks;->b:Ljkt;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iget-object v0, p0, Ljks;->b:Ljkt;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Ljkt;->a:Ljku;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Ljku;->n:Lngo;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljks;->cancel()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Lngo;->v()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iget-object v0, v0, Ljkt;->a:Ljku;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    invoke-interface {v0}, Lklr;->b()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, v0, Ljku;->F:Lklr;

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final onTick(J)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p2}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, p0, p1}, Lklr;->c(FLj$/time/Duration;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Ljku;->F:Lklr;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Ljks;->b:Ljkt;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    invoke-interface {v2, v0, v1}, Lnsr;->A(J)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, p2}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v2, v2, Ljkt;->a:Ljku;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Ljks;->b:Ljkt;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_13
    iget p0, p0, Ljks;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    iget-object v2, v2, Ljku;->D:Lnsr;

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

    nop

    :goto_15
    iget-object v0, v0, Ljkt;->a:Ljku;

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
