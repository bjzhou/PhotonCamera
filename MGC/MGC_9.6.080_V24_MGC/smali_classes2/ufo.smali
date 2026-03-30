.class public final Lufo;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(Luad;Luad;)Luad;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, v0}, Lufo;->d(Luad;Luad;Z)Luad;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Lufo;->e(Luad;)Z

    move-result v0

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

    :goto_3
    invoke-interface {p0, p1}, Luad;->plus(Luad;)Luad;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static final b(Lufs;Luad;)Luad;
    .locals 2

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, v0}, Lufo;->d(Luad;Luad;Z)Luad;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    sget-object v0, Luaa;->k:Ltzz;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

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
    invoke-direct {p1, v0, v1}, Lufq;-><init>(J)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lufu;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    sget-boolean p1, Lufu;->a:Z

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6
    invoke-interface {p1, p0}, Luad;->plus(Luad;)Luad;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object p1, p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0, p1}, Luad;->plus(Luad;)Luad;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_e
    sget-object v0, Luge;->a:Lufp;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_f
    sget-object p0, Luge;->a:Lufp;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_9

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_16
    if-nez p1, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0, v0}, Luad;->get(Luac;)Luab;

    move-result-object p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_18
    if-eqz p0, :cond_2

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

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    if-ne p0, v0, :cond_3

    nop

    goto/32 :goto_1d

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-object p1

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1e
    const v0, 0xd

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

    :goto_1f
    new-instance p1, Lufq;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p0}, Lufs;->b()Luad;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static final c(Ltzy;Luad;Ljava/lang/Object;)Luhz;
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1, v0}, Luad;->get(Luac;)Luab;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, p1, p2}, Luhz;->P(Luad;Ljava/lang/Object;)V

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object v1

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_1f

    nop

    :goto_9
    sget-object v0, Luia;->a:Luia;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p0, Luao;

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1b

    nop

    nop

    :goto_c
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v1, Luhz;

    nop

    :goto_e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x9

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object v1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    :goto_12
    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_14
    instance-of v0, p0, Luao;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_15
    goto :goto_e

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1d

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    :goto_18
    goto/32 :goto_20

    nop

    :goto_19
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x9

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

    :goto_1b
    instance-of v0, p0, Lugb;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1c
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    :goto_1d
    invoke-interface {p0}, Luao;->bW()Luao;

    move-result-object p0

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
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_11

    nop

    :goto_20
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_21
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_22
    instance-of v0, p0, Luhz;

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

    nop

    :goto_23
    if-eqz p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method private static final d(Luad;Luad;Z)Luad;
    .locals 3

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Luad;->plus(Luad;)Luad;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lufo;->e(Luad;)Z

    move-result v1

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

    :goto_2
    if-nez v1, :cond_0

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_3
    check-cast p1, Luad;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_23

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1, p2, v1}, Luad;->fold(Ljava/lang/Object;Lubo;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    invoke-direct {v0}, Lucs;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, v0, Lucs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    sget-object v1, Lnht;->e:Lnht;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p0, Luad;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_1c

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, v0, Lucs;->a:Ljava/lang/Object;

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

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0, p1}, Luad;->plus(Luad;)Luad;

    move-result-object p0

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

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_12
    sget-object p2, Luae;->a:Luae;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p1, Luad;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v2, v0, p2}, Lufn;-><init>(Lucs;Z)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p1, v0, Lucs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    :goto_17
    invoke-static {p0}, Lufo;->e(Luad;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    new-instance v0, Lucs;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_19
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p0, p1, v2}, Luad;->fold(Ljava/lang/Object;Lubo;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p1, v0, Lucs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    sget-object p1, Luae;->a:Luae;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1f
    new-instance v2, Lufn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_20
    const v1, 0x1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    nop

    :goto_23
    goto/32 :goto_f

    nop

    nop

    :goto_24
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final e(Luad;)Z
    .locals 2

    goto/32 :goto_5

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

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v1, Lnht;->f:Lnht;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, v0, v1}, Luad;->fold(Ljava/lang/Object;Lubo;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x18

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
