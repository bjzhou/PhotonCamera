.class public abstract Lbuf;
.super Ltyr;
.source "PG"


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

    :goto_1
    invoke-direct {p0}, Ltyr;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a(Ljava/util/Map$Entry;)Z
.end method

.method public abstract b(Ljava/util/Map$Entry;)Z
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 2

    goto/32 :goto_18

    nop

    nop

    :goto_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    if-ne v0, v1, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v0, p1

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Ljava/util/Map$Entry;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lbuf;->a(Ljava/util/Map$Entry;)Z

    move-result p0

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_8

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

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_8

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    instance-of v0, v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_16

    nop

    :goto_12
    instance-of v1, p1, Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_6

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_16
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    const v0, 0x6

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1a
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    return p0

    nop

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    nop
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    instance-of v1, p1, Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1c

    nop

    nop

    :goto_5
    move-object v0, p1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    instance-of v0, v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    check-cast p1, Ljava/util/Map$Entry;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    const v1, 0x6

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    instance-of v0, p1, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    if-ne v0, v1, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    :goto_f
    goto :goto_6

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1}, Lbuf;->b(Ljava/util/Map$Entry;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    goto/32 :goto_f

    nop

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

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_15
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return p0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1c
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method
