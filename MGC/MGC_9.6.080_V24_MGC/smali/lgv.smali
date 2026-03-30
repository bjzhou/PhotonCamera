.class public final synthetic Llgv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsuu;

.field public final synthetic b:Llaj;

.field public final synthetic c:I

.field public final synthetic d:Lows;


# direct methods
.method public synthetic constructor <init>(Lows;Lsuu;Llaj;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iput p4, p0, Llgv;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Llgv;->b:Llaj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p2, p0, Llgv;->a:Lsuu;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Llgv;->d:Lows;

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


# virtual methods
.method public final run()V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x9

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Llgv;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v3, Llgx;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget-object v1, p0, Llgv;->a:Lsuu;

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

    :goto_7
    invoke-direct {v3, v0, p0, v1, v2}, Llgx;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;ILsuu;Llaj;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2, v3}, Llaj;->o(Lpuq;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Llgv;->d:Lows;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_10
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Llgv;->b:Llaj;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, v1}, Lhhg;->K(Lows;Ljava/util/concurrent/Future;)V

    goto/32 :goto_f

    nop

    nop
.end method
