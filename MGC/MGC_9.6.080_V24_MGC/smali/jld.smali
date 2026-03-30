.class final Ljld;
.super Lngv;
.source "PG"


# instance fields
.field final synthetic a:Ljli;


# direct methods
.method public constructor <init>(Ljli;)V
    .locals 0

    goto/32 :goto_2

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
    invoke-direct {p0}, Lngv;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ljld;->a:Ljli;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ljld;->a:Ljli;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_5
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p0, v2, Lmwy;->o:Lmxc;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    :goto_9
    iget-object p0, v1, Ljkx;->b:Lmwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Ljli;->k:Ljkx;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Lmwy;->c(I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    :goto_12
    iget-object v0, p0, Ljli;->d:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    iput-boolean v1, v0, Ljkx;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x6

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    if-gtz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v1, :cond_3

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

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lggo;->n()V

    goto/32 :goto_10

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Ljli;->d()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, v0, Llyi;->h:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    const v1, 0x13

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

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1e
    iget-object v2, v1, Ljkx;->b:Lmwy;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1f
    check-cast v0, Llyi;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-boolean v1, v0, Ljkx;->f:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Ljli;->k:Ljkx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Ljli;->e()Z

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

    nop

    :goto_23
    return-void

    nop

    nop

    :goto_24
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop
.end method
