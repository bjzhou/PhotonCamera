.class final Lci;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcg;


# instance fields
.field final synthetic a:Lcj;


# direct methods
.method public constructor <init>(Lcj;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lci;->a:Lcj;

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

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8

    goto/32 :goto_3c

    nop

    nop

    :goto_0
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lci;->a:Lcj;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3
    iput-boolean v7, v6, Lbo;->u:Z

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    if-gtz v1, :cond_0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lcj;->i:Ljava/util/ArrayList;

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

    nop

    :goto_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_a
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, v0, Lcj;->e:Lai;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_c
    check-cast v1, Lai;

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

    :goto_d
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_f
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    check-cast v1, Lcf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4d

    nop

    nop

    :goto_13
    iget-object v1, v0, Lcj;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_14
    return v0

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

    nop

    nop

    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    add-int/2addr v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v4, Lai;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, p1, p2, v2, v3}, Lcj;->ab(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result v0

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_56

    nop

    nop

    :goto_20
    new-instance p2, Ljava/util/LinkedHashSet;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v6, v6, Lco;->b:Lbo;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lt v3, p1, :cond_1

    nop

    goto/32 :goto_3e

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v1, v0, Lcj;->e:Lai;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_26
    invoke-interface {v1}, Lcf;->e()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

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

    :goto_29
    invoke-static {v1}, Lcj;->T(I)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v6, Lco;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

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

    :goto_2c
    iget-object v0, p0, Lci;->a:Lcj;

    nop

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

    :goto_2d
    invoke-interface {p2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2b

    nop

    nop

    :goto_30
    if-lt v5, v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v6, :cond_5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_32
    move v5, v3

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_34
    move v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_35
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    goto/32 :goto_20

    nop

    nop

    :goto_37
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_38
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

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

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v1, v0, Lcj;->b:Ljava/util/ArrayList;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_1c

    nop

    nop

    :goto_3e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v1, v0, Lcj;->a:Ljava/util/ArrayList;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v1, 0x2

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

    :goto_41
    goto/32 :goto_15

    nop

    nop

    :goto_42
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_43
    check-cast v4, Lbo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_33

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v1, v1, Lai;->d:Ljava/util/ArrayList;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v4}, Lcj;->Y(Lai;)Ljava/util/Set;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_4a
    if-lt v2, v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_18

    nop

    nop

    :goto_4b
    add-int/lit8 v5, v3, 0x1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_4c
    add-int/2addr v1, v2

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_4d
    move v3, v5

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

    :goto_4e
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_8
    goto/32 :goto_41

    nop

    :goto_4f
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_50
    goto/32 :goto_13

    nop

    nop

    :goto_51
    goto :goto_59

    nop

    nop

    :goto_52
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_54
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_55
    if-nez v4, :cond_9

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v1, p0, Lci;->a:Lcj;

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

    :goto_57
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

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

    :goto_58
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_5a
    iget-object v1, v1, Lcj;->i:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5c
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_51

    nop

    nop
.end method
