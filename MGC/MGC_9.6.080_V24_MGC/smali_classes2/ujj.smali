.class public final Lujj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lujp;


# instance fields
.field private final a:Lubo;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop
.end method

.method public constructor <init>(Lubo;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lujj;->a:Lubo;

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final eP(Lujq;Ltzy;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lumi;->e()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_2
    goto/32 :goto_2a

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    :goto_7
    iput v1, v0, Luji;->c:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    check-cast v0, Luji;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    new-instance p2, Lumi;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_1a

    nop

    nop

    :goto_c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, v0, Luji;->c:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    move-object v0, p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    const/high16 v2, -0x80000000

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Luag;->a:Luag;

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_16
    throw p1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_19
    invoke-direct {v0, p0, p2}, Luji;-><init>(Lujj;Ltzy;)V

    :goto_1a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_1e

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p2, v0, Luji;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1d
    move-object p0, p2

    nop

    nop

    :goto_1e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lumi;->e()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_20
    and-int v3, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_21
    invoke-interface {v0}, Ltzy;->r()Luad;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object p0, p2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_27
    iget-object p0, v0, Luji;->d:Lumi;

    nop

    nop

    :try_start_0
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2a

    nop

    :cond_2
    goto/32 :goto_29

    nop

    :goto_29
    goto/32 :goto_17

    nop

    nop

    :goto_2a
    goto/32 :goto_2e

    nop

    nop

    :goto_2b
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2c
    move-object p1, p0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2e
    instance-of v0, p2, Luji;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2f
    if-eq v2, v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_30
    goto :goto_26

    nop

    nop

    :goto_31
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_33
    invoke-direct {p2, p1, v2}, Lumi;-><init>(Lujq;Luad;)V

    :try_start_1
    iput-object p2, v0, Luji;->d:Lumi;

    nop

    iput v3, v0, Luji;->c:I

    nop

    nop

    nop

    iget-object p0, p0, Lujj;->a:Lubo;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p2, v0}, Lubo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    sget-object p1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    nop

    if-eq p0, p1, :cond_5

    nop

    nop

    nop

    nop

    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_34
    new-instance v0, Luji;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-ne p0, v1, :cond_6

    nop

    goto/32 :goto_4

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    return-object v1

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v2, v0, Luji;->c:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method
