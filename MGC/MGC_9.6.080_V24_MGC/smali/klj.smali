.class final Lklj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lijn;


# instance fields
.field final synthetic a:Lklk;


# direct methods
.method public constructor <init>(Lklk;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lklj;->a:Lklk;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

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
.end method


# virtual methods
.method public final synthetic a(ZZZZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final b(Z)V
    .locals 5

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lklk;->b:Lmel;

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

    :goto_1
    iget-object p1, p1, Lklk;->i:Lfdo;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2
    rem-int/lit8 v2, v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1, p0}, Lmel;->b(Lmek;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, p1, v2}, Lkli;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lklk;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    if-lt v2, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_c
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    const-wide/16 v2, 0x7d0

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_e
    iget-object p1, p0, Lklk;->b:Lmel;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v2, p1, Lklk;->i:Lfdo;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    nop

    :goto_11
    if-nez p1, :cond_4

    nop

    goto/32 :goto_1e

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p1, p0, Lklk;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    nop

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

    nop

    :goto_14
    iget-object p0, p0, Lklk;->c:Lmek;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v3, v4}, Lfdo;->K(Ljava/lang/String;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    :goto_18
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lklj;->a:Lklk;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lklj;->a:Lklk;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p1, p0, Lklk;->g:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_21
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v4, v2, 0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v4, 0x9

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_29
    iget-boolean v2, p1, Lklk;->f:Z

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_17

    nop

    :goto_2c
    const v1, 0x7

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v2, v3}, Lfdo;->H(Ljava/lang/String;)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p0, Lklk;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2f
    const/4 v0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_30
    const-string v3, "astro_smarts_chip"

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    :goto_32
    goto/32 :goto_19

    nop

    nop

    :goto_33
    iput-boolean v1, p1, Lklk;->f:Z

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

    nop

    nop

    :goto_34
    iget-object p1, p0, Lklj;->a:Lklk;

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

    :goto_35
    new-instance v1, Lkli;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop
.end method

.method public final synthetic c()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method
