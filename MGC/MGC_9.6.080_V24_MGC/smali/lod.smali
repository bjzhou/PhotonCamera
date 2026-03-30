.class public final synthetic Llod;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:I

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    goto/32 :goto_2

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Llod;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput p1, p0, Llod;->a:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xe

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

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

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    iget v0, p0, Llod;->b:I

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

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p0

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

    :goto_e
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_10
    const v1, 0x11

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_3f

    nop

    nop

    :goto_0
    int-to-double p0, p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Llpk;->a:Lryy;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3
    if-ne v0, v3, :cond_0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4
    div-double/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p0, v0, :cond_1

    nop

    goto/32 :goto_31

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

    :goto_6
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    :goto_8
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_9
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    if-ne p0, v0, :cond_4

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

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
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d

    nop

    :goto_10
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ne p0, v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v0, 0x18

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    iget p0, p0, Llod;->a:I

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_15
    div-double/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    iget p0, p0, Llod;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    if-eq v0, v3, :cond_8

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_43

    nop

    nop

    :goto_19
    const/16 v0, 0x19

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1b
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    int-to-double v0, p1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1d
    iget-boolean v0, p1, Ljdc;->g:Z

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1e
    const/16 v0, 0x16

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v0, v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_9
    goto/32 :goto_9

    nop

    nop

    :goto_20
    instance-of v0, p1, Ljdc;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v0, p0, Llod;->b:I

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

    :goto_22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p2, Ljava/lang/Integer;

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

    nop

    :goto_25
    goto/16 :goto_42

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget p0, p0, Llod;->a:I

    nop

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

    nop

    :goto_28
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, v2}, Ljdc;->k(Z)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2c
    sget-object v0, Lhmq;->a:Ljava/lang/Float;

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

    nop

    :goto_2d
    add-int/lit8 p0, p0, -0x1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2e
    int-to-double p1, p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v3, 0x2

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

    :goto_30
    return-object p0

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p1, Ljdc;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_34
    sget v0, Ljov;->e:I

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, p0, v2}, Ljdc;->i(IZ)Z

    move-result p0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_e

    nop

    nop

    :goto_37
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_38
    if-eq p0, v0, :cond_b

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sget v0, Lloe;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    long-to-double p1, p1

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

    :goto_3c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3d
    int-to-double v0, p1

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

    :goto_3e
    int-to-double p0, p0

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

    :goto_3f
    const v0, 0x7

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_40
    add-int/lit8 p0, p0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_41
    if-nez p0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_c
    :goto_42
    goto/32 :goto_22

    nop

    nop

    :goto_43
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    return-object p0

    nop

    nop

    :goto_46
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_47
    return-object p2

    nop

    nop

    :goto_48
    goto/32 :goto_2a

    nop

    nop

    :goto_49
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast p2, Ljava/lang/Boolean;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4c
    iget v0, p1, Ljdc;->h:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move p0, v0

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p2, Ljava/lang/Long;

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

    :goto_50
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_51
    check-cast p1, Ljpv;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/16 v0, 0x1b

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v0, p1, Ljdc;->i:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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
.end method
