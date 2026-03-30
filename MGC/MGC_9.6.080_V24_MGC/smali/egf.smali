.class public final Legf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lujq;


# instance fields
.field final synthetic a:Lucs;

.field final synthetic b:Lujq;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:[I


# direct methods
.method public constructor <init>(Lucs;Lujq;[Ljava/lang/String;[I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Legf;->d:[I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Legf;->a:Lucs;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Legf;->c:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Legf;->b:Lujq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, [I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    invoke-virtual {p0, p1, p2}, Legf;->b([ILtzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final b([ILtzy;)Ljava/lang/Object;
    .locals 12

    goto/32 :goto_20

    nop

    nop

    :goto_0
    if-ne v2, v4, :cond_0

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v11, [I

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

    nop

    :goto_2
    if-eqz p2, :cond_1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_3
    instance-of v0, p2, Lege;

    nop

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

    :goto_4
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, v0, Lege;->e:[I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_6
    aget-object v9, v2, v7

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    if-eq v2, v3, :cond_2

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_2
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_64

    nop

    :goto_9
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput v3, v0, Lege;->c:I

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aget v8, p1, v8

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    iget-object p2, p0, Legf;->a:Lucs;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lucs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v10, v8, 0x1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ne v11, v8, :cond_3

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_25

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_18
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_4a

    nop

    nop

    :goto_19
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1c
    iput-object p1, v0, Lege;->e:[I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eq p2, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_1e
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1f
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-object p0

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, v0, Lege;->d:Legf;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_24
    return-object v1

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_5e

    nop

    nop

    :goto_26
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_27
    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_28
    iput-object p1, v0, Lege;->e:[I

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    :goto_2a
    iput v1, v0, Lege;->c:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0x11

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v2, p2, Lucs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_19

    nop

    :goto_2f
    goto/16 :goto_1e

    nop

    nop

    :goto_30
    goto/32 :goto_46

    nop

    nop

    :goto_31
    iput-object p0, v0, Lege;->d:Legf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_32
    iget-object p2, p0, Legf;->b:Lujq;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_33
    add-int/lit8 v7, v7, 0x1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_34
    sget-object p0, Ltyg;->a:Ltyg;

    nop

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

    :goto_35
    and-int v3, v1, v2

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_36
    if-nez v3, :cond_6

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v11, :cond_7

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_38
    aget v8, v4, v8

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const-string p1, "Required value was null."

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v0, Lege;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v2, p0, Legf;->c:[Ljava/lang/String;

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_3d
    invoke-interface {p2, v2, v0}, Lujq;->a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3f
    move v8, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v11, p2, Lucs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    new-instance v0, Lege;

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_42
    throw p0

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_26

    nop

    nop

    :goto_44
    if-eqz v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_45
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_46
    iget-object v2, p0, Legf;->c:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_5d

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-lt v7, v6, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_6

    nop

    nop

    :goto_4a
    array-length v6, v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/high16 v2, -0x80000000

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_1b

    nop

    nop

    :goto_4d
    if-nez v2, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_4f
    iput-object p0, v0, Lege;->d:Legf;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-eq p2, v1, :cond_c

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

    :cond_c
    goto/32 :goto_2f

    nop

    nop

    :goto_51
    iput v4, v0, Lege;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-interface {p2, v2, v0}, Lujq;->a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget v1, v0, Lege;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_57
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_58
    invoke-static {v5}, Lrkm;->aE(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_59
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_5a
    aget v11, v11, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5b
    iget v2, v0, Lege;->c:I

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    move v8, v7

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_5e
    iget-object p0, p0, Legf;->a:Lucs;

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

    :goto_5f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_60
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_61
    iget-object p2, v0, Lege;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_62
    iget-object p2, p0, Legf;->b:Lujq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_63
    invoke-direct {v0, p0, p2}, Lege;-><init>(Legf;Ltzy;)V

    :goto_64
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-static {v2}, Lrkm;->bc([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v4, p0, Legf;->d:[I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop
.end method
