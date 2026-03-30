.class public final Ldqb;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(Ljava/util/List;)Ljava/util/List;
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x20

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

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    if-lt v2, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_9

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    if-nez v3, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_13
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    :goto_15
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static synthetic b(Ljava/util/List;Ljava/lang/CharSequence;Lubk;I)Ljava/lang/String;
    .locals 11

    goto/32 :goto_38

    nop

    nop

    :goto_0
    const-string v2, ""

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_4a

    nop

    :goto_2
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_52

    nop

    nop

    :goto_5
    goto/16 :goto_40

    nop

    :goto_6
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x0

    nop

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

    :goto_8
    if-nez v7, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    if-lt v5, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v7, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    :goto_b
    move-object v7, v3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_f
    if-gez v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_1a

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v9, p1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/32 :goto_c

    nop

    nop

    :goto_14
    and-int/lit8 v7, p3, 0x20

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_18
    if-nez p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_33

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

    nop

    :goto_19
    move-object v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    move v4, v7

    nop

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_21

    nop

    nop

    :goto_1f
    if-lez v6, :cond_5

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

    :cond_5
    :goto_20
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_21
    and-int/lit8 v1, p3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    if-ne v9, v10, :cond_6

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_24
    const/4 v7, -0x1

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

    :goto_25
    if-gtz v6, :cond_7

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_7
    goto/32 :goto_45

    nop

    nop

    :goto_26
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string v9, ", "

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_3c

    nop

    nop

    :goto_29
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez p0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_4c

    nop

    nop

    :goto_2c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v0, v8, v7}, La;->ar(Ljava/lang/Appendable;Ljava/lang/Object;Lubk;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_2f
    const-string p0, "..."

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_30
    invoke-interface {v0, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_31
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_48

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object v7, p2

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto :goto_28

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const v0, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_39
    and-int/lit8 v7, p3, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3a
    if-gez v7, :cond_9

    nop

    goto/32 :goto_20

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

    :goto_3b
    move v5, v4

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v0, v9}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_3d
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_3f
    move-object v1, v3

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move-object v1, v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_42
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_43
    and-int/lit8 p0, p3, 0x4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_44
    if-gt v6, v9, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    and-int/lit8 p0, p3, 0x10

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_46
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_47
    move-object p0, v3

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_30

    nop

    nop

    :goto_49
    move v7, v4

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4b
    move v6, v5

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_b
    goto/32 :goto_50

    nop

    :goto_4e
    if-nez v1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_c
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    and-int/lit8 v10, p3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_4

    nop

    nop

    :goto_51
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_51

    nop
.end method
