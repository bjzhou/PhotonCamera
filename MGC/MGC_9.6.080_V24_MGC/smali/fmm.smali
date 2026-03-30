.class public final Lfmm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lfmi;

.field private final b:Lfml;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;

.field private final e:I

.field private f:I


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(ILjava/lang/Class;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x6

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const v1, 0x1b

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

    nop

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v1, Ljava/lang/Integer;

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

    :goto_6
    if-nez v1, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p2}, Lfmm;->19e596a3e324281407eb5c11093c0152m(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object p2

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

    :goto_8
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_9
    throw p2

    nop

    nop

    :goto_a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_20

    nop

    nop

    :goto_d
    const-string p1, ", this: "

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

    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p2, v0, p0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_18

    nop

    nop

    :goto_10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, "Tried to decrement empty size, size: "

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

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

    :goto_16
    invoke-interface {p2, v0}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    add-int/lit8 p0, p0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_1f
    invoke-interface {p2, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_22
    invoke-direct {p2, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_24
    new-instance p2, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_25
    if-eq p0, p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop
.end method

.method private final 19e596a3e324281407eb5c11093c0152m(Ljava/lang/Class;)Ljava/util/NavigableMap;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    check-cast v0, Ljava/util/NavigableMap;

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

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lfmm;->c:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lfmm;->c:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(I)V
    .locals 5

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_1
    sub-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput v2, p0, Lfmm;->f:I

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

    :goto_4
    invoke-interface {v1, v0}, Lfmd;->a(Ljava/lang/Object;)I

    move-result v3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lfmm;->a:Lfmi;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v2, p0, Lfmm;->f:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    invoke-direct {p0, v1}, Lfmm;->7ecc92917e9c4556cc19f457ddc41af8m(Ljava/lang/Class;)Lfmd;

    move-result-object v1

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

    :goto_c
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v1}, Lfmd;->b()I

    move-result v4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    mul-int/2addr v3, v4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    invoke-interface {v1, v0}, Lfmd;->a(Ljava/lang/Object;)I

    move-result v1

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

    :goto_11
    invoke-direct {p0, v1, v0}, Lfmm;->1478a1c7833aac5e360e0ba4b0c0c568m(ILjava/lang/Class;)V

    goto/32 :goto_14

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lfmi;->b()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    goto :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Lfmm;->f:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-gt v0, p1, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 7ecc92917e9c4556cc19f457ddc41af8m(Ljava/lang/Class;)Lfmd;
    .locals 2

    goto/32 :goto_12

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const v1, 0xa

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

    :goto_3
    new-instance v0, Lfmj;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-class v0, [B

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

    :goto_8
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_a
    new-instance v0, Lfmj;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Lfmj;-><init>(I)V

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_25

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x10

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

    :goto_13
    const-string v0, "No array pool found for: "

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lfmm;->d:Ljava/util/Map;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    :goto_1a
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    nop

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

    :goto_1b
    iget-object v0, p0, Lfmm;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1c
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-class v0, [I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, v1}, Lfmj;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    goto :goto_28

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

    nop

    :goto_21
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

    :goto_22
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_23
    check-cast v0, Lfmd;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_24
    return-object v0

    nop

    :goto_25
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_27
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lfmm;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    new-instance v0, Lfmi;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lfmi;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lfml;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lfmm;->a:Lfmi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lfml;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Lfmm;->e:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/HashMap;

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

    :goto_d
    const/high16 v0, 0x400000

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

    :goto_e
    iput-object v0, p0, Lfmm;->b:Lfml;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lfmm;->c:Ljava/util/Map;

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
.end method

.method public constructor <init>(I)V
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lfml;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lfml;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lfmm;->d:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lfmm;->e:I

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

    :goto_5
    invoke-direct {v0}, Lfmi;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lfmm;->a:Lfmi;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lfmi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/util/HashMap;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lfmm;->c:Ljava/util/Map;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    iput-object v0, p0, Lfmm;->b:Lfml;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(Lfmk;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1a

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

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p2}, Lfmm;->7ecc92917e9c4556cc19f457ddc41af8m(Ljava/lang/Class;)Lfmd;

    move-result-object v1

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

    :goto_4
    sub-int/2addr v2, v3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    invoke-interface {v1, v0}, Lfmd;->a(Ljava/lang/Object;)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1}, Lfmi;->a(Lfmp;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    iput v2, p0, Lfmm;->f:I

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

    :goto_9
    const v0, 0x11

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    :goto_b
    goto/32 :goto_19

    nop

    nop

    :goto_c
    invoke-interface {v1}, Lfmd;->b()I

    move-result v4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    mul-int/2addr v3, v4

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

    :goto_e
    invoke-direct {p0, v2, p2}, Lfmm;->1478a1c7833aac5e360e0ba4b0c0c568m(ILjava/lang/Class;)V

    :goto_f
    goto/32 :goto_0

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_11
    iget-object v0, p0, Lfmm;->a:Lfmi;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v1, v0}, Lfmd;->a(Ljava/lang/Object;)I

    move-result v2

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

    :goto_13
    iget v2, p0, Lfmm;->f:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    return-object v0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    iget p0, p1, Lfmk;->a:I

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

    :goto_1b
    invoke-interface {v1, p0}, Lfmd;->c(I)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_c

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

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-object p1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-direct {p0, p2}, Lfmm;->19e596a3e324281407eb5c11093c0152m(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    iget v1, p0, Lfmm;->f:I

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    iget v2, p0, Lfmm;->e:I

    nop

    nop

    div-int/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x2

    nop

    nop

    if-lt v2, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    mul-int/lit8 v2, p1, 0x8

    nop

    nop

    nop

    nop

    if-le v1, v2, :cond_2

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    :cond_2
    :goto_8
    iget-object p1, p0, Lfmm;->b:Lfml;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    invoke-virtual {p1, v0, p2}, Lfml;->d(ILjava/lang/Class;)Lfmk;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    :cond_3
    :goto_9
    iget-object v0, p0, Lfmm;->b:Lfml;

    nop

    nop

    nop

    invoke-virtual {v0, p1, p2}, Lfml;->d(ILjava/lang/Class;)Lfmk;

    move-result-object p1

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1, p2}, Lfmm;->d5484163cd8d335e6b17663474ff5f2bm(Lfmk;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    const v0, 0x16

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    :goto_e
    goto/32 :goto_7

    nop

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

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    :try_start_0
    invoke-direct {p0, v0}, Lfmm;->51550bab6b6440a4fd45f825c221b363m(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop
.end method

.method public final declared-synchronized c(Ljava/lang/Object;)V
    .locals 5

    goto/32 :goto_a

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

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const v0, 0xb

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

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    invoke-direct {p0, v0}, Lfmm;->7ecc92917e9c4556cc19f457ddc41af8m(Ljava/lang/Class;)Lfmd;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Lfmd;->a(Ljava/lang/Object;)I

    move-result v2

    nop

    nop

    nop

    invoke-interface {v1}, Lfmd;->b()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    mul-int/2addr v1, v2

    nop

    nop

    nop

    nop

    iget v3, p0, Lfmm;->e:I

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    shr-int/2addr v3, v4

    nop

    nop

    if-gt v1, v3, :cond_2

    nop

    iget-object v3, p0, Lfmm;->b:Lfml;

    nop

    nop

    invoke-virtual {v3, v2, v0}, Lfml;->d(ILjava/lang/Class;)Lfmk;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lfmm;->a:Lfmi;

    nop

    nop

    nop

    invoke-virtual {v3, v2, p1}, Lfmi;->c(Lfmp;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lfmm;->19e596a3e324281407eb5c11093c0152m(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iget v0, v2, Lfmk;->a:I

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Integer;

    nop

    iget v2, v2, Lfmk;->a:I

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    goto :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    add-int/2addr v4, v0

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v2, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lfmm;->f:I

    nop

    nop

    nop

    nop

    nop

    add-int/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    iput p1, p0, Lfmm;->f:I

    nop

    iget p1, p0, Lfmm;->e:I

    nop

    invoke-direct {p0, p1}, Lfmm;->51550bab6b6440a4fd45f825c221b363m(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1e

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(I)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq p1, v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    const/16 v0, 0x28

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

    :goto_5
    goto/16 :goto_13

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
    const/16 v0, 0xf

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

    :goto_8
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lt p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    goto :goto_d

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v0, 0x14

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

    :goto_f
    monitor-exit p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    if-ge p1, v0, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lfmm;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

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

    :goto_12
    return-void

    nop

    :goto_13
    :try_start_2
    iget p1, p0, Lfmm;->e:I

    nop

    nop

    shr-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lfmm;->51550bab6b6440a4fd45f825c221b363m(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_f

    nop

    nop
.end method

.method public final declared-synchronized e(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_a

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

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

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

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

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

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lfmm;->b:Lfml;

    nop

    nop

    nop

    nop

    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, p1}, Lfml;->d(ILjava/lang/Class;)Lfmk;

    move-result-object v0

    nop

    invoke-direct {p0, v0, p1}, Lfmm;->d5484163cd8d335e6b17663474ff5f2bm(Lfmk;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

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
    const v1, 0x5

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

    :goto_8
    throw p1

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    const v0, 0xf

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    return-object p1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
