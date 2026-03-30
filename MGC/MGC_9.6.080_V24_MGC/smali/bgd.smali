.class final Lbgd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lujq;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lbgp;

.field final synthetic c:Labl;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lbgp;Labl;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p3, p0, Lbgd;->c:Labl;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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
    iput-object p1, p0, Lbgd;->a:Ljava/lang/Object;

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

    nop

    :goto_4
    iput-object p2, p0, Lbgd;->b:Lbgp;

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


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Lbgd;->b(Ljava/util/Map;Ltzy;)Ljava/lang/Object;

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

    nop

    nop

    :goto_2
    check-cast p1, Ljava/util/Map;

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

.method public final b(Ljava/util/Map;Ltzy;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ltz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lbgd;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2c

    nop

    :goto_5
    const/high16 v2, -0x80000000

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xc

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_9
    sget-object v1, Luag;->a:Luag;

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

    :goto_a
    iget-object p1, p0, Lbgd;->b:Lbgp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3a

    nop

    nop

    :goto_d
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p2, p0, Lbgd;->b:Lbgp;

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_f
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_49

    nop

    nop

    :goto_12
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_13
    check-cast v4, Ljava/lang/Number;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_2
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/high16 v3, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_16
    iget v2, v0, Lbgc;->e:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_34

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    throw p2

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    :goto_1c
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v1, v0, Lbgc;->e:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

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

    :goto_21
    iget-object p1, v0, Lbgc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object v0, p2

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_27
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

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

    :goto_28
    sub-float/2addr v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {p2}, Lbnx;->b()F

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_2a
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1a

    nop

    nop

    :goto_2c
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2d
    sub-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-object v1

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, v0, Lbgp;->e:Lbnx;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_31
    invoke-static {p1}, Lrkm;->at(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lbgd;->b:Lbgp;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_0
    const-string p2, "The target value must have an associated anchor."

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_34
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_35
    sub-float/2addr v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p0, p0, Lbgd;->b:Lbgp;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_37
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    :goto_38
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast v1, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

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

    :goto_3b
    invoke-virtual {p0, p1}, Lbgp;->k(Ljava/lang/Object;)V

    goto/32 :goto_5b

    nop

    nop

    :goto_3c
    check-cast v2, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_3d
    invoke-static {p1}, Lrkm;->at(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    :try_start_1
    iget-object p2, p0, Lbgd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, p2}, Lbfx;->b(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p2

    nop

    nop

    if-eqz p2, :cond_4

    nop

    nop

    nop

    iget-object v2, p0, Lbgd;->b:Lbgp;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    iget-object v5, p0, Lbgd;->c:Labl;

    nop

    nop

    nop

    iput-object p0, v0, Lbgc;->a:Ljava/lang/Object;

    nop

    nop

    iput-object p1, v0, Lbgc;->b:Ljava/lang/Object;

    nop

    iput v4, v0, Lbgc;->e:I

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p2, v5, v0}, Lbgp;->b(FLabl;Ltzy;)Ljava/lang/Object;

    move-result-object p2

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_63

    nop

    nop

    :goto_40
    goto/16 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_44
    instance-of v0, p2, Lbgc;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-nez v2, :cond_5

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_5
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_46
    check-cast v0, Lbgc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_47
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_49
    goto/16 :goto_c

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4c
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_4d
    if-eqz p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v0}, Lbnx;->b()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_4f
    if-nez v3, :cond_8

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_50
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_51
    if-eqz p1, :cond_9

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

    :cond_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast p0, Lbgd;

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

    :goto_53
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object p2, p2, Lbgp;->e:Lbnx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_55
    iput v1, v0, Lbgc;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p1}, Lbgp;->d()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_36

    nop

    nop

    :goto_5a
    iget-object p0, v0, Lbgc;->a:Ljava/lang/Object;

    nop

    :try_start_2
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_5b
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_5d
    throw p0

    nop

    :goto_5e
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_5f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    new-instance v0, Lbgc;

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_62
    goto/16 :goto_2f

    nop

    nop

    nop

    :catchall_0
    move-exception p2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_63
    if-eq p2, v1, :cond_a

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_64
    iget-object p2, v0, Lbgc;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_65
    and-int v3, v1, v2

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_66
    cmpg-float v4, v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_67
    new-instance v1, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_68
    if-eq v2, v4, :cond_b

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_69
    cmpg-float v2, v2, v3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-direct {v0, p0, p2}, Lbgc;-><init>(Lbgd;Ltzy;)V

    :goto_6b
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_6c
    iget-object p0, p0, Lbgd;->b:Lbgp;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_6d
    if-ltz v4, :cond_c

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6e
    check-cast v2, Ljava/lang/Number;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object p1, p0, Lbgd;->b:Lbgp;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p1}, Lbgp;->d()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_6c

    nop

    nop

    :goto_72
    invoke-virtual {p0, p1}, Lbgp;->k(Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method
