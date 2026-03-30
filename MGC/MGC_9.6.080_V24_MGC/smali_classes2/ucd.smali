.class public Lucd;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static A(Lujp;Lujq;Ltzy;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v1, Luag;->a:Luag;

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_2
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3
    new-instance v0, Luju;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_5
    invoke-interface {p2, v0}, Luad;->get(Luac;)Luab;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_6
    iget v1, v0, Luju;->b:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    :goto_8
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_1
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p2}, Luju;-><init>(Ltzy;)V

    :goto_b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_c
    and-int v3, v1, v2

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

    :goto_d
    goto/16 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_10
    invoke-direct {p2}, Lucs;-><init>()V

    :try_start_0
    new-instance v2, Lujw;

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v2, p1, p2, v4}, Lujw;-><init>(Lujq;Ljava/lang/Object;I)V

    iput-object p2, v0, Luju;->c:Lucs;

    nop

    nop

    nop

    nop

    iput v3, v0, Luju;->b:I

    nop

    nop

    nop

    nop

    invoke-interface {p0, v2, v0}, Lujp;->eP(Lujq;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_1d

    nop

    nop

    :goto_11
    iput v1, v0, Luju;->b:I

    nop

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

    :goto_12
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_17
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lucs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_49

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eq p0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_2
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_20
    new-instance p2, Lucs;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_21
    const/high16 v2, -0x80000000

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_22
    iget-object p0, v0, Luju;->c:Lucs;

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1b

    nop

    nop

    :goto_23
    invoke-static {p1, p0}, Lrgw;->am(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto/32 :goto_18

    nop

    nop

    :goto_24
    if-eqz p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p0, p1}, Lrgw;->am(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p2, v0, Luju;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_4
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_29
    throw p1

    nop

    nop

    :goto_2a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p2, Lugy;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p0, Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez p2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2f
    if-eqz p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_30
    return-object p0

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_31
    goto :goto_37

    nop

    nop

    :goto_32
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {p1, p0}, Lucd;->H(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result p2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz p2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_7
    :goto_37
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v0, Luju;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_39
    invoke-interface {v0}, Ltzy;->r()Luad;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_3a
    instance-of v0, p2, Luju;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_3b
    move-object p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3c
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1e

    nop

    :goto_3d
    sget-object v0, Lugy;->c:Ltzz;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3e
    iget v2, v0, Luju;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v0, :cond_9

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_31

    nop

    nop

    :goto_42
    invoke-interface {p2}, Lugy;->eM()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_43
    invoke-interface {p2}, Lugy;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p2

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_44
    sub-int/2addr v1, v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-eq v2, v3, :cond_a

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_a
    goto/32 :goto_22

    nop

    nop

    :goto_46
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_b
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_47
    move-object v0, p2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_48
    return-object v1

    nop

    :goto_49
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {p1, p2}, Lucd;->H(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result p2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const v1, 0xb

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4d
    move-object p0, p2

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static B(Lujp;)Lujp;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, v0}, Lucd;->E(Lujp;I)Lujp;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public static C(Lujp;Ltzy;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lumg;->a:Lumg;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

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

    nop

    nop

    :goto_5
    if-eq p0, p1, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, v0, p1}, Lujp;->eP(Lujq;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public static D(Lujq;Lujf;ZLtzy;)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_20

    nop

    :goto_1
    goto/32 :goto_42

    nop

    nop

    :goto_2
    sub-int/2addr v1, v2

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

    :goto_3
    move-object p3, p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_5
    instance-of v0, p3, Lujr;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, p0}, Lufv;->m(Lujf;Ljava/lang/Throwable;)V

    :goto_7
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object p0, v2

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

    :goto_9
    iget-object p3, v0, Lujr;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq v2, v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v2, v7

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lujr;

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

    :goto_d
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

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

    :goto_e
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_10
    if-nez p2, :cond_1

    nop

    goto/32 :goto_35

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    :goto_11
    move-object v0, p0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-ne p3, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_2c

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2e

    nop

    nop

    :goto_15
    iget-object v2, v0, Lujr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    :try_start_0
    invoke-static {p3}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    :goto_17
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    :goto_19
    iget-object v2, v0, Lujr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    :try_start_1
    invoke-static {p3}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0, p3}, Lujr;-><init>(Ltzy;)V

    :goto_1b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lull;->a:Ljava/lang/Throwable;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v3, 0x0

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

    :goto_1e
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz p3, :cond_3

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_2
    invoke-interface {p1}, Lujf;->C()Luii;

    move-result-object p3

    nop

    nop

    nop

    :goto_20
    iput-object p0, v0, Lujr;->a:Ljava/lang/Object;

    nop

    move-object v2, p1

    nop

    check-cast v2, Lujc;

    nop

    nop

    nop

    nop

    iput-object v2, v0, Lujr;->e:Lujc;

    nop

    iput-object p3, v0, Lujr;->f:Luii;

    nop

    nop

    nop

    nop

    iput-boolean p2, v0, Lujr;->b:Z

    nop

    nop

    nop

    iput v5, v0, Lujr;->d:I

    nop

    invoke-virtual {p3, v0}, Luii;->a(Ltzy;)Ljava/lang/Object;

    move-result-object v2

    nop

    if-ne v2, v1, :cond_4

    nop

    nop

    return-object v1

    nop

    :cond_4
    move-object v7, v0

    nop

    nop

    nop

    move-object v0, p3

    nop

    nop

    nop

    nop

    nop

    move-object p3, v2

    nop

    nop

    goto/16 :goto_39

    nop

    :goto_21
    check-cast p3, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    nop

    nop

    nop

    nop

    if-eqz p3, :cond_9

    nop

    invoke-virtual {v0}, Luii;->b()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    iput-object p0, v2, Lujr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v6, p1

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Lujc;

    nop

    nop

    nop

    nop

    nop

    iput-object v6, v2, Lujr;->e:Lujc;

    nop

    nop

    iput-object v0, v2, Lujr;->f:Luii;

    nop

    nop

    nop

    iput-boolean p2, v2, Lujr;->b:Z

    nop

    nop

    nop

    nop

    iput v4, v2, Lujr;->d:I

    nop

    nop

    nop

    nop

    invoke-interface {p0, p3, v2}, Lujq;->a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;

    move-result-object p3

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto :goto_21

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_33

    nop

    nop

    :goto_24
    throw p0

    nop

    :goto_25
    goto/32 :goto_4e

    nop

    nop

    :goto_26
    if-eqz p2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_28
    and-int v3, v1, v2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput v1, v0, Lujr;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_2a
    if-ne v2, v5, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_6
    goto/32 :goto_a

    nop

    nop

    :goto_2b
    return-object p0

    nop

    :goto_2c
    :try_start_3
    throw p0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

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

    :goto_2d
    move-object v0, v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_30
    throw v3

    nop

    nop

    :goto_31
    goto/32 :goto_32

    nop

    nop

    :goto_32
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {p3}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p1, v3}, Lufv;->m(Lujf;Ljava/lang/Throwable;)V

    :goto_35
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_36
    instance-of p3, p0, Lull;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_38
    move-object p0, v2

    nop

    nop

    :goto_39
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_3b
    iget v1, v0, Lujr;->d:I

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p1, v0, Lujr;->e:Lujc;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3d
    iget-boolean p2, v0, Lujr;->b:Z

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v0, :cond_8

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_5

    nop

    nop

    :goto_41
    const/high16 v2, -0x80000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_42
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_10

    nop

    nop

    :goto_43
    move-object p3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_44
    move-object v7, v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_45
    iget-object p0, v0, Lujr;->f:Luii;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-lez v0, :cond_a

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3f

    nop

    :goto_47
    iget-object p0, v0, Lujr;->f:Luii;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_48
    throw p3

    nop

    :goto_49
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_1b

    nop

    nop

    :goto_4b
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4c
    move-object v0, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v2, :cond_b

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-boolean p2, v0, Lujr;->b:Z

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_50
    iget v2, v0, Lujr;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_51
    check-cast v0, Lujr;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_52
    iget-object p1, v0, Lujr;->e:Lujc;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_53
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_54
    check-cast p0, Lull;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop
.end method

.method public static synthetic E(Lujp;I)Lujp;
    .locals 2

    goto/32 :goto_19

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    move-object p0, v0

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    move p1, v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    check-cast p0, Lume;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p0, p1}, Luls;-><init>(Lujp;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_c
    instance-of v1, p0, Lume;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, v1, p1, v0}, Lucg;->t(Lume;Luad;II)Lujp;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    goto :goto_3

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    :goto_12
    new-instance v0, Luls;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    const/4 p1, 0x2

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

    nop

    :goto_15
    const/4 v0, 0x1

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

    :goto_16
    if-ltz p1, :cond_2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_7

    nop

    :goto_1b
    goto/32 :goto_6

    nop

    nop
