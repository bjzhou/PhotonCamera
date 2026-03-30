.class public final Lnrb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:Ljava/lang/Object;

.field private final synthetic b:I

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lnrb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnrb;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iput p2, p0, Lnrb;->b:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpci;II)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    invoke-static {p3}, La;->au(Z)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_b

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
    if-gtz p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_5
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p3, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    iput p3, p0, Lnrb;->b:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lnrb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lnrb;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    const/4 p3, 0x0

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpik;Lpgo;Lkso;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lnrb;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

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
    iput p4, p0, Lnrb;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Lnrb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 4

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_21

    nop

    nop

    :goto_2
    new-instance v0, Lodu;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lnrb;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, v2, v3}, Lodu;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    iget-object p0, p0, Lnrb;->a:Ljava/lang/Object;

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

    nop

    :goto_9
    invoke-interface {p0}, Lpci;->close()V

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Landroid/os/HandlerThread;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Lnrb;->b:I

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

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lnrb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-wide/16 v2, 0x1388

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_3

    nop

    goto/32 :goto_12

    nop

    :cond_3
    goto/32 :goto_11

    nop

    :goto_1b
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1c
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p0, Lpik;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_21
    iget-object p0, p0, Lnrb;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_22
    new-instance v1, Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lpik;->close()V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_24
    const/16 v2, 0xb

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_29
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lnrb;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_1f

    nop

    :goto_2c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lnrb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop
.end method
