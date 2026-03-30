.class final Lrod;
.super Lssk;
.source "PG"


# instance fields
.field private a:Lrof;

.field private final b:I


# direct methods
.method public constructor <init>(Lrof;I)V
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

    nop

    :goto_1
    invoke-direct {p0}, Lssk;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lrod;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p1, p0, Lrod;->a:Lrof;

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method protected final d()V
    .locals 8

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

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

    :goto_1
    iget-object v7, v0, Lrof;->a:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v3, v1, Lroe;->a:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    :goto_4
    goto :goto_a

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move v5, v6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8
    iget-object v2, v0, Lrof;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_1
    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, v0, Lrof;->a:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eq v3, v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_6

    nop

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
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v5, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2a

    nop

    nop

    :goto_13
    long-to-int v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_15
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    :goto_16
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v4, v3}, Lrof;->b(II)J

    move-result-wide v3

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

    :goto_18
    const/high16 v5, -0x80000000

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v6}, Lssk;->cancel(Z)Z

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v0, "Refcount is: "

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v1, p0, Lrod;->a:Lrof;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-le v3, v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lrod;->a:Lrof;

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

    :goto_1f
    iget v2, p0, Lrod;->b:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_20
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v7, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v5, -0x7fffffff

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_23
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v1, v0, Lrof;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_25
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_38

    nop

    :goto_27
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v1, Lroe;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_29
    const/4 v1, 0x0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2a
    const/4 v5, 0x0

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1, v2, v0}, Lmf;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v3, v3, -0x1

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

    :goto_2e
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v1, v2}, Lrof;->a(J)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_30
    new-instance p0, Ljava/lang/AssertionError;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v2, v1}, La;->aT(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)Z

    move-result v1

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

    :goto_32
    if-ne v3, v5, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_7
    goto/32 :goto_22

    nop

    nop

    :goto_33
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const v0, 0x20

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_35
    if-nez v5, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_9
    :goto_36
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_37
    throw p0

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_39
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final dA()Ljava/lang/String;
    .locals 3

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    return-object v1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

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

    :goto_9
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, v0, Lrof;->d:Lstx;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lrod;->a:Lrof;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v0, ", trial=["

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_13
    iget-object p0, p0, Lrof;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, v0, Lstx;->a:Ljava/lang/Object;

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

    :goto_16
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, "callable=["

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    const-string v2, "]"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1b
    check-cast p0, Lroe;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1e
    return-object v0

    nop

    nop

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v0, v1, v2}, La;->bk(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    :goto_25
    iget-object p0, p0, Lrod;->a:Lrof;

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

    :goto_26
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method protected final f(Lsui;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Lssk;->f(Lsui;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
