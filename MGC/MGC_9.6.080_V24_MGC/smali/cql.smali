.class public final Lcql;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Collection;
.implements Lj$/util/Collection;
.implements Lucv;


# instance fields
.field private final a:Lye;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Lcql;-><init>([B)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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

    :goto_2
    return-void

    nop

    nop
.end method

.method public synthetic constructor <init>([B)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcql;->a:Lye;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Lye;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-direct {p1, v0}, Lye;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcql;->a:Lye;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lye;->f(Ljava/lang/Object;)Z

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

    nop
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcql;->a(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-static {}, La;->c()Z

    move-result p0

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

.method public final clear()V
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

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcql;->a:Lye;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lye;->d()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_1

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
    iget-object p0, p0, Lcql;->a:Lye;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lye;->a(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 2

    goto/32 :goto_14

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

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_b

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
    goto/32 :goto_1

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v0}, Lye;->a(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

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

    :goto_8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    const v1, 0x1a

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_10
    return p0

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lcql;->a:Lye;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x10

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lj$/lang/Iterable$-CC;->$default$forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto/32 :goto_1

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
.end method

.method public final isEmpty()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lye;->b()Z

    move-result p0

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

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcql;->a:Lye;

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

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lxt;

    nop

    goto/32 :goto_3

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

    :goto_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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

    :goto_3
    iget-object p0, p0, Lcql;->a:Lye;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Lxt;-><init>(Lye;)V

    goto/32 :goto_2

    nop

    nop
.end method

.method public final synthetic parallelStream()Lj$/util/stream/Stream;
    .locals 0

    goto/32 :goto_1

    nop

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
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lye;->g(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcql;->a:Lye;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return p0

    nop
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lye;->g(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcql;->a:Lye;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop
.end method

.method public final removeIf(Ljava/util/function/Predicate;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    goto/32 :goto_3

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

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    const-string p1, "Operation is not supported for read-only collection"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lye;->h(Ljava/util/Collection;)Z

    move-result p0

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

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcql;->a:Lye;

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
.end method

.method public final bridge size()I
    .locals 0

    goto/32 :goto_2

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
    iget p0, p0, Lye;->g:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcql;->a:Lye;

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final synthetic spliterator()Lj$/util/Spliterator;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final synthetic stream()Lj$/util/stream/Stream;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lucc;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

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
.end method

.method public final synthetic toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

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

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

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
    invoke-static {p0, p1}, Lucc;->b(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop
.end method
