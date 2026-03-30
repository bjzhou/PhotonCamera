.class public final Lqic;
.super Lqhy;
.source "PG"


# instance fields
.field final synthetic b:Lqfl;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lqfl;)V
    .locals 0

    goto/32 :goto_2

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
    invoke-direct {p0, p1}, Lqhy;-><init>(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lqic;->b:Lqfl;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final k()Lqfv;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v2, p0}, Lqib;-><init>(Lqic;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lqfv;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Lqic;->b:Lqfl;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v0, v2}, Lqfv;->a(Ljava/util/concurrent/Executor;Lqeu;)Lqfs;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    :goto_9
    invoke-virtual {v2, v0, v1}, Lqgo;->a(Ljava/util/concurrent/Executor;Lqeu;)Lqfs;

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

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lstd;->a:Lstd;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    iget-object v0, p0, Lqic;->b:Lqfl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v2, Lqib;

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

    :goto_e
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

    :goto_f
    new-instance v1, Lqew;

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

    nop

    :goto_10
    invoke-direct {v1, v0}, Lqfv;-><init>(Lqfs;)V

    goto/32 :goto_b

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_12
    goto/32 :goto_4

    nop

    :goto_13
    invoke-direct {v1}, Lqew;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, v2, Lqfl;->a:Lqgo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x20

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lqfl;->shutdown()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, p0}, Lqfv;-><init>(Lqfs;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    new-instance v1, Lqfv;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method
