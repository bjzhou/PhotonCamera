.class public final Lujl;
.super Lujm;
.source "PG"


# instance fields
.field private final d:Lubo;


# direct methods
.method public synthetic constructor <init>(Lubo;)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

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
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    invoke-direct {p0, p1, v0, v1, v2}, Lujl;-><init>(Lubo;Luad;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    sget-object v0, Luae;->a:Luae;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const/4 v1, -0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    const v0, 0x20

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

    nop
.end method

.method public constructor <init>(Lubo;Luad;II)V
    .locals 0

    goto/32 :goto_1

    nop

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
    invoke-direct {p0, p1, p2, p3, p4}, Lujm;-><init>(Lubo;Luad;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lujl;->d:Lubo;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Lujd;Ltzy;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Lujd;->y()Z

    move-result p0

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

    :goto_3
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    :goto_6
    const/high16 v2, -0x80000000

    nop

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

    :goto_7
    iget-object p2, v0, Lujk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1d

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_37

    nop

    nop

    :goto_b
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_c
    if-nez p0, :cond_1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_d
    instance-of v0, p2, Lujk;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    const-string p1, "\'awaitClose { yourCallbackOrListener.cancel() }\' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    :goto_10
    iget v1, v0, Lujk;->d:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    goto :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x16

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    :goto_15
    invoke-static {p0, p1, v0}, Lujm;->d(Lujm;Lujd;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_16
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_17
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, p0, p2}, Lujk;-><init>(Lujl;Ltzy;)V

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_3

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    :goto_1b
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1c
    return-object v1

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-ne p0, v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_4
    :goto_1f
    goto/32 :goto_2

    nop

    nop

    :goto_20
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    throw p0

    nop

    nop

    :goto_22
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput v1, v0, Lujk;->d:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    goto/32 :goto_25

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

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p1, v0, Lujk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_27
    iput v3, v0, Lujk;->d:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_28
    and-int v3, v1, v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_1f

    nop

    nop

    :goto_2a
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2c
    new-instance v0, Lujk;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-object p0

    nop

    nop

    :goto_2e
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2f
    move-object v0, p2

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v2, v0, Lujk;->d:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_31
    if-nez v2, :cond_5

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_5
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_33
    if-eq v2, v3, :cond_6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_26

    nop

    nop

    :goto_34
    check-cast v0, Lujk;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_35
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_37
    iput-object p1, v0, Lujk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop
.end method

.method protected final c(Luad;II)Lulq;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lujl;-><init>(Lubo;Luad;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lujl;->d:Lubo;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lujl;

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
