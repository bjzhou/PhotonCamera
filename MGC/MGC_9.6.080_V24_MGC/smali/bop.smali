.class final Lbop;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lboq;


# direct methods
.method public constructor <init>(Lboq;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p1, p0, Lbop;->a:Lboq;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 10

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_0
    aput-object v4, v6, v5

    nop

    nop

    :goto_1
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    not-int v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lbop;->a:Lboq;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v6}, Lyg;->f(Ljava/lang/Object;)I

    move-result v5

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_6
    new-instance v1, Lyg;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v8}, Lucu;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :cond_0
    goto/32 :goto_4e

    nop

    :goto_b
    move-object v4, v8

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_c
    aput-object v6, v7, v5

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

    nop

    :goto_e
    filled-new-array {v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v6, Lbnj;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_10
    if-nez v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    iget-object v7, v1, Lyg;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_15
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v7, :cond_2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lbop;->a:Lboq;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_18
    if-ltz v5, :cond_3

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

    :cond_3
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v5, v4, Lbnk;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    iget-object v6, v1, Lyg;->c:[Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    if-lt v3, v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v4, p0, Lboq;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v1, v0}, Lyg;-><init>(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    aget-object v8, v8, v5

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_3b

    nop

    nop

    :goto_21
    invoke-static {v8}, Lucu;->e(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_22
    const v0, 0x17

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v4}, Lrkm;->ag([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_25
    invoke-direct {v6, v5, v7}, Lbnj;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v8, v1, Lyg;->c:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_28
    iget-object v6, v1, Lyg;->c:[Ljava/lang/Object;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    :goto_2a
    goto/32 :goto_27

    nop

    nop

    :goto_2b
    iget-object v0, v0, Lboq;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2f
    aput-object v4, v6, v5

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

    :goto_30
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

    :goto_32
    if-nez v9, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    :goto_33
    goto/16 :goto_4c

    nop

    nop

    :goto_34
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget v5, v4, Lbnk;->a:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_37
    check-cast v4, Lbnk;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_38
    if-nez v7, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move v7, v2

    nop

    :goto_3a
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3b
    if-eqz v8, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_7
    goto/32 :goto_8

    nop

    nop

    :goto_3c
    new-instance p0, Lboa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-direct {p0, v1}, Lboa;-><init>(Lyg;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, p0, Lboq;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v7, v4, Lbnk;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_48
    goto :goto_3a

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_39

    nop

    nop

    :goto_4a
    const/4 v7, 0x1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move v3, v2

    nop

    :goto_4c
    goto/32 :goto_1b

    nop

    nop

    :goto_4d
    iget v5, v4, Lbnk;->a:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_2a

    nop

    nop

    :goto_4f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method
