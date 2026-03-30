.class public final Ltds;
.super Ltdn;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Ltds;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ltdn;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ltdn;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ltds;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method private static h(Ltds;)Z
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1e

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    instance-of v0, p0, Ljava/lang/Integer;

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

    nop

    nop

    :goto_7
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    instance-of p0, p0, Ljava/lang/Byte;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p0, :cond_4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    :goto_c
    instance-of v0, p0, Ljava/math/BigInteger;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return v1

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    :goto_11
    instance-of v0, p0, Ljava/lang/Number;

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

    :goto_12
    instance-of v0, p0, Ljava/lang/Short;

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

    :goto_13
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_5
    goto/32 :goto_f

    nop

    :goto_14
    check-cast p0, Ljava/lang/Number;

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

    :goto_15
    instance-of v0, p0, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Ltds;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x20

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

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

    :goto_19
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_10

    nop

    nop

    :goto_1b
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop
.end method


# virtual methods
.method public final a()D
    .locals 6

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    invoke-static {v4, p0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x8

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    goto :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1b

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    check-cast p0, Ljava/lang/Number;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v4, 0x37c

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    const/16 v4, 0x37e

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

    :goto_12
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v4, p0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    const v1, 0x19

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    const/16 v4, 0x37d

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v4, p0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_1b
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final b()Ljava/lang/Number;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ltds;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const-string v0, "Primitive is neither a number nor a string"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    instance-of v0, p0, Ljava/lang/Number;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ltel;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p0}, Ltel;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    instance-of v0, p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    goto/32 :goto_15

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
    goto/32 :goto_14

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    :goto_5
    goto/32 :goto_1d

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ltds;->b()Ljava/lang/Number;

    move-result-object p0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_a
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    :goto_c
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_f
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    iget-object v0, p0, Ltds;->a:Ljava/lang/Object;

    nop

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

    :goto_12
    const v1, 0x1d

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

    :goto_13
    iget-object p0, p0, Ltds;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Ltds;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Ltds;->f()Z

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1c
    instance-of v1, v0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Ltds;->g()Z

    move-result v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v1, "Unexpected value type: "

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1f
    new-instance v0, Ljava/lang/AssertionError;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    nop

    :goto_24
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()Ljava/math/BigDecimal;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    nop

    nop

    :goto_2
    check-cast v0, Ljava/math/BigDecimal;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Ltds;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x12

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_a
    goto :goto_12

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ltds;->c()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    instance-of v1, v0, Ljava/math/BigDecimal;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_11
    invoke-static {p0}, Lshf;->r(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    nop

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

    nop
.end method

.method public final e()Ljava/math/BigInteger;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Ltds;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    const v0, 0x9

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

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

    :goto_4
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    instance-of v1, v0, Ljava/math/BigInteger;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ltds;->c()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Ljava/math/BigInteger;

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

    nop

    :goto_c
    const v1, 0x20

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

    :goto_d
    return-object v0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Lshf;->s(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_13
    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Ltds;->b()Ljava/lang/Number;

    move-result-object p0

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

    :goto_18
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p0}, Ltds;->h(Ltds;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq p0, p1, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ltds;->b()Ljava/lang/Number;

    move-result-object p0

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

    :goto_2
    goto/16 :goto_1a

    nop

    :goto_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    :goto_5
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_7
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v2, :cond_3

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    iget-object p0, p1, Ltds;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ltds;->d()Ljava/math/BigDecimal;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz p0, :cond_4

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

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    :goto_10
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

    nop

    nop

    :goto_11
    iget-object v2, p0, Ltds;->a:Ljava/lang/Object;

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

    :goto_12
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz p0, :cond_5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_6
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_15
    if-nez v2, :cond_7

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    instance-of v2, v3, Ljava/math/BigDecimal;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_3a

    nop

    :goto_18
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_19
    move v0, v1

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1c
    return v0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v2, p1, Ltds;->a:Ljava/lang/Object;

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

    :goto_1f
    if-nez p1, :cond_8

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2a

    nop

    nop

    :goto_20
    cmpl-double v4, v2, p0

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_21
    instance-of v4, v3, Ljava/lang/Number;

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

    :goto_22
    iget-object v3, p1, Ltds;->a:Ljava/lang/Object;

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

    :goto_23
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Ltds;->e()Ljava/math/BigInteger;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_28
    const v0, 0x15

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

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Ltds;->a()D

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2b
    instance-of v2, v2, Ljava/math/BigInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return v1

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_30
    instance-of v3, v2, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1}, Ltds;->e()Ljava/math/BigInteger;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_4d

    nop

    :goto_34
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v4, :cond_9

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_9
    goto/32 :goto_4a

    nop

    nop

    :goto_36
    instance-of v2, v2, Ljava/math/BigInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_37
    if-nez v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {p0}, Ltds;->h(Ltds;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_39
    return p0

    nop

    nop

    :goto_3a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3b
    if-ne v2, v3, :cond_b

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v2, :cond_c

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3d
    invoke-static {p1}, Ltds;->h(Ltds;)Z

    move-result v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3e
    const/4 v1, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0}, Ltds;->d()Ljava/math/BigDecimal;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_48

    nop

    nop

    :goto_42
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_44
    invoke-virtual {p1}, Ltds;->a()D

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_45
    cmp-long p0, v2, p0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_46
    return v0

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_48
    iget-object v2, p0, Ltds;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_49
    if-nez v2, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_33

    nop

    nop

    :goto_4a
    instance-of v2, v2, Ljava/math/BigDecimal;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-lez v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_e
    goto/32 :goto_9

    nop

    :goto_4c
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_1a

    nop

    nop

    :goto_4f
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p1}, Ltds;->b()Ljava/lang/Number;

    move-result-object p0

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

    :goto_51
    if-eqz p0, :cond_f

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    :cond_f
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_52
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_53
    check-cast p1, Ltds;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_54
    if-nez v4, :cond_10

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_10
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    instance-of p0, p0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ltds;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final g()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    instance-of p0, p0, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    iget-object p0, p0, Ltds;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final hashCode()I
    .locals 4

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ltds;->b()Ljava/lang/Number;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    const v1, 0x1e

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_14

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    :goto_6
    instance-of v2, v0, Ljava/lang/Number;

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

    nop

    :goto_7
    invoke-virtual {p0}, Ltds;->b()Ljava/lang/Number;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    ushr-long v0, v2, v1

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

    :goto_b
    long-to-int p0, v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_d
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Ltds;->a:Ljava/lang/Object;

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

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Ltds;->h(Ltds;)Z

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

    nop

    :goto_12
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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
    return p0

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    xor-long/2addr v0, v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0xb

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    return p0

    nop

    nop

    :goto_1d
    goto/32 :goto_f

    nop

    nop
.end method
