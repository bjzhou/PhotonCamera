.class public final synthetic Lnln;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Z

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lnln;->a:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lnln;->b:I

    nop

    nop

    nop

    nop

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
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    iget-wide p1, p1, Ltxn;->a:D

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p2, Ltxn;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2
    cmpl-double p1, v6, v4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ltxn;

    nop

    nop

    goto/32 :goto_a

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

    nop

    nop

    :goto_5
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6
    const-string v1, "Not monotonic."

    nop

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

    nop

    :goto_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_9
    if-lez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p2, Ltxn;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_b
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Ltxn;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean p0, p0, Lnln;->a:Z

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    sub-double/2addr v6, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v0, p0, Lnln;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    :goto_14
    move v2, v3

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    move v2, v3

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    :goto_19
    goto :goto_17

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    if-eq v2, p0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_20
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v2, 0x0

    nop

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

    nop

    :goto_22
    goto :goto_15

    nop

    :goto_23
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_24
    iget-wide v6, p2, Ltxn;->a:D

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

    :goto_25
    rem-int v0, v0, v1

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

    :goto_26
    if-lez p1, :cond_3

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_27
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-wide p1, p1, Ltxn;->a:D

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sub-double/2addr v6, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2a
    iget-boolean p0, p0, Lnln;->a:Z

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eq v2, p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2d
    iget-wide v6, p2, Ltxn;->a:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2e
    throw p0

    nop

    :goto_2f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    cmpl-double p1, v6, v4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p0

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
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p0

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

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Lnln;->b:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
