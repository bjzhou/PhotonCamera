.class public final Lmhh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmiu;


# instance fields
.field private final a:Lpdf;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Lmhf;


# direct methods
.method public constructor <init>(Lmhf;Lpdf;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lmhh;->a:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    iput-object v0, p0, Lmhh;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    const v1, 0x9

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lmhh;->c:Lmhf;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    iget-object v1, v0, Lmhf;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v2}, Lmhm;->b(I)Lsui;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lmhh;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_4
    invoke-interface {p0}, Lpdf;->g()V

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v2, 0x7f130040

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, v0, Lmhf;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    iget-object v1, v0, Lmhf;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v1, Lmhm;

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
    iget-object v0, p0, Lmhh;->c:Lmhf;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v2, "Sounds#video_start"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    const-string v1, "AudioInit"

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v1, v2}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lmhh;->a:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    const-string v2, "Sounds#shutter"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_17
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_19
    goto/32 :goto_e

    nop

    :goto_1a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, v0, Lmhf;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v2}, Lmhm;->b(I)Lsui;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lmhh;->a:Lpdf;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    :goto_20
    iget-object v1, v0, Lmhf;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_21
    const v2, 0x7f130086

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_1e

    nop

    nop

    :goto_24
    check-cast v1, Lmhm;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop
.end method
