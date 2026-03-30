.class public final synthetic Lmcs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmdk;

.field public final synthetic b:Lpnu;


# direct methods
.method public synthetic constructor <init>(Lmdk;Lpnu;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmcs;->a:Lmdk;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lmcs;->b:Lpnu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 3

    goto/32 :goto_14

    nop

    nop

    :goto_0
    new-instance v1, Lmdc;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, v1}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Lmdk;->h(Lmdi;)V

    :goto_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lmcs;->b:Lpnu;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, p0, v2}, Lmcr;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_a
    iput-object p0, v0, Lmdk;->s:Lpnu;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, v0}, Lmdc;-><init>(Lmdk;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0}, Lpnu;->l()Lpog;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x6

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lmcs;->a:Lmdk;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Lmdk;->h(Lmdi;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    iput-object v1, v0, Lmdk;->r:Lpog;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    new-instance v1, Lmcr;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v2, v0, Lmdk;->r:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method
