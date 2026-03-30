.class public Lok;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public b:Log;

.field public c:Log;

.field public final d:Ljava/util/WeakHashMap;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lok;->e:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

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
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lok;->d:Ljava/util/WeakHashMap;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/WeakHashMap;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Log;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    goto :goto_4

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Log;->c:Log;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    goto :goto_8

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Log;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lok;->b:Log;

    nop

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
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_b
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v2, Loj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3
    iput-object v0, p1, Log;->c:Log;

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

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6
    iget-object v2, p1, Log;->c:Log;

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

    :goto_7
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p1, Log;->c:Log;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_18

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    :goto_b
    iget-object v1, p0, Lok;->d:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Lok;->a(Ljava/lang/Object;)Log;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

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

    :goto_e
    const/4 v0, 0x0

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_f
    iput-object v1, p0, Lok;->c:Log;

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v1, p0, Lok;->e:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v1, v1, -0x1

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

    :goto_13
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_14
    iput-object v0, p1, Log;->d:Log;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_15
    iput-object v2, v1, Log;->c:Log;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    :goto_17
    iput-object v2, p0, Lok;->b:Log;

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0xa

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

    :goto_1a
    if-nez v1, :cond_2

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

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p1, Log;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lok;->d:Ljava/util/WeakHashMap;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v1, :cond_3

    nop

    nop

    goto/32 :goto_1

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

    :goto_22
    iput v1, p0, Lok;->e:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v1, p1, Log;->d:Log;

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

    :goto_24
    if-eqz p1, :cond_4

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2e

    nop

    :goto_26
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v1, v2, Log;->d:Log;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_29
    invoke-virtual {v2, p1}, Loj;->bV(Log;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :goto_2b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2d
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-object v0

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Log;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Log;

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

    :goto_1
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    iget-object p1, p0, Lok;->c:Log;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p1, p0, Lok;->e:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lok;->b:Log;

    nop

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
    iput-object v0, p0, Lok;->c:Log;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Lok;->e:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, v0, Log;->d:Log;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p1, Log;->c:Log;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_e
    invoke-direct {v0, p1, p2}, Log;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final e()Loh;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Loh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    return-object v0

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
    const v0, 0x9

    nop

    goto/32 :goto_a

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iget-object p0, p0, Lok;->d:Ljava/util/WeakHashMap;

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

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_a
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p0}, Loh;-><init>(Lok;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v1, v3, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v1, p0

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

    nop

    :goto_2
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_3
    const v1, 0xc

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p1, p0, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v1, Loi;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

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

    nop

    :goto_e
    invoke-virtual {p1}, Lok;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v3, :cond_5

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    return v0

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v3, p1, Lok;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lok;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v1, :cond_6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_16
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object v3, p1

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

    :goto_18
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_22

    nop

    :goto_19
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1a
    instance-of v1, p1, Lok;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v1, :cond_8

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

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

    :goto_1f
    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_9

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

    :cond_9
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p1, Lok;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_24
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_26
    return v2

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_29
    invoke-virtual {v3}, Loi;->c()Ljava/util/Map$Entry;

    move-result-object v3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2a
    const v0, 0x16

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_23

    nop

    :goto_2c
    if-eqz v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2d
    check-cast v3, Loi;

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

    nop

    nop

    :goto_2e
    invoke-virtual {v1}, Loi;->c()Ljava/util/Map$Entry;

    move-result-object v1

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

    :goto_2f
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

    nop

    nop

    nop

    :goto_30
    return v0

    nop

    :goto_31
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v1, p0, Lok;->e:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_33
    if-eqz p0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_34
    return v2

    nop

    :goto_35
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_7

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
    goto/32 :goto_4

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
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

    nop

    :goto_4
    invoke-virtual {p0, p1, p2}, Lok;->d(Ljava/lang/Object;Ljava/lang/Object;)Log;

    goto/32 :goto_3

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_6
    iget-object p0, v0, Log;->b:Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lok;->a(Ljava/lang/Object;)Log;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lok;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    move-object v1, p0

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

    nop

    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->hashCode()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_4
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_7

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Loi;->c()Ljava/util/Map$Entry;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    check-cast v1, Loi;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x17

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    :goto_13
    const v0, 0x9

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    :goto_15
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x12

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Loe;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, p0, Lok;->c:Log;

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

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    :goto_6
    invoke-direct {v0, v1, v2}, Loe;-><init>(Log;Log;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lok;->d:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lok;->b:Log;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    const v0, 0xb

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_15

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const-string v1, ", "

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

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Loi;->c()Ljava/util/Map$Entry;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "["

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v1, Loi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lok;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_12
    const-string p0, "]"

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0xa

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_10

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    move-object v1, p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
