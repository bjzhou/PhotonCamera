.class public abstract Ltkg;
.super Ltis;
.source "PG"


# static fields
.field public static final aU:Ljava/util/Map;


# instance fields
.field public aV:I

.field protected aW:Ltmp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    sput-object v0, Ltkg;->aU:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Ltmp;->a:Ltmp;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ltis;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Ltkg;->aW:Ltmp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Ltkg;->aV:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop
.end method

.method protected static A(Ljava/lang/Class;Ltkg;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Ltkg;->aU:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ltkg;->z()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method protected static final B(Ltkg;Z)Z
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_8
    move-object p1, p0

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

    :goto_a
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    invoke-virtual {v1, p0}, Ltlz;->b(Ljava/lang/Object;)Ltmf;

    move-result-object v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    :goto_e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_f
    if-ne v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    :goto_10
    invoke-interface {v1, p0}, Ltmf;->k(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    const v0, 0x20

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

    :goto_12
    goto/32 :goto_19

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    check-cast v1, Ljava/lang/Byte;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_17
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    if-eq v1, v0, :cond_2

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_12

    nop

    :goto_1c
    goto/32 :goto_13

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v0, p1}, Ltkg;->a(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v0}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v1, Ltlz;->a:Ltlz;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static E(Ltkg;)V
    .locals 4

    goto/32 :goto_1

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

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_14

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

    :goto_5
    invoke-direct {p0}, Ltmn;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v2, 0x1be

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    const v1, 0xd

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ltkg;->p()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    goto :goto_14

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, Ltky;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    :goto_11
    new-instance p0, Ltmn;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v2, p0, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static F(Ltlq;Ljava/lang/Object;Ltlq;ILtmx;)Ltlk;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1, p2, v1}, Ltlk;-><init>(Ltlq;Ljava/lang/Object;Ltlq;Ltkf;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_1

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
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    new-instance v0, Ltlk;

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

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, p3, p4}, Ltkf;-><init>(ILtmx;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v1, Ltkf;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public static q(Ltkg;[BIILtjv;)Ltkg;
    .locals 7

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    if-nez p1, :cond_1

    nop

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

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_24

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Ltky;

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

    :goto_d
    invoke-direct {p1, p0}, Ltky;-><init>(Ljava/io/IOException;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ltkg;->o()Ltkg;

    move-result-object p0

    nop

    nop

    :try_start_0
    sget-object v0, Ltlz;->a:Ltlz;

    nop

    nop

    nop

    invoke-virtual {v0, p0}, Ltlz;->b(Ljava/lang/Object;)Ltmf;

    move-result-object v6

    nop

    nop

    nop

    add-int v4, p2, p3

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Ltiy;

    nop

    invoke-direct {v5, p4}, Ltiy;-><init>(Ltjv;)V

    move-object v0, v6

    nop

    nop

    move-object v1, p0

    nop

    move-object v2, p1

    nop

    move v3, p2

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {v0 .. v5}, Ltmf;->i(Ljava/lang/Object;[BIILtiy;)V

    invoke-interface {v6, p0}, Ltmf;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ltmn; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_11
    new-instance p0, Ltky;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Ltmn;->a()Ltky;

    move-result-object p0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-boolean p1, p0, Ltky;->a:Z

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_15
    instance-of p1, p1, Ltky;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_16
    new-instance p1, Ltky;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    if-eqz p3, :cond_3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    invoke-direct {p1, p0}, Ltky;-><init>(Ljava/io/IOException;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    :goto_1b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    :goto_1f
    new-instance p1, Ltky;

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

    :goto_20
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_21
    throw p0

    nop

    nop

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    throw p1

    nop

    nop

    :catch_3
    move-exception p0

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

    :goto_23
    throw p0

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop
.end method

.method public static r(Ltki;)Ltki;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ltki;->size()I

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, v0}, Ltki;->d(I)Ltki;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    add-int/2addr v0, v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static s(Ltkl;)Ltkl;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ltkl;->size()I

    move-result v0

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

    :goto_1
    add-int/2addr v0, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-interface {p0, v0}, Ltkl;->f(I)Ltkl;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop
.end method

.method public static t(Ltkm;)Ltkm;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-interface {p0, v0}, Ltkm;->f(I)Ltkm;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr v0, v0

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

    :goto_3
    invoke-interface {p0}, Ltkm;->size()I

    move-result v0

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
.end method

.method public static u(Ltkp;)Ltkp;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-interface {p0, v0}, Ltkp;->a(I)Ltkp;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ltkp;->size()I

    move-result v0

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
.end method

.method public static v(Ltkv;)Ltkv;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    add-int/2addr v0, v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, v0}, Ltkv;->e(I)Ltkv;

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

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ltkv;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method static varargs x(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    instance-of p1, p0, Ljava/lang/RuntimeException;

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

    :goto_3
    throw p0

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_a

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

    :catch_1
    move-exception p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    new-instance p1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    new-instance p1, Ljava/lang/RuntimeException;

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

    :goto_a
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_0

    nop

    nop

    :goto_c
    if-nez p1, :cond_0

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
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    if-eqz p1, :cond_1

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

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_e
    instance-of p1, p0, Ljava/lang/Error;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p0, Ljava/lang/Error;

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

    :goto_11
    throw p1

    nop

    nop

    nop

    nop

    :goto_12
    const-string p2, "Unexpected exception thrown by generated accessor method."

    nop

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

    nop

    :goto_13
    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method


# virtual methods
.method public final C()Z
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    const/high16 v0, -0x80000000

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    goto/32 :goto_1

    nop

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

    :goto_4
    iget p0, p0, Ltkg;->aV:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    and-int/2addr p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    const/4 p0, 0x1

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
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    return p0

    nop
.end method

.method public final D(I)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

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
    const/4 v0, 0x0

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

    :goto_2
    invoke-virtual {p0, p1, v0}, Ltkg;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method protected abstract a(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public final synthetic db()Ltlp;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ltkb;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 v0, 0x5

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

    :goto_3
    invoke-virtual {p0, v0}, Ltkg;->D(I)Ljava/lang/Object;

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
.end method

.method public final synthetic dc()Ltlp;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const/4 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Ltkb;

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
.end method

.method public final dd(Ltjs;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, p0, v1}, Ltmf;->m(Ljava/lang/Object;Lqnt;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x4

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

    :goto_5
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_13

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Ltlz;->a:Ltlz;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p0}, Ltlz;->b(Ljava/lang/Object;)Ltmf;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p1, Ltjs;->f:Lqnt;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

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

    nop

    :goto_d
    new-instance v1, Lqnt;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, p1}, Lqnt;-><init>(Ltjs;)V

    :goto_13
    goto/32 :goto_2

    nop

    nop
.end method

.method public final e(Ltmf;)I
    .locals 3

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    iput v0, p0, Ltkg;->aV:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-gez p1, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4
    or-int/2addr v0, p1

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_7
    new-instance p1, Ljava/lang/IllegalStateException;

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

    :goto_8
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    throw p0

    nop

    :goto_a
    goto/32 :goto_1e

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

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

    :goto_e
    const/high16 v1, -0x80000000

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1}, Ltkg;->k(Ltmf;)I

    move-result p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    const-string v1, "serialized size must be non-negative, was "

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_13
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    and-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    if-gez p0, :cond_1

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

    :goto_16
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_17
    and-int/2addr v0, v2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return p1

    nop

    nop

    :goto_19
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Ltkg;->aV:I

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne v0, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p1}, Ltkg;->k(Ltmf;)I

    move-result p0

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

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_1e
    goto/32 :goto_c

    nop

    :goto_1f
    throw p1

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x2

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

    :goto_22
    iget v0, p0, Ltkg;->aV:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0x20

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_26
    const v2, 0x7fffffff

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Ltlz;->a:Ltlz;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_2
    const v0, 0x5

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Ltlz;->b(Ljava/lang/Object;)Ltmf;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

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
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    return v0

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0, p0, p1}, Ltmf;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    const/4 p0, 0x1

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

    :goto_10
    if-ne v1, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_11
    check-cast p1, Ltkg;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    return v0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    if-eq p0, p1, :cond_2

    nop

    nop

    goto/32 :goto_8

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

    :goto_15
    goto/32 :goto_19

    nop

    nop

    :goto_16
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    :goto_1a
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Ltkg;->aT:I

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Ltkg;->aT:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ltkg;->j()I

    move-result p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ltkg;->j()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    :goto_a
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop
.end method

.method public final j()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Ltlz;->a:Ltlz;

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Ltlz;->b(Ljava/lang/Object;)Ltmf;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-interface {v0, p0}, Ltmf;->b(Ljava/lang/Object;)I

    move-result p0

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

.method public final k(Ltmf;)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Ltlz;->b(Ljava/lang/Object;)Ltmf;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    sget-object p1, Ltlz;->a:Ltlz;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-interface {p1, p0}, Ltmf;->a(Ljava/lang/Object;)I

    move-result p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1, p0}, Ltmf;->a(Ljava/lang/Object;)I

    move-result p0

    nop

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

