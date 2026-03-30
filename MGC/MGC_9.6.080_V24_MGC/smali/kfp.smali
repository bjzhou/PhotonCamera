.class final Lkfp;
.super Lprt;
.source "PG"


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:J

.field final synthetic c:Lprw;

.field final synthetic d:Lkfq;


# direct methods
.method public constructor <init>(Lkfq;Lprw;JLprw;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkfp;->d:Lkfq;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkfp;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_2

    nop

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

    nop

    :goto_3
    iput-wide p3, p0, Lkfp;->b:J

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-object p5, p0, Lkfp;->c:Lprw;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p2}, Lprt;-><init>(Lprw;)V

    goto/32 :goto_8

    nop

    nop

    :goto_7
    const/4 p2, 0x0

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

    nop

    :goto_8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 6

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1c

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

    nop

    :goto_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3
    long-to-double v2, v4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Lprw;->close()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    invoke-virtual {v0, v2, v3, v1}, Ltlk;->g(D[Ljava/lang/Object;)V

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, v0, Lkfq;->c:Lkfr;

    nop

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

    :goto_9
    sub-long/2addr v4, v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    new-array v2, v1, [Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    iget-object v0, v0, Lkfr;->b:Ltlk;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    iget-wide v2, p0, Lkfp;->b:J

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_f
    const/4 v1, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, v0, Lkfr;->d:Ltlk;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    iget-object v0, p0, Lkfp;->d:Lkfq;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    const v1, 0x3

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_14
    iget-object v0, p0, Lkfp;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lkfp;->c:Lprw;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    :goto_17
    iget-object v0, p0, Lkfp;->d:Lkfq;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_18
    invoke-virtual {v0, v2}, Ltlk;->f([Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, v0, Lkfq;->c:Lkfr;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop
.end method
