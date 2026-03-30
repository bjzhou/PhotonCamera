.class final Ljkq;
.super Lngv;
.source "PG"


# instance fields
.field final synthetic a:Lkkm;

.field final synthetic b:Ljku;


# direct methods
.method public constructor <init>(Ljku;Lkkm;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lngv;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p2, p0, Ljkq;->a:Lkkm;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ljkq;->b:Ljku;

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
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_16

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Ljkq;->a:Lkkm;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Llyi;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_6
    iget-object v1, v0, Ljku;->aa:Lkbf;

    nop

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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Ljkq;->b:Ljku;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Ljku;->g(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, v0, Llyi;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljku;->E()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lmkn;->f()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljku;->F()Z

    move-result v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Ljku;->k:Loyn;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    :goto_14
    iget-object v0, p0, Ljkq;->b:Ljku;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lnee;->g()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, v0, Ljku;->R:Lmkn;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_20

    nop

    :goto_1d
    goto/32 :goto_11

    nop

    nop

    :goto_1e
    if-gtz v0, :cond_3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lggo;->n()V

    :goto_20
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    :goto_22
    iget-object v0, p0, Ljkq;->b:Ljku;

    nop

    goto/32 :goto_1b

    nop

    nop
.end method

.method public final c()V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lghe;->j()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljku;->W:Ljhy;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ljhy;->K:Lghe;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-object p0, p0, Ljkq;->b:Ljku;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lmkn;->e()V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljhy;->K:Lghe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    iget-object v0, p0, Ljkq;->b:Ljku;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Ljku;->R:Lmkn;

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

    :goto_4
    iget-object p0, p0, Ljku;->W:Ljhy;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ljkq;->b:Ljku;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lghe;->h()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method
