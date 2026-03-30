.class public final synthetic Lnrx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpsa;


# instance fields
.field public final synthetic a:Lnrz;

.field public final synthetic b:Lpsa;


# direct methods
.method public synthetic constructor <init>(Lnrz;Lpsa;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnrx;->a:Lnrz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lnrx;->b:Lpsa;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method public final dQ()V
    .locals 4

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v0, Lnrz;->b:Lnrv;

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
    invoke-interface {v1}, Lnrv;->k()Z

    move-result v1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lpol;->l()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v2, v1}, Lpol;-><init>(Lprw;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_14

    nop

    :goto_5
    goto/32 :goto_24

    nop

    nop

    :goto_6
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_14

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2}, Lpol;->k()Lprw;

    move-result-object v3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v1, v3}, Lnrv;->h(Lprw;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_e
    iget-object v1, v0, Lnrz;->a:Lpsb;

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

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    new-instance v2, Lpol;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, v0, Lnrz;->c:Lscn;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    invoke-interface {v1}, Lpsb;->f()Lprw;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    :goto_15
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v0, Lpol;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    iget-object v0, p0, Lnrx;->a:Lnrz;

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

    :goto_18
    iget-object p0, p0, Lnrx;->b:Lpsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p0}, Lpsa;->dQ()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, v0, Lnrz;->b:Lnrv;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lscn;->e()V

    goto/32 :goto_7

    nop

    nop

    :goto_1d
    const v1, 0x1

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1e
    iget-object v0, v0, Lnrz;->c:Lscn;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1f
    return-void

    nop

    :goto_20
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x7

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v0, "Never null: The ref-count of the image is always non-zero."

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_23
    if-nez v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p0, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v2}, Lscn;->c(Ljava/lang/AutoCloseable;)Ljava/lang/AutoCloseable;

    move-result-object v0

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

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_27
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
