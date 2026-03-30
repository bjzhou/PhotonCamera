.class public abstract Ltir;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltlp;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static e(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ljava/util/Collection;

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
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_2
    instance-of v1, p0, Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_38

    nop

    nop

    :goto_5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_66

    nop

    nop

    :goto_6
    if-le v2, v0, :cond_1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_7
    add-int/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v0, 0xa

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p1, Ljava/lang/NullPointerException;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x17

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    :goto_10
    move-object v1, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v1, Ltma;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_12
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_17

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2c

    nop

    nop

    :goto_16
    invoke-static {p1, v0}, Ltir;->h(Ljava/util/List;I)V

    :goto_17
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    instance-of v1, p0, Ljava/util/RandomAccess;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_19
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1a
    instance-of v2, v1, Ltjj;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v0, v1, Ltma;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_1e
    instance-of v1, p1, Ltma;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1f
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_20
    instance-of v0, p0, Ljava/util/Collection;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_7

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_7
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v0}, Ltiw;->a(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v2, "Element at index "

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

    :goto_24
    if-eqz v3, :cond_8

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_15

    nop

    :goto_27
    goto :goto_2e

    nop

    :goto_28
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0, v1}, Ltle;->add(Ljava/lang/Object;)Z

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string p0, " is null."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v0, Ljava/util/Collection;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p0}, Ltkw;->b(Ljava/lang/Object;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_2f
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_31
    invoke-static {p1, v0}, Ltir;->h(Ljava/util/List;I)V

    :goto_32
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, v1, Ltma;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_9

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_9
    goto/32 :goto_14

    nop

    :goto_35
    goto/16 :goto_1d

    nop

    nop

    :goto_36
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_37
    instance-of v1, p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_27

    nop

    nop

    :goto_3b
    goto/16 :goto_71

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    instance-of v2, v1, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v0}, Ltle;->size()I

    move-result p0

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_3f
    instance-of v0, p0, Ltly;

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

    :goto_40
    check-cast p0, Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_41
    move-object v0, p1

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_18

    nop

    nop

    :goto_46
    goto :goto_43

    nop

    nop

    :goto_47
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_48
    add-int v0, v0, v1

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

    :goto_49
    if-nez v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_b
    goto/32 :goto_53

    nop

    nop

    :goto_4a
    new-instance v1, Ljava/lang/StringBuilder;

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

    nop

    :goto_4b
    check-cast v1, Ltjj;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-lt v2, v1, :cond_c

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v0}, Ltle;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_44

    nop

    nop

    :goto_50
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_52
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

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

    :goto_53
    check-cast v1, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_54
    move-object v1, p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_55
    if-lt v0, v2, :cond_d

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_22

    nop

    nop

    :goto_56
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_58
    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_59
    instance-of v0, p0, Ltle;

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    add-int/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_5b
    goto/16 :goto_43

    nop

    :goto_5c
    goto/32 :goto_3d

    nop

    nop

    :goto_5d
    check-cast v0, Ltle;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_5f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v1}, Ltjj;->p([B)Ltjj;

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_63
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

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

    :goto_65
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_66
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_67
    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_68
    invoke-interface {v0}, Ltle;->b()V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_30

    nop

    nop

    :goto_6a
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_6b
    check-cast p0, Ltle;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_6c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v2, v1, Ltma;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-interface {v0}, Ltle;->b()V

    goto/32 :goto_5b

    nop

    nop

    :goto_6f
    if-nez v1, :cond_f

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_1d

    nop

    nop

    :goto_71
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-interface {p1}, Ljava/util/List;->size()I

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

    :goto_73
    invoke-interface {p0}, Ltle;->a()Ljava/util/List;

    move-result-object p0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-eqz v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    :cond_10
    goto/32 :goto_b

    nop

    nop

    :goto_75
    iput-object v0, v1, Ltma;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_76
    array-length v0, v0

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

    :goto_77
    if-eqz v1, :cond_11

    nop

    goto/32 :goto_79

    nop

    :cond_11
    goto/32 :goto_3e

    nop

    nop

    :goto_78
    throw p1

    nop

    nop

    :goto_79
    goto/32 :goto_1a

    nop

    nop

    :goto_7a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_43

    nop

    nop

    :goto_7c
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_7d
    if-ge v1, p1, :cond_12

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-interface {v0, v1}, Ltle;->remove(I)Ljava/lang/Object;

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    sub-int/2addr p0, p1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    if-nez v1, :cond_13

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    goto/16 :goto_4f

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_0

    nop

    nop
.end method

.method private static h(Ljava/util/List;I)V
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, " is null."

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    sub-int/2addr v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    const-string v2, "Element at index "

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v1, v1, -0x1

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

    nop

    :goto_d
    goto :goto_7

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ge v1, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    :goto_11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    :goto_13
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    new-instance p0, Ljava/lang/NullPointerException;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Ljava/util/List;->size()I

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

    nop

    nop

    nop

    :goto_16
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

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

    :goto_18
    const v0, 0x7

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

    :goto_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a()Ltir;
.end method

.method protected abstract b(Ltis;)Ltir;
.end method

.method public final bridge synthetic c(Ltlq;)Ltlp;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltir;->n()Ltlq;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Ltir;->b(Ltis;)Ltir;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    :goto_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_6
    const-string p1, "mergeFrom(MessageLite) can only merge messages of the same type."

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

    :goto_7
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_9
    check-cast p1, Ltis;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-virtual {p0}, Ltir;->a()Ltir;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final bridge synthetic d([B)Ltlp;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    array-length v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, v0}, Ltir;->g([BI)Ltir;

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

    :goto_2
    return-object p0

    nop
.end method

.method public bridge synthetic f(Ltjn;Ltjv;)V
    .locals 0

    goto/32 :goto_1

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

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public g([BI)Ltir;
    .locals 0

    goto/32 :goto_1

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

    :goto_1
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

    nop

    nop

    nop
.end method
