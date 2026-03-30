.class public final synthetic Llkg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/base/function/LongStringConsumer;


# instance fields
.field public final synthetic a:Llkm;


# direct methods
.method public synthetic constructor <init>(Llkm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Llkg;->a:Llkm;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final accept(JLjava/lang/String;)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_1d

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

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

    :goto_3
    iput p1, p0, Lsot;->b:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p2, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p2, p1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Llkg;->a:Llkm;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string p3, "Error deserializing native portrait logs: %s"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p1, 0x0

    nop

    nop

    nop

    :try_start_0
    invoke-static {p3, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-static {}, Ltjv;->a()Ltjv;

    move-result-object p3

    nop

    sget-object v0, Lsou;->a:Lsou;

    nop

    nop

    nop

    array-length v1, p2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, p2, p1, v1, p3}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object p1

    nop

    nop

    nop

    invoke-static {p1}, Ltkg;->E(Ltkg;)V

    check-cast p1, Lsou;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    :goto_c
    const/16 p3, 0xee9

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lisu;->g:Ltkb;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    check-cast p0, Lisu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    const v0, 0x17

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    iget p1, p0, Lsot;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_19

    nop

    nop

    :goto_12
    goto/32 :goto_22

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    :goto_14
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p2, p3, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    check-cast p0, Lsot;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p2, Llkq;->a:Lsdb;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p2, p3}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_19
    iput-object p1, p0, Lsot;->f:Lsou;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    iget-object p0, p0, Liss;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Llkm;->o:Liss;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object p1, Lsou;->a:Lsou;

    nop

    :goto_1d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p2, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    check-cast p2, Lscz;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    :goto_22
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_23
    or-int/lit8 p1, p1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_27
    if-eqz p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sget-object p2, Lsot;->a:Lsot;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method
