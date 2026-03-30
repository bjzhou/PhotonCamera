.class public final Lckv;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lcky;


# direct methods
.method public constructor <init>()V
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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lcks;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lckv;->a:Lcky;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcky;->e()Lcky;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(JJLtzy;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p2, Ldpv;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    iget-wide p0, p5, Ldpv;->a:J

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    const/high16 v2, -0x80000000

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v1, v0, Lckt;->c:I

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_6
    instance-of v0, p5, Lckt;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 p0, 0x0

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ne p5, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    :goto_a
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, v6, Lckt;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    move-wide v4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    goto/32 :goto_25

    nop

    nop

    :goto_10
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    iget-object p5, v6, Lckt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    if-nez v3, :cond_3

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    :goto_15
    move-object v0, p5

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_16
    goto/16 :goto_8

    nop

    :goto_17
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, p0, p5}, Lckt;-><init>(Lckv;Ltzy;)V

    :goto_19
    goto/32 :goto_27

    nop

    nop

    :goto_1a
    new-instance v0, Lckt;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1d
    iput v2, v6, Lckt;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1e
    sget-object v0, Luag;->a:Luag;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface/range {v1 .. v6}, Lcks;->c(JJLtzy;)Ljava/lang/Object;

    move-result-object p5

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_20
    if-eq v1, v2, :cond_5

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-object p2

    nop

    :goto_22
    goto/32 :goto_f

    nop

    nop

    :goto_23
    invoke-static {p5}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Lckv;->a()Lcks;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_27
    move-object v6, v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1a

    nop

    nop

    :goto_2a
    iget v1, v0, Lckt;->c:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2b
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2d
    invoke-static {p5}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2f
    throw p0

    nop

    :goto_30
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v0, Lckt;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_32
    check-cast p5, Ldpv;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    and-int v3, v1, v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {p2, p0, p1}, Ldpv;-><init>(J)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_35
    move-wide v2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_a

    nop

    :goto_38
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_39
    new-instance p0, Ljava/lang/IllegalStateException;

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

    nop

    :goto_3a
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop
.end method

.method public final c(JLtzy;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p3, v0, Lcku;->a:Ljava/lang/Object;

    nop

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

    nop

    :goto_1
    new-instance p2, Ldpv;

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

    :goto_2
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_5
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    :goto_7
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_8
    iget-wide p0, p3, Ldpv;->a:J

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x4

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

    :goto_a
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    if-ne p3, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_3
    :goto_d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq v2, v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_4
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sub-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p2, p0, p1}, Ldpv;-><init>(J)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/high16 v2, -0x80000000

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, v0, Lcku;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_15
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_17
    move-object v0, p3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lckv;->a()Lcks;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_19
    check-cast v0, Lcku;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput v1, v0, Lcku;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    :goto_1c
    instance-of v0, p3, Lcku;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_d

    nop

    :goto_1e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0, p0, p3}, Lcku;-><init>(Lckv;Ltzy;)V

    :goto_20
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_21
    return-object p2

    nop

    nop

    :goto_22
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_30

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_26
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_27
    and-int v3, v1, v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_28
    check-cast p3, Ldpv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_29
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2a
    iput v3, v0, Lcku;->c:I

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-object v1

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2d
    throw p0

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2f
    const-wide/16 p0, 0x0

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v0, Lcku;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {p3}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    :goto_34
    invoke-static {p3}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p0, p1, p2, v0}, Lcks;->cd(JLtzy;)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_36
    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2a

    nop

    nop

    :goto_37
    iget v2, v0, Lcku;->c:I

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

    nop
.end method
