.class public final synthetic Lgsg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lppc;


# instance fields
.field public final synthetic a:Lcom/google/googlex/gcam/GyroSampleVector;

.field public final synthetic b:Ljaj;


# direct methods
.method public synthetic constructor <init>(Ljaj;Lcom/google/googlex/gcam/GyroSampleVector;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgsg;->b:Ljaj;

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

    nop

    :goto_1
    iput-object p2, p0, Lgsg;->a:Lcom/google/googlex/gcam/GyroSampleVector;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 8

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    iget-wide v3, v1, Lppf;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v7, v1, Lppf;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_20

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    iget-object v2, p0, Lgsg;->a:Lcom/google/googlex/gcam/GyroSampleVector;

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

    :goto_b
    check-cast p0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_d
    iget-wide v0, p1, Lppf;->e:J

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    check-cast v1, Lppf;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Lrgw;->ab(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_11
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

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

    :goto_14
    check-cast p1, Lppf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual/range {v2 .. v7}, Lcom/google/googlex/gcam/GyroSampleVector;->b(JFFF)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

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

    :goto_17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lgsg;->b:Ljaj;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Ljaj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1d
    iget v5, v1, Lppf;->f:F

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_5

    nop

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_21
    iget v6, v1, Lppf;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
