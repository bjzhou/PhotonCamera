.class public final synthetic Lgtd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-wide p2, p0, Lgtd;->a:J

    nop

    nop

    nop

    goto/32 :goto_1

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
    iput p4, p0, Lgtd;->c:I

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lgtd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_1
    invoke-virtual {v0}, Lryh;->h()Lrxq;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    iget-object v0, v0, Lgth;->g:Lryh;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-interface {v4, v2, v3}, Lpaf;->m(J)V

    goto/32 :goto_19

    nop

    nop

    :goto_5
    return-object v1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v4, Lpaf;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lryh;->h()Lrxq;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2, v3, v4, p0}, Lgtf;-><init>(JI)V

    goto/32 :goto_7

    nop

    nop

    :goto_d
    iget v0, p0, Lgtd;->c:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    check-cast v0, Lgth;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    iget-object v0, v0, Lgth;->f:Lryh;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-ne v0, v2, :cond_2

    nop

    goto/32 :goto_22

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    :goto_15
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    invoke-direct {v3, v4, v5, v2}, Lgtf;-><init>(JI)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_17
    iget-object v0, v0, Lpbe;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-wide v4, p0, Lgtd;->a:J

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_29

    nop

    nop

    :goto_1a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v3, Lgtf;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1c
    invoke-interface {v0, v3}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-wide v3, p0, Lgtd;->a:J

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

    :goto_1e
    new-instance v2, Lgtf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-object v1

    nop

    nop

    :goto_22
    goto/32 :goto_32

    nop

    nop

    :goto_23
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lgtd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_27
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_29
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v0, Lgth;

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

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-object v1

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_25

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2f
    iget-wide v2, p0, Lgtd;->a:J

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v0, Lpbe;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lgtd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_33
    iget-object v0, p0, Lgtd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop
.end method
