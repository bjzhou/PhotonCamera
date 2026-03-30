.class public final synthetic Lrvi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput p1, p0, Lrvi;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

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

    :goto_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1b

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x10

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

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

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

    :goto_9
    const/4 v1, 0x2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    :goto_10
    if-ne v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Lrvi;->a:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x1

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

    :goto_17
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_18
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1a
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    :goto_1c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p1

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

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
    iget-object p0, p1, Lsai;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_6
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_9
    return-object p1

    nop

    :goto_a
    goto/32 :goto_50

    nop

    nop

    :goto_b
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_45

    nop

    nop

    :goto_c
    invoke-interface {p0, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_f
    check-cast p2, Lsai;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    iget-object p0, p1, Lsai;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_11
    check-cast p2, Lsay;

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_12
    iget-object p0, p1, Lsai;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_13
    check-cast p1, Lryd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-le p0, p2, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, p0, p2}, Lrxp;->b([Ljava/lang/Object;I)V

    goto/32 :goto_25

    nop

    nop

    :goto_18
    check-cast p2, Lrpz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_19
    check-cast p1, Lsai;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p0, :cond_2

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_2
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p2, Lrxw;->a:[Ljava/lang/Object;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1f
    iget-object p2, p2, Lsai;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_20
    const/4 v1, 0x3

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_23
    if-ne p0, v1, :cond_3

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_24
    if-nez p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_47

    nop

    nop

    :goto_25
    return-object p1

    nop

    :goto_26
    goto/32 :goto_43

    nop

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

    :goto_28
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object p0, p1, Lsai;->b:Ljava/lang/Object;

    nop

    nop

    :goto_2a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz p0, :cond_5

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_5
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance p0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, v0}, Lsai;->a(Z)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    nop

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

    :goto_2e
    if-nez p2, :cond_6

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

    :cond_6
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto/32 :goto_2d

    nop

    nop

    :goto_30
    goto :goto_28

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_40

    nop

    nop

    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, p2, Lsai;->a:Ljava/lang/Object;

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

    :goto_35
    iget-object p0, p1, Lsai;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_7

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_21

    nop

    :goto_37
    invoke-virtual {p1, p2}, Lrpz;->b(Lsay;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_38
    iget-object p0, p2, Lrpz;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast p2, Lryd;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3b
    return-object p1

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move-object p1, p2

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

    :goto_3e
    iget p0, p0, Lrvi;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3f
    if-ne p0, v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_8
    goto/32 :goto_19

    nop

    nop

    :goto_40
    iget-object p0, p2, Lsai;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_41
    if-nez p0, :cond_9

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_42
    check-cast p1, Lryw;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_22

    nop

    :goto_44
    invoke-virtual {p1, p2}, Lryw;->k(Lryw;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_46
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_47
    iget-object p0, p1, Lsai;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    check-cast p2, Lrxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4a
    const/4 p2, 0x4

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

    :goto_4b
    iget p2, p2, Lrxw;->b:I

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

    :goto_4c
    invoke-virtual {p1, p2}, Lryd;->h(Lryd;)V

    goto/32 :goto_6

    nop

    nop

    :goto_4d
    check-cast p1, Lrxw;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object p0, p1, Lsai;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_50
    check-cast p1, Lrpz;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_51
    check-cast p2, Lryw;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_52
    const v0, 0x8

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_53
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
.end method
