.class public final Lkav;
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
.end method

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_3

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>([B[B)V
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
    new-instance p0, Ljava/util/ArrayDeque;

    nop

    nop

    goto/32 :goto_3

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

    nop

    :goto_3
    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([C[B)V
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

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    sget-object p0, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static A(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v1, Lpck;

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

    :goto_1
    if-eqz v0, :cond_0

    nop

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

    :goto_2
    array-length v0, p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Lrgw;->J([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p1, Ljava/util/ArrayList;

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

    :goto_a
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_9

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    const v0, 0x12

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
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

    nop

    :goto_11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_12

    nop

    :goto_15
    const-string v0, ","

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_18
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

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

    :goto_19
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    return-object p1

    nop

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v1, v0}, Lkav;->B(Lpck;Ljava/util/Set;)Z

    move-result v2

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

    :goto_1e
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

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
.end method

.method public static B(Lpck;Ljava/util/Set;)Z
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    :goto_4
    const v0, 0x12

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Lpck;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_c

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
    const-string v1, "x"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    iget p0, p0, Lpck;->b:I

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

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public static C(I)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    add-int/lit8 p0, p0, -0x1

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
    return p0

    nop

    nop

    nop

    nop
.end method

.method public static D(I)I
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x2

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    const-string v0, "unknown squad mode"

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_5
    return v0

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    goto/32 :goto_b

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    if-eq p0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p0, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_13
    if-ne p0, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    :goto_14
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
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
.end method

.method public static E(I)I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

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

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_9

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

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    if-ne p0, v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static F(I)I
    .locals 0

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

    :goto_1
    add-int/lit8 p0, p0, -0x1

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

.method public static G(I)I
    .locals 6

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq p0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    if-ne p0, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5
    const/4 v1, 0x2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x11

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    return v1

    nop

    :goto_8
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x2

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_f
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v4, 0x1fb

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

    :goto_11
    aput-object v1, v2, v4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_13
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

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

    :goto_16
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, "Unknown aspect ratio "

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

    :goto_18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_19
    aput-object v3, v2, v5

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-array v2, v2, [Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v4, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x1

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

    :goto_1d
    throw v0

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_20
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v4, v5, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    return v0

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public static H(I)Lpby;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Lpby;->c:Lpby;

    nop

    goto/32 :goto_0

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
    add-int/lit8 p0, p0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Lpby;->a:Lpby;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    sget-object p0, Lpby;->b:Lpby;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    if-ne p0, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static I(Llxb;Landroid/graphics/Bitmap;)V
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

    :goto_1
    invoke-interface {p0, p1}, Llxb;->dh(Landroid/graphics/Bitmap;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static J(Llxa;)V
    .locals 1

    goto/32 :goto_2

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
    invoke-interface {p0, v0}, Llxa;->aa(Ljava/lang/Integer;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
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

.method public static K()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "Only used by Burst and Photosphere sessions"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xc

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    const v1, 0x8

    nop

    nop

    goto/32 :goto_5

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
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static L()Lsui;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_4

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    throw v0

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    const v1, 0x15

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1e

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "Not supported for CaptureSessions unless overridden"

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

.method public static M()Lsui;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_5

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x14

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    const-string v1, "Not supported for CaptureSessions unless overridden"

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

    :goto_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop
.end method

.method public static N()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

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

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x15

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
    const v0, 0xf

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

    :goto_8
    const-string v1, "Not supported for CaptureSessions unless overridden"

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public static O(Ljava/util/UUID;ZLjava/lang/String;ZLexq;)V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    nop

    :try_start_0
    sget-object v2, Lexs;->a:Lts;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "GCreations"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v0, v3}, Lts;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v2, Lexs;->a:Lts;

    nop

    const-string v3, "GCamera"

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1, v3}, Lts;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "CameraBurstID"

    nop

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    invoke-interface {p4, v0, v2, v3}, Lexq;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "BurstID"

    nop

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p4, v1, v0, p0}, Lexq;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    const-string p0, "BurstPrimary"

    nop

    nop

    nop

    nop

    nop

    const-string p1, "1"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p4, v1, p0, p1}, Lexq;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz p3, :cond_2

    nop

    sget-object p0, Lptz;->b:[Ljava/lang/String;

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p3, 0x2

    nop

    nop

    nop

    nop

    nop

    if-ge p1, p3, :cond_2

    nop

    nop

    aget-object p3, p0, p1

    nop

    nop

    nop

    const-string v0, "DisableAutoCreation"

    nop

    nop

    nop

    new-instance v1, Leyr;

    nop

    const/16 v2, 0x200

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Leyr;-><init>(I)V

    new-instance v2, Leyr;

    nop

    nop

    invoke-direct {v2}, Leyr;-><init>()V

    invoke-interface {p4, v0, v1, p3, v2}, Lexq;->g(Ljava/lang/String;Leyr;Ljava/lang/String;Leyr;)V

    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    :cond_2
    sget-object p0, Lidb;->a:Lidb;

    nop

    nop

    nop

    invoke-virtual {p0}, Lidb;->f()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    if-nez p0, :cond_3

    nop

    invoke-static {p4, p2}, Lpuf;->q(Lexq;Ljava/lang/String;)V
    :try_end_0
    .catch Lexp; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Ljava/lang/RuntimeException;

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    const-string v0, "http://ns.google.com/photos/1.0/creations/"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x16

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public static P(Lpcg;)Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    sget-object v0, Lpcg;->d:Lpcg;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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
    return p0

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lpcg;->b:Lpcg;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    if-ne p0, v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    goto :goto_3

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    if-eq p0, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop
.end method

.method private static Q(Lhoh;)Z
    .locals 1

    goto/32 :goto_a

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lhna;->ac:Lhmn;

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

    :goto_4
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_5
    const/4 p0, 0x1

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

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lhna;->H:Lhmn;

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
.end method

.method private static R(Landroid/content/Context;Landroid/view/View;Lnbh;)Landroid/util/Size;
    .locals 2

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2
    goto/16 :goto_1e

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2, p1}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

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

    :goto_7
    if-lt p0, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_8
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p1, Lnbh;->d:Lnbh;

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

    :goto_d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object p1, Lnbh;->a:Lnbh;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-le v0, v1, :cond_1

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

    :cond_1
    :goto_11
    goto/32 :goto_6

    nop

    nop

    :goto_12
    invoke-direct {p1, p2, p0}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_13
    new-instance p0, Landroid/util/Size;

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

    :goto_14
    new-instance p1, Landroid/util/Size;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_15
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p1, p2, p0}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

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

    :goto_1a
    goto/32 :goto_33

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    const v0, 0x14

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

    :goto_1d
    invoke-direct {p0, v0, p1}, Landroid/util/Size;-><init>(II)V

    :goto_1e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_20
    new-instance p0, Landroid/util/Size;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    :goto_22
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    nop

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

    :goto_25
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

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

    :goto_26
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_28
    if-eqz p1, :cond_3

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_29
    if-lt v0, p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-object p1

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_5

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2d
    goto :goto_2b

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_14

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-object p1

    nop

    :goto_33
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-gt v0, v1, :cond_6

    nop

    goto/32 :goto_11

    nop

    :cond_6
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p2, p1}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result p1

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

    nop

    :goto_38
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {p0, v0, p1}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop
.end method

.method public static a(Ljava/lang/String;Lsui;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, v1, v0, p0}, Lsrv;->i(Lsui;Ljava/lang/Class;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

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

    nop

    :goto_5
    const v1, 0x8

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
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

    :goto_7
    new-instance v0, Limd;

    nop

    goto/32 :goto_a

    nop

    nop

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
    invoke-direct {v0, p0, v1}, Limd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_c

    nop

    nop

    :goto_a
    const/16 v1, 0xf

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    sget-object p0, Lstd;->a:Lstd;

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

    :goto_d
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    const-class v1, Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static b()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lhmz;->a:Lhmo;

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

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

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lkax;->a:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static c(Lkbz;Lkbf;Lkmr;ZLmkn;)Lsui;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1, p2, p3, p4}, Lkbz;->c(Lkbf;Lkmr;ZLmkn;)Lsui;

    move-result-object p0

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
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static d(Lhoh;)Ljava/lang/String;
    .locals 0

    goto/32 :goto_3

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p0, "-fi"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-static {p0}, Lkav;->Q(Lhoh;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    const-string p0, "-v1"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Lhna;->a:Lhmo;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static e(Ljava/lang/String;)Landroid/os/Handler;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Landroid/os/Handler;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

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

    nop

    :goto_5
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    new-instance v0, Landroid/os/HandlerThread;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public static final g(Lpsf;)Ljava/io/FileInputStream;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lpsf;->d()Ljava/io/FileInputStream;

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
.end method

.method public static final h(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

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
    goto/32 :goto_e

    nop

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

    :goto_5
    const/16 v1, 0xa3c

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "Could not read file: %s, perhaps it is not a panorama."

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    sget-object v0, Ljua;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

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

    :goto_b
    check-cast v0, Lscz;

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

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/io/FileInputStream;

    nop

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0, v1, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public static final i(Lprw;)V
    .locals 0

    goto/32 :goto_1

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
    invoke-interface {p0}, Lprw;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static final j(Ljava/lang/String;ZLjava/util/List;)V
    .locals 0

    goto/32 :goto_3

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
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static k(Lpha;)Lkqa;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Lkqa;-><init>(Ljava/util/Set;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lkqa;

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

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
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

    :goto_5
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

    nop

    nop

    :goto_6
    invoke-direct {v1, p0}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    new-instance v1, Lsbt;

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

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_c
    const v0, 0x5

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static l(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkqa;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, p1}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lpha;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lkav;->k(Lpha;)Lkqa;

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
.end method

.method public static m(Ljava/util/List;)Lkqa;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lkqa;-><init>(Ljava/util/Set;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lryy;->E(Ljava/util/Collection;)Lryy;

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
    new-instance v0, Lkqa;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop
.end method

.method public static varargs n([Lpha;)Lkqa;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lkav;->m(Ljava/util/List;)Lkqa;

    move-result-object p0

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

    :goto_2
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static o()Lkqa;
    .locals 2

    goto/32 :goto_8

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

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lkqa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    sget-object v1, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_8
    const v0, 0x16

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

    :goto_9
    invoke-direct {v0, v1}, Lkqa;-><init>(Ljava/util/Set;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static p(Landroid/hardware/camera2/CaptureRequest$Key;Loyd;)Loyd;
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, v0}, Ljrq;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    new-instance p1, Ljrq;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, v1}, Limd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    new-instance v0, Limd;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, v0}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_b
    const v1, 0x19

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x8

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public static q(Z)Lryy;
    .locals 5

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_0
    sget p0, Lcom/a;->ab:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    invoke-static {v2, v1}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

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

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_3
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v3, Lpha;

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

    :goto_5
    new-instance v3, Lpha;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    new-instance v2, Lpha;

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

    :goto_7
    invoke-static {v2, v1, v3}, Lryy;->H(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    invoke-direct {v2, p0, v1}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v2, p0, v1}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz p0, :cond_2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_10
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v3, p0, v0}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_31

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Lpha;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v2, Lpha;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v3, p0, v0}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    :goto_1a
    new-instance v4, Lpha;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    :goto_1c
    sget-object p0, Lnyj;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1d
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v1, Lpha;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v1, p0, v0}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

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

    :goto_21
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

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

    :goto_22
    new-instance v2, Lpha;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_23
    invoke-direct {v2, p0, v1}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_25
    invoke-direct {v1, p0, v0}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_28
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_29
    invoke-direct {v1, p0, v0}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2b
    const v0, 0xd

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

    :goto_2c
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2d
    sget-object p0, Lnyj;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2e
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez p0, :cond_3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    :goto_30
    invoke-direct {v4, p0, v0}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_31
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_OIS_DATA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v1, Lpha;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_34
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_OIS_DATA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v2, v1, v3, v4}, Lryy;->I(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static synthetic r(Lkme;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lkme;->b:Lkmg;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lkmg;->m()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lkme;->b:Lkmg;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iget-object v0, p0, Lkme;->b:Lkmg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Lkmg;->k:Lkkt;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iget-object v0, p0, Lkme;->b:Lkmg;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lkmg;->n()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lkkt;->c()V

    goto/32 :goto_c

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Llad;->k(Ljava/lang/Class;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lkmg;->o:Llad;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lkmg;->l()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lkme;->b:Lkmg;

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
    const-class v0, Lkmg;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public static synthetic s(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_13

    nop

    :goto_4
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    const v1, 0x1c

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

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    const-string v1, ", "

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_15
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    check-cast v1, Ljava/lang/CharSequence;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_18
    if-nez v1, :cond_2

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

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    check-cast v1, Ljava/lang/CharSequence;

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
.end method

.method public static synthetic t(Lrss;)Ljava/util/Set;
    .locals 1

    goto/32 :goto_2

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
    sget-object p0, Lsbn;->a:Lsbn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lsbt;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, p0}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Likm;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public static synthetic u(Ljava/util/Map;Ljava/util/function/Function;Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_3
    const/4 p0, 0x1

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

    nop

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_8

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
    invoke-static {p0, p1, p2}, Lj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public static v(Loyd;Lpnv;Loyn;Ljava/util/function/Predicate;Lkyq;)Lkzd;
    .locals 9

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1d

    nop

    :goto_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct/range {v3 .. v8}, Lhaq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[S)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v4, p0

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

    :goto_4
    const v1, 0x7f140062

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    const v0, 0x16

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    new-instance p1, Lhaq;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v7, 0x4

    nop

    nop

    goto/32 :goto_17

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    move-object v3, p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Lkzd;->c(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    iput-object v1, v0, Lkzd;->c:Ljava/util/function/Predicate;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v1, Ljtb;

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

    :goto_d
    move-object v5, p3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_f
    iput-object p3, v0, Lkzd;->b:Ljava/util/function/Predicate;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x15

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p2, v0, Lkzd;->a:Loyn;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Lkzd;->h(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    const v1, 0x7f140059

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

    :goto_16
    iput-object p1, v0, Lkzd;->e:Ljava/util/function/Consumer;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v8, 0x0

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

    :goto_18
    move-object v6, p4

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_19
    add-int v0, v0, v1

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

    :goto_1a
    invoke-direct {v1, p0, p1, v2}, Ljtb;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p4}, Lkzd;->n(Lkyq;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {}, Lkze;->g()Lkzd;

    move-result-object v0

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
.end method

.method public static synthetic w(Landroid/media/MediaFormat;Landroid/os/Handler;Lqht;Lows;Ltbs;Lpnu;Lhoh;Lpcu;Lnpr;)Lkhx;
    .locals 12

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    new-instance v1, Lkip;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    move-object/from16 v8, p8

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    move-object v1, p0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v3, Llqi;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    move-object v2, p1

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

    :goto_9
    move-object/from16 v4, p5

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p3, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_2a

    nop

    nop

    :goto_b
    invoke-direct/range {v0 .. v8}, Lkie;-><init>(Landroid/media/MediaFormat;Landroid/os/Handler;Llqk;Lpnu;Lqht;Lhoh;Lpcu;Lnpr;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v1, v0}, Lkip;-><init>(Lkhx;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_d
    invoke-static/range {p6 .. p6}, Lkav;->Q(Lhoh;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_e
    move-object/from16 v7, p7

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lkif;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    new-instance v0, Ljso;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v0, Lhna;->a:Lhmo;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    move-object/from16 v8, p8

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, p0, p2, v8, v4}, Lkif;-><init>(Landroid/media/MediaFormat;Lqht;Lnpr;Lpnu;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v3, v0, v10}, Llqi;-><init>(Ltbs;Lqjw;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_16
    move-object/from16 v0, p4

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

    :goto_17
    return-object v1

    nop

    nop

    :goto_18
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_19
    move-object/from16 v6, p6

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0, v10, v1}, Ljso;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_1c
    new-instance v10, Lqjw;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1d
    move-object v5, p2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v9, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1d

    nop

    nop

    :goto_21
    invoke-virtual {p3, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_22
    goto :goto_2b

    nop

    :goto_23
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v10, p2}, Lqjw;-><init>(Lqht;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v1, 0xb

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object v5, p2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v11, Lkie;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_29
    move-object/from16 v4, p5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move-object v0, v11

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2c
    move-object v0, v11

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

    :goto_2d
    goto/32 :goto_20

    nop

    nop
.end method

.method public static x(Landroid/content/Context;Landroid/view/View;Lnbh;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, Lkav;->R(Landroid/content/Context;Landroid/view/View;Lnbh;)Landroid/util/Size;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

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

    :goto_3
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

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

    :goto_5
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_1

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Lnbh;->d()Z

    move-result p2

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
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, -0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

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

    :goto_c
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    goto :goto_6

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public static y(Landroid/content/Context;Landroid/view/View;Lnbh;)V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2}, Lnbh;->ordinal()I

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move v3, v2

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    move p0, v3

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

    :goto_4
    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotX(F)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5
    move v2, p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iget p0, p2, Lnbh;->e:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x18

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, p1, p2}, Lkav;->R(Landroid/content/Context;Landroid/view/View;Lnbh;)Landroid/util/Size;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_29

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    int-to-float v0, v2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ne v0, v1, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

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

    :goto_f
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_18
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_1a
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

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

    :goto_1b
    goto :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_20
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_21
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0xa

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move p0, v2

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

    :goto_28
    return-void

    nop

    nop

    :goto_29
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2b
    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    goto/32 :goto_28

    nop

    nop
.end method

.method public static synthetic z(I)Ljava/lang/String;
    .locals 1

    goto/32 :goto_9

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

    nop

    :goto_1
    goto/32 :goto_a

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
    const-string p0, "LENS_SUGGESTION"

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

    :goto_4
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    if-ne p0, v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string p0, "null"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

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

    :goto_a
    const-string p0, "DEFAULT"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    if-ne p0, v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized f()Lkah;
    .locals 2

    goto/32 :goto_a

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    :goto_4
    const v1, 0x9

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

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    const-string v1, "Requesting mash trimmer but no start point yet"

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_a
    const v0, 0x17

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method
