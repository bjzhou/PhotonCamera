.class public final Ldhe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    sget-object v0, Ltyw;->a:Ltyw;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Ldhe;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    :goto_1
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_3
    const v0, 0x1b

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

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1f

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p2, p1}, Ldhe;-><init>(Ljava/util/List;Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p2, 0x0

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    goto/32 :goto_8

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 7

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1
    iput-object v2, p0, Ldhe;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x9

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

    :goto_4
    instance-of v6, v5, Ldia;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_6
    iget-object v3, p0, Ldhe;->b:Ljava/lang/String;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    if-ge v3, v1, :cond_0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Ldhe;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_c
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    :goto_d
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_e
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_f
    move-object v2, v0

    nop

    nop

    :goto_10
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_11
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_12
    iget-object v5, v4, Ldhc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string p1, ") is out of boundary"

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget p1, v2, Ldhc;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_17
    if-le v1, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    throw p0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4a

    nop

    nop

    :goto_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v2, p1}, Lrkm;->aB(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_3

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_25

    nop

    :goto_1f
    new-instance p1, Ldhd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_20
    iput-object v0, p0, Ldhe;->c:Ljava/util/List;

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

    :goto_21
    iget v3, v2, Ldhc;->b:I

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

    :goto_22
    if-eqz v2, :cond_4

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lt v3, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object v2, v0

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_10

    nop

    :goto_2b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v1, v2, Ldhc;->c:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2f
    move v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    instance-of v5, v5, Ldhu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-lt p2, v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_34
    if-nez v6, :cond_7

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

    :cond_7
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {p1}, Ldhd;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    :goto_36
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_37
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v4, Ldhc;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object p1, p0, Ldhe;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3b
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3c
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_3f
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_40
    const-string p1, "ParagraphStyle range ["

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    :cond_8
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_42
    if-nez v2, :cond_9

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const v1, 0x1d

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

    :goto_44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const-string p1, ", "

    nop

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

    nop

    :goto_46
    new-instance p0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_48
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_49
    const/4 v0, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget p1, v2, Ldhc;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    :goto_4e
    check-cast v2, Ldhc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4f
    goto/16 :goto_14

    nop

    nop

    :goto_50
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_52
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-nez v5, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_22

    nop

    nop

    :goto_54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_57
    goto/16 :goto_37

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_31

    nop

    nop

    :goto_59
    iget v1, v2, Ldhc;->c:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5a
    const-string p1, "ParagraphStyle should not overlap"

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldhe;->b:Ljava/lang/String;

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final bridge charAt(I)C
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldhe;->b:Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Ldhe;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Ldhe;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    iget-object p1, p1, Ldhe;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    if-eq p0, p1, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    :goto_9
    iget-object v3, p1, Ldhe;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    :goto_b
    return v2

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    instance-of v1, p1, Ldhe;

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

    nop

    :goto_f
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Ldhe;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz p0, :cond_2

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

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

    nop

    :goto_1b
    return v0

    nop

    :goto_1c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    :goto_1e
    return v2

    nop

    nop

    :goto_1f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_6

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    :goto_3
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iget-object p0, p0, Ldhe;->a:Ljava/util/List;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

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

    :goto_8
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ldhe;->b:Ljava/lang/String;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge length()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ldhe;->a()I

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

    nop
.end method

.method public final bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 10

    goto/32 :goto_e

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

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

    :goto_5
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

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

    :goto_7
    goto/32 :goto_15

    nop

    nop

    :goto_8
    new-instance p0, Ldhe;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_a
    iget v7, v5, Ldhc;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x8

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v0, v3}, Ldhe;-><init>(Ljava/util/List;Ljava/lang/String;)V

    :goto_d
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v6, Ldhc;

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_11
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    :goto_12
    sub-int/2addr v9, p1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v5, Ldhc;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1e

    nop

    nop

    :goto_16
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_40

    nop

    nop

    :goto_17
    sub-int/2addr v8, p1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_30

    nop

    nop

    :goto_19
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1c
    goto/16 :goto_41

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1e
    const/16 v0, 0x29

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-le p1, p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_20
    iget v8, v5, Ldhc;->b:I

    nop

    nop

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

    :goto_21
    if-le p1, p2, :cond_1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_3b

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1

    nop

    nop

    :goto_24
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p1, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string p1, ") should be less or equal to end ("

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_2b
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-ne p1, p0, :cond_2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    nop

    :goto_2e
    const-string v1, "start ("

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Ldhe;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p1, p0, Ldhe;->b:Ljava/lang/String;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_35
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_38
    if-lt v2, v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    :goto_39
    new-instance p0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3a
    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance p0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-string p1, ") should be less than or equal to end ("

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
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    :goto_3f
    iget v9, v5, Ldhc;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_42
    move p1, v2

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v7, v5, Ldhc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v5, v5, Ldhc;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-eqz p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {p1, p2, v6, v7}, Ldhf;->b(IIII)Z

    move-result v6

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_4b
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v6, v7, v8, v9, v0}, Ldhc;-><init>(Ljava/lang/Object;II[B)V

    goto/32 :goto_2a

    nop

    nop

    :goto_4d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_4e
    if-ne p2, p1, :cond_6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget v6, v5, Ldhc;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    :goto_51
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_52
    const/4 v0, 0x0

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_53
    if-nez v6, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_54
    sget v4, Ldhf;->a:I

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

    :goto_55
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v3, p0, Ldhe;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_8
    goto/32 :goto_14

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldhe;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method
