.class final Ltga;
.super Ltdx;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

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

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Lthn;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    new-instance p1, Ltdu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lthn;->c()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_5
    invoke-virtual {p1}, Lthn;->n()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    :goto_9
    new-instance p0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_a
    goto/16 :goto_1f

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

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

    nop

    :goto_f
    if-lt v1, p1, :cond_2

    nop

    nop

    goto/32 :goto_8

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

    :goto_10
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_13
    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    const v1, 0x15

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Lthn;->r()Z

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

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

    :goto_19
    return-object v0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_6

    nop

    nop

    :goto_1b
    invoke-direct {p1, p0}, Ltdu;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    throw p1

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Lthn;->l()V

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x3

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

    :goto_21
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
