.class Lrup;
.super Lrun;
.source "PG"

# interfaces
.implements Ljava/util/List;


# instance fields
.field final synthetic f:Lrur;


# direct methods
.method public constructor <init>(Lrur;Ljava/lang/Object;Ljava/util/List;Lrun;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrup;->f:Lrur;

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2, p3, p4}, Lrun;-><init>(Lrur;Ljava/lang/Object;Ljava/util/Collection;Lrun;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrun;->b:Ljava/util/Collection;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lrun;->a()V

    :goto_5
    goto/32 :goto_1

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

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lrup;->d()Ljava/util/List;

    move-result-object v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput p2, p1, Lrur;->b:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x7

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Lrup;->f:Lrur;

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

    :goto_e
    invoke-virtual {p0}, Lrun;->b()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_13
    goto/32 :goto_2

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget p2, p1, Lrur;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    :goto_2
    iget-object p2, p0, Lrun;->b:Ljava/util/Collection;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iget v2, v1, Lrur;->b:I

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

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

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

    :goto_7
    const/4 p0, 0x0

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

    :goto_8
    invoke-virtual {p0}, Lrup;->d()Ljava/util/List;

    move-result-object v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lrun;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lrup;->f:Lrur;

    nop

    nop

    goto/32 :goto_14

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
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1b

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    iput v2, v1, Lrur;->b:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_14
    sub-int/2addr p2, v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    add-int/2addr v2, p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lrun;->a()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
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

    :goto_1d
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1e
    if-nez p1, :cond_3

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method final d()Ljava/util/List;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrun;->b:Ljava/util/Collection;

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

    :goto_2
    check-cast p0, Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrun;->b()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrup;->d()Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrun;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    invoke-virtual {p0}, Lrup;->d()Ljava/util/List;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrup;->d()Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lrun;->b()V

    goto/32 :goto_1

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

    nop
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrun;->b()V

    goto/32 :goto_2

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
    new-instance v0, Lruo;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Lruo;-><init>(Lrup;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrun;->b()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lruo;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, p1}, Lruo;-><init>(Lrup;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrup;->d()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    iget v1, v0, Lrur;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p1

    nop

    nop

    :goto_4
    goto/32 :goto_a

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lrun;->b()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lrun;->c()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x13

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

    :goto_9
    iget-object v0, p0, Lrup;->f:Lrur;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_d
    iput v1, v0, Lrur;->b:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1e

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

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_1
    invoke-virtual {p0}, Lrun;->b()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lrup;->d()Ljava/util/List;

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
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrup;->f:Lrur;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    move-object p2, p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p2, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lrun;->a:Ljava/lang/Object;

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

    :goto_6
    invoke-virtual {p0, v0, p1, p2}, Lrur;->i(Ljava/lang/Object;Ljava/util/List;Lrun;)Ljava/util/List;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lrun;->b()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p2, p0, Lrun;->c:Lrun;

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

    :goto_9
    return-object p0

    nop

    :goto_a
    invoke-virtual {p0}, Lrup;->d()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method