.end method

.method public static synthetic F(Lujg;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v0}, Lujg;->u(Ljava/lang/Throwable;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

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
.end method

.method public static G(Lujd;Luaz;Ltzy;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Lujb;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ltzy;->r()Luad;

    move-result-object p2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_23

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    if-eq p2, p0, :cond_0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_0
    :try_start_0
    iput-object p1, v0, Lujb;->a:Ljava/lang/Object;

    nop

    iput v3, v0, Lujb;->c:I

    nop

    nop

    nop

    new-instance p2, Lufa;

    nop

    nop

    nop

    invoke-static {v0}, Lrkm;->x(Ltzy;)Ltzy;

    move-result-object v0

    nop

    nop

    invoke-direct {p2, v0, v3}, Lufa;-><init>(Ltzy;I)V

    invoke-virtual {p2}, Lufa;->y()V

    new-instance v0, Lnhl;

    nop

    nop

    nop

    const/16 v2, 0x9

    nop

    nop

    nop

    invoke-direct {v0, p2, v2}, Lnhl;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Lujd;->s(Lubk;)V

    invoke-virtual {p2}, Lufa;->i()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v1, v0, Lujb;->c:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_8
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v0, p2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_2d

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    instance-of v0, p2, Lujb;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    :goto_11
    const/high16 v2, -0x80000000

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    const-string p1, "awaitClose() can only be invoked from the producer context"

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_13
    and-int v3, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p2, v0, Lujb;->b:Ljava/lang/Object;

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

    :goto_16
    iget-object p1, v0, Lujb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_17
    if-eq p0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    :goto_19
    invoke-interface {p1}, Luaz;->a()Ljava/lang/Object;

    goto/32 :goto_31

    nop

    nop

    :goto_1a
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1b
    sub-int/2addr v1, v2

    nop

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

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1d
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1e
    return-object v1

    nop

    nop

    :goto_1f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eq v2, v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p1}, Luaz;->a()Ljava/lang/Object;

    goto/32 :goto_32

    nop

    nop

    :goto_22
    return-object p0

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_21

    nop

    nop

    :goto_24
    throw p0

    nop

    nop

    :goto_25
    goto/32 :goto_30

    nop

    nop

    :goto_26
    sget-object v2, Lugy;->c:Ltzz;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_27
    iget v1, v0, Lujb;->c:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v0, Lujb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_29
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2a
    iget v2, v0, Lujb;->c:I

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

    :goto_2b
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    :goto_2c
    invoke-direct {v0, p2}, Lujb;-><init>(Ltzy;)V

    :goto_2d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2f
    if-nez v2, :cond_4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_32
    throw p0

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_1f

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {p2, v2}, Luad;->get(Luac;)Luab;

    move-result-object p2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v3, :cond_6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method private static H(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-static {p1, p0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

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

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    invoke-static {p1}, Lunu;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    sget-boolean v0, Lufu;->b:Z

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

    :goto_8
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

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

    :goto_a
    sget-boolean v0, Lufu;->b:Z

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

    :goto_b
    invoke-static {p0}, Lunu;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_e
    if-nez p0, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public static a(Ludp;)Ljava/lang/Class;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    check-cast p0, Luca;

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

    :goto_3
    invoke-interface {p0}, Luca;->a()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static b(Ludp;)Ljava/lang/Class;
    .locals 2

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :sswitch_0
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, "float"

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x11

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    const-class p0, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "short"

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "long"

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_b
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, "int"

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    :sswitch_3
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0}, Luca;->a()Ljava/lang/Class;

    move-result-object p0

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

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v1, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->FZOdWDWF:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, "void"

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    if-nez v0, :cond_3

    nop

    goto/32 :goto_30

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v1, "char"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_30

    nop

    nop

    :goto_21
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    nop

    nop

    nop

    :sswitch_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    :goto_24
    if-nez v0, :cond_5

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

    :cond_5
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-class p0, Ljava/lang/Void;

    nop

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

    nop

    :goto_26
    return-object p0

    nop

    nop

    nop

    :sswitch_7
    goto/32 :goto_1

    nop

    nop

    :goto_27
    const-class p0, Ljava/lang/Character;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast p0, Luca;

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

    :goto_29
    const-class p0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2a
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_4
        0x2e6108 -> :sswitch_1
        0x2e9356 -> :sswitch_0
        0x32c67c -> :sswitch_6
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_7
        0x5d0225c -> :sswitch_5
        0x685847c -> :sswitch_2
    .end sparse-switch

    :goto_2b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    :goto_2f
    const-class p0, Ljava/lang/Double;

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return-object p0

    nop

    nop

    nop

    :sswitch_8
    goto/32 :goto_41

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

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_33
    const v0, 0xc

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v0, :cond_7

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_36
    const-class p0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_37
    const-class p0, Ljava/lang/Byte;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const-class p0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_39
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3e

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3b
    const-string v1, "byte"

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    nop

    sparse-switch v1, :sswitch_data_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-eqz v0, :cond_b

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_20

    nop

    nop

    :goto_40
    const-class p0, Ljava/lang/Short;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_41
    const-string v1, "double"

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop
.end method

.method public static c(Ljava/lang/Class;)Ludp;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    sget v0, Luct;->a:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lucb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static d(DDD)D
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "Cannot coerce value to an empty range: maximum "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    return-wide p4

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    return-wide p2

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    :goto_7
    return-wide p0

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    cmpl-double v0, p2, p4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ltz v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    :goto_c
    cmpg-double v0, p0, p2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    if-gtz p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    cmpl-double p2, p0, p4

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

    :goto_15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    :goto_17
    const-string p2, "."

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

    nop

    nop

    :goto_18
    const-string p4, " is less than minimum "

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static e(FF)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    cmpg-float v0, p0, p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ltz v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_3
    return p1

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static f(FF)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    cmpl-float v0, p0, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return p1

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static g(FFF)F
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    :goto_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    cmpl-float p1, p0, p2

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

    :goto_7
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    const-string p2, " is less than minimum "

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-ltz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
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

    :goto_15
    const-string p1, "."

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    cmpl-float v0, p1, p2

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_18
    if-gtz p1, :cond_3

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    cmpg-float v0, p0, p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v1, "Cannot coerce value to an empty range: maximum "

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return p2

    nop

    nop

    :goto_21
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static h(II)I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    return p1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lt p0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static i(II)I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    if-gt p0, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop
.end method

.method public static j(III)I
    .locals 3

    goto/32 :goto_13

    nop

    nop

    :goto_0
    if-le p1, p2, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    const-string v2, "."

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    return p1

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    :goto_7
    const-string v1, " is less than minimum "

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    throw p0

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
    return p2

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-gt p0, p2, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "Cannot coerce value to an empty range: maximum "

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_13
    const v0, 0x8

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    if-lt p0, p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1, p2, v0, v1, v2}, La;->bq(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    :goto_17
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public static k(JJ)J
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    cmp-long v0, p0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    if-ltz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-wide p0

    nop

    nop

    nop

    :goto_3
    return-wide p2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static l(JJ)J
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    if-gtz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-wide p2

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    cmp-long v0, p0, p2

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

    :goto_4
    return-wide p0

    nop

    nop

    nop

    nop
.end method

.method public static m(JJJ)J
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    cmp-long v0, p0, p2

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
    if-ltz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

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

    :goto_2
    return-wide p4

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    cmp-long p2, p0, p4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_6
    return-wide p2

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    if-gtz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public static n(II)Ludl;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1}, Ludl;-><init>(II)V

    goto/32 :goto_7

    nop

    nop

    :goto_1
    if-le p1, v0, :cond_0

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p0, Ludl;->d:Ludl;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ludl;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/high16 v0, -0x80000000

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public static o(Ludk;)Ludk;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

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

    :goto_1
    new-instance v1, Ludk;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    iget v2, p0, Ludk;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget p0, p0, Ludk;->a:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    invoke-direct {v1, p0, v2, v0}, Ludk;-><init>(III)V

    goto/32 :goto_9

    nop

    nop

    :goto_d
    iget v0, p0, Ludk;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    const/4 v0, -0x2

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    goto :goto_11

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-gtz v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static p(F)F
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    div-double/2addr v0, v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2
    sget-wide v2, Lucz;->a:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    double-to-float p0, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    float-to-double v0, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1f

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xb

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static q(F)I
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    const-string v0, "Cannot round NaN value."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_7
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static r(D)J
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-wide p0

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    const-string p1, "Cannot round NaN value."

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
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop
.end method

.method public static s(Luad;Lubo;Ltzy;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    goto/32 :goto_15

    nop

    nop

    :goto_2
    new-instance v0, Luhz;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lufi;

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_5
    iget p1, p0, Lueo;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_6
    instance-of p1, p0, Lufi;

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

    :goto_7
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    invoke-static {v1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq p0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, v1}, Lunx;->c(Luad;Ljava/lang/Object;)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0, v1}, Luad;->get(Luac;)Luab;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_f
    invoke-static {p0, v1}, Lunx;->c(Luad;Ljava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_10
    sget-object v1, Luaa;->k:Ltzz;

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

    nop

    :goto_11
    invoke-static {p0}, Luhg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, v0, Lues;->a:Luad;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    :goto_17
    goto/16 :goto_32

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_32

    nop

    nop

    :catchall_0
    move-exception p1

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

    :goto_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1, v0, v0}, Luch;->P(Lubo;Ljava/lang/Object;Ltzy;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1c
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    throw p1

    nop

    nop

    :goto_1f
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_20
    if-eq p0, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_42

    nop

    nop

    :goto_21
    if-nez p1, :cond_3

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    :goto_22
    invoke-interface {p2}, Ltzy;->r()Luad;

    move-result-object v0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p0, v1}, Lunx;->b(Luad;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {v0, v0, p1}, Luch;->N(Luns;Ljava/lang/Object;Lubo;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1, v1, v2}, Lueo;->c(II)Z

    move-result p1

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

    :goto_26
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_27
    iget-object p1, v0, Lugb;->b:Lueo;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_28
    sget-object v2, Luaa;->k:Ltzz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x0

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2a
    invoke-interface {v0, v2}, Luad;->get(Luac;)Luab;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2b
    goto :goto_32

    nop

    nop

    :goto_2c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_5
    goto/32 :goto_3c

    nop

    :goto_2e
    invoke-static {p0}, Lucu;->r(Luad;)V

    goto/32 :goto_20

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Luhf;->z()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_31
    sget-object p0, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Lufi;->b:Ljava/lang/Throwable;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v0, p0, p2}, Luns;-><init>(Luad;Ltzy;)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_35
    new-instance v0, Lugb;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_36
    iget-object p0, v0, Lugb;->b:Lueo;

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_39
    throw p0

    nop

    :goto_3a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-eq p1, p0, :cond_6

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_16

    nop

    nop

    :goto_3d
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v0, p0, p2}, Luhz;-><init>(Luad;Ltzy;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3f
    if-nez p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-string p1, "Already suspended"

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

    :goto_41
    invoke-static {v0, v0, p1}, Luch;->N(Luns;Ljava/lang/Object;Lubo;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_42
    new-instance v0, Luns;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_43
    invoke-static {v0, p0}, Lufo;->a(Luad;Luad;)Luad;

    move-result-object p0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {v0, p0, p2}, Lugb;-><init>(Luad;Ltzy;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_45
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_46
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop
.end method

.method public static t(Lufs;Luad;ILubo;)Lugy;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    nop

    :goto_1
    invoke-static {p2}, Lufv;->g(I)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-direct {p1, p0, p3}, Luhi;-><init>(Luad;Lubo;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Lufo;->b(Lufs;Luad;)Luad;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-static {p2, p3, p1, p1}, Lufv;->f(ILubo;Ljava/lang/Object;Ltzy;)V

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-direct {p1, p0, v0}, Luhq;-><init>(Luad;Z)V

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    new-instance p1, Luhi;

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

    :goto_9
    const/4 v0, 0x1

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

    nop

    :goto_a
    goto :goto_7

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p1, Luhq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public static u(Luad;Lubo;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    :goto_1
    check-cast v1, Lugj;

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, v2, Luev;->b:Lugj;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_4
    if-nez v2, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_5
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_8
    invoke-static {v2, p0}, Lufo;->b(Lufs;Luad;)Luad;

    move-result-object p0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    invoke-direct {v2, p0, v0, v1}, Luev;-><init>(Luad;Ljava/lang/Thread;Lugj;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_a
    sget-object v2, Lugs;->a:Lugs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    invoke-static {}, Luhu;->a()Lugj;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0, v1}, Luad;->plus(Luad;)Luad;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    const-string p1, "ERROR_Lucd"

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_2a

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Lugj;->u(Lugj;)V

    :goto_11
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p0

    nop

    nop

    if-nez p0, :cond_7

    nop

    iget-object p0, v2, Luev;->b:Lugj;

    nop

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_3

    nop

    nop

    invoke-virtual {p0}, Lugj;->l()J

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    nop

    :cond_3
    const-wide p0, 0x7fffffffffffffffL

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2}, Luhf;->eN()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, p0, p1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_3b

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_17
    check-cast v1, Luaa;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    :goto_19
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    instance-of p1, p0, Lufi;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p0, v1}, Luad;->get(Luac;)Luab;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    invoke-static {p0}, Lugj;->t(Lugj;)V

    :goto_1d
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v2, Luev;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_20
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

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

    :goto_22
    check-cast v1, Lugj;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v1, Luhu;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object p1, p0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v1, Luaa;->k:Ltzz;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2}, Luhf;->z()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sget-object v1, Luhu;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p1}, Lugj;->t(Lugj;)V

    :goto_2a
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_6

    nop

    :goto_2c
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_2d
    throw p0

    nop

    :goto_2e
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2f
    iget-object p1, v2, Luev;->b:Lugj;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez p0, :cond_6

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

    :cond_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_41

    nop

    :goto_34
    goto/32 :goto_40

    nop

    nop

    :goto_35
    throw p0

    nop

    :cond_7
    :try_start_1
    const-string p0, "ERROR_Lucd"

    nop

    nop

    nop

    nop

    invoke-static {p0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/InterruptedException;

    nop

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v2, p0}, Luhf;->J(Ljava/lang/Object;)Z

    throw p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

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

    :goto_36
    goto/16 :goto_11

    nop

    nop

    :cond_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {p1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz p1, :cond_9

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v2, p0}, Lufo;->b(Lufs;Luad;)Luad;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3c
    const v0, 0x19

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

    :goto_3d
    sget-object v1, Luhu;->a:Ljava/lang/ThreadLocal;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz p0, :cond_a

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3f
    instance-of v2, v1, Lugj;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_40
    const/4 p1, 0x0

    nop

    :goto_41
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p0, v2, Luev;->b:Lugj;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_43
    sget-object v2, Lugs;->a:Lugs;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {p0, p1, v2, v2}, Lufv;->f(ILubo;Ljava/lang/Object;Ltzy;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_45
    iget-object p0, p1, Lufi;->b:Ljava/lang/Throwable;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {p0}, Luhg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_47
    check-cast p1, Lufi;

    nop

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

    nop
.end method

.method public static synthetic v(Lufs;Luad;Lubo;I)Lufy;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lufv;->g(I)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p1, Luae;->a:Luae;

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    and-int/2addr p3, v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, p2, p1, p1}, Lufv;->f(ILubo;Ljava/lang/Object;Ltzy;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p1, p0, v0}, Lues;-><init>(Luad;Z)V

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    return-object p1

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, p1}, Lufo;->b(Lufs;Luad;)Luad;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Lues;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p1, p0, p2}, Luhh;-><init>(Luad;Lubo;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p1, Luhh;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p3, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static synthetic w(Lubo;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Luae;->a:Luae;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {v0, p0}, Lucd;->u(Luad;Lubo;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static synthetic x(Lufs;Luad;ILubo;I)Lugy;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lucd;->t(Lufs;Luad;ILubo;)Lugy;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p1, Luae;->a:Luae;

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    and-int/lit8 v0, p4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    if-nez p4, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    and-int/lit8 p4, p4, 0x2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static y(Ljava/util/Collection;Ltzy;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1, v0}, Lugy;->l(Ltzy;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Ltyg;->a:Ltyg;

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

    nop

    nop

    :goto_3
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lueu;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    and-int v3, v1, v2

    nop

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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    :goto_9
    goto :goto_11

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    if-nez p1, :cond_1

    nop

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

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_2

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p0, v0, Lueu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_e
    move-object v0, p1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_f
    const/high16 v2, -0x80000000

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

    :goto_10
    invoke-direct {v0, p1}, Lueu;-><init>(Ltzy;)V

    :goto_11
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_12
    iput v1, v0, Lueu;->c:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    if-eq p1, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_16
    iget v2, v0, Lueu;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, v0, Lueu;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1c
    instance-of v0, p1, Lueu;

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

    :goto_1d
    throw p0

    nop

    :goto_1e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v0, Lueu;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v1, Luag;->a:Luag;

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

    nop

    :goto_21
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eq v2, v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    :goto_23
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_26
    iput v3, v0, Lueu;->c:I

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

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-object p0

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2b
    iget v1, v0, Lueu;->c:I

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

    :goto_2c
    iget-object p1, v0, Lueu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :goto_2f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast p1, Lugy;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_31
    goto :goto_2f

    nop

    nop

    :goto_32
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_6
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sub-int/2addr v1, v2

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

    :goto_35
    const v1, 0x14

    nop

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
.end method

.method public static z(Lujq;Ljava/lang/Object;Ljava/lang/Object;Ltzy;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p2, v0, Lukc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Lukc;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ne v2, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v0, p3

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

    :goto_7
    throw p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_26

    nop

    nop

    :goto_9
    iget v1, v0, Lukc;->c:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lukc;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p3}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1c

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    const/4 v3, 0x1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    :goto_11
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    iput v3, v0, Lukc;->c:I

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

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_16
    invoke-static {p3}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    :goto_17
    and-int v3, v1, v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_18
    if-eq p0, v1, :cond_3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, p2}, Lulm;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    return-object v1

    nop

    :goto_1c
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v3, :cond_4

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    :goto_1e
    instance-of v0, p3, Lukc;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1f
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_21
    iput-object p2, v0, Lukc;->a:Ljava/lang/Object;

    nop

    nop

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

    :goto_22
    sget-object v1, Luag;->a:Luag;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_23
    if-nez v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_25
    invoke-interface {p0, p1, v0}, Lujq;->a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_11

    nop

    :goto_27
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_29
    iget v2, v0, Lukc;->c:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2a
    const/high16 v2, -0x80000000

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2b
    iput v1, v0, Lukc;->c:I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance p0, Lulm;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v0, p3}, Lukc;-><init>(Ltzy;)V

    :goto_2e
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p3, v0, Lukc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_30
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