.method public final l()I
    .locals 4

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_28

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x0

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

    :goto_3
    and-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Ltkg;->aV:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_8
    iput v1, p0, Ltkg;->aV:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 v2, -0x80000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_e
    if-gez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_14
    or-int/2addr v1, v0

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

    :goto_15
    goto/16 :goto_1

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_19
    and-int/2addr v0, v3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move p0, v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-gez p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x19

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_20
    const v3, 0x7fffffff

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v0, p0, Ltkg;->aV:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_24
    invoke-virtual {p0, v2}, Ltkg;->k(Ltmf;)I

    move-result p0

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

    :goto_25
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_26
    invoke-static {v0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_27
    if-ne v0, v3, :cond_4

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_4
    :goto_28
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    throw v0

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_23

    nop

    nop

    :goto_2b
    const-string v1, "serialized size must be non-negative, was "

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

    :goto_2c
    invoke-virtual {p0, v2}, Ltkg;->k(Ltmf;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public final m()Ltkb;
    .locals 1

    goto/32 :goto_2

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

    nop

    :goto_1
    invoke-virtual {p0, v0}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    check-cast p0, Ltkb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final synthetic n()Ltlq;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ltkg;

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
    invoke-virtual {p0, v0}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final o()Ltkg;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ltkg;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_3
    invoke-virtual {p0, v0}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object p0

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
.end method

.method public final p()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Ltkg;->B(Ltkg;Z)Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x13

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    invoke-static {p0, v1, v0}, Ltls;->b(Ltlq;Ljava/lang/StringBuilder;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    const-string v2, "# "

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_12
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final w()Ltlx;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ltlx;

    nop

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

    :goto_1
    const/4 v0, 0x7

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
    invoke-virtual {p0, v0}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object p0

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
    return-object p0

    nop

    nop

    nop
.end method

.method protected final y()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Ltlz;->b(Ljava/lang/Object;)Ltmf;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Ltlz;->a:Ltlz;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {p0}, Ltkg;->z()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, p0}, Ltmf;->g(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final z()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Ltkg;->aV:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    const v0, 0x1e

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

    :goto_2
    and-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget v0, p0, Ltkg;->aV:I

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_8
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    const v1, 0x7fffffff

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
