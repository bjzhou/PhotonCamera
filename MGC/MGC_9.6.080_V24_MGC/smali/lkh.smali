.class public final synthetic Llkh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/base/function/LongConsumer;


# instance fields
.field public final synthetic a:Llkm;

.field public final synthetic b:Lsuu;


# direct methods
.method public synthetic constructor <init>(Llkm;Lsuu;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Llkh;->b:Lsuu;

    nop

    nop

    nop

    nop

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

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Llkh;->a:Llkm;

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
.end method


# virtual methods
.method public final accept(J)V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Llkm;->o:Liss;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lisu;->h(Lisu;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Llkq;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4
    sub-long/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    const v1, 0x1c

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Llkh;->a:Llkm;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v2, Lsot;->a:Lsot;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Liss;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Liss;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_12
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    :goto_13
    check-cast p0, Lisu;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    :goto_15
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_16
    invoke-virtual {p0, p1, p2, v0}, Lisu;->g(JLjava/lang/Throwable;)V

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, v0, Lisu;->g:Ltkb;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Llkh;->b:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1a
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1b
    or-int/lit8 v2, v2, 0x2

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1d
    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_1f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Liss;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_21
    check-cast v0, Lisu;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v0, Lisu;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v0, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_24
    iput v1, v0, Lsot;->d:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_27
    iget-object v0, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v2, v0, Lsot;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_29
    check-cast v0, Lsot;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2a
    long-to-int v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2b
    iput v2, v0, Lsot;->b:I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-wide v3, v0, Lisu;->c:J

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
.end method
