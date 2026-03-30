.class public final Lpom;
.super Lprt;
.source "PG"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lprw;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lprt;-><init>(Lprw;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lpom;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_3
    return-void

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

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

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x7

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

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    invoke-super {p0}, Lprt;->close()V

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lpom;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x18

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
