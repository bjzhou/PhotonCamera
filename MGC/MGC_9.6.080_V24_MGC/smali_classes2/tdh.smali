.class final Ltdh;
.super Ltdx;
.source "PG"


# instance fields
.field final synthetic a:Ltdx;


# direct methods
.method public constructor <init>(Ltdx;)V
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

    :goto_1
    invoke-direct {p0}, Ltdx;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltdh;->a:Ltdx;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Lthn;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_10

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3
    invoke-virtual {v1, p1}, Ltdx;->a(Lthn;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    :goto_7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_8
    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lt v1, p0, :cond_1

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    return-object p1

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lthn;->n()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_16

    nop

    nop

    :goto_10
    const v0, 0xb

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

    :goto_11
    check-cast v1, Ljava/lang/Number;

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

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Lthn;->r()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

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

    :goto_16
    invoke-virtual {p1}, Lthn;->l()V

    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Ltdh;->a:Ltdx;

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

    nop

    :goto_1c
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLongArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v2, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    :goto_22
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_b

    nop

    nop

    nop
.end method
