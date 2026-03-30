.class public final Lsgo;
.super Ljava/util/AbstractMap;
.source "PG"


# static fields
.field public static final a:Ljava/util/Comparator;


# instance fields
.field public final b:[Ljava/lang/Object;

.field public final c:[I

.field public final d:Ljava/util/Set;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/String;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m(Ljava/util/Map$Entry;II[Ljava/lang/Object;[I)I
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    check-cast v0, Lsgn;

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

    :goto_1
    iget-object v2, v2, Lsgo;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    add-int/2addr p3, v1

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

    :goto_3
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lsgn;->a()I

    move-result v1

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

    :goto_5
    goto/32 :goto_9

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1, p2}, Lsgo;->da190e616797844b591057d0190e7728m(Ljava/lang/String;I)Ljava/util/Map$Entry;

    move-result-object p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    return p3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    const v0, 0x2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    iget-object v2, v0, Lsgn;->b:Lsgo;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    aput p3, p5, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    add-int/lit8 p2, p2, 0x1

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

    :goto_10
    invoke-static {v2, v0, p4, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Lsgn;->b()I

    move-result v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    aput-object p0, p4, p2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_14
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x14

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lsgn;->b()I

    move-result v2

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

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method private final 33f5b80483094659737b73d90f80a8a4m(I)Ljava/util/Map$Entry;
    .locals 2

    goto/32 :goto_13

    nop

    nop

    :goto_0
    iget-object v0, p0, Lsgo;->c:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lt p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    iget-object p0, p0, Lsgo;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Ljava/util/Map$Entry;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_9
    return-object p0

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
    goto/32 :goto_6

    nop

    :goto_c
    aget-object p0, p0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    aget v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    :goto_13
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v1, 0xa

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

    :goto_4
    sput-object v0, Lsgo;->a:Ljava/util/Comparator;

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lpqd;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_d
    invoke-direct {v0, v1}, Lpqd;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

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
    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lqnt;

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

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

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

    :goto_5
    invoke-static {v1, p1}, Lsgo;->e(II)Z

    move-result v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lsgn;

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

    :goto_7
    if-eqz v2, :cond_1

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    :goto_f
    const v0, 0x17

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

    :goto_10
    iget-object p0, p0, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, p0, v1}, Lsgn;-><init>(Lsgo;I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p0, Lqnt;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    filled-new-array {p1}, [I

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

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

    nop

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_18
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    const/4 v1, -0x1

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

    :goto_1a
    new-array v2, v1, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1c
    iput-object v0, p0, Lsgo;->e:Ljava/lang/Integer;

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

    nop

    :goto_1d
    if-nez v1, :cond_2

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

    nop

    nop

    :goto_1e
    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1f
    throw v0

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_21
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v0, p0, Lsgo;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v0, p0, Lsgo;->c:[I

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_4

    nop

    nop

    :goto_2a
    iput-object v0, p0, Lsgo;->f:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object v2, p0, Lsgo;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_25

    nop

    nop

    nop
.end method

.method public constructor <init>(Lsgo;Lsgo;)V
    .locals 21

    goto/32 :goto_76

    nop

    nop

    :goto_0
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_1
    move-object/from16 v6, p0

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v4, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3
    if-eqz v15, :cond_0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_86

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_85

    nop

    nop

    :goto_6
    move/from16 v17, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_7
    new-array v12, v10, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v7, v9}, Lsgo;->33f5b80483094659737b73d90f80a8a4m(I)Ljava/util/Map$Entry;

    move-result-object v15

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_b
    if-ltz v1, :cond_2

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v13, v6, Lsgo;->c:[I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, v6, Lsgo;->d:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_10
    move-object v4, v12

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_11
    add-int/2addr v0, v1

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_12
    if-nez v5, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_13
    move/from16 v17, v2

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_14
    add-int/lit8 v11, v0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    const/4 v14, 0x0

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v15}, Lsgn;->c(I)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_17
    move-object v9, v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v4, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_19
    move-object v5, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_1a
    move v0, v4

    nop

    :goto_1b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v15, v15, 0x1

    nop

    nop

    :goto_20
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aput-object v9, v12, v3

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_22
    move v9, v14

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_24
    invoke-static {v13, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v13

    nop

    nop

    :goto_25
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v9, :cond_4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Lsgn;->size()I

    move-result v9

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_28
    invoke-static {v12, v14, v3, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_4

    nop

    nop

    :goto_29
    invoke-direct {v7, v5}, Lsgo;->33f5b80483094659737b73d90f80a8a4m(I)Ljava/util/Map$Entry;

    move-result-object v15

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_2a
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_2b
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

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

    nop

    :goto_2c
    check-cast v2, Lsgn;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v4, v3, 0x1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v9, -0x1

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v2}, Lsgn;->size()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eq v0, v9, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-ge v15, v9, :cond_6

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_34
    move v0, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-object v15, v1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_36
    move-object/from16 v8, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_37
    iput-object v0, v6, Lsgo;->e:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_38
    move-object/from16 v16, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v1, v15}, Lsgn;->c(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v5, v17, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_3d
    goto :goto_41

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_3f
    move/from16 v18, v4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_40
    move-object v12, v3

    nop

    :goto_41
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_42
    move/from16 v19, v1

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_43
    iput-object v12, v6, Lsgo;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move v3, v4

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_45
    add-int/lit8 v9, v18, 0x1

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-direct/range {p0 .. p0}, Ljava/util/AbstractMap;-><init>()V

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v16, :cond_7

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_8b

    nop

    nop

    :goto_48
    move/from16 v2, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v0, 0x0

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

    :goto_4a
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    :cond_8
    goto/32 :goto_69

    nop

    :goto_4b
    aput-object v1, v12, v2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4d
    invoke-virtual {v2, v0}, Lsgn;->c(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_4e
    add-int/lit8 v4, v15, 0x1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_4f
    sub-int v3, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_3a

    nop

    nop

    :goto_51
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_52
    add-int/lit8 v9, v17, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_53
    aput v3, v13, v19

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_54
    move v4, v14

    nop

    nop

    :goto_55
    goto/32 :goto_72

    nop

    nop

    :goto_56
    invoke-virtual {v2}, Lsgn;->size()I

    move-result v9

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_57
    move v15, v0

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_59
    aget v5, v13, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    move v1, v9

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_9d

    nop

    :goto_5c
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_5d
    if-ltz v9, :cond_9

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :cond_9
    goto/32 :goto_4e

    nop

    nop

    :goto_5e
    move-object v1, v15

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5f
    move/from16 v4, v20

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_60
    invoke-direct {v8, v14}, Lsgo;->33f5b80483094659737b73d90f80a8a4m(I)Ljava/util/Map$Entry;

    move-result-object v2

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_61
    invoke-direct {v7, v14}, Lsgo;->33f5b80483094659737b73d90f80a8a4m(I)Ljava/util/Map$Entry;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    move v3, v0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_63
    move v3, v0

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_64
    const/4 v9, -0x1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-eqz v16, :cond_a

    nop

    goto/32 :goto_a5

    nop

    :cond_a
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_66
    aput v5, v13, v4

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-eqz v1, :cond_b

    nop

    goto/32 :goto_a1

    nop

    nop

    :cond_b
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_69
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-direct/range {p2 .. p2}, Lsgo;->f875135777c17da3cef2ea6eeff5be29m()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_6c
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    add-int/lit8 v1, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_6e
    move/from16 v18, v9

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iput-object v0, v6, Lsgo;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_71
    add-int/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_72
    if-le v4, v2, :cond_c

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :cond_c
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_73
    invoke-direct {v8, v9}, Lsgo;->33f5b80483094659737b73d90f80a8a4m(I)Ljava/util/Map$Entry;

    move-result-object v16

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-direct {v6, v1, v2}, Lsgo;->da190e616797844b591057d0190e7728m(Ljava/lang/String;I)Ljava/util/Map$Entry;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_75
    invoke-direct {v0, v6, v9}, Lsgn;-><init>(Lsgo;I)V

    goto/32 :goto_e

    nop

    nop

    :goto_76
    const v0, 0xb

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_77
    move v15, v4

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto/16 :goto_ad

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_7a
    sub-int/2addr v5, v3

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-static {v12, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_7d
    invoke-virtual/range {p2 .. p2}, Lsgo;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7e
    aget v3, v13, v2

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    move/from16 v20, v4

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_80
    const/4 v9, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/16 :goto_bf

    nop

    :goto_82
    goto/32 :goto_1e

    nop

    nop

    :goto_83
    if-eq v15, v9, :cond_d

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :cond_d
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_84
    move-object/from16 v7, p1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_85
    move-object v3, v12

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_87
    const/4 v9, -0x1

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

    :goto_88
    invoke-virtual/range {p1 .. p1}, Lsgo;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_89
    goto/16 :goto_55

    nop

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_8b
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_8d
    new-array v13, v11, [I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    if-eqz v1, :cond_e

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v1}, Lsgn;->size()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_90
    move/from16 v2, v19

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_91
    move-object v5, v13

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_92
    if-eqz v15, :cond_f

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_93
    if-eqz v3, :cond_10

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_94
    goto/16 :goto_6f

    nop

    :goto_95
    goto/32 :goto_45

    nop

    nop

    :goto_96
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

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

    :goto_97
    invoke-interface {v9, v14, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_98
    sget-object v9, Lsgq;->a:Ljava/util/Comparator;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_99
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9a
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-direct/range {p1 .. p1}, Lsgo;->f875135777c17da3cef2ea6eeff5be29m()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    move/from16 v20, v4

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_5d

    nop

    nop

    :goto_9e
    add-int/lit8 v4, v18, 0x1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    goto/16 :goto_58

    nop

    nop

    :goto_a1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    aput v0, v13, v14

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    sub-int v4, v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_a4
    goto :goto_ad

    nop

    :goto_a5
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-static {v10, v3}, Lsgo;->e(II)Z

    move-result v5

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    if-lt v0, v9, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-direct/range {v0 .. v5}, Lsgo;->166277962e993c138a6b1f0c9b571cc0m(Ljava/util/Map$Entry;II[Ljava/lang/Object;[I)I

    move-result v0

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_ab
    move-object v4, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_ac
    move v1, v14

    nop

    :goto_ad
    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_ae
    move-object/from16 v1, v16

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_af
    add-int v10, v1, v2

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

    :goto_b0
    check-cast v1, Lsgn;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_b1
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_b2
    if-eqz v9, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_12
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {v2, v0}, Lsgn;->c(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_b4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-direct/range {v0 .. v5}, Lsgo;->166277962e993c138a6b1f0c9b571cc0m(Ljava/util/Map$Entry;II[Ljava/lang/Object;[I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_b6
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    :goto_b7
    goto/32 :goto_22

    nop

    nop

    :goto_b8
    check-cast v1, Ljava/lang/String;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    aget v1, v13, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    aget v1, v13, v14

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_bb
    goto/16 :goto_1b

    nop

    nop

    :goto_bc
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_be
    move/from16 v18, v17

    nop

    nop

    nop

    :goto_bf
    goto/32 :goto_99

    nop

    nop

    nop

    :goto_c0
    move/from16 v17, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    new-instance v0, Lsgn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    move v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_c3
    move v2, v14

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-static {v11, v1}, Lsgo;->e(II)Z

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c5
    invoke-direct {v8, v4}, Lsgo;->33f5b80483094659737b73d90f80a8a4m(I)Ljava/util/Map$Entry;

    move-result-object v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Ljava/lang/String;I)Ljava/util/Map$Entry;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-direct {v1, p0, p2}, Lsgn;-><init>(Lsgo;I)V

    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
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

    :goto_3
    const v1, 0x3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Lsgn;

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

    :goto_5
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1c

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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
    invoke-direct {v0, p1, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

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

    nop

    :goto_d
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
.end method

.method private static e(II)Z
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    mul-int/lit8 p1, p1, 0xa

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

    :goto_1
    if-gt p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

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
    const/4 p0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    mul-int/lit8 p0, p0, 0x9

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-gt p0, p1, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_5

    nop

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

    goto/32 :goto_4

    nop

    nop

    :goto_9
    const/16 v0, 0x10

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lsgo;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lsgo;->c:[I

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

    nop

    nop

    :goto_3
    aget p0, v0, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lsgo;->d:Ljava/util/Set;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lsgo;->e:Ljava/lang/Integer;

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

    :goto_2
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_8

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

    :goto_3
    invoke-super {p0}, Ljava/util/AbstractMap;->hashCode()I

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

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    iget-object p0, p0, Lsgo;->e:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    :goto_7
    iput-object v0, p0, Lsgo;->e:Ljava/lang/Integer;

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lsgo;->f:Ljava/lang/String;

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Ljava/util/AbstractMap;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1

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

    nop

    nop

    :goto_5
    iget-object p0, p0, Lsgo;->f:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lsgo;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method
