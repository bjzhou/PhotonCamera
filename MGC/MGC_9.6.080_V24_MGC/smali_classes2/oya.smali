.class public final Loya;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# instance fields
.field public final synthetic a:Loyb;

.field private final b:I


# direct methods
.method public constructor <init>(Loyb;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput p2, p0, Loya;->b:I

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
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Loya;->a:Loyb;

    nop

    goto/32 :goto_3

    nop

    nop

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

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, p0, v0, v2}, Loxl;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Loxl;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1d

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

    goto/32 :goto_c

    nop

    nop

    :goto_8
    iget-object p1, p0, Loya;->a:Loyb;

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

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    :goto_f
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p1, Loyb;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, v0, Loyb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_13
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean v0, p1, Loyb;->a:Z

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_18
    goto :goto_23

    nop

    nop

    :goto_19
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Loya;->a:Loyb;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p0, Loya;->a:Loyb;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p1, Loyb;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-boolean v0, p1, Loyb;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0xd

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_21
    iget v1, p0, Loya;->b:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-boolean v0, p1, Loyb;->a:Z

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_25
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p1, Loyb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_28
    iget-object p1, p0, Loya;->a:Loyb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
