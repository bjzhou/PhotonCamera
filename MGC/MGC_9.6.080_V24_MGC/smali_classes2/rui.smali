.class abstract Lrui;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field b:Ljava/lang/Object;

.field c:Ljava/util/Collection;

.field d:Ljava/util/Iterator;

.field final synthetic e:Lrur;


# direct methods
.method public constructor <init>(Lrur;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    sget-object p1, Lrzq;->a:Lrzq;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iput-object p1, p0, Lrui;->e:Lrur;

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
    iput-object p1, p0, Lrui;->a:Ljava/util/Iterator;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iput-object p1, p0, Lrui;->d:Ljava/util/Iterator;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lrui;->b:Ljava/lang/Object;

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
    iget-object p1, p1, Lrur;->a:Ljava/util/Map;

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

    :goto_b
    iput-object p1, p0, Lrui;->c:Ljava/util/Collection;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

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
    iget-object v0, p0, Lrui;->a:Ljava/util/Iterator;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    return p0

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

    nop

    nop

    :goto_4
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_3

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

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    iget-object p0, p0, Lrui;->d:Ljava/util/Iterator;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

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

    :goto_b
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
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
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrui;->d:Ljava/util/Iterator;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    check-cast v0, Ljava/util/Collection;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    :goto_3
    iput-object v0, p0, Lrui;->d:Ljava/util/Iterator;

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    iput-object v0, p0, Lrui;->c:Ljava/util/Collection;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_b
    iget-object v1, p0, Lrui;->d:Ljava/util/Iterator;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lrui;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    iget-object v0, p0, Lrui;->a:Ljava/util/Iterator;

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

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

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

    :goto_17
    goto/32 :goto_f

    nop

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v0, v1}, Lrui;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    iput-object v1, p0, Lrui;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public final remove()V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrui;->a:Ljava/util/Iterator;

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

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lrur;->b:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

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

    :goto_7
    iget v0, p0, Lrur;->b:I

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lrui;->c:Ljava/util/Collection;

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

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lrui;->d:Ljava/util/Iterator;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    iget-object p0, p0, Lrui;->e:Lrur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method
