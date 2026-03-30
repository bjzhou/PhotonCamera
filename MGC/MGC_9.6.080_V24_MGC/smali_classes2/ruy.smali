.class abstract Lruy;
.super Ljava/util/AbstractCollection;
.source "PG"

# interfaces
.implements Lsan;


# instance fields
.field public transient a:Ljava/util/Set;

.field private transient b:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return v0

    nop

    :goto_2
    invoke-virtual {p0, p1, v0}, Lruy;->h(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    :goto_2
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, v1, v0}, Lsan;->h(Ljava/lang/Object;I)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v1

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    instance-of v0, p1, Lsan;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    instance-of v0, p1, Lrus;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Lsam;->a()I

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lruy;->isEmpty()Z

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

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

    :goto_e
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    :goto_f
    goto/32 :goto_29

    nop

    nop

    :goto_10
    invoke-interface {p1}, Lsan;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Lsan;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_4

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    :goto_1c
    check-cast v0, Lsam;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1d
    invoke-static {p0, p1}, Lrgw;->W(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1f
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v0}, Lsam;->b()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_21
    goto :goto_27

    nop

    :goto_22
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p1}, Lsan;->g()Ljava/util/Set;

    move-result-object p1

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

    :goto_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_25
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_26
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_5
    :goto_27
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x11

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    :goto_2a
    goto/16 :goto_f

    nop

    nop

    :goto_2b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_31

    nop

    nop

    :goto_2d
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_30
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_31
    check-cast p1, Lrus;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v1, 0x0

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
.end method

.method public abstract b()I
.end method

.method public abstract c()Ljava/util/Iterator;
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lruy;->ej(Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    if-gtz p0, :cond_0

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

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_4

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

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public d(Ljava/lang/Object;I)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public e()Ljava/util/Set;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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
    throw p0

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Lsan;->g()Ljava/util/Set;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_c

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v3, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_2
    :goto_9
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    check-cast p1, Lsan;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1}, Lsan;->size()I

    move-result v3

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

    :goto_c
    goto/32 :goto_1

    nop

    nop

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
    if-ne v1, v3, :cond_3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    :goto_f
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    :goto_12
    goto :goto_9

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1}, Lsan;->g()Ljava/util/Set;

    move-result-object v3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    invoke-interface {v1}, Lsam;->b()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    if-eq v1, v3, :cond_5

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

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_18
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_1a
    move v0, v2

    nop

    nop

    :goto_1b
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p0}, Lsan;->g()Ljava/util/Set;

    move-result-object v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1f
    const v0, 0x4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p0, v3}, Lsan;->ej(Ljava/lang/Object;)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_21
    invoke-interface {p0}, Lsan;->size()I

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

    :goto_22
    goto :goto_1b

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_24
    invoke-interface {v1}, Lsam;->a()I

    move-result v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eq p1, p0, :cond_6

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_6
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_26
    instance-of v1, p1, Lsan;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v1, Lsam;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v0, 0x1

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

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop
.end method

.method public f()Ljava/util/Set;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()Ljava/util/Set;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lrux;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object v0, p0, Lruy;->b:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_2

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

    goto/32 :goto_5

    nop

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

    nop

    :goto_3
    invoke-direct {v0, p0}, Lrux;-><init>(Lruy;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lruy;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop
.end method

.method public h(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lruy;->g()Ljava/util/Set;

    move-result-object p0

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
    return p0

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Set;->hashCode()I

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

    nop
.end method

.method public i(Ljava/lang/Object;I)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop
.end method

.method public final isEmpty()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    invoke-virtual {p0}, Lruy;->g()Ljava/util/Set;

    move-result-object p0

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
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-gtz p0, :cond_0

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

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, v0}, Lruy;->d(Ljava/lang/Object;I)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lsan;->f()Ljava/util/Set;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Lsan;->f()Ljava/util/Set;

    move-result-object p1

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

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
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    instance-of v0, p1, Lsan;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Lsan;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v0, p1, Lsan;

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
    invoke-interface {p0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lsan;

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

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

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

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

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

    :goto_6
    invoke-interface {p0}, Lsan;->f()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1}, Lsan;->f()Ljava/util/Set;

    move-result-object p1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lruy;->g()Ljava/util/Set;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Set;->toString()Ljava/lang/String;

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
