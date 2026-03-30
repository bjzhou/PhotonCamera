.class public final synthetic Lmps;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhal;


# instance fields
.field public final synthetic a:Lmpw;

.field public final synthetic b:Loyn;

.field public final synthetic c:Lmyj;


# direct methods
.method public synthetic constructor <init>(Lmpw;Loyn;Lmyj;)V
    .locals 0

    goto/32 :goto_3

    nop

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
    iput-object p2, p0, Lmps;->b:Loyn;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lmps;->c:Lmyj;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-object p1, p0, Lmps;->a:Lmpw;

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
.method public final a(I)V
    .locals 6

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iget-object v2, v0, Lmpw;->z:Lmqd;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    const v0, 0xc

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    iget-object v2, v2, Lmqd;->h:Lryb;

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

    nop

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

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

    nop

    :goto_6
    iget-object p1, v0, Loiq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v3, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    :goto_8
    check-cast p1, Lmqc;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p1, Lmpw;->r:Llmf;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v2, Lmoq;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    iget-object v1, p0, Lmps;->b:Loyn;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p1, v0, Lmpw;->A:Lmqc;

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

    nop

    :goto_f
    goto/32 :goto_27

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Lmpw;->K:Loiq;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_15
    const v1, 0xb

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v2, v2, Lmoq;->O:Lmqd;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_17
    invoke-interface {v3, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p1, Lmpw;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_1a
    iget-object v3, v2, Lmoq;->u:Loyn;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lmps;->a:Lmpw;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p0}, Lmyj;->f()V

    :goto_1e
    goto/32 :goto_26

    nop

    nop

    :goto_1f
    iget-object v1, v0, Lmpw;->K:Loiq;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    invoke-interface {p1}, Llmf;->c()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2, p1}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_23
    iget-object p0, p0, Lmps;->c:Lmyj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_24
    iget-object v3, v2, Lmoq;->t:Loyn;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2, p1}, Lmqd;->b(Lmqc;)D

    move-result-wide v4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    :goto_27
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v2, v0, Loiq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method
